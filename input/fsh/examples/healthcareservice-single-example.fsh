Instance: healthcareservice-single-example
InstanceOf: PHCoreHealthcareService
Usage: #example
Title: "Example PH Core HealthcareService"
Description: "Philippine General Hospital Outpatient Department providing General Medicine consultations as a PH Core HealthcareService."


* identifier.system = "http://pgh.gov.ph/fhir/Identifier/service-id"
* identifier.value = "PGH-OPD-GMED-001"

* active = true

* providedBy = Reference(Organization/organization-pgh-example)

* category = http://terminology.hl7.org/CodeSystem/service-category#27 "Specialist Medical"
* category.text = "Specialist Medical"

* type = http://terminology.hl7.org/CodeSystem/service-type#124 "General Practice"
* type.text = "General Practice"

* specialty = $sct#394802001 "General medicine"
* specialty.text = "General medicine"

* location = Reference(Location/location-single-example)

* name = "Outpatient Department - General Medicine"

* telecom.system = #phone
* telecom.value = "+63-2-5548-0000"
* telecom.use = #work
* telecom[1].system = #email
* telecom[1].value = "opd.gmed@pgh.gov.ph"
* telecom[1].use = #work

* availableTime.daysOfWeek[+] = #mon
* availableTime.daysOfWeek[+] = #tue
* availableTime.daysOfWeek[+] = #wed
* availableTime.daysOfWeek[+] = #thu
* availableTime.daysOfWeek[+] = #fri
* availableTime.availableStartTime = "08:00:00"
* availableTime.availableEndTime = "17:00:00"

* notAvailable.description = "Closed on public holidays"
