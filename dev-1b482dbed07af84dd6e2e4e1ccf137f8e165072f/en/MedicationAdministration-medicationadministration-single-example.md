# medicationadministration-single-example - Draft PH Core Implementation Guide v0.2.0

## Example MedicationAdministration: medicationadministration-single-example

Juan Dela Cruz took 1 tablet of Twinact (Telmisartan + Amlodipine) orally on March 15, 2025 at 2:00 PM as prescribed.



## Resource Content

```json
{
  "resourceType" : "MedicationAdministration",
  "id" : "medicationadministration-single-example",
  "meta" : {
    "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-medicationadministration"]
  },
  "status" : "completed",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "https://verification.fda.gov.ph",
      "code" : "DRP-10144",
      "display" : "Twinact"
    }],
    "text" : "Twinact 40mg/5mg tablet"
  },
  "subject" : {
    "reference" : "Patient/patient-single-example"
  },
  "context" : {
    "reference" : "Encounter/encounter-single-example"
  },
  "effectiveDateTime" : "2025-03-15T14:00:00+08:00",
  "performer" : [{
    "function" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0443",
        "code" : "PP",
        "display" : "Primary Care Provider"
      }]
    },
    "actor" : {
      "reference" : "Patient/patient-single-example"
    }
  }],
  "request" : {
    "reference" : "MedicationRequest/medicationrequest-single-example"
  },
  "dosage" : {
    "text" : "1 tablet taken orally",
    "route" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v3-RouteOfAdministration",
        "code" : "PO",
        "display" : "Swallow, oral"
      }]
    },
    "dose" : {
      "value" : 1,
      "unit" : "tablet",
      "system" : "http://unitsofmeasure.org",
      "code" : "1"
    }
  }
}

```
