Instance: organization-pgh-example
InstanceOf: PHCoreOrganization
Usage: #example
Description: "Philippine General Hospital (PGH) — A government tertiary hospital located in Ermita, Manila, NCR. NHFR: 1234567890, PAN: PAN-2024-56789, PEN: PEN-987654321."

* active = true

* identifier[0].system = "https://nhfr.doh.gov.ph/"
* identifier[=].value = "1234567890"

* identifier[+].system = "http://nhdr.gov.ph/fhir/Identifier/philhealthaccreditationnumber"
* identifier[=].value = "PAN-2024-56789"

* identifier[+].system = "http://nhdr.gov.ph/fhir/Identifier/philhealthemployernumber"
* identifier[=].value = "PEN-987654321"

* name = "Philippine General Hospital"

* type = http://terminology.hl7.org/CodeSystem/organization-type#prov "Healthcare Provider"

* telecom[0].system = #phone
* telecom[=].value = "+63-2-8651-7800"
* telecom[=].use = #work

* telecom[+].system = #email
* telecom[=].value = "contact@pgh.gov.ph"
* telecom[=].use = #work

* address.use = #work
* address.type = #both
* address.line = "Taft Avenue"
* address.city = "Manila"
* address.district = "NCR"
* address.postalCode = "1000"
* address.country = "PH"

* address.extension[+].url = "https://fhir.doh.gov.ph/phcore/StructureDefinition/region"
* address.extension[=].valueCoding = $PSGC#1300000000
* address.extension[+].url = "https://fhir.doh.gov.ph/phcore/StructureDefinition/city-municipality"
* address.extension[=].valueCoding = $PSGC#1380600000

* contact.name.text = "Hospital Administrator"
* contact.telecom.system = #phone
* contact.telecom.value = "+63-2-8651-7801"
* contact.address.use = #work
* contact.address.line = "Taft Avenue"
* contact.address.city = "Manila"
* contact.address.postalCode = "1000"
* contact.address.country = "PH"
* contact.address.extension[+].url = "https://fhir.doh.gov.ph/phcore/StructureDefinition/region"
* contact.address.extension[=].valueCoding = $PSGC#1300000000
* contact.address.extension[+].url = "https://fhir.doh.gov.ph/phcore/StructureDefinition/city-municipality"
* contact.address.extension[=].valueCoding = $PSGC#1380600000
