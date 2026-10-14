Profile: PHCoreMedication
Parent: Medication
Id: ph-core-medication
Title: "PH Core Medication"
Description: "This resource is primarily used for the identification and definition of a medication, including ingredients, for the purposes of prescribing, dispensing, and administering a medication as well as for making statements about medication use."
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 0
* insert ExperimentalStructureDefinition
* code 1..
* code insert ObligationOptional
* code from DrugsVS (preferred)
