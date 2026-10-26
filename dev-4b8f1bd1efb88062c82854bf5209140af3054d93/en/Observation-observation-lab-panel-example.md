# observation-lab-panel-example - Draft PH Core Implementation Guide v0.2.1

## Example Observation: observation-lab-panel-example

Profile: [PH Core Observation](StructureDefinition-ph-core-observation.md)

**status**: Final

**category**: Laboratory

**code**: Electrolytes 1998 panel - Serum or Plasma

**subject**: [Juan Dela Fuente Dela Cruz Male, DoB: 1980-01-01 ( http://philhealth.gov.ph/fhir/Identifier/philhealth-id#PhilHealthID#63-584789845-5)](Patient-patient-single-example.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-01-15 07:30:00+0800 --> 2024-01-16 12:00:00+0800](Encounter-encounter-surgery-example.md)

**effective**: 2024-01-15 08:00:00+0800

**performer**: [Maria Clara Santos (official)](Practitioner-practitioner-single-example.md)

**hasMember**: 

* [Observation Sodium [Moles/volume] in Serum or Plasma](Observation-observation-sodium-example.md)
* [Observation Potassium [Moles/volume] in Serum or Plasma](Observation-observation-potassium-example.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "observation-lab-panel-example",
  "meta" : {
    "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation"]
  },
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "laboratory",
      "display" : "Laboratory"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "24326-1",
      "display" : "Electrolytes 1998 panel - Serum or Plasma"
    }]
  },
  "subject" : {
    "reference" : "Patient/patient-single-example"
  },
  "encounter" : {
    "reference" : "Encounter/encounter-surgery-example"
  },
  "effectiveDateTime" : "2024-01-15T08:00:00+08:00",
  "performer" : [{
    "reference" : "Practitioner/practitioner-single-example"
  }],
  "hasMember" : [{
    "reference" : "Observation/observation-sodium-example"
  },
  {
    "reference" : "Observation/observation-potassium-example"
  }]
}

```
