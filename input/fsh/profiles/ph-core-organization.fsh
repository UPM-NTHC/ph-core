Profile: PHCoreOrganization
Parent: Organization
Id: ph-core-organization
Title: "PH Core Organization"
Description: "This profile localizes the FHIR R4 Organization resource to the Philippine context."


* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slicing based on identifier system"
* identifier ^slicing.ordered = false

* identifier contains 
    NhfrCode 0..* MS and
    HcpnCode 0..* MS and
    PAN 0..* MS and
    PEN 0..* MS

* identifier[NhfrCode] only PHCoreDOHNHFRCode
* identifier[HcpnCode] only PHCoreHCPNCode
* identifier[PAN] only PHCorePhilHealthPAN
* identifier[PEN] only PHCorePhilHealthPEN


* active 0..1 MS
* address MS
* address only PHCoreAddress
* name 0..1 MS
* telecom 0..* MS

* contact.address MS
* contact.address only PHCoreAddress

* partOf only Reference(PHCoreOrganization)
