# encounter-surgery-example - Draft PH Core Implementation Guide v0.2.1

## Example Encounter: encounter-surgery-example

Profile: [PH Core Encounter](StructureDefinition-ph-core-encounter.md)

**status**: Finished

**class**: [ActCode: IMP](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActCode.html#v3-ActCode-IMP) (inpatient encounter)

**subject**: [Juan Dela Fuente Dela Cruz Male, DoB: 1980-01-01 ( http://philhealth.gov.ph/fhir/Identifier/philhealth-id#PhilHealthID#63-584789845-5)](Patient-patient-single-example.md)

**period**: 2024-01-15 07:30:00+0800 --> 2024-01-16 12:00:00+0800

### Diagnoses

| | |
| :--- | :--- |
| - | **Condition** |
| * | [Condition Appendicitis](Condition-condition-appendicitis-example.md) |

**serviceProvider**: [Organization Philippine General Hospital](Organization-organization-pgh-example.md)



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "encounter-surgery-example",
  "meta" : {
    "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-encounter"]
  },
  "status" : "finished",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "IMP",
    "display" : "inpatient encounter"
  },
  "subject" : {
    "reference" : "Patient/patient-single-example"
  },
  "period" : {
    "start" : "2024-01-15T07:30:00+08:00",
    "end" : "2024-01-16T12:00:00+08:00"
  },
  "diagnosis" : [{
    "condition" : {
      "reference" : "Condition/condition-appendicitis-example"
    }
  }],
  "serviceProvider" : {
    "reference" : "Organization/organization-pgh-example"
  }
}

```
