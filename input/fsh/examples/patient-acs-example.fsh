Instance: patient-acs-example
InstanceOf: PHCorePatient
Usage: #example
Description: "Juan Dela Cruz, 45-year-old Filipino male, residing in City of Las Piñas, NCR. Patient presents with acute chest pain. History of Type 2 Diabetes Mellitus. PhilHealth ID: 63-584789845-5."

* name.use = #official
* name.family = "Dela Cruz"
* name.given[0] = "Juan"
* name.given[+] = "Carlos"

* gender = #male
* birthDate = "1981-03-15"
* active = true

* extension[nationality].extension[code].valueCodeableConcept = urn:iso:std:iso:3166#PH "Philippines"
* extension[nationality].extension[period].valuePeriod.start = "1981-03-15"

* extension[religion].url = "http://hl7.org/fhir/StructureDefinition/patient-religion"
* extension[religion].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ReligiousAffiliation#1041 "Roman Catholic Church"


* extension[race].url = "https://fhir.doh.gov.ph/phcore/StructureDefinition/race"
* extension[race].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-Race#2036-2 "Filipino"

* extension[educationalAttainment].url = "https://fhir.doh.gov.ph/phcore/StructureDefinition/educational-attainment"
* extension[educationalAttainment].valueCodeableConcept = $PSCED#C201301 "Elementary Graduate"

* extension[occupation].extension[occupationClassification].valueCodeableConcept = $PSOC#911102 "Street Food Vendor"
* extension[occupation].extension[occupationLength].valuePeriod.start = "2015-01-01"

* identifier[PHCorePhilHealthID].system = "http://philhealth.gov.ph/fhir/Identifier/philhealth-id"
* identifier[PHCorePhilHealthID].value = "63-584789845-5"

* telecom[0].system = #phone
* telecom[=].value = "+63-917-123-4567"
* telecom[=].use = #mobile

* address.use = #home
* address.type = #both
* address.line = "123 Mabini Street"
* address.line[+] = "Barangay Malinis"
* address.city = "City of Las Piñas"
* address.district = "NCR"
* address.postalCode = "1740"
* address.country = "PH"

* address.extension[cityMunicipality].valueCoding = $PSGC#1380200000 "City of Las Piñas"
* address.extension[region].valueCoding = $PSGC#1300000000 "National Capital Region (NCR)"

* generalPractitioner = Reference(Practitioner/practitioner-ed-example)
* managingOrganization = Reference(Organization/organization-pgh-example)
