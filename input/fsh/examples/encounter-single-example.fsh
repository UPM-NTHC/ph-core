Instance: encounter-single-example
InstanceOf: PHCoreEncounter
Usage: #example
Description: "An ambulatory visit for Juan Dela Cruz that has been completed."
* status = #finished
* class = $v3-ActCode#AMB "ambulatory"
* subject = Reference(Patient/patient-single-example)
* serviceProvider = Reference(Organization/organization-pgh-example)
* identifier.system = "http://example.org/encounter-id"
* identifier.value = "ENC-12345"
* period.start = "2025-03-15T09:00:00+08:00"
* period.end = "2025-03-15T11:30:00+08:00"
* type = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* participant.individual = Reference(Practitioner/practitioner-single-example)
* participant.type = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#ATND "attender"
* diagnosis.condition = Reference(Condition/condition-single-example)
* reasonReference = Reference(Condition/condition-single-example)
