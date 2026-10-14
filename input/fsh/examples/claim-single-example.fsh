Instance: claim-single-example
InstanceOf: PHCoreClaim
Usage: #example
Description: "Synthetic FHIR claim for Juan Dela Cruz's March 2025 outpatient follow-up. Illustrates insurer/provider separation; the amount and service coding do not establish PhilHealth coverage or reimbursement rules."

* status = #active
* type = http://terminology.hl7.org/CodeSystem/claim-type#professional "Professional"
* use = #claim
* patient = Reference(Patient/patient-single-example)
* created = "2025-03-15"
* insurer = Reference(Organization/organization-philhealth-example)
* provider = Reference(Practitioner/practitioner-single-example)
* priority = http://terminology.hl7.org/CodeSystem/processpriority#normal "Normal"

* payee.type = http://terminology.hl7.org/CodeSystem/payeetype#provider "Provider"
* payee.party = Reference(Practitioner/practitioner-single-example)

* careTeam[0].sequence = 1
* careTeam[=].provider = Reference(Practitioner/practitioner-single-example)
* careTeam[=].responsible = true
* careTeam[=].role = http://terminology.hl7.org/CodeSystem/claimcareteamrole#primary "Primary Provider"

* diagnosis[0].sequence = 1
* diagnosis[=].diagnosisReference = Reference(Condition/condition-single-example)
* diagnosis[=].type = http://terminology.hl7.org/CodeSystem/ex-diagnosistype#principal "Principal Diagnosis"

* insurance[0].sequence = 1
* insurance[=].focal = true
* insurance[=].identifier.system = "http://philhealth.gov.ph/fhir/Identifier/philhealth-id"
* insurance[=].identifier.value = "63-584789845-5"
* insurance[=].coverage = Reference(Coverage/philhealth-coverage-example)

* item[0].sequence = 1
* item[=].careTeamSequence = 1
* item[=].diagnosisSequence = 1
* item[=].productOrService = $sct#11429006 "Consultation"
* item[=].productOrService.text = "Outpatient Consultation"
* item[=].servicedDate = "2025-03-15"
* item[=].quantity.value = 1
* item[=].unitPrice.value = 500.00
* item[=].unitPrice.currency = #PHP
* item[=].net.value = 500.00
* item[=].net.currency = #PHP


Instance: philhealth-coverage-example
InstanceOf: Coverage
Usage: #example
Description: "PhilHealth coverage for Juan Dela Cruz with member ID 63-584789845-5."
* status = #active
* subscriber = Reference(Patient/patient-single-example)
* beneficiary = Reference(Patient/patient-single-example)
* subscriberId = "63-584789845-5"
* payor = Reference(Organization/organization-philhealth-example)
