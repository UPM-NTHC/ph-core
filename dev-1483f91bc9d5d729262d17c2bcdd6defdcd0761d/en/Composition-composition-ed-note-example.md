# Emergency Department Clinical Note — Acute Coronary Syndrome - Draft PH Core Implementation Guide v0.2.0

## Example Composition: Emergency Department Clinical Note — Acute Coronary Syndrome

**status**: Final

**type**: ED Clinical Note

**encounter**: [Encounter: identifier = http://pgh.gov.ph/fhir/Identifier/encounter-id#ENC-2026-0612-001; status = finished; class = emergency (ActCode#EMER); type = emergency; priority = emergency; period = 2026-06-12 08:30:00+0800 --> 2026-06-12 10:30:00+0800](Encounter-encounter-ed-example.md)

**date**: 2026-06-12 10:30:00+0800

**author**: [Practitioner Maria Clara Santos (official)](Practitioner-practitioner-ed-example.md)

**title**: Emergency Department Clinical Note — Acute Coronary Syndrome

**confidentiality**: normal

### Attesters

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Mode** | **Time** | **Party** |
| * | Legal | 2026-06-12 10:30:00+0800 | [Practitioner Maria Clara Santos (official)](Practitioner-practitioner-ed-example.md) |

**custodian**: [Organization Philippine General Hospital](Organization-organization-pgh-example.md)



## Resource Content

```json
{
  "resourceType" : "Composition",
  "id" : "composition-ed-note-example",
  "status" : "final",
  "type" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "18842-5",
      "display" : "Discharge summary"
    }],
    "text" : "ED Clinical Note"
  },
  "subject" : {
    "reference" : "Patient/patient-acs-example"
  },
  "encounter" : {
    "reference" : "Encounter/encounter-ed-example"
  },
  "date" : "2026-06-12T10:30:00+08:00",
  "author" : [{
    "reference" : "Practitioner/practitioner-ed-example"
  }],
  "title" : "Emergency Department Clinical Note — Acute Coronary Syndrome",
  "confidentiality" : "N",
  "attester" : [{
    "mode" : "legal",
    "time" : "2026-06-12T10:30:00+08:00",
    "party" : {
      "reference" : "Practitioner/practitioner-ed-example"
    }
  }],
  "custodian" : {
    "reference" : "Organization/organization-pgh-example"
  },
  "section" : [{
    "title" : "Chief Complaint",
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "10154-3",
        "display" : "Chief complaint Reported"
      }]
    },
    "text" : {
      "status" : "generated",
      "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>45-year-old male with 2-hour history of crushing substernal chest pain radiating to left arm, associated with dyspnea and diaphoresis.</p></div>"
    },
    "entry" : [{
      "reference" : "Condition/condition-acs-example"
    }]
  },
  {
    "title" : "History of Present Illness",
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "10164-2",
        "display" : "History of present illness Narrative"
      }]
    },
    "text" : {
      "status" : "generated",
      "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Patient Juan Dela Cruz, 45M, Filipino, presented to PGH ED at 08:30 with acute chest pain. Pain described as crushing, 8/10 severity, substernal with radiation to left arm. Associated with shortness of breath and sweating. No relief with rest. Known T2DM since 2020. Current smoker (1 pack/day x 20 years).</p></div>"
    }
  },
  {
    "title" : "Vital Signs",
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "8716-3",
        "display" : "Vital signs note"
      }]
    },
    "text" : {
      "status" : "generated",
      "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li>BP: 160/95 mmHg (elevated)</li><li>HR: 110 bpm (tachycardic)</li><li>RR: 24/min (tachypneic)</li><li>SpO2: 92% RA (hypoxemic)</li><li>Temp: 37.2°C</li><li>Pain: 8/10</li></ul></div>"
    },
    "entry" : [{
      "reference" : "Observation/observation-bp-acs"
    },
    {
      "reference" : "Observation/observation-hr-acs"
    },
    {
      "reference" : "Observation/observation-rr-acs"
    },
    {
      "reference" : "Observation/observation-spo2-acs"
    },
    {
      "reference" : "Observation/observation-temp-acs"
    },
    {
      "reference" : "Observation/observation-pain-acs"
    }]
  },
  {
    "title" : "Assessment and Plan",
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "18776-5",
        "display" : "Plan of care note"
      }]
    },
    "text" : {
      "status" : "generated",
      "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><strong>Assessment:</strong> Acute Coronary Syndrome — Anterior STEMI (ST-elevation V1-V4 on ECG, elevated troponin 2.5 ng/mL).</p><p><strong>Plan:</strong> 1) Aspirin 325mg chewed, Clopidogrel 600mg loading, Metoprolol 25mg PO. 2) Cardiology consult for emergent PCI. 3) Admit to CCU post-PCI.</p></div>"
    },
    "entry" : [{
      "reference" : "Condition/condition-acs-example"
    }]
  },
  {
    "title" : "Active Conditions",
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "11493-4",
        "display" : "Hospital discharge studies summary Narrative"
      }]
    },
    "text" : {
      "status" : "generated",
      "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li>Type 2 Diabetes Mellitus (diagnosed 2020, on Metformin)</li><li>Acute Coronary Syndrome — Anterior STEMI (diagnosed today)</li></ul></div>"
    },
    "entry" : [{
      "reference" : "Condition/condition-t2dm-example"
    },
    {
      "reference" : "Condition/condition-acs-example"
    }]
  }]
}

```
