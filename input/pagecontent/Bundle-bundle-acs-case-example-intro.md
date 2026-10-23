### ACS case resource index

The resources below are inline members of this Bundle. Their FSH definitions are co-located with the Bundle and retain their PH Core `InstanceOf` profiles. Their IDs identify entries within the Bundle; they are not separately published example resources.

| Inline resource | Role in the scenario |
| --- | --- |
| <a id="patient-acs-example"></a>`Patient/patient-acs-example` | Miguel Reyes, 45-year-old Filipino male, residing in City of Las Piñas, NCR. Patient presents with acute chest pain. History of Type 2 Diabetes Mellitus. PhilHealth ID: 12-345678901-2. |
| <a id="practitioner-ed-example"></a>`Practitioner/practitioner-ed-example` | Dr. Maria Clara Santos, MD — Emergency Medicine Attending Physician at Philippine General Hospital. PRC License: 0123456. |
| <a id="practitionerrole-ed-example"></a>`PractitionerRole/practitionerrole-ed-example` | Dr. Maria Clara Santos — Emergency Medicine Attending Physician at Philippine General Hospital, assigned to Emergency Department. |
| <a id="condition-t2dm-example"></a>`Condition/condition-t2dm-example` | Type 2 Diabetes Mellitus — Chronic condition of Miguel Reyes, diagnosed March 2020. Managed with Metformin 500mg BID. |
| <a id="condition-acs-example"></a>`Condition/condition-acs-example` | Acute Coronary Syndrome — ST-Elevation Myocardial Infarction (STEMI) diagnosed in ED on June 12, 2026. |
| <a id="encounter-ed-example"></a>`Encounter/encounter-ed-example` | Emergency Department encounter for Miguel Reyes — Acute Coronary Syndrome presentation. Triage at 08:30, evaluation and management, transferred to CCU at 10:30. |
| <a id="observation-bp-acs"></a>`Observation/observation-bp-acs` | Blood pressure — 160/95 mmHg (elevated) on arrival. |
| <a id="observation-hr-acs"></a>`Observation/observation-hr-acs` | Heart rate — 110 beats/min (tachycardia) on arrival. |
| <a id="observation-rr-acs"></a>`Observation/observation-rr-acs` | Respiratory rate — 24 breaths/min (tachypnea) on arrival. |
| <a id="observation-spo2-acs"></a>`Observation/observation-spo2-acs` | Oxygen saturation — 92% on room air (hypoxemia) on arrival. |
| <a id="observation-temp-acs"></a>`Observation/observation-temp-acs` | Body temperature — 37.2°C (low-grade fever) on arrival. |
| <a id="observation-pain-acs"></a>`Observation/observation-pain-acs` | Pain severity — 8/10 (severe) on arrival. |
| <a id="observation-troponin-acs"></a>`Observation/observation-troponin-acs` | Troponin I — 2.5 ng/mL (elevated, indicating acute myocardial injury). |
| <a id="observation-glucose-acs"></a>`Observation/observation-glucose-acs` | Random blood glucose — 180 mg/dL (hyperglycemia) on arrival. |
| <a id="observation-hba1c-acs"></a>`Observation/observation-hba1c-acs` | Hemoglobin A1c — 8.2% (poor glycemic control). |
| <a id="observation-cholesterol-total-acs"></a>`Observation/observation-cholesterol-total-acs` | Total cholesterol — 240 mg/dL (elevated). |
| <a id="observation-cholesterol-ldl-acs"></a>`Observation/observation-cholesterol-ldl-acs` | LDL cholesterol — 160 mg/dL (high). |
| <a id="observation-ecg-acs"></a>`Observation/observation-ecg-acs` | 12-lead ECG — ST-elevation in leads V1-V4 consistent with anterior STEMI. |
| <a id="composition-ed-note-example"></a>`Composition/composition-ed-note-example` | Illustrative ED note connecting Miguel Reyes's ACS encounter, diagnosis and observations on 12 June 2026. |

Shared core examples included by this Bundle, such as the facility and credential issuer, remain separately published so other scenarios can reuse them. See the [scenario narrative](examples.html) and this Bundle's JSON view for the complete linked data.
