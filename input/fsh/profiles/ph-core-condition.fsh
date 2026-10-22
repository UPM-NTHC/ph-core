Profile: PHCoreCondition
Parent: Condition
Id: ph-core-condition
Title: "PH Core Condition"
Description: "Captures Condition."
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 0

* category MS 
* category insert ObligationPopulateIfKnownHandle // Source IGs marking this exact FHIR path MS in supplied table: Road Safety IG; AU Core IG.

* encounter insert ObligationPopulateIfKnownHandle // Manually Appraised: 1 independent source IG marks this path MS: Road Safety IG (at least 2 required).
// Rationale: supporting referencing to an encouter optionally is essential in the clinical context when available.
// Ex. When was this diagnosed or when was the problem identified further refines the date in history
// it was captured and prevents and if points to the same encounter, can be de-duplicated if inferring to the same condition
* note insert ObligationPopulateIfKnownHandle // Source IGs marking this exact FHIR path MS in supplied table: Road Safety IG; AU Core IG.
* severity insert ObligationPopulateIfKnownHandle // Source IGs marking this exact FHIR path MS in supplied table: Road Safety IG; AU Core IG.
* subject insert ObligationPopulateIfKnownHandle // Source IGs marking this exact FHIR path MS in supplied table: Road Safety IG; AU Core IG.
* code insert ObligationPopulateIfKnownHandle // Source IGs marking this exact FHIR path MS in supplied table: Road Safety IG; AU Core IG.


// ============================================
// PH Core Specific References
// ============================================

* subject only Reference(PHCorePatient)
* encounter only Reference(PHCoreEncounter)
* recorder only Reference(PHCorePractitioner or PHCorePractitionerRole or PHCorePatient or PHCoreRelatedPerson)
* asserter only Reference(PHCorePractitioner or PHCorePractitionerRole or PHCorePatient or PHCoreRelatedPerson)
