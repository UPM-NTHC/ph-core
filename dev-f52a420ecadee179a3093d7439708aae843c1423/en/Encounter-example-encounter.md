# example-encounter - Draft PH Core Implementation Guide v0.2.0

## Example Encounter: example-encounter

Profile: [PH Core Encounter](StructureDefinition-ph-core-encounter.md)

**status**: Finished

**class**: [ActCode: AMB](http://terminology.hl7.org/7.2.0/CodeSystem-v3-ActCode.html#v3-ActCode-AMB) (ambulatory)

**subject**: [Juan Jane Dela Fuente Dela Cruz Male, DoB: 1980-01-01 ( http://philhealth.gov.ph/fhir/Identifier/philhealth-id#PhilHealthID#63-584789845-5)](Patient-example-patient.md)



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "example-encounter",
  "meta" : {
    "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-encounter"]
  },
  "status" : "finished",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "AMB",
    "display" : "ambulatory"
  },
  "subject" : {
    "reference" : "Patient/example-patient"
  }
}

```
