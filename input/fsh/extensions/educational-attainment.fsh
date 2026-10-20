Extension: EducationalAttainment
Id: educational-attainment
Title: "Educational Attainment"
Context: Patient
Description: "Highest educational attainment of the patient."
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 0
* insert ExperimentalStructureDefinition
* value[x] only CodeableConcept
* value[x] from EducationalAttainments (extensible)
