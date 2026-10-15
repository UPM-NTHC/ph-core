Instance: patient-single-example
InstanceOf: PHCorePatient
Usage: #example
Description: "Juan Dela Cruz is a male patient born on 1 January 1980, residing in Manila, NCR, Philippines."
* name.family = "Dela Cruz"
* name.given = "Juan Jane"
* name.given[+] = "Dela Fuente"
* gender = #male
* birthDate = "1980-01-01"
* active = true
* extension[nationality].extension[code].valueCodeableConcept = urn:iso:std:iso:3166#PH "Philippines"
* extension[nationality].extension[period].valuePeriod.start = "2020-01-01"
* extension[nationality].extension[period].valuePeriod.end = "2023-01-01"
* extension[religion].url = "http://hl7.org/fhir/StructureDefinition/patient-religion"
* extension[religion].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ReligiousAffiliation#1007 "Atheism"
* extension[indigenousStatus].url = "https://fhir.doh.gov.ph/phcore/StructureDefinition/indigenous-status"
* extension[indigenousStatus].valueCodeableConcept = IndigenousStatusCS#Aetas "Aetas"
* extension[race].url = "https://fhir.doh.gov.ph/phcore/StructureDefinition/race"
* extension[race].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-Race#2036-2 "Filipino"
* extension[educationalAttainment].url = "https://fhir.doh.gov.ph/phcore/StructureDefinition/educational-attainment"
* extension[educationalAttainment].valueCodeableConcept = $PSCED#C201301 "Elementary Graduate"
* extension[occupation].extension[occupationClassification].valueCodeableConcept = $PSOC#111102 "Hospital Administrator"
* extension[occupation].extension[occupationLength].valuePeriod.start = "2020-01-01"
* identifier.system = "http://philhealth.gov.ph/fhir/Identifier/philhealth-id"
* identifier.value = "63-584789845-5"
* address.line = "123 Mabini Street"
* address.line[+] = "Barangay Malinis"
* address.city = "Quezon City"
* address.district = "NCR"
* address.postalCode = "1100"
* address.country = "PH"

* address.extension.url = "https://fhir.doh.gov.ph/phcore/StructureDefinition/barangay"
* address.extension.valueCoding = $PSGC#1380100001 "Barangay 1"

* address.extension[+].url = "https://fhir.doh.gov.ph/phcore/StructureDefinition/city-municipality"
* address.extension[=].valueCoding = $PSGC#1380200000 "City of Las Piñas"

* address.extension[+].url = "https://fhir.doh.gov.ph/phcore/StructureDefinition/province"
* address.extension[=].valueCoding = $PSGC#0402100000 "Cavite"
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Juan Dela Cruz is a male patient born on 1 January 1980, residing in Manila, NCR, Philippines.</div>"
