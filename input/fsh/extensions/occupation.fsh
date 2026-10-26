Extension: Occupation
Id: occupation
Context: Patient
Title: "Occupation"
Description: "Patient's occupation."
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 0
* insert ExperimentalStructureDefinition
// Content review: an occupation classification can be known without its duration.
// Preserve the classification requirement; do not require an unknown duration.
* extension contains
    occupationClassification 1..1 and
    occupationLength 0..1
* extension[occupationClassification].value[x] only CodeableConcept
* extension[occupationClassification].valueCodeableConcept from OccupationClassifications (extensible)
* extension[occupationClassification] ^short = "Occupation Classification"
* extension[occupationLength].value[x] only integer or Period
* extension[occupationLength] ^short = "Length of time in occupation expressed as a date range or a number of years."
