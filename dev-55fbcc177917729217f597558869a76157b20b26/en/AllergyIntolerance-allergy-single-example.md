# allergy-single-example - Draft PH Core Implementation Guide v0.2.0

## Example AllergyIntolerance: allergy-single-example

Juan Dela Cruz has a high criticality, active allergy to Benethamine penicillin.



## Resource Content

```json
{
  "resourceType" : "AllergyIntolerance",
  "id" : "allergy-single-example",
  "meta" : {
    "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-allergyintolerance"]
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
}

```
