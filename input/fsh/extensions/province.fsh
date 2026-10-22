Extension: Province
Id: province
Context: Address
Description: "Province from the standard geographic code."
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 0
* insert ExperimentalStructureDefinition
* value[x] only Coding
* value[x] from provinces (extensible)
