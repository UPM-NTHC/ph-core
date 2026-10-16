### Example scenarios

### Missing data examples

These three examples illustrate distinct DAR placements from the [missing-data policy](client-server-conformance.html#missing-data).

| Representation | Example |
| --- | --- |
| Unknown whole name | [Explicit name absence reason](Patient-patient-explicit-absence-example.html) |
| Missing individual clinical result | [Glucose result unavailable](Observation-observation-result-unavailable.html) |
| Missing component alongside a measured component | [Blood pressure component unavailable](Observation-observation-component-unavailable.html) |

### Connected scenarios

These synthetic datasets show how PH Core representations connect across resources. They are informative examples, not clinical protocols, registry records, PhilHealth claim-submission specifications or additional conformance requirements. Identifiers, contact details and event times are invented for illustration.

The examples are organized by scenario. Juan Dela Cruz (born 1 January 1980) and Miguel Reyes (born 15 March 1981) are different synthetic patients with different example PhilHealth IDs. Repeated clinician names represent illustrative roles, not assertions about actual people.

| Scenario | Story and PH Core purpose | Start here |
| --- | --- | --- |
| Primary-care follow-up | Juan attends PGH on 15 March 2025. The diabetes problem, clinician/role, facility, laboratory requests/results and antihypertensive medication records share the same patient and visit. | [Primary-care transaction](Bundle-transaction-example.html) |
| Emergency assessment | Miguel presents with acute chest pain on 12 June 2026. Encounter diagnosis, prior diabetes, vital signs, diagnostic observations and an ED note connect to the same encounter. | [Worked case](sample-case.html), [ACS transaction](Bundle-bundle-acs-case-example.html) |
| Surgical history | Juan's January 2024 appendicitis diagnosis, surgical encounter, request, appendectomy and intraoperative observation form a separate historical episode. | [Surgical encounter](Encounter-encounter-surgery-example.html), [Procedure](Procedure-procedure-single-example.html) |
| Immunization history | Juan's January 2013 immunization uses a vaccine Medication, a historical visit and one lot number. | [Immunization](Immunization-immunization-single-example.html), [Vaccine product](Medication-medication-vaccine-example.html) |
| Attribution and exchange | A historical blood-pressure record and an allergy record illustrate authorship and subsequent transmission. Search matches and reverse-included Provenance have distinct roles. | [Blood pressure with authorship](Bundle-bundle-observation-provenance-example.html), [Allergy with transmission](Bundle-bundle-allergy-provenance-example.html) |
| Representation examples | Identifier slicing, a related person, an outpatient service, derived BMI and environmental observations illustrate focused representation choices outside a single encounter. | [Organization identifiers](Organization-organization-single-example.html), [Related person](RelatedPerson-relatedperson-single-example.html), [Service](HealthcareService-healthcareservice-single-example.html) |

### Primary-care story

Juan's diabetes was reported to have started in 2020 and is documented in the March 2025 follow-up. Dr. Maria Clara Santos works in the PGH outpatient service. The facility is the care provider; the separate illustrative PRC Organization is the credential issuer; the separate illustrative PhilHealth Organization is the insurer/payor in the [Claim](Claim-claim-single-example.html) and [Coverage](Coverage-philhealth-coverage-example.html).

1. [Patient](Patient-patient-single-example.html), [Practitioner](Practitioner-practitioner-single-example.html), [PractitionerRole](PractitionerRole-practitionerrole-single-example.html), [PGH](Organization-organization-pgh-example.html) and [Location](Location-location-single-example.html) identify the participants and setting.
2. [Encounter](Encounter-encounter-single-example.html) connects the visit to Juan and PGH. [Condition](Condition-condition-single-example.html) represents the diabetes problem; onset and documentation time are separate.
3. [Fasting-glucose request](ServiceRequest-servicerequest-single-example.html) and [HbA1c request](Bundle-transaction-example.html#servicerequest-hba1c-example) identify different requested tests. The completed [Task](Bundle-transaction-example.html#task-single-example) records collection work focused on the fasting-glucose request. The later [glucose](Observation-observation-glucose-example.html) and [HbA1c](Bundle-transaction-example.html#observation-based-on-service-example) results link to their respective requests.
4. [Blood pressure](Bundle-transaction-example.html#observation-bp-followup-example) and [temperature](Observation-observation-vitals-encounter-example.html) were recorded during the visit.
5. [MedicationRequest](Bundle-transaction-example.html#medicationrequest-single-example) renews the antihypertensive medication. [MedicationDispense](Bundle-transaction-example.html#medicationdispense-single-example) illustrates 30 tablets at one tablet daily, [MedicationAdministration](Bundle-transaction-example.html#medicationadministration-single-example) records a later taken dose, and [MedicationStatement](Bundle-transaction-example.html#medicationstatement-single-example) records the report made at this visit of use that began on 10 March. These resource types describe different facts; they do not form mandatory national workflow steps.

The primary-care transaction packages linked records for demonstration; entry order is not an ordered clinical audit log. [The Claim example](Claim-claim-single-example.html) demonstrates generic FHIR reimbursement representation and does not establish PhilHealth benefits or reimbursement amounts.

### Historical records and focused examples

Historical observations keep their own event dates. A patient's current follow-up encounter is not reused for an earlier surgery or immunization. The [electrolyte panel](Observation-observation-lab-panel-example.html) references sodium and potassium observations in the surgical episode; the glucose test belongs to the later follow-up. The [BMI example](Observation-observation-derived-bmi-example.html) demonstrates derivation from the linked weight and height.

Bundle-private examples are defined inline in the owning Bundle FSH file and are documented in its resource index. Shared core and focused examples remain separately published and can be reused across scenarios. The two transaction Bundles are intended to include their literal-reference dependencies. Search-response Bundles can reference resources not included in that response, just as a real FHIR search may. They are not transaction requests.

### Using the examples

Use the linked generated JSON as the maintained source of each example. Transaction `fullUrl` values are illustrative correlation URLs, not production endpoints; send a transaction only to a server whose CapabilityStatement supports it. Successful `POST` responses may assign new logical IDs. Repeating a create transaction can create duplicates, so treat loading/reloading as a server-specific test operation.

See the [FHIR REST tutorial](fhir-rest-tutorial.html) for general HTTP exercises. Profile constraints, cardinalities, bindings and designated actor obligations establish conformance; optional content in an example does not introduce a new requirement.

The organization of these examples follows the separation of informative examples and profile guidance seen in the [US Core examples](https://hl7.org/fhir/us/core/examples.html) and [Basic Provenance guidance](https://hl7.org/fhir/us/core/basic-provenance.html). PH Core uses its own synthetic scenarios and constraints.
