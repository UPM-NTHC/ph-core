Instance: practitioner-identifier
InstanceOf: SearchParameter
Usage: #definition
* url = "https://fhir.doh.gov.ph/phcore/SearchParameter/practitioner-identifier"
* name = "PHCorePractitionerIdentifier"
* status = #draft
* description = "R5 Practitioner identifier-search behavior backported to R4, covering practitioner and qualification identifiers."
* code = #identifier
* base[0] = #Practitioner
* type = #token
* expression = "Practitioner.identifier | Practitioner.qualification.identifier"
