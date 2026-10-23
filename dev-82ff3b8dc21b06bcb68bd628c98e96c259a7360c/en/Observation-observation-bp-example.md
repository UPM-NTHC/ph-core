# observation-bp-example - Draft PH Core Implementation Guide v0.2.0

## Example Observation: observation-bp-example

Profile: [PH Core Observation](StructureDefinition-ph-core-observation.md)

**identifier**: [Uniform Resource Identifier (URI)](http://terminology.hl7.org/7.1.0/NamingSystem-uri.html)/urn:uuid:187e0c12-8dd2-67e2-99b2-bf273c878281

**basedOn**: Identifier: `https://acme.org/identifiers`/1234

**status**: Final

**category**: Vital Signs

**code**: Blood pressure systolic & diastolic

**subject**: [Juan Jane Dela Fuente Dela Cruz Male, DoB: 1980-01-01 ( http://philhealth.gov.ph/fhir/Identifier/philhealth-id#PhilHealthID#63-584789845-5)](Patient-patient-single-example.md)

**effective**: 2012-09-17

**performer**: [Practitioner Maria Clara Santos (official)](Practitioner-practitioner-single-example.md)

**interpretation**: Below low normal

**bodySite**: Right arm

> **component****code**: Systolic blood pressure**value**: 107 mmHg (Details: UCUM codemm[Hg] = 'mm[Hg]')**interpretation**: Normal

> **component****code**: Diastolic blood pressure**value**: 60 mmHg (Details: UCUM codemm[Hg] = 'mm[Hg]')**interpretation**: Below low normal



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "observation-bp-example",
  "meta" : {
    "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation"]
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
}

```
