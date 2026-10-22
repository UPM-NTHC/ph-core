Instance: procedure-single-example
InstanceOf: PHCoreProcedure
Usage: #example
Description: "Appendectomy performed during Juan Dela Cruz's January 2024 surgical encounter; linked to the appendicitis diagnosis and completed service request."

* identifier[0].use = #usual
* identifier[=].system = "https://fhir.doh.gov.ph/phcore/NamingSystem/procedure-id"
* identifier[=].value = "PROC-2024-000123"
* identifier[+].use = #secondary
* identifier[=].system = "http://philhealth.gov.ph/procedure"
* identifier[=].value = "PH-APP-789456"

* basedOn = Reference(ServiceRequest/servicerequest-appendectomy-example)



* status = #completed


* category = $sct#387713003 "Surgical procedure"

* code = $sct#80146002 "Appendectomy"
* code.text = "Laparoscopic appendectomy"

* subject = Reference(Patient/patient-single-example)

* encounter = Reference(Encounter/encounter-surgery-example)

* performedPeriod.start = "2024-01-15T08:30:00+08:00"
* performedPeriod.end = "2024-01-15T10:15:00+08:00"

* recorder = Reference(Practitioner/practitioner-single-example)

* asserter = Reference(RelatedPerson/relatedperson-single-example)

* performer[0].function = $sct#223366009 "Healthcare professional"
* performer[=].actor = Reference(Practitioner/practitioner-single-example)
* performer[=].onBehalfOf = Reference(Organization/organization-pgh-example)



* reasonCode = $sct#74400008 "Appendicitis"
* reasonCode.text = "Acute appendicitis"

* reasonReference = Reference(Condition/condition-appendicitis-example)

* bodySite = $sct#66754008 "Appendix structure"
* bodySite.text = "Right lower quadrant abdomen"

* outcome = $sct#385669000 "Successful"
* outcome.text = "Procedure completed without complications"

// No complications occurred during the procedure

* followUp = $sct#226007004 "Post-surgical wound care"
* followUp.text = "Follow-up visit in 7 days for wound check"

* note.text = "Patient tolerated procedure well. Minimal blood loss. Appendix was inflamed but intact. No perforation noted."
* note.time = "2024-01-15T10:30:00+08:00"
