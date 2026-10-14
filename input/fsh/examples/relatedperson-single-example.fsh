Instance: relatedperson-single-example
InstanceOf: PHCoreRelatedPerson
Usage: #example
Description: "Maria Cruz Santos is a female born on 1 January 1955, mother of the patient."
* identifier[PHCorePhilSysID].system = "http://philsys.gov.ph/fhir/Identifier/philsys-id"
* identifier[PHCorePhilSysID].value = "1234-1234567-1"
* identifier[PHCorePhilSysID].use = #official
* identifier[PHCorePhilSysID].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[PHCorePhilSysID].type.coding.code = #NI
* patient = Reference(patient-single-example)
* relationship.coding = $v3-roleCode#MTH "mother"
* relationship.text = "Mother"
* name.use = #official
* name.text = "Maria Cruz Santos"
* name.family = "Santos"
* name.given = "Maria"
* name.given[+] = "Cruz"
* gender = #female
* birthDate = "1955-01-01"
* telecom.system = #phone
* telecom.value = "+63-912-345-6789"
* telecom.use = #mobile
* address.line = "123 Mabini Street"
* address.postalCode = "1000"
* address.country = "PH"

* address.extension[+].url = "https://fhir.doh.gov.ph/phcore/StructureDefinition/city-municipality"
* address.extension[=].valueCoding = $PSGC#1380600000 "City of Manila"


* address.extension[+].url = "https://fhir.doh.gov.ph/phcore/StructureDefinition/region"
* address.extension[=].valueCoding = $PSGC#1300000000 "National Capital Region (NCR)"
