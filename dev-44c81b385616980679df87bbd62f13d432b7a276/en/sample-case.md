# Sample Case - Draft PH Core Implementation Guide v0.2.0

## Sample Case

# Sample Case: Emergency Department Triage — FHIR REST API Tutorial

> **Target Audience:** Developers, implementers, and analysts learning FHIR basics through a real Philippine health care scenario. No prior FHIR experience required.

This tutorial walks you through a complete emergency department case using **FHIR REST API** calls. You will learn how to create, read, update, and delete real healthcare data using standard HTTP methods against a FHIR server.

**Test Server:** `https://cdr.fhirlab.net/fhir`
 **Server Capability:** Supports FHIR R4, all CRUD operations, transaction Bundles

-------

## Table of Contents

1. [What is FHIR?](#what-is-fhir)
1. [How FHIR Works Over HTTP](#how-fhir-works-over-http)
1. [REST Methods Recommendation](#rest-methods-recommendation)
1. [The Case Scenario](#the-case-scenario)
1. [Resource Relationships](#resource-relationships)
1. [HTTP GET — Reading Data](#http-get--reading-data)
1. [HTTP POST — Creating Data](#http-post--creating-data)
1. [HTTP PUT — Updating Data](#http-put--updating-data)
1. [HTTP PATCH — Partial Updates](#http-patch--partial-updates)
1. [HTTP DELETE — Removing Data](#http-delete--removing-data)
1. [Transaction Bundle — Creating Everything at Once](#transaction-bundle--creating-everything-at-once)
1. [Try It Yourself — Complete cURL Commands](#try-it-yourself--complete-curl-commands)
1. [Key Takeaways](#key-takeaways)

-------

## What is FHIR?

**FHIR** (Fast Healthcare Interoperability Resources) is a standard for exchanging healthcare data electronically. Think of it as a common language that all healthcare systems can speak.

### Core Concepts

| | | |
| :--- | :--- | :--- |
| **Resource** | A single piece of healthcare data | A Patient, an Encounter, a lab result |
| **Resource Type** | The category of the data | `Patient`,`Encounter`,`Observation`,`Condition` |
| **ID** | A unique identifier for that resource | `patient-acs-example` |
| **JSON** | The format FHIR uses | `{ "resourceType": "Patient", "id": "..." }` |
| **Reference** | A link pointing to another resource | `Patient/patient-acs-example` |
| **Profile** | Extra rules on top of base FHIR | PH Core adds Philippine-specific requirements |
| **REST API** | Standard HTTP methods (GET, POST, PUT, DELETE) | `GET https://server/fhir/Patient/123` |

### Anatomy of a FHIR Resource

Every FHIR resource is a JSON object with these key parts:

```
{
  "resourceType": "Patient",          // ⭐ What kind of resource is this?
  "id": "patient-acs-example",        // Unique identifier (you choose or server assigns)
  "meta": {
    "profile": [                       // 🇵🇭 PH Core Profile URL
      "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-patient"
    ]
  },
  "identifier": [ ... ],               // Business identifiers (PhilHealth ID, etc.)
  "name": [ ... ],                    // Human name
  "gender": "male",                  // Administrative gender
  "birthDate": "1981-03-15",         // Date of birth
  "extension": [ ... ]                // Extra data (nationality, religion, occupation)
}

```

-------

## How FHIR Works Over HTTP

FHIR uses standard HTTP methods. Each resource type has its own URL pattern:

```
https://cdr.fhirlab.net/fhir/{resourceType}/{id}

```

### HTTP Methods Cheat Sheet

| | | | |
| :--- | :--- | :--- | :--- |
| **GET** | Read data | Retrieve a resource | `GET /Patient/123` |
| **POST** | Create data | Create a new resource | `POST /Patient` |
| **PUT** | Replace data | Update/replace entire resource | `PUT /Patient/123` |
| **PATCH** | Modify data | Partial update | `PATCH /Patient/123` |
| **DELETE** | Remove data | Delete a resource | `DELETE /Patient/123` |

### Required Headers

Every FHIR request must include:

```
Content-Type: application/fhir+json
Accept: application/fhir+json

```

-------

## REST Methods Recommendation

The following table provides a framework recommendation for choosing the right HTTP method based on the FHIR interaction and resource type. This guidance helps prevent common mistakes like duplicate records or overwriting clinical history.

| | | | |
| :--- | :--- | :--- | :--- |
| **POST** | **Create** | Used when the**server assigns the logical ID**. Recommended for clinical events where each submission is a new measurement. Also used to submit**Transactions**to the server root. | `Observation`(new vitals),`Bundle`(Transactions),`Patient`(new record) |
| **PUT** | **Update / Upsert** | Used when the**client knows the resource ID**. A successful update creates a new technical version.**Best Practice:**Use**Conditional PUT**for registry resources to search for a match and prevent duplicate records. | `Patient`,`Device`,`Organization` |
| **GET** | **Read / Search** | Used to retrieve a specific resource by ID or search for multiple resources matching criteria. A successful request returns a`200 OK`. | Any resource (e.g.,`Patient`,`Condition`,`Encounter`) |
| **DELETE** | **Delete** | Used to remove a resource from the server. Successful deletion returns a`204 No Content`. Previous versions may remain accessible via history. | Any Resource |
| **PATCH** | **Partial Update** | Used to apply**partial modifications**to a resource without sending the entire body. | `Patient` |

### Key Discussion and Best Practices

#### POST for Observations

In a transaction involving wearable devices, the recommendation is to use **POST** for `Observation` resources. This ensures that every measurement (like heart rate or blood pressure) results in a unique, timestamped record rather than overwriting previous data.

> **Why POST?** Observations are clinical events. Each blood pressure reading taken at 08:00, 08:15, and 08:30 is a distinct event with its own clinical significance. If you used PUT, you would need a predefined ID for each reading, and you risk replacing a previous measurement instead of creating a new one. POST guarantees that the server assigns a unique ID to every single measurement, preserving the full clinical timeline.

#### PUT for Registry Resources

For "registry-style" resources such as `Patient`, `Device`, or `Organization`, the recommendation is to use **PUT**. Specifically, using a **Conditional PUT** (e.g., `PUT Patient?identifier=system|value`) ensures that the server updates the existing record if found, or creates a new one only if no match exists, effectively avoiding duplicates.

> **Example Conditional PUT:**

```
PUT https://cdr.fhirlab.net/fhir/Patient?identifier=http://philhealth.gov.ph/fhir/Identifier/philhealth-id|63-584789845-5
Content-Type: application/fhir+json
Accept: application/fhir+json

```

This tells the server: "Search for a Patient with this PhilHealth ID. If found, update it. If not, create a new one." This pattern is essential for master patient indexes and device registries.

#### POST for Transactions

When processing multiple resources simultaneously (like a patient, their device, and several observations), they should be bundled and submitted via **POST** to the server root (`POST /`).

> **Why a Bundle?** A transaction Bundle is atomic — either all resources succeed, or all fail. This prevents partial data states where a Patient is created but their Observations fail. You can also use `urn:uuid:` references inside the Bundle so that resources can reference each other before the server assigns real IDs.

#### Idempotency

| | | |
| :--- | :--- | :--- |
| **GET** | ✅ Yes | Reading the same resource multiple times returns the same data. |
| **PUT** | ✅ Yes | Updating the same resource with the same body multiple times results in the same final state. |
| **DELETE** | ✅ Yes | Deleting the same resource twice results in the same deleted state. |
| **POST** | ❌ No | Posting the same resource multiple times will create**duplicate records**with different IDs. |
| **PATCH** | ❌ No | Patching the same resource multiple times may produce different results depending on the starting state. |

> **Important:** Because POST is not idempotent, you must design your client carefully. If a POST request times out, you cannot safely retry it without risk of duplicates. For registry resources, prefer Conditional PUT to avoid this problem.

#### PATCH Discussion

Even though some frameworks exclude PATCH from their basic coverage, it is a powerful tool for real-world integrations. **PATCH** is useful when you want to update only specific fields without sending the entire resource. This saves bandwidth, reduces the risk of accidental overwrites, and simplifies concurrent editing scenarios.

FHIR uses the **JSON Patch** format (`Content-Type: application/json-patch+json`). A JSON Patch body is an array of operations, each with an `op`, a `path`, and a `value`.

> **Example: Update a Patient's phone number and add an email address using JSON Patch:**

```
PATCH https://cdr.fhirlab.net/fhir/Patient/123
Content-Type: application/json-patch+json
Accept: application/fhir+json

```

**Request Body:**

```
[
  {
    "op": "replace",
    "path": "/telecom/0/value",
    "value": "+63-918-987-6543"
  },
  {
    "op": "add",
    "path": "/telecom/-",
    "value": {
      "system": "email",
      "value": "juan.delacruz@example.com",
      "use": "home"
    }
  }
]

```

**What this does:**
* `replace` at `/telecom/0/value` changes the first telecom entry's value (the phone number).
* `add` at `/telecom/-` appends a new email entry to the end of the telecom array.
**When to use PATCH:**
* You only need to change one or two fields (e.g., updating a status or adding a note).
* You want to avoid the "read-modify-write" cycle required for PUT.
* You are working with large resources and want to minimize payload size.
**Warning:** Not all FHIR servers support PATCH. Check the server capability statement before relying on it.

-------

## The Case Scenario

**Juan Dela Cruz**, a 45-year-old Filipino male, presents to **Philippine General Hospital** Emergency Department with chest pain.

> **Date:** June 12, 2026, 08:30 AM PHT
 **Complaint:** Crushing substernal chest pain, shortness of breath, sweating
 **Initial Diagnosis:** Acute Coronary Syndrome — Anterior STEMI
 **Outcome:** Transferred to CCU after evaluation

We will model this using **4 core FHIR resources**:

1. **Patient**— Who is the patient?
1. **Encounter**— What is the visit?
1. **Condition**— What is the problem?
1. **Observation**— What are the measurements?

These resources are linked by **References** (like foreign keys in a database).

-------

## Resource Relationships

Here is how the resources connect to each other:

```
graph TD
    A[Patient<br/>Juan Dela Cruz<br/>patient-acs-example] --> B[Encounter<br/>ED Visit<br/>encounter-ed-example]
    B --> C[Condition<br/>Acute STEMI<br/>condition-acs-example]
    B --> D[Observation<br/>Blood Pressure<br/>observation-bp-acs]
    C --> A
    D --> A
    D --> B
    
    style A fill:#e1f5fe
    style B fill:#fff3e0
    style C fill:#fce4ec
    style D fill:#f3e5f5

```

### Reference Rules

* Every resource **must** point to the **Patient** via `subject`
* Every resource **should** point to the **Encounter** via `encounter`
* The **Encounter** points back to the **Patient** via `subject`
* The **Condition** references both **Patient** and **Encounter**

-------

## HTTP GET — Reading Data

**GET** retrieves existing resources from the server. This is the safest operation — it never changes data.

### Example 1: Read a Patient

```
GET https://cdr.fhirlab.net/fhir/Patient/patient-acs-example
Accept: application/fhir+json

```

**What this does:** Asks the server for the Patient with ID `patient-acs-example`.

**Expected Response:** `200 OK` with the Patient JSON.

### Example 2: Search for Encounters by Patient

```
GET https://cdr.fhirlab.net/fhir/Encounter?subject=Patient/patient-acs-example
Accept: application/fhir+json

```

**What this does:** Finds all Encounters for this patient.

**Expected Response:** `200 OK` with a **Bundle** containing matching Encounters.

### Example 3: Search Observations by Encounter

```
GET https://cdr.fhirlab.net/fhir/Observation?encounter=Encounter/encounter-ed-example
Accept: application/fhir+json

```

**What this does:** Finds all Observations (vitals, labs) from this visit.

### Common Search Parameters

| | | |
| :--- | :--- | :--- |
| Patient | `identifier` | `?identifier=63-584789845-5` |
| Patient | `name` | `?name=Dela Cruz` |
| Encounter | `subject` | `?subject=Patient/123` |
| Encounter | `date` | `?date=2026-06-12` |
| Observation | `subject` | `?subject=Patient/123` |
| Observation | `code` | `?code=85354-9` |
| Condition | `subject` | `?subject=Patient/123` |
| Condition | `code` | `?code=401303003` |

-------

## HTTP POST — Creating Data

**POST** creates a new resource. The server assigns an ID and returns it in the `Location` header.

> **Framework Best Practice:** Use POST when the server must assign the logical ID. This is especially important for clinical event resources like `Observation`, where every new measurement should be a distinct, timestamped record. Never use PUT for a new vital sign unless you have a predefined ID and intentionally want to overwrite.

### Creating the Patient

The **Patient** is always the first resource to create because everything else references it.

#### Request

```
POST https://cdr.fhirlab.net/fhir/Patient
Content-Type: application/fhir+json
Accept: application/fhir+json

```

#### Request Body

```
{
  "resourceType": "Patient",
  "meta": {
    "profile": [
      "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-patient"
    ]
  },
  "identifier": [
    {
      "system": "http://philhealth.gov.ph/fhir/Identifier/philhealth-id",
      "value": "63-584789845-5"
    }
  ],
  "name": [
    {
      "use": "official",
      "family": "Dela Cruz",
      "given": ["Juan", "Carlos"]
    }
  ],
  "gender": "male",
  "birthDate": "1981-03-15",
  "active": true,
  "telecom": [
    {
      "system": "phone",
      "value": "+63-917-123-4567",
      "use": "mobile"
    }
  ],
  "address": [
    {
      "use": "home",
      "type": "both",
      "line": ["123 Mabini Street", "Barangay Malinis"],
      "city": "City of Las Piñas",
      "district": "NCR",
      "postalCode": "1740",
      "country": "PH",
      "extension": [
        {
          "url": "https://fhir.doh.gov.ph/phcore/StructureDefinition/city-municipality",
          "valueCoding": {
            "system": "https://psa.gov.ph/classification/psgc",
            "code": "1380200000",
            "display": "City of Las Piñas"
          }
        },
        {
          "url": "https://fhir.doh.gov.ph/phcore/StructureDefinition/region",
          "valueCoding": {
            "system": "https://psa.gov.ph/classification/psgc",
            "code": "1300000000",
            "display": "National Capital Region"
          }
        }
      ]
    }
  ],
  "extension": [
    {
      "url": "http://hl7.org/fhir/StructureDefinition/patient-nationality",
      "extension": [
        {
          "url": "code",
          "valueCodeableConcept": {
            "coding": [
              {
                "system": "urn:iso:std:iso:3166",
                "code": "PH",
                "display": "Philippines"
              }
            ]
          }
        },
        {
          "url": "period",
          "valuePeriod": {
            "start": "1981-03-15"
          }
        }
      ]
    },
    {
      "url": "http://hl7.org/fhir/StructureDefinition/patient-religion",
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/v3-ReligiousAffiliation",
            "code": "1041",
            "display": "Roman Catholic Church"
          }
        ]
      }
    },
    {
      "url": "https://fhir.doh.gov.ph/phcore/StructureDefinition/race",
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/v3-Race",
            "code": "2036-2",
            "display": "Filipino"
          }
        ]
      }
    },
    {
      "url": "https://fhir.doh.gov.ph/phcore/StructureDefinition/educational-attainment",
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "https://psa.gov.ph/classification/psced/level",
            "code": "C201301",
            "display": "Elementary Graduate"
          }
        ]
      }
    },
    {
      "url": "https://fhir.doh.gov.ph/phcore/StructureDefinition/occupation",
      "extension": [
        {
          "url": "occupationClassification",
          "valueCodeableConcept": {
            "coding": [
              {
                "system": "https://psa.gov.ph/classification/psoc/unit",
                "code": "911102",
                "display": "Street Food Vendor"
              }
            ]
          }
        },
        {
          "url": "occupationLength",
          "valuePeriod": {
            "start": "2015-01-01"
          }
        }
      ]
    }
  ]
}

```

#### Field-by-Field Breakdown

| | | | |
| :--- | :--- | :--- | :--- |
| `resourceType` | ⭐ Yes | Must be`"Patient"` | `"Patient"` |
| `meta.profile` | 🇵🇭 PH Core | Tells server to validate against PH Core | Profile URL |
| `identifier` | 🇵🇭 PH Core | Business identifiers | PhilHealth ID |
| `name` | ⭐ Yes | Official name | `family: "Dela Cruz"`,`given: ["Juan", "Carlos"]` |
| `gender` | ⭐ Yes | Administrative gender | `"male"` |
| `birthDate` | ⭐ Yes | ISO date (YYYY-MM-DD) | `"1981-03-15"` |
| `address` | No | Home address | With PSGC extensions for Philippines |
| `extension` | 🇵🇭 PH Core | PH-specific data | nationality, religion, education, occupation |

#### Expected Response

```
HTTP/1.1 201 Created
Location: https://cdr.fhirlab.net/fhir/Patient/123
Content-Type: application/fhir+json

{
  "resourceType": "Patient",
  "id": "123",
  "meta": {
    "versionId": "1",
    "lastUpdated": "2026-06-12T08:30:00Z"
  },
  ... // rest of the resource
}

```

> **Key Point:** The server assigns `id: "123"`. Save this ID — you need it for references!

-------

### Creating the Encounter

The **Encounter** represents the ED visit. It must reference the Patient we just created.

#### Request

```
POST https://cdr.fhirlab.net/fhir/Encounter
Content-Type: application/fhir+json
Accept: application/fhir+json

```

#### Request Body

```
{
  "resourceType": "Encounter",
  "meta": {
    "profile": [
      "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-encounter"
    ]
  },
  "identifier": [
    {
      "system": "http://pgh.gov.ph/fhir/Identifier/encounter-id",
      "value": "ENC-2026-0612-001"
    }
  ],
  "status": "finished",
  "class": {
    "system": "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code": "EMER",
    "display": "emergency"
  },
  "priority": {
    "coding": [
      {
        "system": "http://terminology.hl7.org/CodeSystem/v3-ActPriority",
        "code": "EM",
        "display": "emergency"
      }
    ]
  },
  "type": [
    {
      "coding": [
        {
          "system": "http://terminology.hl7.org/CodeSystem/v3-ActCode",
          "code": "EMER",
          "display": "emergency"
        }
      ],
      "text": "Emergency Department Visit"
    }
  ],
  "subject": {
    "reference": "Patient/123"
  },
  "period": {
    "start": "2026-06-12T08:30:00+08:00",
    "end": "2026-06-12T10:30:00+08:00"
  },
  "serviceProvider": {
    "reference": "Organization/organization-pgh-example"
  },
  "participant": [
    {
      "type": [
        {
          "coding": [
            {
              "system": "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
              "code": "ATND",
              "display": "attender"
            }
          ]
        }
      ],
      "individual": {
        "reference": "Practitioner/practitioner-ed-example"
      }
    }
  ],
  "hospitalization": {
    "admitSource": {
      "coding": [
        {
          "system": "http://terminology.hl7.org/CodeSystem/admit-source",
          "code": "emd",
          "display": "From accident/emergency department"
        }
      ]
    }
  }
}

```

#### Field-by-Field Breakdown

| | | | |
| :--- | :--- | :--- | :--- |
| `resourceType` | ⭐ Yes | Must be`"Encounter"` | `"Encounter"` |
| `status` | ⭐ Yes | Current status | `"finished"`(visit is complete) |
| `class` | ⭐ Yes | Classification | `"EMER"`= emergency |
| `subject` | ⭐ Yes | Who is the patient? | `Patient/123`(use the ID from POST) |
| `period` | No | Visit duration | Start and end timestamps |
| `serviceProvider` | No | Which organization? | Reference to Organization |
| `participant` | No | Who was involved? | Practitioner references |
| `hospitalization` | No | Admission details | Where did the patient come from? |

> **Important:** The `subject.reference` must use the **server-assigned ID** from the Patient POST response. If the server assigned `123`, use `Patient/123`.

-------

### Creating the Condition

The **Condition** represents the diagnosis (Acute STEMI).

#### Request

```
POST https://cdr.fhirlab.net/fhir/Condition
Content-Type: application/fhir+json
Accept: application/fhir+json

```

#### Request Body

```
{
  "resourceType": "Condition",
  "meta": {
    "profile": [
      "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-condition"
    ]
  },
  "clinicalStatus": {
    "coding": [
      {
        "system": "http://terminology.hl7.org/CodeSystem/condition-clinical",
        "code": "active",
        "display": "Active"
      }
    ]
  },
  "verificationStatus": {
    "coding": [
      {
        "system": "http://terminology.hl7.org/CodeSystem/condition-ver-status",
        "code": "confirmed",
        "display": "Confirmed"
      }
    ]
  },
  "category": [
    {
      "coding": [
        {
          "system": "http://terminology.hl7.org/CodeSystem/condition-category",
          "code": "encounter-diagnosis",
          "display": "Encounter Diagnosis"
        }
      ],
      "text": "Acute Diagnosis"
    }
  ],
  "code": {
    "coding": [
      {
        "system": "http://snomed.info/sct",
        "code": "401303003",
        "display": "Acute ST segment elevation myocardial infarction"
      }
    ],
    "text": "Acute Coronary Syndrome - STEMI"
  },
  "subject": {
    "reference": "Patient/123"
  },
  "encounter": {
    "reference": "Encounter/456"
  },
  "onsetDateTime": "2026-06-12T08:30:00+08:00",
  "recordedDate": "2026-06-12T08:45:00+08:00",
  "note": [
    {
      "text": "45-year-old male with 2-hour history of crushing substernal chest pain radiating to left arm."
    }
  ]
}

```

#### Field-by-Field Breakdown

| | | | |
| :--- | :--- | :--- | :--- |
| `resourceType` | ⭐ Yes | Must be`"Condition"` | `"Condition"` |
| `clinicalStatus` | ⭐ Yes | active, resolved, inactive, etc. | `"active"` |
| `verificationStatus` | ⭐ Yes | confirmed, provisional, etc. | `"confirmed"` |
| `category` | ⭐ Yes | Type of condition | `encounter-diagnosis`,`problem-list-item` |
| `code` | ⭐ Yes | The actual diagnosis | SNOMED CT code for STEMI |
| `subject` | ⭐ Yes | Who has this condition? | `Patient/123` |
| `encounter` | No | Which visit? | `Encounter/456` |
| `onsetDateTime` | No | When did it start? | `"2026-06-12T08:30:00+08:00"` |
| `recordedDate` | No | When was it documented? | `"2026-06-12T08:45:00+08:00"` |

-------

### Creating the Observation

The **Observation** captures the blood pressure reading. This is the most complex resource because it uses `component` for systolic and diastolic.

> **Framework Best Practice:** Because this is a new clinical measurement, we use **POST** so the server assigns a unique ID. If we later take another blood pressure reading at 09:00, that must also be a new POST. Never reuse the same ID for different timestamps.

#### Request

```
POST https://cdr.fhirlab.net/fhir/Observation
Content-Type: application/fhir+json
Accept: application/fhir+json

```

#### Request Body

```
{
  "resourceType": "Observation",
  "meta": {
    "profile": [
      "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation"
    ]
  },
  "status": "final",
  "category": [
    {
      "coding": [
        {
          "system": "http://terminology.hl7.org/CodeSystem/observation-category",
          "code": "vital-signs",
          "display": "Vital Signs"
        }
      ]
    }
  ],
  "code": {
    "coding": [
      {
        "system": "http://loinc.org",
        "code": "85354-9",
        "display": "Blood pressure panel with all children optional"
      }
    ]
  },
  "subject": {
    "reference": "Patient/123"
  },
  "encounter": {
    "reference": "Encounter/456"
  },
  "effectiveDateTime": "2026-06-12T08:30:00+08:00",
  "bodySite": {
    "coding": [
      {
        "system": "http://snomed.info/sct",
        "code": "368209003",
        "display": "Right arm"
      }
    ]
  },
  "component": [
    {
      "code": {
        "coding": [
          {
            "system": "http://loinc.org",
            "code": "8480-6",
            "display": "Systolic blood pressure"
          }
        ]
      },
      "valueQuantity": {
        "value": 160,
        "unit": "mmHg",
        "system": "http://unitsofmeasure.org",
        "code": "mm[Hg]"
      },
      "interpretation": [
        {
          "coding": [
            {
              "system": "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
              "code": "H",
              "display": "High"
            }
          ]
        }
      ]
    },
    {
      "code": {
        "coding": [
          {
            "system": "http://loinc.org",
            "code": "8462-4",
            "display": "Diastolic blood pressure"
          }
        ]
      },
      "valueQuantity": {
        "value": 95,
        "unit": "mmHg",
        "system": "http://unitsofmeasure.org",
        "code": "mm[Hg]"
      },
      "interpretation": [
        {
          "coding": [
            {
              "system": "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
              "code": "H",
              "display": "High"
            }
          ]
        }
      ]
    }
  ]
}

```

#### Field-by-Field Breakdown

| | | | |
| :--- | :--- | :--- | :--- |
| `resourceType` | ⭐ Yes | Must be`"Observation"` | `"Observation"` |
| `status` | ⭐ Yes | registered, preliminary, final, amended | `"final"` |
| `category` | ⭐ Yes | Type of observation | `vital-signs`,`laboratory`,`survey` |
| `code` | ⭐ Yes | What was measured? | LOINC code for blood pressure panel |
| `subject` | ⭐ Yes | Who was observed? | `Patient/123` |
| `encounter` | No | Which visit? | `Encounter/456` |
| `effectiveDateTime` | ⭐ Yes | When was it measured? | `"2026-06-12T08:30:00+08:00"` |
| `component` | No | For complex measurements | Systolic + Diastolic |
| `valueQuantity` | No | The numeric result | `value: 160`,`unit: "mmHg"` |
| `interpretation` | No | High, Low, Normal | `"H"`= High |

#### Why component?

Blood pressure has **two values** (systolic and diastolic). Instead of creating two separate Observations, FHIR uses `component` to keep them together:

```
component[0] = Systolic (LOINC 8480-6) = 160 mmHg
component[1] = Diastolic (LOINC 8462-4) = 95 mmHg

```

This is the correct FHIR pattern for all multi-part measurements (BP, Apgar scores, etc.).

-------

## HTTP PUT — Updating Data

**PUT** replaces an entire resource. You must send the **complete** resource, including the `id`.

> **Framework Best Practice:** Use PUT for registry-style resources such as `Patient`, `Device`, or `Organization`. When you do not know the server-assigned ID, use a **Conditional PUT** (e.g., `PUT Patient?identifier=system|value`) to let the server find an existing record and update it, or create a new one if no match exists.

### Example: Update Patient Address

Scenario: Juan moved to a new address. We need to update his Patient record.

#### Step 1: Read the current resource

```
GET https://cdr.fhirlab.net/fhir/Patient/123
Accept: application/fhir+json

```

#### Step 2: Modify the JSON

Change the `address` field:

```
{
  "resourceType": "Patient",
  "id": "123",                          // ⭐ Must include the ID
  "meta": {
    "profile": [
      "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-patient"
    ]
  },
  "identifier": [ ... ],              // Keep existing identifiers
  "name": [ ... ],                    // Keep existing name
  "gender": "male",
  "birthDate": "1981-03-15",
  "address": [
    {
      "use": "home",
      "type": "both",
      "line": ["456 Rizal Avenue", "Barangay Uno"],  // ⭐ New address
      "city": "City of Manila",
      "district": "NCR",
      "postalCode": "1000",
      "country": "PH",
      "extension": [
        {
          "url": "https://fhir.doh.gov.ph/phcore/StructureDefinition/city-municipality",
          "valueCoding": {
            "system": "https://psa.gov.ph/classification/psgc",
            "code": "1380600000",
            "display": "City of Manila"
          }
        },
        {
          "url": "https://fhir.doh.gov.ph/phcore/StructureDefinition/region",
          "valueCoding": {
            "system": "https://psa.gov.ph/classification/psgc",
            "code": "1300000000",
            "display": "National Capital Region"
          }
        }
      ]
    }
  ],
  "extension": [ ... ]                // Keep existing extensions
}

```

#### Step 3: Send the PUT request

```
PUT https://cdr.fhirlab.net/fhir/Patient/123
Content-Type: application/fhir+json
Accept: application/fhir+json

```

#### Expected Response

```
HTTP/1.1 200 OK
Content-Type: application/fhir+json

{
  "resourceType": "Patient",
  "id": "123",
  "meta": {
    "versionId": "2",                // ⭐ Version incremented
    "lastUpdated": "2026-06-12T11:00:00Z"
  },
  ... // Updated resource
}

```

> **Warning:** PUT replaces the **entire** resource. If you omit a field, it gets deleted! Always send the full resource.

-------

### Conditional PUT Example

If you do not know the server-assigned ID, use a conditional PUT to avoid duplicates:

```
PUT https://cdr.fhirlab.net/fhir/Patient?identifier=http://philhealth.gov.ph/fhir/Identifier/philhealth-id|63-584789845-5
Content-Type: application/fhir+json
Accept: application/fhir+json

```

**How it works:**

* The server searches for a Patient with that PhilHealth ID.
* If found, it updates that existing Patient.
* If not found, it creates a new Patient.

This is the recommended pattern for registry resources when integrating data from multiple systems.

-------

## HTTP PATCH — Partial Updates

**PATCH** updates only specific fields without sending the entire resource. This uses [JSON Patch](http://jsonpatch.com/) format.

> **Framework Discussion:** PATCH is ideal when you want to update only specific fields without sending the entire resource. It saves bandwidth, reduces the risk of accidental overwrites, and simplifies concurrent editing. FHIR supports JSON Patch via the `application/json-patch+json` content type.

### Example: Update Patient Phone Number

Scenario: Juan got a new phone number. We only want to change the `telecom` field.

#### Request

```
PATCH https://cdr.fhirlab.net/fhir/Patient/123
Content-Type: application/json-patch+json
Accept: application/fhir+json

```

#### Request Body (JSON Patch)

```
[
  {
    "op": "replace",
    "path": "/telecom/0/value",
    "value": "+63-918-987-6543"
  }
]

```

#### JSON Patch Operations

| | | |
| :--- | :--- | :--- |
| `add` | Adds a new field | `{"op": "add", "path": "/telecom/1", "value": {...}}` |
| `replace` | Changes an existing field | `{"op": "replace", "path": "/gender", "value": "male"}` |
| `remove` | Deletes a field | `{"op": "remove", "path": "/telecom/1"}` |

#### Concrete JSON Patch Example

Here is a more detailed example that updates a Patient's phone number, adds an email address, and removes the second telecom entry:

```
PATCH https://cdr.fhirlab.net/fhir/Patient/123
Content-Type: application/json-patch+json
Accept: application/fhir+json

```

**Request Body:**

```
[
  {
    "op": "replace",
    "path": "/telecom/0/value",
    "value": "+63-918-987-6543"
  },
  {
    "op": "add",
    "path": "/telecom/-",
    "value": {
      "system": "email",
      "value": "juan.delacruz@example.com",
      "use": "home"
    }
  },
  {
    "op": "remove",
    "path": "/telecom/1"
  }
]

```

**Explanation:**

* `replace` at `/telecom/0/value` updates the first telecom entry's value (the phone number).
* `add` at `/telecom/-` appends a new email entry to the end of the telecom array.
* `remove` at `/telecom/1` deletes the second telecom entry (the old work phone).

#### Expected Response

```
HTTP/1.1 200 OK
Content-Type: application/fhir+json

{
  "resourceType": "Patient",
  "id": "123",
  "meta": {
    "versionId": "3",
    "lastUpdated": "2026-06-12T11:15:00Z"
  },
  ... // Resource with updated phone number
}

```

> **Note:** Not all FHIR servers support PATCH. Check the server capability statement before relying on it.

-------

## HTTP DELETE — Removing Data

**DELETE** removes a resource. Use with caution!

### Example: Delete an Observation

Scenario: A blood pressure reading was entered twice. We want to delete the duplicate.

#### Request

```
DELETE https://cdr.fhirlab.net/fhir/Observation/789
Accept: application/fhir+json

```

#### Expected Response

```
HTTP/1.1 200 OK

```

Or the server may return:

```
HTTP/1.1 204 No Content

```

#### What Happens After Delete?

* The resource is marked as deleted
* Subsequent GET requests return `410 Gone`
* References to this resource may break (other resources still point to it)

> **Safety Tip:** Some servers prefer "soft delete" (mark as inactive) rather than hard delete. Check your server's behavior.

-------

## Transaction Bundle — Creating Everything at Once

Instead of sending 4 separate POST requests, you can send **one** Bundle with all resources. This is atomic — either all succeed, or all fail.

> **Framework Best Practice:** When processing multiple resources simultaneously (like a patient, their device, and several observations), bundle them and submit via **POST** to the server root.

### Why Use a Bundle?

* **Atomicity:** All resources created together (no partial success)
* **References:** Resources can reference each other within the Bundle
* **Efficiency:** One HTTP request instead of many
* **Order:** Server processes entries in order

### Request

```
POST https://cdr.fhirlab.net/fhir
Content-Type: application/fhir+json
Accept: application/fhir+json

```

### Request Body

```
{
  "resourceType": "Bundle",
  "id": "bundle-acs-case-example",
  "type": "transaction",
  "entry": [
    {
      "fullUrl": "urn:uuid:patient-acs-example",
      "resource": {
        "resourceType": "Patient",
        "meta": {
          "profile": [
            "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-patient"
          ]
        },
        "identifier": [
          {
            "system": "http://philhealth.gov.ph/fhir/Identifier/philhealth-id",
            "value": "63-584789845-5"
          }
        ],
        "name": [
          {
            "use": "official",
            "family": "Dela Cruz",
            "given": ["Juan", "Carlos"]
          }
        ],
        "gender": "male",
        "birthDate": "1981-03-15",
        "active": true,
        "telecom": [
          {
            "system": "phone",
            "value": "+63-917-123-4567",
            "use": "mobile"
          }
        ],
        "address": [
          {
            "use": "home",
            "type": "both",
            "line": ["123 Mabini Street", "Barangay Malinis"],
            "city": "City of Las Piñas",
            "district": "NCR",
            "postalCode": "1740",
            "country": "PH",
            "extension": [
              {
                "url": "https://fhir.doh.gov.ph/phcore/StructureDefinition/city-municipality",
                "valueCoding": {
                  "system": "https://psa.gov.ph/classification/psgc",
                  "code": "1380200000",
                  "display": "City of Las Piñas"
                }
              },
              {
                "url": "https://fhir.doh.gov.ph/phcore/StructureDefinition/region",
                "valueCoding": {
                  "system": "https://psa.gov.ph/classification/psgc",
                  "code": "1300000000",
                  "display": "National Capital Region"
                }
              }
            ]
          }
        ],
        "extension": [
          {
            "url": "http://hl7.org/fhir/StructureDefinition/patient-nationality",
            "extension": [
              {
                "url": "code",
                "valueCodeableConcept": {
                  "coding": [
                    {
                      "system": "urn:iso:std:iso:3166",
                      "code": "PH",
                      "display": "Philippines"
                    }
                  ]
                }
              },
              {
                "url": "period",
                "valuePeriod": {
                  "start": "1981-03-15"
                }
              }
            ]
          },
          {
            "url": "http://hl7.org/fhir/StructureDefinition/patient-religion",
            "valueCodeableConcept": {
              "coding": [
                {
                  "system": "http://terminology.hl7.org/CodeSystem/v3-ReligiousAffiliation",
                  "code": "1041",
                  "display": "Roman Catholic Church"
                }
              ]
            }
          }
        ]
      },
      "request": {
        "method": "POST",
        "url": "Patient"
      }
    },
    {
      "fullUrl": "urn:uuid:encounter-ed-example",
      "resource": {
        "resourceType": "Encounter",
        "meta": {
          "profile": [
            "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-encounter"
          ]
        },
        "identifier": [
          {
            "system": "http://pgh.gov.ph/fhir/Identifier/encounter-id",
            "value": "ENC-2026-0612-001"
          }
        ],
        "status": "finished",
        "class": {
          "system": "http://terminology.hl7.org/CodeSystem/v3-ActCode",
          "code": "EMER",
          "display": "emergency"
        },
        "priority": {
          "coding": [
            {
              "system": "http://terminology.hl7.org/CodeSystem/v3-ActPriority",
              "code": "EM",
              "display": "emergency"
            }
          ]
        },
        "type": [
          {
            "coding": [
              {
                "system": "http://terminology.hl7.org/CodeSystem/v3-ActCode",
                "code": "EMER",
                "display": "emergency"
              }
            ],
            "text": "Emergency Department Visit"
          }
        ],
        "subject": {
          "reference": "urn:uuid:patient-acs-example"
        },
        "period": {
          "start": "2026-06-12T08:30:00+08:00",
          "end": "2026-06-12T10:30:00+08:00"
        },
        "serviceProvider": {
          "reference": "Organization/organization-pgh-example"
        }
      },
      "request": {
        "method": "POST",
        "url": "Encounter"
      }
    },
    {
      "fullUrl": "urn:uuid:condition-acs-example",
      "resource": {
        "resourceType": "Condition",
        "meta": {
          "profile": [
            "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-condition"
          ]
        },
        "clinicalStatus": {
          "coding": [
            {
              "system": "http://terminology.hl7.org/CodeSystem/condition-clinical",
              "code": "active",
              "display": "Active"
            }
          ]
        },
        "verificationStatus": {
          "coding": [
            {
              "system": "http://terminology.hl7.org/CodeSystem/condition-ver-status",
              "code": "confirmed",
              "display": "Confirmed"
            }
          ]
        },
        "category": [
          {
            "coding": [
              {
                "system": "http://terminology.hl7.org/CodeSystem/condition-category",
                "code": "encounter-diagnosis",
                "display": "Encounter Diagnosis"
              }
            ],
            "text": "Acute Diagnosis"
          }
        ],
        "code": {
          "coding": [
            {
              "system": "http://snomed.info/sct",
              "code": "401303003",
              "display": "Acute ST segment elevation myocardial infarction"
            }
          ],
          "text": "Acute Coronary Syndrome - STEMI"
        },
        "subject": {
          "reference": "urn:uuid:patient-acs-example"
        },
        "encounter": {
          "reference": "urn:uuid:encounter-ed-example"
        },
        "onsetDateTime": "2026-06-12T08:30:00+08:00",
        "recordedDate": "2026-06-12T08:45:00+08:00"
      },
      "request": {
        "method": "POST",
        "url": "Condition"
      }
    },
    {
      "fullUrl": "urn:uuid:observation-bp-acs",
      "resource": {
        "resourceType": "Observation",
        "meta": {
          "profile": [
            "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation"
          ]
        },
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system": "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "vital-signs",
                "display": "Vital Signs"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "85354-9",
              "display": "Blood pressure panel with all children optional"
            }
          ]
        },
        "subject": {
          "reference": "urn:uuid:patient-acs-example"
        },
        "encounter": {
          "reference": "urn:uuid:encounter-ed-example"
        },
        "effectiveDateTime": "2026-06-12T08:30:00+08:00",
        "component": [
          {
            "code": {
              "coding": [
                {
                  "system": "http://loinc.org",
                  "code": "8480-6",
                  "display": "Systolic blood pressure"
                }
              ]
            },
            "valueQuantity": {
              "value": 160,
              "unit": "mmHg",
              "system": "http://unitsofmeasure.org",
              "code": "mm[Hg]"
            },
            "interpretation": [
              {
                "coding": [
                  {
                    "system": "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                    "code": "H",
                    "display": "High"
                  }
                ]
              }
            ]
          },
          {
            "code": {
              "coding": [
                {
                  "system": "http://loinc.org",
                  "code": "8462-4",
                  "display": "Diastolic blood pressure"
                }
              ]
            },
            "valueQuantity": {
              "value": 95,
              "unit": "mmHg",
              "system": "http://unitsofmeasure.org",
              "code": "mm[Hg]"
            },
            "interpretation": [
              {
                "coding": [
                  {
                    "system": "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                    "code": "H",
                    "display": "High"
                  }
                ]
              }
            ]
          }
        ]
      },
      "request": {
        "method": "POST",
        "url": "Observation"
      }
    }
  ]
}

```

### Key Bundle Features

| | | |
| :--- | :--- | :--- |
| `type: "transaction"` | Atomic operation | All 4 resources succeed or all fail |
| `fullUrl` | Temporary ID | `urn:uuid:...`lets resources reference each other before they get real IDs |
| `request.method` | HTTP method | `POST`for each entry |
| `request.url` | Resource type | `Patient`,`Encounter`,`Condition`,`Observation` |
| References | Cross-linking | `Condition.subject`points to`urn:uuid:patient-acs-example` |

### Expected Response

```
HTTP/1.1 200 OK
Content-Type: application/fhir+json

{
  "resourceType": "Bundle",
  "id": "...",
  "type": "transaction-response",
  "entry": [
    {
      "response": {
        "status": "201",
        "location": "Patient/123/_history/1",
        "etag": "1"
      }
    },
    {
      "response": {
        "status": "201",
        "location": "Encounter/456/_history/1",
        "etag": "1"
      }
    },
    {
      "response": {
        "status": "201",
        "location": "Condition/789/_history/1",
        "etag": "1"
      }
    },
    {
      "response": {
        "status": "201",
        "location": "Observation/101/_history/1",
        "etag": "1"
      }
    }
  ]
}

```

> **Success:** The server returns a `transaction-response` Bundle showing all resources were created successfully. Save the IDs from the `location` headers!

-------

## Try It Yourself — Complete cURL Commands

You can copy and paste these commands directly into your terminal to test against the FHIR server.

### Prerequisites

```
# Check if you have curl installed
curl --version

# Test connectivity to the server
curl -I https://cdr.fhirlab.net/fhir/metadata

```

### 1. Read the Server Capability Statement

```
curl -X GET \
  https://cdr.fhirlab.net/fhir/metadata \
  -H "Accept: application/fhir+json"

```

This shows what the server supports (which resources, operations, etc.).

### 2. Create a Patient

```
curl -X POST \
  https://cdr.fhirlab.net/fhir/Patient \
  -H "Content-Type: application/fhir+json" \
  -H "Accept: application/fhir+json" \
  -d '{
    "resourceType": "Patient",
    "meta": {
      "profile": [
        "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-patient"
      ]
    },
    "identifier": [
      {
        "system": "http://philhealth.gov.ph/fhir/Identifier/philhealth-id",
        "value": "63-584789845-5"
      }
    ],
    "name": [
      {
        "use": "official",
        "family": "Dela Cruz",
        "given": ["Juan", "Carlos"]
      }
    ],
    "gender": "male",
    "birthDate": "1981-03-15",
    "active": true
  }'

```

**Save the returned `Location` header — it contains the Patient ID!**

### 3. Read the Patient Back

```
curl -X GET \
  https://cdr.fhirlab.net/fhir/Patient/123 \
  -H "Accept: application/fhir+json"

```

Replace `123` with the actual ID from step 2.

### 4. Search for Patients by Name

```
curl -X GET \
  "https://cdr.fhirlab.net/fhir/Patient?name=Dela+Cruz" \
  -H "Accept: application/fhir+json"

```

### 5. Create an Encounter

```
curl -X POST \
  https://cdr.fhirlab.net/fhir/Encounter \
  -H "Content-Type: application/fhir+json" \
  -H "Accept: application/fhir+json" \
  -d '{
    "resourceType": "Encounter",
    "meta": {
      "profile": [
        "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-encounter"
      ]
    },
    "status": "finished",
    "class": {
      "system": "http://terminology.hl7.org/CodeSystem/v3-ActCode",
      "code": "EMER",
      "display": "emergency"
    },
    "subject": {
      "reference": "Patient/123"
    },
    "period": {
      "start": "2026-06-12T08:30:00+08:00",
      "end": "2026-06-12T10:30:00+08:00"
    }
  }'

```

### 6. Update Patient Address

```
curl -X PUT \
  https://cdr.fhirlab.net/fhir/Patient/123 \
  -H "Content-Type: application/fhir+json" \
  -H "Accept: application/fhir+json" \
  -d '{
    "resourceType": "Patient",
    "id": "123",
    "meta": {
      "profile": [
        "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-patient"
      ]
    },
    "identifier": [
      {
        "system": "http://philhealth.gov.ph/fhir/Identifier/philhealth-id",
        "value": "63-584789845-5"
      }
    ],
    "name": [
      {
        "use": "official",
        "family": "Dela Cruz",
        "given": ["Juan", "Carlos"]
      }
    ],
    "gender": "male",
    "birthDate": "1981-03-15",
    "active": true,
    "address": [
      {
        "use": "home",
        "type": "both",
        "line": ["456 Rizal Avenue"],
        "city": "City of Manila",
        "district": "NCR",
        "postalCode": "1000",
        "country": "PH"
      }
    ]
  }'

```

### 7. Delete the Patient

```
curl -X DELETE \
  https://cdr.fhirlab.net/fhir/Patient/123 \
  -H "Accept: application/fhir+json"

```

### 8. Create Everything in a Bundle

Save the Bundle JSON to a file named `bundle.json`, then:

```
curl -X POST \
  https://cdr.fhirlab.net/fhir \
  -H "Content-Type: application/fhir+json" \
  -H "Accept: application/fhir+json" \
  -d @bundle.json

```

### 9. Search Observations for a Patient

```
curl -X GET \
  "https://cdr.fhirlab.net/fhir/Observation?subject=Patient/123" \
  -H "Accept: application/fhir+json"

```

### 10. Read an Observation

```
curl -X GET \
  https://cdr.fhirlab.net/fhir/Observation/789 \
  -H "Accept: application/fhir+json"

```

-------

## Key Takeaways

### HTTP Methods Summary

| | | | |
| :--- | :--- | :--- | :--- |
| **GET** | `/Patient/123` | None | Read a resource |
| **GET** | `/Patient?name=Juan` | None | Search resources |
| **POST** | `/Patient` | Full JSON | Create a resource |
| **PUT** | `/Patient/123` | Full JSON | Replace a resource |
| **PATCH** | `/Patient/123` | JSON Patch | Update specific fields |
| **DELETE** | `/Patient/123` | None | Remove a resource |
| **POST** | `/` | Bundle | Create multiple resources atomically |

### Framework Quick Reference

| | |
| :--- | :--- |
| Creating a new vital sign or lab result | **POST**(server assigns unique ID) |
| Updating a patient registry record | **PUT**or**Conditional PUT**(avoid duplicates) |
| Sending multiple resources at once | **POST**Bundle to server root |
| Updating only one field | **PATCH**with JSON Patch |
| Reading or searching | **GET** |
| Removing data | **DELETE** |

### Critical Rules

1. **Always include headers:**`Content-Type: application/fhir+json`and`Accept: application/fhir+json`
1. **POST creates, server assigns ID:**Save the`Location`header from the response
1. **PUT requires full resource:**Missing fields are deleted
1. **PATCH uses JSON Patch:**`[{"op": "replace", "path": "...", "value": "..."}]`
1. **References use format:**`ResourceType/ID`(e.g.,`Patient/123`)
1. **Bundle transactions use `urn:uuid:`**for temporary IDs before server assignment
1. **Use Conditional PUT for registries:**Prevents duplicate Patient, Device, or Organization records
1. **POST is not idempotent:**Repeating a POST can create duplicates; design retries carefully

### PH Core Specifics

| | | |
| :--- | :--- | :--- |
| Profile URL | `meta.profile` | `https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-patient` |
| PhilHealth ID | `identifier` | `system: "http://philhealth.gov.ph/fhir/Identifier/philhealth-id"` |
| PSGC Address | `address.extension` | `city-municipality`,`region`,`barangay` |
| Nationality | `extension` | `http://hl7.org/fhir/StructureDefinition/patient-nationality` |
| Religion | `extension` | `http://hl7.org/fhir/StructureDefinition/patient-religion` |
| Occupation | `extension` | `https://fhir.doh.gov.ph/phcore/StructureDefinition/occupation` |

### Next Steps

1. **Browse the Artifacts**page for all PH Core profiles, extensions, and value sets
1. **Explore the Terminology**page for Philippine code systems (PSGC, PSOC, PSCED)
1. **Test with the Bundle**JSON against the test server
1. **Build your own client**using these patterns

-------

## Interactive Resource Links

* [Patient/patient-acs-example](Patient-patient-acs-example.md)
* [Encounter/encounter-ed-example](Encounter-encounter-ed-example.md)
* [Condition/condition-acs-example](Condition-condition-acs-example.md)
* [Observation/observation-bp-acs](Observation-observation-bp-acs.md)
* [Bundle/bundle-acs-case-example](Bundle-bundle-acs-case-example.md)

-------

**Created: 2026-06-12**
 **For: PH Core IG Issue #305 — Examples Alignment**
 **Target: Aklan Connectathon / FHIR Fundamentals Training**

