Profile: PHCoreOrganization
Parent: Organization
Id: ph-core-organization
Title: "PH Core Organization"
Description: "This profile localizes the FHIR R4 Organization resource to the Philippine context."


* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slicing based on identifier system"
* identifier ^slicing.ordered = false

* identifier contains 
    NhfrCode 0..* and
    HcpnSite 0..* and
    PAN 0..* and
    PEN 0..*

// * identifier[NhfrCode] only PHCoreDOHNHFRCode
* identifier[NhfrCode] ^patternIdentifier.system = "https://nhfr.doh.gov.ph/"
* identifier[NhfrCode] ^definition = "Health Facility Code (HFC) from the National Health Facility Registry"
* identifier[NhfrCode] ^short = "DOH NHFR Code"
// Suppress Identifier.value's inherited R4 "General" example, then provide the NHFR-specific example.
* identifier[NhfrCode].value ^example[0].extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-suppress].valueBoolean = true // Clears out Example General: 123456
* identifier[NhfrCode].value ^example[1].label = "DOH NHFR Code"
* identifier[NhfrCode].value ^example[1].valueString = "DOH000000000012345"
* identifier[NhfrCode].type = $v2-0203#NH
* identifier[NhfrCode] insert ObligationOptional

// * identifier[HcpnSite] only PHCoreHcpnSite
* identifier[HcpnSite] ^patternIdentifier.system = "https://fhir.doh.gov.ph/phcore/Identifier/hcpn-code"
* identifier[HcpnSite] ^definition = "Health Care Provider Network (HCPN) code uniquely identifying an organization within its Health Care Provider Network in the Philippines. There is no National Coded Registry of capturing this, hence Free Text or string is ok and has to be agreed upon by their designated networks. Note that the cities and provinces can establish their own HCPN, but DOH can only Monitor Sites listed on http://bit.ly/ListofUHCIS"
* identifier[HcpnSite] ^short = "HCPN Integration Site; Note that the cities and provinces can establish their own HCPN, but DOH can only Monitor Sites listed on http://bit.ly/ListofUHCIS"
* identifier[HcpnSite].type = $v2-0203#LR
* identifier[HcpnSite].value ^example[0].extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-suppress].valueBoolean = true // Clears out Example General: 123456
* identifier[HcpnSite].value ^example[1].label = "HCPN entry for Aklan"
* identifier[HcpnSite].value ^example[1].valueString = "Aklan"
* identifier[HcpnSite].value ^example[2].label = "HCPN entry for Baguio City"
* identifier[HcpnSite].value ^example[2].valueString = "Baguio City"

// * identifier[PAN] only PHCorePhilHealthPAN
* identifier[PAN] ^patternIdentifier.system = "http://nhdr.gov.ph/fhir/Identifier/philhealthaccreditationnumber"
* identifier[PAN] ^short = "PAN - PhilHealth Accreditation Number"
* identifier[PAN] ^definition = "The unique number issued by PhilHealth to accredited institutions."
* identifier[PAN].value ^short = "PhilHealth Accreditation Number"
* identifier[PAN].type = $v2-0203#NPI
* identifier[PAN].value ^example[0].extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-suppress].valueBoolean = true // Clears out Example General: 123456

// * identifier[PAN] insert ObligationOptional

// * identifier[PEN] only PHCorePhilHealthPEN
* identifier[PEN] ^patternIdentifier.system = "http://nhdr.gov.ph/fhir/Identifier/philhealthemployernumber"
* identifier[PEN] ^short = "PEN - PhilHealth Employer Number"
* identifier[PEN] ^short = "PEN - PhilHealth Employer Number"
* identifier[PEN] ^definition = "The unique number issued by PhilHealth to employers."
* identifier[PEN].type = $v2-0203#NE
* identifier[PEN].value ^example[0].extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-suppress].valueBoolean = true // Clears out Example General: 123456


// * identifier[PEN] insert ObligationOptional


// Removed - not sufficient evidence to keep: 1 independent source IG marks this path MS: Road Safety IG (at least 2 required). Original rule: * active 0..1 MS
// * active insert ObligationOptional
* address insert ObligationOptional // Source IGs marking this exact FHIR path MS in supplied table: Road Safety IG; AU Core IG.
* address only PHCoreAddress
* name insert ObligationOptional // Source IGs marking this exact FHIR path MS in supplied table: Road Safety IG; AU Core IG.
* telecom insert ObligationOptional // Source IGs marking this exact FHIR path MS in supplied table: Road Safety IG; AU Core IG.

// REMOVED - NO CLEAR UC IG USE: 0 independent source IGs mark this exact path MS (at least 2 required). Original rule: * contact.address MS
// * contact.address insert ObligationOptional
* contact.address only PHCoreAddress

* partOf only Reference(PHCoreOrganization)
