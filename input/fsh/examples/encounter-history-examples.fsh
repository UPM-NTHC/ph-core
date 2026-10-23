Instance: encounter-surgery-example
InstanceOf: PHCoreEncounter
Usage: #example
Description: "Juan Dela Cruz's surgical encounter for appendicitis on 15 January 2024."
* status = #finished
* class = $v3-ActCode#IMP "inpatient encounter"
* subject = Reference(Patient/patient-single-example)
* serviceProvider = Reference(Organization/organization-pgh-example)
* period.start = "2024-01-15T07:30:00+08:00"
* period.end = "2024-01-16T12:00:00+08:00"
* diagnosis.condition = Reference(Condition/condition-appendicitis-example)

Instance: condition-appendicitis-example
InstanceOf: PHCoreCondition
Usage: #example
Description: "Acute appendicitis associated with Juan Dela Cruz's January 2024 surgery."
* clinicalStatus = $condition-clinical#resolved "Resolved"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* category = $condition-category#encounter-diagnosis "Encounter Diagnosis"
* code = $sct#74400008 "Appendicitis"
* subject = Reference(Patient/patient-single-example)
* encounter = Reference(Encounter/encounter-surgery-example)
* onsetDateTime = "2024-01-15"
* abatementDateTime = "2024-01-16"

Instance: servicerequest-appendectomy-example
InstanceOf: PHCoreServiceRequest
Usage: #example
Description: "Completed appendectomy request during Juan Dela Cruz's surgical encounter."
* status = #completed
* intent = #order
* code = $sct#80146002 "Appendectomy"
* subject = Reference(Patient/patient-single-example)
* encounter = Reference(Encounter/encounter-surgery-example)
* authoredOn = "2024-01-15T08:00:00+08:00"
* requester = Reference(Practitioner/practitioner-single-example)
* reasonReference = Reference(Condition/condition-appendicitis-example)

Instance: encounter-immunization-example
InstanceOf: PHCoreEncounter
Usage: #example
Description: "Historical influenza immunization visit for Juan Dela Cruz on 10 January 2013."
* status = #finished
* class = $v3-ActCode#AMB "ambulatory"
* subject = Reference(Patient/patient-single-example)
* serviceProvider = Reference(Organization/organization-pgh-example)
* period.start = "2013-01-10T09:00:00+08:00"
* period.end = "2013-01-10T09:30:00+08:00"

Instance: medication-vaccine-example
InstanceOf: PHCoreMedication
Usage: #example
Description: "Illustrative vaccine product referenced by the historical Immunization. CVX identifies the vaccine in Immunization.vaccineCode; this Medication has text only because the PH FDA Drugs value set has no registration concept for this product. This is not an FDA registration claim."
* code.text = "Influenza H5N1-1203 vaccine"
