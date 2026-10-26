# procedure-single-example - Draft PH Core Implementation Guide v0.2.1

## Example Procedure: procedure-single-example

Profile: [PH Core Procedure](StructureDefinition-ph-core-procedure.md)

**basedOn**: [ServiceRequest Appendectomy](ServiceRequest-servicerequest-appendectomy-example.md)

**status**: Completed

**category**: Surgical procedure

**code**: Laparoscopic appendectomy

**subject**: [Juan Dela Fuente Dela Cruz Male, DoB: 1980-01-01 ( http://philhealth.gov.ph/fhir/Identifier/philhealth-id#PhilHealthID#63-584789845-5)](Patient-patient-single-example.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-01-15 07:30:00+0800 --> 2024-01-16 12:00:00+0800](Encounter-encounter-surgery-example.md)

**performed**: 2024-01-15 08:30:00+0800 --> 2024-01-15 10:15:00+0800

**recorder**: [Practitioner Maria Clara Santos (official)](Practitioner-practitioner-single-example.md)

**asserter**: [RelatedPerson Maria Cruz Santos(official)](RelatedPerson-relatedperson-single-example.md)

### Performers

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Function** | **Actor** | **OnBehalfOf** |
| * | Healthcare professional | [Practitioner Maria Clara Santos (official)](Practitioner-practitioner-single-example.md) | [Organization Philippine General Hospital](Organization-organization-pgh-example.md) |

**reasonCode**: Acute appendicitis

**reasonReference**: [Condition Appendicitis](Condition-condition-appendicitis-example.md)

**bodySite**: Right lower quadrant abdomen

**outcome**: Procedure completed without complications

**followUp**: Follow-up visit in 7 days for wound check

**note**: @2024-01-15 10:30:00+0800

> 

Patient tolerated procedure well. Minimal blood loss. Appendix was inflamed but intact. No perforation noted.




## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "procedure-single-example",
  "meta" : {
    "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-procedure"]
  },
  "basedOn" : [{
    "reference" : "ServiceRequest/servicerequest-appendectomy-example"
  }],
  "status" : "completed",
  "category" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "387713003",
      "display" : "Surgical procedure"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "80146002",
      "display" : "Appendectomy"
    }],
    "text" : "Laparoscopic appendectomy"
  },
  "subject" : {
    "reference" : "Patient/patient-single-example"
  },
  "encounter" : {
    "reference" : "Encounter/encounter-surgery-example"
  },
  "performedPeriod" : {
    "start" : "2024-01-15T08:30:00+08:00",
    "end" : "2024-01-15T10:15:00+08:00"
  },
  "recorder" : {
    "reference" : "Practitioner/practitioner-single-example"
  },
  "asserter" : {
    "reference" : "RelatedPerson/relatedperson-single-example"
  },
  "performer" : [{
    "function" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "223366009",
        "display" : "Healthcare professional"
      }]
    },
    "actor" : {
      "reference" : "Practitioner/practitioner-single-example"
    },
    "onBehalfOf" : {
      "reference" : "Organization/organization-pgh-example"
    }
  }],
  "reasonCode" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "74400008",
      "display" : "Appendicitis"
    }],
    "text" : "Acute appendicitis"
  }],
  "reasonReference" : [{
    "reference" : "Condition/condition-appendicitis-example"
  }],
  "bodySite" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "66754008",
      "display" : "Appendix structure"
    }],
    "text" : "Right lower quadrant abdomen"
  }],
  "outcome" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "385669000",
      "display" : "Successful"
    }],
    "text" : "Procedure completed without complications"
  },
  "followUp" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "226007004",
      "display" : "Post-surgical wound care"
    }],
    "text" : "Follow-up visit in 7 days for wound check"
  }],
  "note" : [{
    "time" : "2024-01-15T10:30:00+08:00",
    "text" : "Patient tolerated procedure well. Minimal blood loss. Appendix was inflamed but intact. No perforation noted."
  }]
}

```
