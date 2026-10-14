Profile: PHCoreAllergyIntolerance
Parent: AllergyIntolerance
Id: ph-core-allergyintolerance
Title: "PH Core AllergyIntolerance"
Description: "This profile sets minimum expectations for an AllergyIntolerance resource to record, search, and fetch basic allergy intolerance information for a patient. It is based on the [FHIR R4 AllergyIntolerance](https://www.hl7.org/fhir/R4/allergyintolerance.html) resource and identifies the *additional* mandatory core elements, extensions, vocabularies and value sets that **SHALL** be present in the AllergyIntolerance when conforming to this profile. It provides the floor for standards development for specific uses cases in a Philippine context."

* patient insert ObligationRequired // Source IGs marking this exact FHIR path MS in supplied table: Road Safety IG; AU Core IG.
* patient only Reference(PHCorePatient)

// Manual Appraisal done: 1 independent source IG marks this path MS: AU Core IG (at least 2 required). Original rule: * reaction 0..* MS
* reaction insert ObligationOptional // Rationale to keep, AU Core wisdom holds good clinical weight to capture what kind of reaction happened


// Manual Appraisal done:  1 independent source IG marks this path MS: AU Core IG (at least 2 required). Original rule: * reaction.severity 0..1 MS
* reaction.severity insert ObligationOptional // Rationale to keep: AU Core wisdom



// Manual Appraisal: 1 independent source IG marks this path MS: AU Core IG (at least 2 required). Original rule: * onset[x] 0..1 MS
* onset[x] insert ObligationOptional // Rationale to keep: AU Core wisdom


// Manual Appraisal: 1 independent source IG marks this path MS: AU Core IG (at least 2 required). Original rule: * note 0..* MS
* note insert ObligationOptional // Rationale to keep: Common asked method to capture free text

// Human-appraisal exception to JAO v0.3.0 direct mapping rule; see the
// Decision Log. JAO Annex B ALERT items 5-7 describe allergy type and category,
// not this subpath. The reviewed use case requires a recorded manifestation.
// MS commented out for manual review: 1 independent source IG marks this path MS: AU Core IG (at least 2 required). Original rule: * reaction.manifestation MS
* reaction.manifestation insert ObligationRequired