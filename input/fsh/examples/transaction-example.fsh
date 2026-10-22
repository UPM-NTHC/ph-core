Instance: transaction-example
InstanceOf: Bundle
Usage: #example
Description: "Synthetic primary-care follow-up for Juan Dela Cruz on 15 March 2025, including linked organizations, clinician, encounter, completed collection work and laboratory results, and the medication sequence. This Bundle packages records, not a workflow event log."
* type = #transaction

* entry[0].fullUrl = "https://example.org/fhir/Patient/patient-single-example"
* entry[=].resource = patient-single-example
* entry[=].request.method = #POST
* entry[=].request.url = "Patient"

* entry[+].fullUrl = "https://example.org/fhir/Organization/organization-pgh-example"
* entry[=].resource = organization-pgh-example
* entry[=].request.method = #POST
* entry[=].request.url = "Organization"

* entry[+].fullUrl = "https://example.org/fhir/Organization/organization-prc-example"
* entry[=].resource = organization-prc-example
* entry[=].request.method = #POST
* entry[=].request.url = "Organization"

* entry[+].fullUrl = "https://example.org/fhir/Practitioner/practitioner-single-example"
* entry[=].resource = practitioner-single-example
* entry[=].request.method = #POST
* entry[=].request.url = "Practitioner"

* entry[+].fullUrl = "https://example.org/fhir/PractitionerRole/practitionerrole-single-example"
* entry[=].resource = practitionerrole-single-example
* entry[=].request.method = #POST
* entry[=].request.url = "PractitionerRole"

* entry[+].fullUrl = "https://example.org/fhir/Location/location-single-example"
* entry[=].resource = location-single-example
* entry[=].request.method = #POST
* entry[=].request.url = "Location"

* entry[+].fullUrl = "https://example.org/fhir/Condition/condition-single-example"
* entry[=].resource = condition-single-example
* entry[=].request.method = #POST
* entry[=].request.url = "Condition"

* entry[+].fullUrl = "https://example.org/fhir/Encounter/encounter-single-example"
* entry[=].resource = encounter-single-example
* entry[=].request.method = #POST
* entry[=].request.url = "Encounter"

* entry[+].fullUrl = "https://example.org/fhir/ServiceRequest/servicerequest-single-example"
* entry[=].resource = servicerequest-single-example
* entry[=].request.method = #POST
* entry[=].request.url = "ServiceRequest"

* entry[+].fullUrl = "https://example.org/fhir/ServiceRequest/servicerequest-hba1c-example"
* entry[=].resource = servicerequest-hba1c-example
* entry[=].request.method = #POST
* entry[=].request.url = "ServiceRequest"

* entry[+].fullUrl = "https://example.org/fhir/Task/task-single-example"
* entry[=].resource = task-single-example
* entry[=].request.method = #POST
* entry[=].request.url = "Task"

* entry[+].fullUrl = "https://example.org/fhir/Observation/observation-bp-followup-example"
* entry[=].resource = observation-bp-followup-example
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "https://example.org/fhir/Observation/observation-vitals-encounter-example"
* entry[=].resource = observation-vitals-encounter-example
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "https://example.org/fhir/Observation/observation-glucose-example"
* entry[=].resource = observation-glucose-example
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "https://example.org/fhir/Observation/observation-based-on-service-example"
* entry[=].resource = observation-based-on-service-example
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "https://example.org/fhir/Medication/medication-single-example"
* entry[=].resource = medication-single-example
* entry[=].request.method = #POST
* entry[=].request.url = "Medication"

* entry[+].fullUrl = "https://example.org/fhir/MedicationRequest/medicationrequest-single-example"
* entry[=].resource = medicationrequest-single-example
* entry[=].request.method = #POST
* entry[=].request.url = "MedicationRequest"

* entry[+].fullUrl = "https://example.org/fhir/MedicationDispense/medicationdispense-single-example"
* entry[=].resource = medicationdispense-single-example
* entry[=].request.method = #POST
* entry[=].request.url = "MedicationDispense"

* entry[+].fullUrl = "https://example.org/fhir/MedicationStatement/medicationstatement-single-example"
* entry[=].resource = medicationstatement-single-example
* entry[=].request.method = #POST
* entry[=].request.url = "MedicationStatement"

* entry[+].fullUrl = "https://example.org/fhir/MedicationAdministration/medicationadministration-single-example"
* entry[=].resource = medicationadministration-single-example
* entry[=].request.method = #POST
* entry[=].request.url = "MedicationAdministration"

// Bundle-private resources. Keep PH Core InstanceOf declarations and explicit
// IDs/profile metadata so these resources remain referenceable within entries.
// Usage #inline controls publication; these are not DomainResource.contained.

Instance: task-single-example
InstanceOf: PHCoreTask
Usage: #inline
Description: "A laboratory task for Juan Dela Cruz requested by Dr. Maria Clara Santos. The task is to collect a blood sample for a ordered fasting blood glucose test."
* id = "task-single-example"
* meta.profile[0] = "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-task"
* status = #completed
* intent = #order
* priority = #routine
* code = $sct#82078001 "Collection of blood specimen for laboratory"
* code.text = "Blood sample collection"
* description = "Collect blood sample for the ordered fasting blood glucose test"
* focus = Reference(ServiceRequest/servicerequest-single-example)
* for = Reference(Patient/patient-single-example)
* encounter = Reference(Encounter/encounter-single-example)
* requester = Reference(Practitioner/practitioner-single-example)
* authoredOn = "2025-03-15T09:35:00+08:00"
* lastModified = "2025-03-15T10:15:00+08:00"
* executionPeriod.start = "2025-03-15T09:40:00+08:00"
* executionPeriod.end = "2025-03-15T10:15:00+08:00"
* owner = Reference(Organization/organization-pgh-example)
* note.text = "Fasting status was checked before specimen collection."
* note.time = "2025-03-15T10:15:00+08:00"
* note.authorReference = Reference(Practitioner/practitioner-single-example)

Instance: servicerequest-hba1c-example
InstanceOf: PHCoreServiceRequest
Usage: #inline
Description: "Completed HbA1c order for Juan Dela Cruz's diabetes follow-up on 15 March 2025."
* id = "servicerequest-hba1c-example"
* meta.profile[0] = "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-serviceRequest"
* status = #completed
* intent = #order
* category = $sct#108252007 "Laboratory procedure"
* code = $loinc#4548-4 "Hemoglobin A1c/Hemoglobin.total in Blood"
* subject = Reference(Patient/patient-single-example)
* encounter = Reference(Encounter/encounter-single-example)
* authoredOn = "2025-03-15T09:30:00+08:00"
* requester = Reference(Practitioner/practitioner-single-example)
* supportingInfo = Reference(Condition/condition-single-example)

// ----------------------------------------------------------------------------
// Example 11: Lab Result based on ServiceRequest (basedOn reference)
// ----------------------------------------------------------------------------
Instance: observation-based-on-service-example
InstanceOf: PHCoreObservation
Usage: #inline
Description: "Hemoglobin A1c lab result based on a service request for diabetes monitoring."
* id = "observation-based-on-service-example"
* meta.profile[0] = "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation"
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#4548-4 "Hemoglobin A1c/Hemoglobin.total in Blood"
* subject = Reference(Patient/patient-single-example)
* basedOn = Reference(ServiceRequest/servicerequest-hba1c-example)
* effectiveDateTime = "2025-03-15T10:30:00+08:00"
* valueQuantity = 6.2 '%' "%"
* performer = Reference(Organization/organization-pgh-example)
* note.text = "Illustrative monitoring result; interpretation depends on the clinical context."

Instance: observation-bp-followup-example
InstanceOf: PHCoreObservation
Usage: #inline
Description: "Blood pressure recorded during Juan Dela Cruz's outpatient follow-up on 15 March 2025."
* id = "observation-bp-followup-example"
* meta.profile[0] = "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation"
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(Patient/patient-single-example)
* encounter = Reference(Encounter/encounter-single-example)
* effectiveDateTime = "2025-03-15T09:15:00+08:00"
* performer = Reference(Practitioner/practitioner-single-example)
* component[0].code = $loinc#8480-6 "Systolic blood pressure"
* component[=].valueQuantity = 120 'mm[Hg]' "mmHg"
* component[+].code = $loinc#8462-4 "Diastolic blood pressure"
* component[=].valueQuantity = 80 'mm[Hg]' "mmHg"

Instance: medicationrequest-single-example
InstanceOf: PHCoreMedicationRequest
Usage: #inline
Description: "Dr. Maria Clara Santos renews Twinact (Telmisartan + Amlodipine) for Juan Dela Cruz to treat hypertension."
* id = "medicationrequest-single-example"
* meta.profile[0] = "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-medicationrequest"
* status = #active
* intent = #order
* priority = $request-priority#routine
* subject = Reference(Patient/patient-single-example)
* encounter = Reference(Encounter/encounter-single-example)
* authoredOn = "2025-03-15T09:00:00+08:00"
* requester = Reference(Practitioner/practitioner-single-example)
* medicationCodeableConcept = PHFDACPRCS#DRP-10144 "Twinact"
* medicationCodeableConcept.text = "Twinact 40mg/5mg tablet"
* reasonCode = $sct#38341003 "Hypertensive disorder"
* note.text = "Continue the prescribed once-daily antihypertensive medication"
* dosageInstruction.sequence = 1
* dosageInstruction.text = "Take 1 tablet once daily"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.route = $v3-RouteOfAdministration#PO "Swallow, oral"
* dosageInstruction.doseAndRate.doseQuantity = 1 '1' "tablet"
* dispenseRequest.numberOfRepeatsAllowed = 0
* dispenseRequest.quantity = 30 $sct#732936001 "Tablet"

Instance: medicationdispense-single-example
InstanceOf: PHCoreMedicationDispense
Usage: #inline
Description: "Pharmacy dispenses Twinact (Telmisartan + Amlodipine) to Juan Dela Cruz based on Dr. Santos prescription."
* id = "medicationdispense-single-example"
* meta.profile[0] = "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-medicationdispense"
* status = #completed
* subject = Reference(Patient/patient-single-example)
* context = Reference(Encounter/encounter-single-example)
* medicationCodeableConcept = PHFDACPRCS#DRP-10144 "Twinact"
* medicationCodeableConcept.text = "Twinact 40mg/5mg tablet"
* performer.function = $medicationdispense-performer-function#finalchecker "Final Checker"
* performer.actor = Reference(Practitioner/practitioner-single-example)
* authorizingPrescription = Reference(MedicationRequest/medicationrequest-single-example)
* type = $sct#373784005 "Dispensing medication"
* quantity = 30 $sct#732936001 "Tablet"
* daysSupply = 30 'd' "days"
* whenPrepared = "2025-03-15T10:30:00+08:00"
* whenHandedOver = "2025-03-15T11:00:00+08:00"
* dosageInstruction.sequence = 1
* dosageInstruction.text = "Take 1 tablet once daily"

Instance: medicationstatement-single-example
InstanceOf: PHCoreMedicationStatement
Usage: #inline
Description: "Patient Juan Dela Cruz reports taking Twinact (Telmisartan + Amlodipine) for hypertension."
* id = "medicationstatement-single-example"
* meta.profile[0] = "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-medicationstatement"
* status = #active
* subject = Reference(Patient/patient-single-example)
* context = Reference(Encounter/encounter-single-example)
* effectivePeriod.start = "2025-03-10"
* dateAsserted = "2025-03-15T09:00:00+08:00"
* informationSource = Reference(Patient/patient-single-example)
* medicationCodeableConcept = PHFDACPRCS#DRP-10144 "Twinact"
* medicationCodeableConcept.text = "Twinact 40mg/5mg tablet"
* reasonCode = $sct#38341003 "Hypertensive disorder"
* note.text = "Patient reports taking medication once daily for hypertension"
* dosage.sequence = 1
* dosage.text = "Take 1 tablet once daily"
* dosage.timing.repeat.frequency = 1
* dosage.timing.repeat.period = 1
* dosage.timing.repeat.periodUnit = #d
* dosage.route = $v3-RouteOfAdministration#PO "Swallow, oral"

Instance: medicationadministration-single-example
InstanceOf: PHCoreMedicationAdministration
Usage: #inline
Description: "Juan Dela Cruz takes Twinact (Telmisartan + Amlodipine) tablet as prescribed."
* id = "medicationadministration-single-example"
* meta.profile[0] = "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-medicationadministration"
* status = #completed
* subject = Reference(Patient/patient-single-example)
* context = Reference(Encounter/encounter-single-example)
* medicationCodeableConcept = PHFDACPRCS#DRP-10144 "Twinact"
* medicationCodeableConcept.text = "Twinact 40mg/5mg tablet"
* effectiveDateTime = "2025-03-15T11:15:00+08:00"
* performer.actor = Reference(Patient/patient-single-example)
* request = Reference(MedicationRequest/medicationrequest-single-example)
* dosage.text = "1 tablet taken orally"
* dosage.route = $v3-RouteOfAdministration#PO "Swallow, oral"
* dosage.dose = 1 '1' "tablet"
