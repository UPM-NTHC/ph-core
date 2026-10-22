Profile: PHCoreAddress
Parent: Address
Id: ph-core-address
Title: "PH Core Address"
Description: "An address for the individual."
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 0
* extension contains
    Region named region 0..1 and
    Province named province 0..1 and
    CityMunicipality named cityMunicipality 0..1 and
    Barangay named barangay 0..1
* extension[region] insert ObligationPopulateIfKnownHandle
* extension[province] insert ObligationPopulateIfKnownHandle
* extension[cityMunicipality] insert ObligationPopulateIfKnownHandle
* extension[barangay] insert ObligationPopulateIfKnownHandle
