Extension: BatchNumber
Id: batch-number
Context: Immunization
Title: "Batch Number"
Description: "The batch number of the vaccine administered."
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 0
* value[x] only string
