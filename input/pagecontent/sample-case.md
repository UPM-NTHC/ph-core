### Worked case: emergency assessment

Miguel Reyes is a synthetic 45-year-old patient with a history of type 2 diabetes. On 12 June 2026 he presents to PGH with acute chest pain that began at 06:30. His ED encounter starts at 08:30 and ends at 10:30. This case demonstrates PH Core data relationships, not a clinical management protocol.

Miguel is distinct from Juan Dela Cruz in the [primary-care examples](examples.html). Their resource IDs and illustrative PhilHealth identifiers identify separate datasets.

### Participants and setting

| Resource | Role in the story |
| --- | --- |
| [Patient](Bundle-bundle-acs-case-example.html#patient-acs-example) | Miguel, born 15 March 1981, with an illustrative PhilHealth ID and coded Philippine address. |
| [Practitioner](Bundle-bundle-acs-case-example.html#practitioner-ed-example) and [PractitionerRole](Bundle-bundle-acs-case-example.html#practitionerrole-ed-example) | Dr. Maria Clara Santos and her ED role at PGH. The physician's qualification refers to an illustrative PRC issuer. |
| [Organization](Organization-organization-pgh-example.html) | PGH as the service provider. Its identifiers are synthetic examples in provisional exchange namespaces. |
| [Encounter](Bundle-bundle-acs-case-example.html#encounter-ed-example) | The ED visit, linking Miguel, provider, participants and diagnoses. |

### The connected clinical record

1. The [ACS Condition](Bundle-bundle-acs-case-example.html#condition-acs-example) records the encounter diagnosis, symptom onset and documentation time. The [diabetes Condition](Bundle-bundle-acs-case-example.html#condition-t2dm-example) records a pre-existing problem and is identified as a comorbidity, not the chief complaint.
2. The [blood pressure](Bundle-bundle-acs-case-example.html#observation-bp-acs), [heart rate](Bundle-bundle-acs-case-example.html#observation-hr-acs), [respiratory rate](Bundle-bundle-acs-case-example.html#observation-rr-acs), [oxygen saturation](Bundle-bundle-acs-case-example.html#observation-spo2-acs), [temperature](Bundle-bundle-acs-case-example.html#observation-temp-acs) and [pain](Bundle-bundle-acs-case-example.html#observation-pain-acs) observations identify Miguel and the ED encounter.
3. The [ECG](Bundle-bundle-acs-case-example.html#observation-ecg-acs) and [troponin](Bundle-bundle-acs-case-example.html#observation-troponin-acs) record illustrative findings supporting the documented STEMI assessment. Additional glucose, HbA1c and lipid observations demonstrate related laboratory data. Their reference ranges are illustrative, not nationally mandated thresholds.
4. The [ED Composition](Bundle-bundle-acs-case-example.html#composition-ed-note-example) links the patient, encounter, author, diagnoses and selected diagnostic observations. It is an Emergency Department Note, not a discharge summary. Its appearance in a transaction does not make that transaction a FHIR document Bundle.

### What PH Core adds

- Philippine patient/organization identifier representations and provisional namespace guidance.
- Coded Philippine address components and PH Core participant/reference constraints.
- Explicitly selected support obligations on the Encounter and other applicable profiles. The general Observation profile mainly localizes references; the rich Observation examples do not create extra mandatory fields.
- A reusable record structure for a downstream emergency-care IG to constrain further when its local workflow and clinical requirements have been selected.

### Transaction and individual resources

The [ACS transaction](Bundle-bundle-acs-case-example.html) packages these maintained example resources and their literal-reference dependencies. Each entry's `request.url` names the resource type being created. `fullUrl` values correlate references within the request and are not live clinical endpoints.

The transaction is an illustrative loading request. It does not promise a server supports create, transaction, search or reverse inclusion; inspect the target CapabilityStatement. Repeated POST loading can create duplicate records. A production implementation must choose its identity and loading strategy for its own contract.

For introductory HTTP exercises, use the [informative FHIR REST tutorial](fhir-rest-tutorial.html). For the other stories and historical records, use the [example scenarios](examples.html).
