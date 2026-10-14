Instance: servicerequest-single-example
InstanceOf: PHCoreServiceRequest
Usage: #example
Description: "A laboratory service request for fasting blood glucose test ordered by Dr. Maria Clara Santos for patient Juan Dela Cruz during an ambulatory encounter."
* status = #completed
* intent = #order
* category = $sct#108252007 "Laboratory procedure"
* code = $sct#33747003 "Glucose measurement, blood"
* code.text = "Fasting blood glucose test"
* subject = Reference(Patient/patient-single-example)
* encounter = Reference(Encounter/encounter-single-example)
* authoredOn = "2025-03-15T09:30:00+08:00"
* occurrenceDateTime = "2025-03-15T10:00:00+08:00"
* requester = Reference(Practitioner/practitioner-single-example)
* supportingInfo = Reference(Condition/condition-single-example)
