# provenance-single-example - Draft PH Core Implementation Guide v0.2.0

## Example Provenance: provenance-single-example

Provenance record documenting that Dr. Maria Clara Santos created the blood pressure observation for Juan Dela Cruz on September 17, 2012, on behalf of the Department of Health - Central Office.



## Resource Content

```json
{
  "resourceType" : "Provenance",
  "id" : "provenance-single-example",
  "meta" : {
    "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-provenance"]
  },
  "target" : [{
    "reference" : "Observation/observation-bp-example"
  }],
  "occurredDateTime" : "2012-09-17T08:30:00+08:00",
  "recorded" : "2012-09-17T08:30:15+08:00",
  "reason" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "TREAT",
      "display" : "treatment"
    }]
  }],
  "activity" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-DataOperation",
      "code" : "CREATE",
      "display" : "create"
    }]
  },
  "agent" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/provenance-participant-type",
        "code" : "author",
        "display" : "Author"
      }]
    },
    "who" : {
      "reference" : "Practitioner/practitioner-single-example"
    },
    "onBehalfOf" : {
      "reference" : "Organization/organization-single-example"
    }
  }],
  "signature" : [{
    "type" : [{
      "system" : "urn:iso-astm:E1762-95:2013",
      "code" : "1.2.840.10065.1.12.1.1",
      "display" : "Author's Signature"
    }],
    "when" : "2012-09-17T08:30:15+08:00",
    "who" : {
      "reference" : "Practitioner/practitioner-single-example"
    },
    "targetFormat" : "xml",
    "sigFormat" : "xml",
    "data" : "dGhpcyBibG9iIGlzIHNuZWFrZWQ="
  }]
}

```
