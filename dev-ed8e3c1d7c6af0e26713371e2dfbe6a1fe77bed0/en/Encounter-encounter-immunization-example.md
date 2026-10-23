# encounter-immunization-example - Draft PH Core Implementation Guide v0.2.1

## Example Encounter: encounter-immunization-example

Profile: [PH Core Encounter](StructureDefinition-ph-core-encounter.md)

**status**: Finished

**class**: [ActCode: AMB](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActCode.html#v3-ActCode-AMB) (ambulatory)

**subject**: [Juan Dela Fuente Dela Cruz Male, DoB: 1980-01-01 ( http://philhealth.gov.ph/fhir/Identifier/philhealth-id#PhilHealthID#63-584789845-5)](Patient-patient-single-example.md)

**period**: 2013-01-10 09:00:00+0800 --> 2013-01-10 09:30:00+0800

**serviceProvider**: [Organization Philippine General Hospital](Organization-organization-pgh-example.md)



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "encounter-immunization-example",
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
    "reference" : "Patient/patient-single-example"
  },
  "period" : {
    "start" : "2013-01-10T09:00:00+08:00",
    "end" : "2013-01-10T09:30:00+08:00"
  },
  "serviceProvider" : {
    "reference" : "Organization/organization-pgh-example"
  }
}

```
