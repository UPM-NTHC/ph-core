Extension: AdministeredProduct
Id: administered-product
Context: Immunization
Title: "Administered Product"
Description: "The vaccine product that was administered."
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 0
* value[x] only Reference(PHCoreMedication)
