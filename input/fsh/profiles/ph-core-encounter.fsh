Profile: PHCoreEncounter
Parent: Encounter
Id: ph-core-encounter
Title: "PH Core Encounter"
Description: "This profile sets minimum expectations for an Encounter resource to record, search, and fetch basic encounter information for a patient. It is based on the [FHIR R4 Encounter](https://www.hl7.org/fhir/R4/encounter.html) resource and identifies the *additional* mandatory core elements, extensions, vocabularies and value sets that **SHALL** be present in the Encounter when conforming to this profile. It provides the floor for standards development for specific uses cases in a Philippine context."
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 0

* status insert ObligationRequired // MS source in supplied Encounter comparison table: Road Safety IG (rs-encounter); AU Core IG (au-core-encounter).

* class insert ObligationRequired // MS source in supplied Encounter comparison table: Road Safety IG (rs-encounter); AU Core IG (au-core-encounter).

* subject insert ObligationRequired // MS source in supplied Encounter comparison table: Road Safety IG (rs-encounter); AU Core IG (au-core-encounter).
* subject only Reference(PHCorePatient or Group)

* diagnosis.condition only Reference(PHCoreCondition or PHCoreProcedure) //Add PHCoreCondition once available.

* hospitalization.origin only Reference(PHCoreLocation or PHCoreOrganization)

* location.location only Reference(PHCoreLocation)

* participant.individual only Reference(PHCorePractitioner or PHCoreRelatedPerson or PHCorePractitionerRole)

* reasonCode only CodeableConcept

* reasonReference only Reference(PHCoreCondition or PHCoreObservation or PHCoreProcedure or ImmunizationRecommendation) //Add PHCoreCondition and PHCoreImmunizationRecommendation once available.

* participant insert ObligationOptional // MS source in supplied Encounter comparison table: Road Safety IG (rs-encounter); AU Core IG (au-core-encounter).

* serviceProvider insert ObligationOptional // MS source in supplied Encounter comparison table: Road Safety IG (rs-encounter); AU Core IG (au-core-encounter).
* serviceProvider only Reference(PHCoreOrganization)
