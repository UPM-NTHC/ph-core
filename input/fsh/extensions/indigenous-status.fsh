Extension: IndigenousStatus
Id: indigenous-status
Context: Patient
Title: "Indigenous status"
Description: "Indigenous / ethnic group that the patient belongs to."
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 0
* insert ExperimentalStructureDefinition
* value[x] only CodeableConcept
* value[x] from IndigenousStatusVS (required)
