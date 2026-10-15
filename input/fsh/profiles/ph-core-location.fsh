Profile: PHCoreLocation
Parent: Location
Id: ph-core-location
Title: "PH Core Location"
Description: "This profile localizes the FHIR R4 Location resource to the Philippine context."
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 0

// ============================================
// PH Core Specific References
// ============================================
* address only PHCoreAddress
* managingOrganization only Reference(PHCoreOrganization)
* partOf only Reference(PHCoreLocation)

// ============================================
// Must Support Elements with Obligations
// ============================================

// Status
// * status insert ObligationPopulateIfKnownHandle // Appraised - Remove: 0 independent source IGs mark this exact path MS (at least 2 required). Original rule: * status MS

// Name
* name insert ObligationPopulateIfKnownHandle // Source IGs marking this exact FHIR path MS in supplied table: Road Safety IG; AU Core IG.

// Address and sub-elements
* address insert ObligationPopulateIfKnownHandle // Source IGs marking this exact FHIR path MS in supplied table: Road Safety IG; AU Core IG.
// * address.line insert ObligationPopulateIfKnownHandle // Remove, Parent Obligation sufficient: 1 independent source IG marks this path MS: Road Safety IG (at least 2 required). Original rule: * address.line MS

// Managing Organization
* managingOrganization insert ObligationPopulateIfKnownHandle // Appraised - Keep - AU IG best practice: 1 independent source IG marks this path MS: AU Core IG (at least 2 required). Original rule: * managingOrganization MS

// Position and sub-elements
* position insert ObligationPopulateIfKnownHandle // Keep, Road Safety Reporting: 1 independent source IG marks this path MS: Road Safety IG (at least 2 required). Original rule: * position MS
// MS commented let Parent MS explain: 1 independent source IG marks this path MS: Road Safety IG (at least 2 required). Original rule: * position.longitude MS
// * position.longitude insert ObligationPopulateIfKnownHandle
// MS commented let Parent MS explain: Road Safety IG (at least 2 required). Original rule: * position.latitude MS
// * position.latitude insert ObligationPopulateIfKnownHandle
