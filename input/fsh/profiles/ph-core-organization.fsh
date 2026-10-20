Profile: PHCoreOrganization
Parent: Organization
Id: ph-core-organization
Title: "PH Core Organization"
Description: "This profile localizes the FHIR R4 Organization resource to the Philippine context. Elements are aligned with the health facility data elements of DOH-PhilHealth JAO 2021-0002 Annex B."
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 0


* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slicing based on identifier system"
* identifier ^slicing.ordered = false

// JAO Annex B.1 "Health Facility Code" (NHFR), repeated in 41 categories,
// plus Disease Reporting Unit, Referred from/to Health Facility and Laboratory Facility
* identifier contains 
    NhfrCode 0..* and
    HcpnSite 0..* and
    PAN 0..* and
    PEN 0..*

// * identifier[NhfrCode] only PHCoreDOHNHFRCode
* identifier[NhfrCode].system = "https://nhfr.doh.gov.ph/" (exactly)
* identifier[NhfrCode] ^definition = "Health Facility Code (HFC) from the National Health Facility Registry"
* identifier[NhfrCode] ^short = "DOH NHFR Code"
// Suppress Identifier.value's inherited R4 "General" example, then provide the NHFR-specific example.
* identifier[NhfrCode].value ^example[0].extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-suppress].valueBoolean = true // Clears out Example General: 123456
* identifier[NhfrCode].value ^example[1].label = "DOH NHFR Code"
* identifier[NhfrCode].value ^example[1].valueString = "DOH000000000012345"
* identifier[NhfrCode].type = $v2-0203#NH
* identifier[NhfrCode] insert ObligationPopulateIfKnownHandle

// * identifier[HcpnSite] only PHCoreHcpnSite
* identifier[HcpnSite].system = "https://fhir.doh.gov.ph/phcore/Identifier/hcpn-code" (exactly)
* identifier[HcpnSite] ^definition = "Health Care Provider Network (HCPN) code uniquely identifying an organization within its Health Care Provider Network in the Philippines. There is no National Coded Registry of capturing this, hence Free Text or string is ok and has to be agreed upon by their designated networks. Note that the cities and provinces can establish their own HCPN, but DOH can only Monitor Sites listed on http://bit.ly/ListofUHCIS"
* identifier[HcpnSite] ^short = "HCPN Integration Site; Note that the cities and provinces can establish their own HCPN, but DOH can only Monitor Sites listed on http://bit.ly/ListofUHCIS"
* identifier[HcpnSite].type = $v2-0203#LR
* identifier[HcpnSite].value ^example[0].extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-suppress].valueBoolean = true // Clears out Example General: 123456
* identifier[HcpnSite].value ^example[1].label = "HCPN entry for Aklan"
* identifier[HcpnSite].value ^example[1].valueString = "Aklan"
* identifier[HcpnSite].value ^example[2].label = "HCPN entry for Baguio City"
* identifier[HcpnSite].value ^example[2].valueString = "Baguio City"

// * identifier[PAN] only PHCorePhilHealthPAN
* identifier[PAN].system = "http://nhdr.gov.ph/fhir/Identifier/philhealthaccreditationnumber" (exactly)
* identifier[PAN] ^short = "PAN - PhilHealth Accreditation Number"
* identifier[PAN] ^definition = "The unique number issued by PhilHealth to accredited institutions."
* identifier[PAN].value ^short = "PhilHealth Accreditation Number"
* identifier[PAN].type = $v2-0203#NPI
* identifier[PAN].value ^example[0].extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-suppress].valueBoolean = true // Clears out Example General: 123456

// * identifier[PAN] insert ObligationPopulateIfKnownHandle

// * identifier[PEN] only PHCorePhilHealthPEN
* identifier[PEN].system = "http://nhdr.gov.ph/fhir/Identifier/philhealthemployernumber" (exactly)
* identifier[PEN] ^short = "PEN - PhilHealth Employer Number"
* identifier[PEN] ^short = "PEN - PhilHealth Employer Number"
* identifier[PEN] ^definition = "The unique number issued by PhilHealth to employers."
* identifier[PEN].type = $v2-0203#NE
* identifier[PEN].value ^example[0].extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-suppress].valueBoolean = true // Clears out Example General: 123456


// * identifier[PEN] insert ObligationPopulateIfKnownHandle


// Removed - not sufficient evidence to keep: 1 independent source IG marks this path MS: Road Safety IG (at least 2 required). Original rule: * active 0..1 MS
// * active insert ObligationPopulateIfKnownHandle
* address insert ObligationPopulateIfKnownHandle // Source IGs marking this exact FHIR path MS in supplied table: Road Safety IG; AU Core IG.
* address only PHCoreAddress
* name insert ObligationPopulateIfKnownHandle // Source IGs marking this exact FHIR path MS in supplied table: Road Safety IG; AU Core IG.
* telecom insert ObligationPopulateIfKnownHandle // Source IGs marking this exact FHIR path MS in supplied table: Road Safety IG; AU Core IG.

// REMOVED - NO CLEAR UC IG USE: 0 independent source IGs mark this exact path MS (at least 2 required). Original rule: * contact.address MS
// * contact.address insert ObligationPopulateIfKnownHandle
* contact.address only PHCoreAddress

* partOf only Reference(PHCoreOrganization)

// Exception: Required by DOH JAO 2021-0002 (Annex B.1 Hospital Statistics #9 "Nature of Ownership").
// No base R4 element or HL7 code system carries ownership; human appraisal recorded in the Decision Log (#370).
* type ^slicing.discriminator.type = #value
* type ^slicing.discriminator.path = "coding.system"
* type ^slicing.rules = #open
* type ^slicing.description = "Slicing based on the code system of the organization type"
* type ^slicing.ordered = false
* type contains
    ownership 0..1
* type[ownership] ^short = "Nature of ownership (government or private)"
* type[ownership] ^definition = "The legal right of an individual, group, corporation or government to the possession (ownership) of the facility (DOH-PhilHealth JAO 2021-0002 Annex B.1 Hospital Statistics #9)."
* type[ownership] insert ObligationPopulateIfKnownHandle
* type[ownership] from OrganizationOwnershipVS (required)
* type[ownership].coding 1..*
* type[ownership].coding.system 1..1
* type[ownership].coding.system = "https://fhir.doh.gov.ph/phcore/CodeSystem/organization-ownership-cs" (exactly)