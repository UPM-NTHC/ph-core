Profile: PHCoreOrganization
Parent: Organization
Id: ph-core-organization
Title: "PH Core Organization"
Description: "This profile localizes the FHIR R4 Organization resource to the Philippine context. Elements are aligned with the health facility data elements of DOH-PhilHealth JAO 2021-0002 Annex B."

// ============================================
// Identifiers
// ============================================
* identifier MS
* identifier insert ObligationOptional
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slicing based on identifier system"
* identifier ^slicing.ordered = false

// JAO Annex B.1 "Health Facility Code" (NHFR), repeated in 41 categories,
// plus Disease Reporting Unit, Referred from/to Health Facility and Laboratory Facility
* identifier contains 
    NhfrCode 0..* MS and
    HcpnCode 0..* MS and
    PAN 0..* MS and
    PEN 0..* MS

* identifier[NhfrCode] only PHCoreDOHNHFRCode
* identifier[NhfrCode] insert ObligationOptional
* identifier[HcpnCode] only PHCoreHCPNCode
* identifier[HcpnCode] insert ObligationOptional
* identifier[PAN] only PHCorePhilHealthPAN
* identifier[PAN] insert ObligationOptional
* identifier[PEN] only PHCorePhilHealthPEN
* identifier[PEN] insert ObligationOptional

// ============================================
// Must Support Elements with Obligations
// ============================================
* active 0..1 MS
* active insert ObligationOptional

// JAO Hospital Statistics #1 "Name of Hospital"; COVID-19 Case Investigation #24 facility name
* name 0..1 MS
* name insert ObligationOptional

// JAO Hospital Statistics #6 "Contact Number" and #7 "Email Address"
* telecom 0..* MS
* telecom insert ObligationOptional

// JAO Hospital Statistics #2-5 street address, city/municipality, province and region
* address MS
* address insert ObligationOptional
* address only PHCoreAddress

* contact.address MS
* contact.address insert ObligationOptional
* contact.address only PHCoreAddress

* partOf only Reference(PHCoreOrganization)

// ============================================
// CodeableConcept Elements
// ============================================
* insert CodeableConceptSO(type)
* insert CodeableConceptSO(contact.purpose)

// Exception: Required by DOH JAO 2021-0002 (Annex B.1 Hospital Statistics #9 "Nature of Ownership")
* type ^slicing.discriminator.type = #value
* type ^slicing.discriminator.path = "coding.system"
* type ^slicing.rules = #open
* type ^slicing.description = "Slicing based on the code system of the organization type"
* type ^slicing.ordered = false
* type contains
    ownership 0..1 MS
* type[ownership] ^short = "Nature of ownership (government or private)"
* type[ownership] ^definition = "The legal right of an individual, group, corporation or government to the possession (ownership) of the facility (DOH-PhilHealth JAO 2021-0002 Annex B.1 Hospital Statistics #9)."
* type[ownership] insert ObligationOptional
* type[ownership] from OrganizationOwnershipVS (required)
* type[ownership].coding 1..*
* type[ownership].coding.system 1..1
* type[ownership].coding.system = "https://fhir.doh.gov.ph/phcore/CodeSystem/organization-ownership-cs" (exactly)
