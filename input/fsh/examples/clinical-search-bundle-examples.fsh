// Authoring references:
// https://build.fhir.org/ig/HL7/US-Core/Bundle-allergyintolerance-provenance-example1.json.html
// https://build.fhir.org/ig/HL7/US-Core/Bundle-allergyintolerance-provenance-example2.html
// Attribution relationships and event times are illustrative. Existing clinical resources remain unchanged.

Instance: bundle-observation-provenance-example
InstanceOf: Bundle
Usage: #example
Title: "Blood pressure with authorship"
Description: "Search response containing a blood pressure Observation and its author Provenance. The Observation is the search match; the Provenance is reverse-included through its target reference."
* type = #searchset
* timestamp = "2012-09-17T08:31:00+08:00"
* total = 1
* link.relation = "self"
* link.url = "https://example.org/fhir/Observation?_id=observation-bp-example&_revinclude=Provenance:target"
* entry[0].fullUrl = "https://example.org/fhir/Observation/observation-bp-example"
* entry[=].resource = observation-bp-example
* entry[=].search.mode = #match
* entry[+].fullUrl = "https://example.org/fhir/Provenance/provenance-single-example"
* entry[=].resource = provenance-single-example
* entry[=].search.mode = #include

Instance: provenance-single-example
InstanceOf: PHCoreProvenance
Usage: #inline
* id = "provenance-single-example"
* meta.profile = Canonical(PHCoreProvenance)
* target = Reference(Observation/observation-bp-example)
* occurredDateTime = "2012-09-17T08:30:00+08:00"
* recorded = "2012-09-17T08:30:15+08:00"
* activity = http://terminology.hl7.org/CodeSystem/v3-DataOperation#CREATE "create"
* agent[ProvenanceAuthor].type = http://terminology.hl7.org/CodeSystem/provenance-participant-type#author "Author"
* agent[ProvenanceAuthor].who = Reference(Practitioner/practitioner-single-example)
* agent[ProvenanceAuthor].onBehalfOf = Reference(Organization/organization-pgh-example)

Instance: bundle-allergy-provenance-example
InstanceOf: Bundle
Usage: #example
Title: "Allergy with authorship and transmission"
Description: "Search response containing an AllergyIntolerance and two Provenance records: one identifies its author and represented Organization, and the other identifies the Organization that later transmitted it."
* type = #searchset
* timestamp = "2023-01-17T09:05:00+08:00"
* total = 1
* link.relation = "self"
* link.url = "https://example.org/fhir/AllergyIntolerance?patient=Patient/patient-single-example&_revinclude=Provenance:target"
* entry[0].fullUrl = "https://example.org/fhir/AllergyIntolerance/allergy-single-example"
* entry[=].resource = allergy-single-example
* entry[=].search.mode = #match
* entry[+].fullUrl = "https://example.org/fhir/Provenance/provenance-allergy-author-example"
* entry[=].resource = provenance-allergy-author-example
* entry[=].search.mode = #include
* entry[+].fullUrl = "https://example.org/fhir/Provenance/provenance-allergy-transmitter-example"
* entry[=].resource = provenance-allergy-transmitter-example
* entry[=].search.mode = #include

Instance: provenance-allergy-author-example
InstanceOf: PHCoreProvenance
Usage: #inline
* id = "provenance-allergy-author-example"
* meta.profile = Canonical(PHCoreProvenance)
* target = Reference(AllergyIntolerance/allergy-single-example)
* occurredDateTime = "2023-01-16T10:00:00+08:00"
* recorded = "2023-01-16T10:00:15+08:00"
* activity = http://terminology.hl7.org/CodeSystem/v3-DataOperation#CREATE "create"
* agent[ProvenanceAuthor].type = http://terminology.hl7.org/CodeSystem/provenance-participant-type#author "Author"
* agent[ProvenanceAuthor].who = Reference(Practitioner/practitioner-single-example)
* agent[ProvenanceAuthor].onBehalfOf = Reference(Organization/organization-pgh-example)

Instance: provenance-allergy-transmitter-example
InstanceOf: PHCoreProvenance
Usage: #inline
* id = "provenance-allergy-transmitter-example"
* meta.profile = Canonical(PHCoreProvenance)
* target = Reference(AllergyIntolerance/allergy-single-example)
* occurredDateTime = "2023-01-17T09:00:00+08:00"
* recorded = "2023-01-17T09:00:10+08:00"
* agent[ProvenanceTransmitter].type = http://terminology.hl7.org/CodeSystem/provenance-participant-type#transmitter "Transmitter"
* agent[ProvenanceTransmitter].who = Reference(Organization/organization-pgh-example)
