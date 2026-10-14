Instance: practitionerrole-single-example
InstanceOf: PHCorePractitionerRole
Usage: #example
Description: "Dr. Maria Clara Santos is a General Practitioner working in the Philippine General Hospital outpatient service."
* active = true
* identifier.system = "http://doh.gov.ph/fhir/Identifier/practitioner-role-id"
* identifier.value = "PR-OPD-001"
* practitioner = Reference(Practitioner/practitioner-single-example)
* organization = Reference(Organization/organization-pgh-example)
* location = Reference(Location/location-single-example)
* code = $practitioner-role#doctor "Doctor"
* specialty = $sct#394802001 "General medicine"
* telecom[0].system = #phone
* telecom[=].value = "+63-2-8651-7800"
* telecom[+].system = #email
* telecom[=].value = "maria.santos@doh.gov.ph"
