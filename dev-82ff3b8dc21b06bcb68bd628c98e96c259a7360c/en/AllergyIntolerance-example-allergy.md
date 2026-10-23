# example-allergy - Draft PH Core Implementation Guide v0.2.0

## Example AllergyIntolerance: example-allergy

**clinicalStatus**: Active

**criticality**: High Risk

**code**: Benethamine penicillin allergy

**patient**: [Juan Jane Dela Fuente Dela Cruz Male, DoB: 1980-01-01 ( http://philhealth.gov.ph/fhir/Identifier/philhealth-id#PhilHealthID#63-584789845-5)](Patient-example-patient.md)



## Resource Content

```json
{
  "resourceType" : "AllergyIntolerance",
  "id" : "example-allergy",
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
      "code" : "active",
      "display" : "Active"
    }]
  },
  "criticality" : "high",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "294494002",
      "display" : "Benethamine penicillin allergy"
    }]
  },
  "patient" : {
    "reference" : "Patient/example-patient"
  }
}

```
