# condition-acs-example - Draft PH Core Implementation Guide v0.2.0

## Example Condition: condition-acs-example

Profile: [PH Core Condition](StructureDefinition-ph-core-condition.md)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**category**: Acute Diagnosis

**code**: Acute Coronary Syndrome - STEMI

**subject**: [Juan Carlos Dela Cruz (official) Male, DoB: 1981-03-15 ( http://philhealth.gov.ph/fhir/Identifier/philhealth-id#PhilHealthID#63-584789845-5)](Patient-patient-acs-example.md)

**encounter**: [Encounter: identifier = http://pgh.gov.ph/fhir/Identifier/encounter-id#ENC-2026-0612-001; status = finished; class = emergency (ActCode#EMER); type = emergency; priority = emergency; period = 2026-06-12 08:30:00+0800 --> 2026-06-12 10:30:00+0800](Encounter-encounter-ed-example.md)

**onset**: 2026-06-12 08:30:00+0800

**recordedDate**: 2026-06-12 08:45:00+0800

**recorder**: [Practitioner Maria Clara Santos (official)](Practitioner-practitioner-ed-example.md)

**note**: 

> 

45-year-old male with 2-hour history of crushing substernal chest pain radiating to left arm. 12-lead ECG shows ST-elevation in leads V1-V4 consistent with anterior STEMI. Troponin I elevated at 2.5 ng/mL.




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "condition-acs-example",
  "meta" : {
    "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-condition"]
  },
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
      "code" : "active",
      "display" : "Active"
    }]
  },
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
      "code" : "confirmed",
      "display" : "Confirmed"
    }]
  },
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
      "code" : "encounter-diagnosis",
      "display" : "Encounter Diagnosis"
    }],
    "text" : "Acute Diagnosis"
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "401303003",
      "display" : "Acute ST segment elevation myocardial infarction"
    }],
    "text" : "Acute Coronary Syndrome - STEMI"
  },
  "subject" : {
    "reference" : "Patient/patient-acs-example"
  },
  "encounter" : {
    "reference" : "Encounter/encounter-ed-example"
  },
  "onsetDateTime" : "2026-06-12T08:30:00+08:00",
  "recordedDate" : "2026-06-12T08:45:00+08:00",
  "recorder" : {
    "reference" : "Practitioner/practitioner-ed-example"
  },
  "note" : [{
    "text" : "45-year-old male with 2-hour history of crushing substernal chest pain radiating to left arm. 12-lead ECG shows ST-elevation in leads V1-V4 consistent with anterior STEMI. Troponin I elevated at 2.5 ng/mL."
  }]
}

```
