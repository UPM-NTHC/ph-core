Alias: $immunization-funding-source = http://terminology.hl7.org/CodeSystem/immunization-funding-source
Alias: $v3-ActSite = http://terminology.hl7.org/CodeSystem/v3-ActSite

Instance: immunization-single-example
InstanceOf: PHCoreImmunization
Usage: #example
Description: "Juan Dela Cruz received a completed intramuscular influenza (H5N1-1203) vaccine at Philippine General Hospital on January 10, 2013."

// Batch is represented once, by the base lotNumber element.
* extension[administeredProduct].valueReference = Reference(Medication/medication-vaccine-example)

* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:1.3.6.1.4.1.21367.2005.3.7.1234"

* status = #completed

* vaccineCode = http://hl7.org/fhir/sid/cvx#123 "influenza, H5N1-1203"
* vaccineCode.text = "Influenza H5N1-1203 Vaccine"

* patient = Reference(Patient/patient-single-example)
* encounter = Reference(Encounter/encounter-immunization-example)
* occurrenceDateTime = "2013-01-10"
* primarySource = true

* location = Reference(Location/location-single-example)

* lotNumber = "AAJN11K"
* expirationDate = "2015-02-15"

* site = $v3-ActSite#LA "left arm"
* site.text = "Left arm"

* route = $v3-RouteOfAdministration#IM "Injection, intramuscular"
* route.text = "Intramuscular injection"


* performer.function = $v2-0443#OP "Ordering Provider"
* performer.function.text = "Ordering Provider"
* performer.actor = Reference(Practitioner/practitioner-single-example)
* performer.actor.display = "Dr. Maria Clara Santos"


* fundingSource = $immunization-funding-source#private "Private"
* fundingSource.text = "Private"

* note.text = "Notes on administration of vaccine"

* protocolApplied.targetDisease = $sct#772828001 "Influenza caused by Influenza A virus subtype H5N1"
* protocolApplied.targetDisease.text = "Influenza H5N1"
* protocolApplied.doseNumberPositiveInt = 1
