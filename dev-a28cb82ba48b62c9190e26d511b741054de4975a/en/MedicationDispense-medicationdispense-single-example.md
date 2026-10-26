# medicationdispense-single-example - Draft PH Core Implementation Guide v0.2.0

## Example MedicationDispense: medicationdispense-single-example

Pharmacy dispensed 30 tablets of Twinact 40mg/5mg (Telmisartan + Amlodipine) to Juan Dela Cruz on March 15, 2025, based on prescription from Dr. Maria Clara Santos.



## Resource Content

```json
{
  "resourceType" : "MedicationDispense",
  "id" : "medicationdispense-single-example",
  "meta" : {
    "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-medicationdispense"]
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
  "performer" : [{
    "function" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/medicationdispense-performer-function",
        "code" : "finalchecker",
        "display" : "Final Checker"
      }]
    },
    "actor" : {
      "reference" : "Practitioner/practitioner-single-example"
    }
  }],
  "authorizingPrescription" : [{
    "reference" : "MedicationRequest/medicationrequest-single-example"
  }],
  "type" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "373784005",
      "display" : "Dispensing medication"
    }]
  },
  "quantity" : {
    "value" : 30,
    "unit" : "Tablet",
    "system" : "http://snomed.info/sct",
    "code" : "732936001"
  },
  "daysSupply" : {
    "value" : 7,
    "unit" : "days",
    "system" : "http://unitsofmeasure.org",
    "code" : "d"
  },
  "whenPrepared" : "2025-03-15T10:30:00+08:00",
  "whenHandedOver" : "2025-03-15T11:00:00+08:00",
  "dosageInstruction" : [{
    "sequence" : 1,
    "text" : "Take 1 tablet once daily"
  }]
}

```
