Instance: organization-single-example
InstanceOf: PHCoreOrganization
Title: "Example PH Core Organization"
Description: "An example instance of a PH Core Organization conforming to the Philippine localization profile. Demonstrates all identifier types (NHFR, HCPN, PAN, PEN) and Must Support fields."



* active = true
* identifier[0].system = "https://nhfr.doh.gov.ph/"
* identifier[=].value = "0987654321"
* identifier[+].system = "https://fhir.doh.gov.ph/phcore/Identifier/hcpn-code"
* identifier[=].value = "HCPN-EXAMPLE-MANILA-001"
* identifier[+].system = "http://nhdr.gov.ph/fhir/Identifier/philhealthaccreditationnumber"
* identifier[=].value = "PAN-2024-00001"
* identifier[+].system = "http://nhdr.gov.ph/fhir/Identifier/philhealthemployernumber"
* identifier[=].value = "PEN-000000001"

// A custom identifier not defined in PH Core profile
* identifier[+].system = "http://my-hospital.org/internal-id"
* identifier[=].value = "HOSP-INT-12345"

* name = "Example Manila Health Centre"

* telecom.system = #phone
* telecom.value = "+63-2-8651-7800"
* telecom.use = #work
* telecom[1].system = #email
* telecom[1].value = "contact@doh.gov.ph"
* telecom[1].use = #work

* address.use = #work
* address.line = "123 Hospital Street"
* address.postalCode = "1000"
* address.country = "PH"
* address.extension[+].url = "https://fhir.doh.gov.ph/phcore/StructureDefinition/region"
* address.extension[=].valueCoding = $PSGC#1300000000
* address.extension[+].url = "https://fhir.doh.gov.ph/phcore/StructureDefinition/city-municipality"
* address.extension[=].valueCoding = $PSGC#1380600000

* contact.name.text = "Health Facility Contact"
* contact.telecom.system = #phone
* contact.telecom.value = "+63-2-8651-7800"
* contact.address.use = #work
* contact.address.line = "125 Central Office Street"
* contact.address.postalCode = "1000"
* contact.address.country = "PH"
* contact.address.extension[+].url = "https://fhir.doh.gov.ph/phcore/StructureDefinition/region"
* contact.address.extension[=].valueCoding = $PSGC#1300000000
* contact.address.extension[+].url = "https://fhir.doh.gov.ph/phcore/StructureDefinition/city-municipality"
* contact.address.extension[=].valueCoding = $PSGC#1380600000
