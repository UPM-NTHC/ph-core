Instance: organization-pgh-example
InstanceOf: PHCoreOrganization
Usage: #example
Description: "Philippine General Hospital (PGH) — A government tertiary hospital located in Ermita, Manila, NCR. NHFR: 1234567890, PAN: PAN-2024-56789, PEN: PEN-987654321."

* active = true

* identifier[NhfrCode].system = "https://fhir.doh.gov.ph/phcore/Identifier/doh-nhfr-code"
* identifier[NhfrCode].value = "1234567890"

* identifier[PAN].system = "http://nhdr.gov.ph/fhir/Identifier/philhealthaccreditationnumber"
* identifier[PAN].value = "PAN-2024-56789"

* identifier[PEN].system = "http://nhdr.gov.ph/fhir/Identifier/philhealthemployernumber"
* identifier[PEN].value = "PEN-987654321"

* name = "Philippine General Hospital"

* type[0] = http://terminology.hl7.org/CodeSystem/organization-type#prov "Healthcare Provider"

// JAO Hospital Statistics #9 "Nature of Ownership"
* type[ownership] = OrganizationOwnershipCS#government "Government"

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

* address.extension[region].valueCoding = $PSGC#1300000000 "National Capital Region (NCR)"
* address.extension[cityMunicipality].valueCoding = $PSGC#1380600000 "City of Manila"
* address.extension[barangay].valueCoding = $PSGC#1339000003 "Ermita"

* contact.name.text = "Hospital Administrator"
* contact.telecom.system = #phone
* contact.telecom.value = "+63-2-8651-7801"
* contact.address.use = #work
* contact.address.line = "Taft Avenue"
* contact.address.city = "Manila"
* contact.address.postalCode = "1000"
* contact.address.country = "PH"
* contact.address.extension[region].valueCoding = $PSGC#1300000000 "National Capital Region (NCR)"
* contact.address.extension[cityMunicipality].valueCoding = $PSGC#1380600000 "City of Manila"
* contact.address.extension[barangay].valueCoding = $PSGC#1339000003 "Ermita"
