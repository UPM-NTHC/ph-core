Profile: PHCoreHealthcareService
Parent: HealthcareService
Id: ph-core-healthcareservice
Title: "PH Core HealthcareService"
Description: "This profile sets minimum expectations for a HealthcareService resource to record, search, and fetch information about healthcare services offered by an organization or at a location in the Philippine context. It is based on the [FHIR R4 HealthcareService](https://www.hl7.org/fhir/R4/healthcareservice.html) resource and identifies the *additional* mandatory core elements, extensions, vocabularies and value sets that **SHALL** be present in the HealthcareService when conforming to this profile. It provides the floor for standards development for specific use cases in a Philippine context."

* identifier insert ObligationOptional // Source IGs marking this exact FHIR path MS in supplied table: Road Safety IG; AU Core IG.

// Appraised - for removal: 1 independent source IG marks this path MS: Road Safety IG (at least 2 required). Original rule: * active MS
//* active insert ObligationOptional

// Appraised - for removal: 1 independent source IG marks this path MS: Road Safety IG (at least 2 required). Original rule: * providedBy MS
// * providedBy insert ObligationOptional
* providedBy only Reference(PHCoreOrganization)

// Appraised - for removal: 1 independent source IG marks this path MS: Road Safety IG (at least 2 required). Original rule: * location MS
// * location insert ObligationOptional
* location only Reference(PHCoreLocation)

* coverageArea only Reference(PHCoreLocation)

* name insert ObligationRecommended // Source IGs marking this exact FHIR path MS in supplied table: Road Safety IG; AU Core IG.

* telecom insert ObligationOptional // Source IGs marking this exact FHIR path MS in supplied table: Road Safety IG; AU Core IG.
