# PH Core Server CapabilityStatement - Draft PH Core Implementation Guide v0.2.0

## CapabilityStatement: PH Core Server CapabilityStatement (Experimental) 

 
CapabilityStatement for the PH Core Implementation Guide. Defines the conformance requirements for FHIR servers implementing the minimum set of Philippine Realm resource constraints. Validated at the June 2026 Aklan Connectathon with the Juan Dela Cruz ACS scenario. Transaction Bundles are supported for atomic submission of clinical packages. Both POST (create) and PUT (update/upsert) patterns are demonstrated in Connectathon-validated examples. 

 [Raw OpenAPI-Swagger Definition file](../ExamplePHCoreCapabilityStatement.openapi.json) | [Download](../ExamplePHCoreCapabilityStatement.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "ExamplePHCoreCapabilityStatement",
  "meta" : {
    "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-capability-statement"]
  },
  "url" : "https://fhir.doh.gov.ph/phcore/CapabilityStatement/ExamplePHCoreCapabilityStatement",
  "version" : "0.2.0",
  "name" : "PHCoreServerCapabilityStatement",
  "title" : "PH Core Server CapabilityStatement",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-22",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "CapabilityStatement for the PH Core Implementation Guide. Defines the conformance requirements for FHIR servers implementing the minimum set of Philippine Realm resource constraints. Validated at the June 2026 Aklan Connectathon with the Juan Dela Cruz ACS scenario. Transaction Bundles are supported for atomic submission of clinical packages. Both POST (create) and PUT (update/upsert) patterns are demonstrated in Connectathon-validated examples.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PH",
      "display" : "Philippines"
    }]
  }],
  "kind" : "requirements",
  "fhirVersion" : "4.0.1",
  "format" : ["json", "xml"],
  "rest" : [{
    "mode" : "server",
    "documentation" : "FHIR RESTful server supporting PH Core profiles and interactions validated at the June 2026 Aklan Connectathon. Supports standard CRUD operations, search, and transaction Bundles for atomic resource submission. Both POST (create-new) and PUT (conditional update/upsert) patterns are supported for each resource type, matching the two Connectathon-validated example Bundles.",
    "security" : {
      "service" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/restful-security-service",
          "code" : "SMART-on-FHIR",
          "display" : "SMART-on-FHIR"
        }]
      }],
      "description" : "Implementations SHOULD use SMART on FHIR or equivalent bearer-token authentication. Transport security (TLS) is REQUIRED. See the PH Core IG security guidance for base requirements."
    },
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "SHALL"
      }],
      "type" : "Patient",
      "profile" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-patient",
      "documentation" : "Patient demographics with Philippine-specific extensions (nationality, religion, ethnicity, PWD disability, occupation, education). Supports PhilHealth and PhilSys identifiers. Must Support: name (given split into first/middle), birthDate, gender, telecom, address (PSGC hierarchy), identifier.",
      "interaction" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "read"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "search-type"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "create"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "update"
      }],
      "searchParam" : [{
        "name" : "_id",
        "type" : "token"
      },
      {
        "name" : "identifier",
        "type" : "token",
        "documentation" : "Search by PhilHealth ID or PhilSys ID."
      },
      {
        "name" : "name",
        "type" : "string"
      },
      {
        "name" : "birthdate",
        "type" : "date"
      },
      {
        "name" : "gender",
        "type" : "token"
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "SHALL"
      }],
      "type" : "Practitioner",
      "profile" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-practitioner",
      "documentation" : "Practitioner resource for healthcare providers. Includes SOGIE extensions (genderIdentity, individualPronouns, sex). Must Support: name, telecom, address, birthDate, gender, identifier (PRC license).",
      "interaction" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "read"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "search-type"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "create"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "update"
      }],
      "searchParam" : [{
        "name" : "_id",
        "type" : "token"
      },
      {
        "name" : "identifier",
        "type" : "token",
        "documentation" : "Search by PRC license number."
      },
      {
        "name" : "name",
        "type" : "string"
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "SHALL"
      }],
      "type" : "Organization",
      "profile" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-organization",
      "documentation" : "Organization resource for healthcare facilities. Supports NHFR facility code, HCPN network code, PEN, and PAN identifiers. Address constrained to PHCoreAddress with PSGC geographic coding. PartOf for facility hierarchy.",
      "interaction" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "read"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "search-type"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "create"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "update"
      }],
      "searchParam" : [{
        "name" : "_id",
        "type" : "token"
      },
      {
        "name" : "identifier",
        "type" : "token",
        "documentation" : "Search by NHFR facility code, HCPN code, PEN, or PAN."
      },
      {
        "name" : "name",
        "type" : "string"
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "SHALL"
      }],
      "type" : "PractitionerRole",
      "profile" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-practitionerrole",
      "documentation" : "PractitionerRole linking practitioners to facilities and locations. Used in the ACS scenario for ED attending physician role assignment.",
      "interaction" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "read"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "search-type"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHOULD"
        }],
        "code" : "create"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHOULD"
        }],
        "code" : "update"
      }],
      "searchParam" : [{
        "name" : "_id",
        "type" : "token"
      },
      {
        "name" : "identifier",
        "type" : "token"
      },
      {
        "name" : "practitioner",
        "type" : "reference"
      },
      {
        "name" : "organization",
        "type" : "reference"
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "SHOULD"
      }],
      "type" : "Location",
      "profile" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-location",
      "documentation" : "Location resource for healthcare service locations and sites within facilities. Address constrained to PHCoreAddress with PSGC geographic hierarchy. Used as reference from Encounter and PractitionerRole.",
      "interaction" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "read"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "search-type"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHOULD"
        }],
        "code" : "create"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHOULD"
        }],
        "code" : "update"
      }],
      "searchParam" : [{
        "name" : "_id",
        "type" : "token"
      },
      {
        "name" : "name",
        "type" : "string"
      },
      {
        "name" : "organization",
        "type" : "reference"
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "SHOULD"
      }],
      "type" : "RelatedPerson",
      "profile" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-relatedperson",
      "documentation" : "RelatedPerson for patient contacts, next of kin, guardians, and emergency contacts. Supports PhilHealth and PhilSys identifiers with PH Core naming and address constraints.",
      "interaction" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "read"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "search-type"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHOULD"
        }],
        "code" : "create"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHOULD"
        }],
        "code" : "update"
      }],
      "searchParam" : [{
        "name" : "_id",
        "type" : "token"
      },
      {
        "name" : "patient",
        "type" : "reference"
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "SHALL"
      }],
      "type" : "Encounter",
      "profile" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-encounter",
      "documentation" : "Encounter resource for clinical visits and encounters. class is required and Must Support. Hospitalization details supported. Location references PHCoreLocation. Used in both ACS (ED encounter) and general (ambulatory) scenarios.",
      "interaction" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "read"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "search-type"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "create"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "update"
      }],
      "searchParam" : [{
        "name" : "_id",
        "type" : "token"
      },
      {
        "name" : "subject",
        "type" : "reference"
      },
      {
        "name" : "date",
        "type" : "date"
      },
      {
        "name" : "status",
        "type" : "token"
      },
      {
        "name" : "location",
        "type" : "reference"
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "SHALL"
      }],
      "type" : "Condition",
      "profile" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-condition",
      "documentation" : "Condition resource for diagnoses and problems. category, encounter, note, severity, subject, and code are Must Support. Used for encounter diagnosis (ACS) and problem-list (T2DM comorbidity).",
      "interaction" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "read"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "search-type"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "create"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "update"
      }],
      "searchParam" : [{
        "name" : "_id",
        "type" : "token"
      },
      {
        "name" : "subject",
        "type" : "reference"
      },
      {
        "name" : "encounter",
        "type" : "reference"
      },
      {
        "name" : "clinical-status",
        "type" : "token"
      },
      {
        "name" : "code",
        "type" : "token"
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "SHALL"
      }],
      "type" : "Observation",
      "profile" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation",
      "documentation" : "Observation resource for clinical measurements, vital signs, and lab results. subject, encounter, performer, basedOn, and partOf constrained to PH Core profiles. Used extensively in the ACS scenario: vital signs (BP, HR, RR, SpO2, temp, pain) and lab results (troponin, glucose, HbA1c, cholesterol, ECG).",
      "interaction" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "read"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "search-type"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "create"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "update"
      }],
      "searchParam" : [{
        "name" : "_id",
        "type" : "token"
      },
      {
        "name" : "subject",
        "type" : "reference"
      },
      {
        "name" : "encounter",
        "type" : "reference"
      },
      {
        "name" : "code",
        "type" : "token",
        "documentation" : "Search by LOINC code for specific observation types (e.g., 85354-9 for BP, 8480-6 for BP systolic)."
      },
      {
        "name" : "date",
        "type" : "date"
      },
      {
        "name" : "category",
        "type" : "token"
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "SHOULD"
      }],
      "type" : "Procedure",
      "profile" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-procedure",
      "documentation" : "Procedure resource for clinical procedures and treatments. subject (Patient/Group) and status are Must Support with obligations. encounter is Must Support.",
      "interaction" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "read"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "search-type"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHOULD"
        }],
        "code" : "create"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHOULD"
        }],
        "code" : "update"
      }],
      "searchParam" : [{
        "name" : "_id",
        "type" : "token"
      },
      {
        "name" : "subject",
        "type" : "reference"
      },
      {
        "name" : "encounter",
        "type" : "reference"
      },
      {
        "name" : "date",
        "type" : "date"
      },
      {
        "name" : "code",
        "type" : "token"
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "SHOULD"
      }],
      "type" : "Immunization",
      "profile" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-immunization",
      "documentation" : "Immunization resource for vaccination records. Includes extensions for BatchNumber and AdministeredProduct. patient, status, lotNumber, and occurrenceDateTime are Must Support with obligations.",
      "interaction" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "read"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "search-type"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHOULD"
        }],
        "code" : "create"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHOULD"
        }],
        "code" : "update"
      }],
      "searchParam" : [{
        "name" : "_id",
        "type" : "token"
      },
      {
        "name" : "patient",
        "type" : "reference"
      },
      {
        "name" : "vaccine-code",
        "type" : "token"
      },
      {
        "name" : "date",
        "type" : "date"
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "SHOULD"
      }],
      "type" : "AllergyIntolerance",
      "profile" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-allergyintolerance",
      "documentation" : "AllergyIntolerance resource for patient allergies and adverse reactions. patient is 1..1 Must Support. reaction and onset are Must Support.",
      "interaction" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "read"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "search-type"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHOULD"
        }],
        "code" : "create"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHOULD"
        }],
        "code" : "update"
      }],
      "searchParam" : [{
        "name" : "_id",
        "type" : "token"
      },
      {
        "name" : "patient",
        "type" : "reference"
      },
      {
        "name" : "clinical-status",
        "type" : "token"
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "SHOULD"
      }],
      "type" : "HealthcareService",
      "profile" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-healthcareservice",
      "documentation" : "HealthcareService resource for available clinical services. identifier, active, providedBy, location, name, and telecom are Must Support with obligations.",
      "interaction" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "read"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "search-type"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHOULD"
        }],
        "code" : "create"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHOULD"
        }],
        "code" : "update"
      }],
      "searchParam" : [{
        "name" : "_id",
        "type" : "token"
      },
      {
        "name" : "location",
        "type" : "reference"
      },
      {
        "name" : "organization",
        "type" : "reference"
      },
      {
        "name" : "name",
        "type" : "string"
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "SHOULD"
      }],
      "type" : "ServiceRequest",
      "profile" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-serviceRequest",
      "documentation" : "ServiceRequest resource for orders and requests. subject and status are 1..1 Must Support. encounter and requester are Must Support.",
      "interaction" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "read"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "search-type"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHOULD"
        }],
        "code" : "create"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHOULD"
        }],
        "code" : "update"
      }],
      "searchParam" : [{
        "name" : "_id",
        "type" : "token"
      },
      {
        "name" : "subject",
        "type" : "reference"
      },
      {
        "name" : "status",
        "type" : "token"
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "SHOULD"
      }],
      "type" : "Provenance",
      "profile" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-provenance",
      "documentation" : "Provenance resource for audit trail and data provenance. Agent sliced into ProvenanceAuthor and ProvenanceTransmitter. Agent.who constrained to PH Core profiles. Location references PHCoreLocation.",
      "interaction" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "read"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "search-type"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHOULD"
        }],
        "code" : "create"
      }],
      "searchParam" : [{
        "name" : "_id",
        "type" : "token"
      },
      {
        "name" : "target",
        "type" : "reference"
      },
      {
        "name" : "agent",
        "type" : "reference"
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "SHOULD"
      }],
      "type" : "Task",
      "profile" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-task",
      "documentation" : "Task resource for workflow tracking. executionPeriod, for, and note are Must Support. status is 1..1 Must Support. References constrained to PH Core profiles.",
      "interaction" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "read"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "search-type"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHOULD"
        }],
        "code" : "create"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHOULD"
        }],
        "code" : "update"
      }],
      "searchParam" : [{
        "name" : "_id",
        "type" : "token"
      },
      {
        "name" : "patient",
        "type" : "reference"
      },
      {
        "name" : "status",
        "type" : "token"
      },
      {
        "name" : "owner",
        "type" : "reference"
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "SHOULD"
      }],
      "type" : "Composition",
      "profile" : "http://hl7.org/fhir/StructureDefinition/Composition",
      "documentation" : "Composition resource for clinical documents. Used in the ACS scenario for the ED Physician's Note containing the complete clinical narrative. Currently uses base FHIR profile.",
      "interaction" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "read"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "search-type"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHOULD"
        }],
        "code" : "create"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHOULD"
        }],
        "code" : "update"
      }],
      "searchParam" : [{
        "name" : "_id",
        "type" : "token"
      },
      {
        "name" : "subject",
        "type" : "reference"
      },
      {
        "name" : "encounter",
        "type" : "reference"
      },
      {
        "name" : "date",
        "type" : "date"
      },
      {
        "name" : "type",
        "type" : "token"
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "MAY"
      }],
      "type" : "Medication",
      "profile" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-medication",
      "documentation" : "Medication resource for medicinal products. Code bound to DrugsVS (PH FDA drug codes). EXPERIMENTAL profile.",
      "interaction" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "read"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "search-type"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "MAY"
        }],
        "code" : "create"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "MAY"
        }],
        "code" : "update"
      }],
      "searchParam" : [{
        "name" : "_id",
        "type" : "token"
      },
      {
        "name" : "code",
        "type" : "token"
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "MAY"
      }],
      "type" : "MedicationRequest",
      "profile" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-medicationrequest",
      "documentation" : "MedicationRequest resource for prescription orders. subject, encounter, medicationReference, requester, and performer constrained to PH Core profiles. DrugsVS binding. EXPERIMENTAL profile.",
      "interaction" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "read"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "search-type"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "MAY"
        }],
        "code" : "create"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "MAY"
        }],
        "code" : "update"
      }],
      "searchParam" : [{
        "name" : "_id",
        "type" : "token"
      },
      {
        "name" : "subject",
        "type" : "reference"
      },
      {
        "name" : "encounter",
        "type" : "reference"
      },
      {
        "name" : "medication",
        "type" : "reference"
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "MAY"
      }],
      "type" : "MedicationStatement",
      "profile" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-medicationstatement",
      "documentation" : "MedicationStatement resource for medication usage records. subject (Patient), context (Encounter), and medicationReference constrained. DrugsVS binding. EXPERIMENTAL profile.",
      "interaction" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "read"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "search-type"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "MAY"
        }],
        "code" : "create"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "MAY"
        }],
        "code" : "update"
      }],
      "searchParam" : [{
        "name" : "_id",
        "type" : "token"
      },
      {
        "name" : "subject",
        "type" : "reference"
      },
      {
        "name" : "context",
        "type" : "reference"
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "MAY"
      }],
      "type" : "MedicationDispense",
      "profile" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-medicationdispense",
      "documentation" : "MedicationDispense resource for medication dispense records. subject, context, medicationReference, performer, location, and authorizingPrescription constrained. DrugsVS binding. EXPERIMENTAL profile.",
      "interaction" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "read"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "search-type"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "MAY"
        }],
        "code" : "create"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "MAY"
        }],
        "code" : "update"
      }],
      "searchParam" : [{
        "name" : "_id",
        "type" : "token"
      },
      {
        "name" : "subject",
        "type" : "reference"
      },
      {
        "name" : "context",
        "type" : "reference"
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "MAY"
      }],
      "type" : "MedicationAdministration",
      "profile" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-medicationadministration",
      "documentation" : "MedicationAdministration resource for medication administration records. subject, context, medicationReference, performer, request, and partOf constrained. DrugsVS binding. EXPERIMENTAL profile.",
      "interaction" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "read"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "search-type"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "MAY"
        }],
        "code" : "create"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "MAY"
        }],
        "code" : "update"
      }],
      "searchParam" : [{
        "name" : "_id",
        "type" : "token"
      },
      {
        "name" : "subject",
        "type" : "reference"
      },
      {
        "name" : "context",
        "type" : "reference"
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "MAY"
      }],
      "type" : "Claim",
      "profile" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-claim",
      "documentation" : "Claim resource for healthcare reimbursement claims. patient, insurer, provider, payee, and careTeam constrained to PH Core profiles.",
      "interaction" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "read"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "search-type"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "MAY"
        }],
        "code" : "create"
      }],
      "searchParam" : [{
        "name" : "_id",
        "type" : "token"
      },
      {
        "name" : "patient",
        "type" : "reference"
      }]
    }],
    "interaction" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "SHALL"
      }],
      "code" : "transaction",
      "documentation" : "Transaction Bundle support for atomic submission of clinical packages. The ACS case example uses PUT for idempotent upsert; the general transaction example uses POST for new resource creation."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "MAY"
      }],
      "code" : "batch"
    }]
  }]
}

```
