# transaction-example - Draft PH Core Implementation Guide v0.2.0

## Example Bundle: transaction-example



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "transaction-example",
  "type" : "transaction",
  "entry" : [{
    "fullUrl" : "https://fhir.doh.gov.ph/phcore/Patient/patient-single-example",
    "resource" : {
      "resourceType" : "Patient",
      "id" : "patient-single-example",
      "meta" : {
        "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-patient"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Patient_patient-single-example\"> </a>Juan Dela Cruz is a male patient born on 1 January 1980, residing in Manila, NCR, Philippines.</div>"
      },
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "urn:iso:std:iso:3166",
              "code" : "PH",
              "display" : "Philippines"
            }]
          }
        },
        {
          "url" : "period",
          "valuePeriod" : {
            "start" : "2020-01-01",
            "end" : "2023-01-01"
          }
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/patient-nationality"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/patient-religion",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v3-ReligiousAffiliation",
            "code" : "1007",
            "display" : "Atheism"
          }]
        }
      },
      {
        "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/indigenous-people",
        "valueBoolean" : true
      },
      {
        "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/indigenous-group",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://fhir.doh.gov.ph/phcore/CodeSystem/indigenous-groups-cs",
            "code" : "Aetas",
            "display" : "Aetas"
          }]
        }
      },
      {
        "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/race",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v3-Race",
            "code" : "2036-2",
            "display" : "Filipino"
          }]
        }
      },
      {
        "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/educational-attainment",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://psa.gov.ph/classification/psced/level",
            "code" : "C201301",
            "display" : "Elementary Graduate"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "occupationClassification",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "https://psa.gov.ph/classification/psoc/unit",
              "code" : "111102",
              "display" : "Hospital Administrator"
            }]
          }
        },
        {
          "url" : "occupationLength",
          "valuePeriod" : {
            "start" : "2020-01-01"
          }
        }],
        "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/occupation"
      }],
      "identifier" : [{
        "system" : "http://philhealth.gov.ph/fhir/Identifier/philhealth-id",
        "value" : "63-584789845-5"
      }],
      "active" : true,
      "name" : [{
        "family" : "Dela Cruz",
        "given" : ["Juan Jane", "Dela Fuente"]
      }],
      "gender" : "male",
      "birthDate" : "1980-01-01",
      "address" : [{
        "extension" : [{
          "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/barangay",
          "valueCoding" : {
            "system" : "https://psa.gov.ph/classification/psgc",
            "code" : "1380100001",
            "display" : "Barangay 1"
          }
        },
        {
          "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/city-municipality",
          "valueCoding" : {
            "system" : "https://psa.gov.ph/classification/psgc",
            "code" : "1380200000",
            "display" : "City of Las Piñas"
          }
        },
        {
          "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/province",
          "valueCoding" : {
            "system" : "https://psa.gov.ph/classification/psgc",
            "code" : "0402100000",
            "display" : "Cavite"
          }
        }],
        "line" : ["123 Mabini Street", "Barangay Malinis"],
        "city" : "Quezon City",
        "district" : "NCR",
        "postalCode" : "1100",
        "country" : "PH"
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "Patient"
    }
  },
  {
    "fullUrl" : "https://fhir.doh.gov.ph/phcore/Practitioner/practitioner-single-example",
    "resource" : {
      "resourceType" : "Practitioner",
      "id" : "practitioner-single-example",
      "meta" : {
        "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-practitioner"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Practitioner_practitioner-single-example\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Practitioner practitioner-single-example</b></p><a name=\"practitioner-single-example\"> </a><a name=\"hcpractitioner-single-example\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-ph-core-practitioner.html\">PH Core Practitioner</a></p></div><blockquote><p><b>Person Recorded Sex Or Gender</b></p><ul><li>value: <span title=\"Codes:{http://snomed.info/sct 248152002}\">Female (finding)</span></li><li>type: <span title=\"Codes:{http://loinc.org 76689-9}\">Sex Assigned at Birth</span></li></ul></blockquote><blockquote><p><b>Individual Gender Identity</b></p><ul><li>value: <span title=\"Codes:{http://loinc.org LA22879-3}\">Identifies as female</span></li></ul></blockquote><blockquote><p><b>Individual Pronouns</b></p><ul><li>value: <span title=\"Codes:{http://loinc.org LA29519-8}\">she/her/her/hers/herself</span></li></ul></blockquote><p><b>name</b>: Maria Clara Santos (Official)</p><p><b>telecom</b>: <a href=\"tel:+63-912-345-6789\">+63-912-345-6789</a>, <a href=\"mailto:maria.santos@example.ph\">maria.santos@example.ph</a></p><p><b>address</b>: 1234 Mabini Street 1000 PH (home)</p><p><b>gender</b>: Female</p><p><b>birthDate</b>: 1985-05-15</p><h3>Qualifications</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Identifier</b></td><td><b>Code</b></td><td><b>Period</b></td><td><b>Issuer</b></td></tr><tr><td style=\"display: none\">*</td><td><code>http://prc.gov.ph/fhir/Identifier/prc-license</code>/0123456</td><td><span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0360 MD}\">Doctor of Medicine</span></td><td>2010-07-15 --&gt; (ongoing)</td><td><a href=\"Organization-organization-single-example.html\">Organization Department of Health - Sattelite Office</a></td></tr></table><p><b>communication</b>: <span title=\"Codes:{urn:ietf:bcp:47 fil}\">Filipino</span>, <span title=\"Codes:{urn:ietf:bcp:47 en}\">English</span></p></div>"
      },
      "extension" : [{
        "extension" : [{
          "url" : "value",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "http://snomed.info/sct",
              "code" : "248152002",
              "display" : "Female (finding)"
            }]
          }
        },
        {
          "url" : "type",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "http://loinc.org",
              "code" : "76689-9",
              "display" : "Sex Assigned at Birth"
            }]
          }
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender"
      },
      {
        "extension" : [{
          "url" : "value",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "http://loinc.org",
              "code" : "LA22879-3",
              "display" : "Identifies as female"
            }]
          }
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/individual-genderIdentity"
      },
      {
        "extension" : [{
          "url" : "value",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "http://loinc.org",
              "code" : "LA29519-8",
              "display" : "she/her/her/hers/herself"
            }]
          }
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/individual-pronouns"
      }],
      "name" : [{
        "use" : "official",
        "family" : "Santos",
        "given" : ["Maria", "Clara"],
        "suffix" : ["MD"]
      }],
      "telecom" : [{
        "system" : "phone",
        "value" : "+63-912-345-6789",
        "use" : "mobile"
      },
      {
        "system" : "email",
        "value" : "maria.santos@example.ph",
        "use" : "work"
      }],
      "address" : [{
        "extension" : [{
          "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/barangay",
          "valueCoding" : {
            "system" : "https://psa.gov.ph/classification/psgc",
            "code" : "1339000003",
            "display" : "Ermita"
          }
        },
        {
          "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/city-municipality",
          "valueCoding" : {
            "system" : "https://psa.gov.ph/classification/psgc",
            "code" : "1380600000",
            "display" : "City of Manila"
          }
        },
        {
          "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/region",
          "valueCoding" : {
            "system" : "https://psa.gov.ph/classification/psgc",
            "code" : "1300000000",
            "display" : "National Capital Region"
          }
        }],
        "use" : "home",
        "line" : ["1234 Mabini Street"],
        "postalCode" : "1000",
        "country" : "PH"
      }],
      "gender" : "female",
      "birthDate" : "1985-05-15",
      "qualification" : [{
        "identifier" : [{
          "system" : "http://prc.gov.ph/fhir/Identifier/prc-license",
          "value" : "0123456"
        }],
        "code" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0360",
            "code" : "MD",
            "display" : "Doctor of Medicine"
          }]
        },
        "period" : {
          "start" : "2010-07-15"
        },
        "issuer" : {
          "reference" : "Organization/organization-single-example"
        }
      }],
      "communication" : [{
        "coding" : [{
          "system" : "urn:ietf:bcp:47",
          "code" : "fil",
          "display" : "Filipino"
        }]
      },
      {
        "coding" : [{
          "system" : "urn:ietf:bcp:47",
          "code" : "en",
          "display" : "English"
        }]
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "Practitioner"
    }
  },
  {
    "fullUrl" : "https://fhir.doh.gov.ph/phcore/Encounter/encounter-single-example",
    "resource" : {
      "resourceType" : "Encounter",
      "id" : "encounter-single-example",
      "meta" : {
        "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-encounter"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Encounter_encounter-single-example\"> </a>An ambulatory visit for Juan Dela Cruz that has been completed.</div>"
      },
      "identifier" : [{
        "system" : "http://example.org/encounter-id",
        "value" : "ENC-12345"
      }],
      "status" : "finished",
      "class" : {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
        "code" : "AMB",
        "display" : "ambulatory"
      },
      "type" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
          "code" : "AMB",
          "display" : "ambulatory"
        }]
      }],
      "subject" : {
        "reference" : "Patient/patient-single-example"
      },
      "participant" : [{
        "type" : [{
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
            "code" : "ATND",
            "display" : "attender"
          }]
        }],
        "individual" : {
          "reference" : "Practitioner/practitioner-single-example"
        }
      }],
      "period" : {
        "start" : "2023-01-01T10:00:00Z",
        "end" : "2023-01-01T11:00:00Z"
      },
      "reasonReference" : [{
        "reference" : "Condition/condition-single-example"
      }],
      "diagnosis" : [{
        "condition" : {
          "reference" : "Condition/condition-single-example"
        }
      }],
      "serviceProvider" : {
        "reference" : "Organization/organization-single-example"
      }
    },
    "request" : {
      "method" : "POST",
      "url" : "Encounter"
    }
  },
  {
    "fullUrl" : "https://fhir.doh.gov.ph/phcore/Condition/condition-single-example",
    "resource" : {
      "resourceType" : "Condition",
      "id" : "condition-single-example",
      "meta" : {
        "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-condition"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_condition-single-example\"> </a>Juan Dela Cruz has an active diagnosis of Type 2 Diabetes Mellitus.</div>"
      },
      "clinicalStatus" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
          "code" : "active",
          "display" : "Active"
        }]
      },
      "verificationStatus" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
          "code" : "confirmed",
          "display" : "Confirmed"
        }]
      },
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
          "code" : "problem-list-item",
          "display" : "Problem List Item"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "44054006",
          "display" : "Diabetes mellitus type 2"
        }],
        "text" : "Type 2 Diabetes Mellitus"
      },
      "subject" : {
        "reference" : "Patient/patient-single-example"
      },
      "encounter" : {
        "reference" : "Encounter/encounter-single-example"
      },
      "onsetDateTime" : "2020-03-15",
      "recordedDate" : "2020-03-15T10:30:00Z",
      "note" : [{
        "text" : "Patient advised on diet and exercise management."
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "Condition"
    }
  },
  {
    "fullUrl" : "https://fhir.doh.gov.ph/phcore/Medication/medication-single-example",
    "resource" : {
      "resourceType" : "Medication",
      "id" : "medication-single-example",
      "meta" : {
        "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-medication"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Medication_medication-single-example\"> </a>Twinact (Telmisartan + Amlodipine) 40mg/5mg tablet from PH FDA CPR.</div>"
      },
      "code" : {
        "coding" : [{
          "system" : "https://verification.fda.gov.ph",
          "code" : "DRP-10144",
          "display" : "Twinact"
        }],
        "text" : "Twinact 40mg/5mg tablet"
      },
      "form" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "385055001",
          "display" : "Tablet"
        }]
      }
    },
    "request" : {
      "method" : "POST",
      "url" : "Medication"
    }
  },
  {
    "fullUrl" : "https://fhir.doh.gov.ph/phcore/Observation/observation-bp-example",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "observation-bp-example",
      "meta" : {
        "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_observation-bp-example\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation observation-bp-example</b></p><a name=\"observation-bp-example\"> </a><a name=\"hcobservation-bp-example\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-ph-core-observation.html\">PH Core Observation</a></p></div><p><b>identifier</b>: <a href=\"http://terminology.hl7.org/7.1.0/NamingSystem-uri.html\" title=\"As defined by RFC 3986 (http://www.ietf.org/rfc/rfc3986.txt)(with many schemes defined in many RFCs). For OIDs and UUIDs, use the URN form (urn:oid:(note: lowercase) and urn:uuid:). See http://www.ietf.org/rfc/rfc3001.txt and http://www.ietf.org/rfc/rfc4122.txt \r\n\r\nThis oid is used as an identifier II.root to indicate the the extension is an absolute URI (technically, an IRI). Typically, this is used for OIDs and GUIDs. Note that when this OID is used with OIDs and GUIDs, the II.extension should start with urn:oid or urn:uuid: \r\n\r\nNote that this OID is created to aid with interconversion between CDA and FHIR - FHIR uses urn:ietf:rfc:3986 as equivalent to this OID. URIs as identifiers appear more commonly in FHIR.\r\n\r\nThis OID may also be used in CD.codeSystem.\">Uniform Resource Identifier (URI)</a>/urn:uuid:187e0c12-8dd2-67e2-99b2-bf273c878281</p><p><b>basedOn</b>: Identifier: <code>https://acme.org/identifiers</code>/1234</p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category vital-signs}\">Vital Signs</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 85354-9}\">Blood pressure systolic &amp; diastolic</span></p><p><b>subject</b>: <a href=\"Patient-patient-single-example.html\">Juan Jane Dela Fuente Dela Cruz  Male, DoB: 1980-01-01 ( http://philhealth.gov.ph/fhir/Identifier/philhealth-id#PhilHealthID#63-584789845-5)</a></p><p><b>effective</b>: 2012-09-17</p><p><b>performer</b>: <a href=\"Practitioner-practitioner-single-example.html\">Practitioner Maria Clara Santos (official)</a></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation L}\">Below low normal</span></p><p><b>bodySite</b>: <span title=\"Codes:{http://snomed.info/sct 368209003}\">Right arm</span></p><blockquote><p><b>component</b></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 8480-6}\">Systolic blood pressure</span></p><p><b>value</b>: 107 mmHg<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemm[Hg] = 'mm[Hg]')</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation N}\">Normal</span></p></blockquote><blockquote><p><b>component</b></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 8462-4}\">Diastolic blood pressure</span></p><p><b>value</b>: 60 mmHg<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemm[Hg] = 'mm[Hg]')</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation L}\">Below low normal</span></p></blockquote></div>"
      },
      "identifier" : [{
        "system" : "urn:ietf:rfc:3986",
        "value" : "urn:uuid:187e0c12-8dd2-67e2-99b2-bf273c878281"
      }],
      "basedOn" : [{
        "identifier" : {
          "system" : "https://acme.org/identifiers",
          "value" : "1234"
        }
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "vital-signs",
          "display" : "Vital Signs"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "85354-9",
          "display" : "Blood pressure panel with all children optional"
        }],
        "text" : "Blood pressure systolic & diastolic"
      },
      "subject" : {
        "reference" : "Patient/patient-single-example"
      },
      "effectiveDateTime" : "2012-09-17",
      "performer" : [{
        "reference" : "Practitioner/practitioner-single-example"
      }],
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "L",
          "display" : "Low"
        }],
        "text" : "Below low normal"
      }],
      "bodySite" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "368209003",
          "display" : "Right arm"
        }]
      },
      "component" : [{
        "code" : {
          "coding" : [{
            "system" : "http://loinc.org",
            "code" : "8480-6",
            "display" : "Systolic blood pressure"
          }]
        },
        "valueQuantity" : {
          "value" : 107,
          "unit" : "mmHg",
          "system" : "http://unitsofmeasure.org",
          "code" : "mm[Hg]"
        },
        "interpretation" : [{
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
            "code" : "N",
            "display" : "Normal"
          }],
          "text" : "Normal"
        }]
      },
      {
        "code" : {
          "coding" : [{
            "system" : "http://loinc.org",
            "code" : "8462-4",
            "display" : "Diastolic blood pressure"
          }]
        },
        "valueQuantity" : {
          "value" : 60,
          "unit" : "mmHg",
          "system" : "http://unitsofmeasure.org",
          "code" : "mm[Hg]"
        },
        "interpretation" : [{
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
            "code" : "L",
            "display" : "Low"
          }],
          "text" : "Below low normal"
        }]
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "Observation"
    }
  },
  {
    "fullUrl" : "https://fhir.doh.gov.ph/phcore/AllergyIntolerance/allergy-single-example",
    "resource" : {
      "resourceType" : "AllergyIntolerance",
      "id" : "allergy-single-example",
      "meta" : {
        "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-allergyintolerance"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"AllergyIntolerance_allergy-single-example\"> </a>Juan Dela Cruz has a high criticality, active allergy to Benethamine penicillin.</div>"
      },
      "clinicalStatus" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
          "code" : "active",
          "display" : "Active"
        }],
        "text" : "Active"
      },
      "verificationStatus" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification",
          "code" : "confirmed",
          "display" : "Confirmed"
        }],
        "text" : "Confirmed"
      },
      "criticality" : "high",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "294494002",
          "display" : "Benethamine penicillin allergy"
        }],
        "text" : "Benethamine penicillin allergy"
      },
      "patient" : {
        "reference" : "Patient/patient-single-example"
      },
      "onsetDateTime" : "2023-01-15",
      "note" : [{
        "text" : "Patient reported rash and swelling after penicillin administration."
      }],
      "reaction" : [{
        "manifestation" : [{
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "271807003",
            "display" : "Eruption of skin"
          }],
          "text" : "Skin rash"
        }],
        "severity" : "severe"
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "AllergyIntolerance"
    }
  },
  {
    "fullUrl" : "https://fhir.doh.gov.ph/phcore/Immunization/immunization-single-example",
    "resource" : {
      "resourceType" : "Immunization",
      "id" : "immunization-single-example",
      "meta" : {
        "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-immunization"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Immunization_immunization-single-example\"> </a>Juan Dela Cruz received a completed intramuscular influenza (H5N1-1203) vaccine in the left arm on January 10, 2013, at Philippine General Hospital. The vaccine lot number was AAJN11K and was privately funded. Dose 1 was administered by Dr. Maria Clara Santos.</div>"
      },
      "extension" : [{
        "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/batch-number",
        "valueString" : "AAJN11K"
      },
      {
        "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/administered-product",
        "valueReference" : {
          "reference" : "Medication/medication-single-example"
        }
      }],
      "identifier" : [{
        "system" : "urn:ietf:rfc:3986",
        "value" : "urn:oid:1.3.6.1.4.1.21367.2005.3.7.1234"
      }],
      "status" : "completed",
      "vaccineCode" : {
        "coding" : [{
          "system" : "http://hl7.org/fhir/sid/cvx",
          "code" : "123",
          "display" : "influenza, H5N1-1203"
        }],
        "text" : "Influenza H5N1-1203 Vaccine"
      },
      "patient" : {
        "reference" : "Patient/patient-single-example"
      },
      "encounter" : {
        "reference" : "Encounter/encounter-single-example"
      },
      "occurrenceDateTime" : "2013-01-10",
      "primarySource" : true,
      "location" : {
        "reference" : "Location/location-single-example"
      },
      "lotNumber" : "AAJN11K",
      "expirationDate" : "2015-02-15",
      "site" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActSite",
          "code" : "LA",
          "display" : "left arm"
        }],
        "text" : "Left arm"
      },
      "route" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-RouteOfAdministration",
          "code" : "IM",
          "display" : "Injection, intramuscular"
        }],
        "text" : "Intramuscular injection"
      },
      "doseQuantity" : {
        "value" : 5,
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      },
      "performer" : [{
        "function" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0443",
            "code" : "OP",
            "display" : "Ordering Provider"
          }],
          "text" : "Ordering Provider"
        },
        "actor" : {
          "reference" : "Practitioner/practitioner-single-example",
          "display" : "Dr. Maria Clara Santos"
        }
      }],
      "note" : [{
        "text" : "Notes on administration of vaccine"
      }],
      "isSubpotent" : true,
      "fundingSource" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/immunization-funding-source",
          "code" : "private",
          "display" : "Private"
        }],
        "text" : "Private"
      },
      "protocolApplied" : [{
        "targetDisease" : [{
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "772828001",
            "display" : "Influenza caused by Influenza A virus subtype H5N1"
          }],
          "text" : "Influenza H5N1"
        }],
        "doseNumberPositiveInt" : 1
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "Practitioner"
    }
  }]
}

```
