# Examples - Draft PH Core Implementation Guide v0.2.1

## Examples

### Example scenarios

#### Missing data examples

These four examples illustrate distinct DAR placements from the [missing-data policy](client-server-conformance.md#missing-data).

| | |
| :--- | :--- |
| Unknown whole name | [Explicit name absence reason](Patient-patient-explicit-absence-example.md) |
| Unknown patient name with known mother's full name | [Anonymous Patient with Mother's Maiden Name](Patient-patient-anonymous-mothers-maiden-name-example.md) |
| Missing individual clinical result | [Glucose result unavailable](Observation-observation-result-unavailable.md) |
| Missing component alongside a measured component | [Blood pressure component unavailable](Observation-observation-component-unavailable.md) |
| Unknown date of a patient-reported procedure | [Appendectomy with unknown date](Procedure-procedure-unknown-date-example.md) |

#### Connected scenarios

These synthetic datasets show how PH Core representations connect across resources. They are informative examples, not clinical protocols, registry records, PhilHealth claim-submission specifications or additional conformance requirements. Identifiers, contact details and event times are invented for illustration.

The examples are organized by scenario. Juan Dela Cruz (born 1 January 1980) and Miguel Reyes (born 15 March 1981) are different synthetic patients with different example PhilHealth IDs. Repeated clinician names represent illustrative roles, not assertions about actual people.

| | | |
| :--- | :--- | :--- |
| Primary-care follow-up | Juan attends PGH on 15 March 2025. The diabetes problem, clinician/role, facility, laboratory requests/results and antihypertensive medication records share the same patient and visit. | [Primary-care transaction](Bundle-transaction-example.md) |
| Emergency assessment | Miguel presents with acute chest pain on 12 June 2026. Encounter diagnosis, prior diabetes, vital signs, diagnostic observations and an ED note connect to the same encounter. | [Worked case](sample-case.md),[ACS transaction](Bundle-bundle-acs-case-example.md) |
| Surgical history | Juan's January 2024 appendicitis diagnosis, surgical encounter, request, appendectomy and intraoperative observation form a separate historical episode. | [Surgical encounter](Encounter-encounter-surgery-example.md),[Procedure](Procedure-procedure-single-example.md) |
| Immunization history | Juan's January 2013 immunization uses a vaccine Medication, a historical visit and one lot number. | [Immunization](Immunization-immunization-single-example.md),[Vaccine product](Medication-medication-vaccine-example.md) |
| Attribution and exchange | A historical blood-pressure record and an allergy record illustrate authorship and subsequent transmission. Search matches and reverse-included Provenance have distinct roles. | [Blood pressure with authorship](Bundle-bundle-observation-provenance-example.md),[Allergy with transmission](Bundle-bundle-allergy-provenance-example.md) |
| Representation examples | Focused examples illustrate identifier slicing, distinct sex and gender concepts, related people, outpatient services, derived BMI and environmental observations outside a single encounter. | [Organization identifiers](Organization-organization-single-example.md),[Patient sex and gender](Patient-patient-sex-and-gender-example.md),[Related person](RelatedPerson-relatedperson-single-example.md),[Service](HealthcareService-healthcareservice-single-example.md) |

#### Primary-care story

Juan's diabetes was reported to have started in 2020 and is documented in the March 2025 follow-up. Dr. Maria Clara Santos works in the PGH outpatient service. The facility is the care provider; the separate illustrative PRC Organization is the credential issuer; the separate illustrative PhilHealth Organization is the insurer/payor in the [Claim](Claim-claim-single-example.md) and [Coverage](Coverage-philhealth-coverage-example.md).

1. [Patient](Patient-patient-single-example.md),[Practitioner](Practitioner-practitioner-single-example.md),[PractitionerRole](PractitionerRole-practitionerrole-single-example.md),[PGH](Organization-organization-pgh-example.md)and[Location](Location-location-single-example.md)identify the participants and setting.
1. [Encounter](Encounter-encounter-single-example.md)connects the visit to Juan and PGH.[Condition](Condition-condition-single-example.md)represents the diabetes problem; onset and documentation time are separate.
1. [Fasting-glucose request](ServiceRequest-servicerequest-single-example.md)and[HbA1c request](Bundle-transaction-example.md#servicerequest-hba1c-example)identify different requested tests. The completed[Task](Bundle-transaction-example.md#task-single-example)records collection work focused on the fasting-glucose request. The later[glucose](Observation-observation-glucose-example.md)and[HbA1c](Bundle-transaction-example.md#observation-based-on-service-example)results link to their respective requests.
1. [Blood pressure](Bundle-transaction-example.md#observation-bp-followup-example)and[temperature](Observation-observation-vitals-encounter-example.md)were recorded during the visit.
1. [MedicationRequest](Bundle-transaction-example.md#medicationrequest-single-example)renews the antihypertensive medication.[MedicationDispense](Bundle-transaction-example.md#medicationdispense-single-example)illustrates 30 tablets at one tablet daily,[MedicationAdministration](Bundle-transaction-example.md#medicationadministration-single-example)records a later taken dose, and[MedicationStatement](Bundle-transaction-example.md#medicationstatement-single-example)records the report made at this visit of use that began on 10 March. These resource types describe different facts; they do not form mandatory national workflow steps.

The primary-care transaction packages linked records for demonstration; entry order is not an ordered clinical audit log. [The Claim example](Claim-claim-single-example.md) demonstrates generic FHIR reimbursement representation and does not establish PhilHealth benefits or reimbursement amounts.

#### Historical records and focused examples

Historical observations keep their own event dates. A patient's current follow-up encounter is not reused for an earlier surgery or immunization. The [electrolyte panel](Observation-observation-lab-panel-example.md) references sodium and potassium observations in the surgical episode; the glucose test belongs to the later follow-up. The [BMI example](Observation-observation-derived-bmi-example.md) demonstrates derivation from the linked weight and height.

Bundle-private examples are defined inline in the owning Bundle FSH file and are documented in its resource index. Shared core and focused examples remain separately published and can be reused across scenarios. The two transaction Bundles are intended to include their literal-reference dependencies. Search-response Bundles can reference resources not included in that response, just as a real FHIR search may. They are not transaction requests.

#### Using the examples

Use the linked generated JSON as the maintained source of each example. Transaction `fullUrl` values are illustrative correlation URLs, not production endpoints; send a transaction only to a server whose CapabilityStatement supports it. Successful `POST` responses may assign new logical IDs. Repeating a create transaction can create duplicates, so treat loading/reloading as a server-specific test operation.

See the [FHIR REST tutorial](fhir-rest-tutorial.md) for general HTTP exercises. Profile constraints, cardinalities, bindings and designated actor obligations establish conformance; optional content in an example does not introduce a new requirement.

The organization of these examples follows the separation of informative examples and profile guidance seen in the [US Core examples](https://hl7.org/fhir/us/core/examples.html) and [Basic Provenance guidance](https://hl7.org/fhir/us/core/basic-provenance.html). PH Core uses its own synthetic scenarios and constraints.

