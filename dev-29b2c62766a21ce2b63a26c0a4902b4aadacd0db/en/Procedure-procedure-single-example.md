# procedure-single-example - Draft PH Core Implementation Guide v0.2.0

## Example Procedure: procedure-single-example

Profile: [PH Core Procedure](StructureDefinition-ph-core-procedure.md)

**identifier**: [DOHProcedureID](NamingSystem-DOHProcedureIDNS.md)/PROC-2024-000123 (use: usual, ), [PhilHealthProcedureID](NamingSystem-PhilHealthProcedureIDNS.md)/PH-APP-789456 (use: secondary, )

**basedOn**: ServiceRequest for emergency appendectomy

**partOf**: Episode of care for acute abdomen treatment

**status**: Completed

**statusReason**: Successful

**category**: Surgical procedure

**code**: Laparoscopic appendectomy

**subject**: [Juan Jane Dela Fuente Dela Cruz Male, DoB: 1980-01-01 ( http://philhealth.gov.ph/fhir/Identifier/philhealth-id#PhilHealthID#63-584789845-5)](Patient-patient-single-example.md)

**encounter**: [Encounter: identifier = http://example.org/encounter-id#ENC-12345; status = finished; class = ambulatory (ActCode#AMB); type = ambulatory; period = 2023-01-01 10:00:00+0000 --> 2023-01-01 11:00:00+0000](Encounter-encounter-single-example.md)

**performed**: 2024-01-15 08:30:00+0800 --> 2024-01-15 10:15:00+0800

**recorder**: [Practitioner Maria Clara Santos (official)](Practitioner-practitioner-single-example.md)

**asserter**: [RelatedPerson Maria Cruz Santos(official)](RelatedPerson-relatedperson-single-example.md)

> **performer****function**: Healthcare professional**actor**: [Practitioner Maria Clara Santos (official)](Practitioner-practitioner-single-example.md)**onBehalfOf**: [Organization Department of Health - Sattelite Office](Organization-organization-single-example.md)

> **performer****function**: Caregiver**actor**: [RelatedPerson Maria Cruz Santos(official)](RelatedPerson-relatedperson-single-example.md)

**reasonCode**: Acute appendicitis with peritonitis

**reasonReference**: [Condition Diabetes mellitus type 2](Condition-condition-single-example.md)

**bodySite**: Right lower quadrant abdomen

**outcome**: Procedure completed without complications

**followUp**: Follow-up visit in 7 days for wound check

**note**: @2024-01-15 10:30:00+0800

> 

Patient tolerated procedure well. Minimal blood loss. Appendix was inflamed but intact. No perforation noted.


**usedCode**: Laparoscopic instruments



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "procedure-single-example",
  "meta" : {
    "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-procedure"]
  },
  "identifier" : [{
    "use" : "usual",
    "system" : "https://fhir.doh.gov.ph/phcore/NamingSystem/procedure-id",
    "value" : "PROC-2024-000123"
  },
  {
    "use" : "secondary",
    "system" : "http://philhealth.gov.ph/procedure",
    "value" : "PH-APP-789456"
  }],
  "basedOn" : [{
    "display" : "ServiceRequest for emergency appendectomy"
  }],
  "partOf" : [{
    "display" : "Episode of care for acute abdomen treatment"
  }],
  "status" : "completed",
  "statusReason" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "385669000",
      "display" : "Successful"
    }]
  },
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
    "reference" : "Encounter/encounter-single-example"
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
      "reference" : "Organization/organization-single-example"
    }
  },
  {
    "function" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "133932002",
        "display" : "Caregiver"
      }]
    },
    "actor" : {
      "reference" : "RelatedPerson/relatedperson-single-example"
    }
  }],
  "reasonCode" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "74400008",
      "display" : "Appendicitis"
    }],
    "text" : "Acute appendicitis with peritonitis"
  }],
  "reasonReference" : [{
    "reference" : "Condition/condition-single-example"
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
  }],
  "usedCode" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "261424001",
      "display" : "Primary operation"
    }],
    "text" : "Laparoscopic instruments"
  }]
}

```
