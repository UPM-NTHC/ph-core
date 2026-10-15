Profile: PHCoreTask
Parent: Task
Id: ph-core-task
Title: "PH Core Task"
Description: "This profile localizes the FHIR R4 Task resource to the Philippine context."
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 0

// TODO: Explicitly cite system url when Task is being reviewed

// ============================================
// FSH PROPOSAL GENERATED FROM task.csv
// Uses loosest cardinalities and MS flags from all IGs
// ============================================

// Appraised - for removal: 1 independent source IG marks this path MS: Road Safety IG (at least 2 required). Existing note: Task.executionPeriod - : 0..1 MS
// * executionPeriod insert ObligationPopulateIfKnownHandle
// Appraised - for removal: 1 independent source IG marks this path MS: Road Safety IG (at least 2 required). Existing note: Task.for - : 0..1 MS
// * for insert ObligationPopulateIfKnownHandle
// Appraised - for removal: 1 independent source IG marks this path MS: Road Safety IG (at least 2 required). Existing note: Task.note - : 0..* MS
// * note insert ObligationPopulateIfKnownHandle
// Appraised - for removal: 1 independent source IG marks this path MS: Road Safety IG (at least 2 required). Existing note: Task.status - : 1..1 MS
// * status insert ObligationClientShouldPopulate

// ============================================
// PH CORE SPECIFIC REFERENCE CONSTRAINTS
// Constraining references to use PH Core profiles where available
// ============================================

* for only Reference(PHCorePatient)
* encounter only Reference(PHCoreEncounter)
* requester only Reference(PHCorePractitioner or PHCorePractitionerRole or PHCoreOrganization or PHCorePatient or Device or PHCoreRelatedPerson)
* owner only Reference(PHCorePractitioner or PHCorePractitionerRole or PHCoreOrganization or CareTeam or HealthcareService or PHCorePatient or Device or PHCoreRelatedPerson)
* location only Reference(PHCoreLocation)
* restriction.recipient only Reference(PHCorePatient or PHCorePractitioner or PHCorePractitionerRole or PHCoreRelatedPerson or Group or PHCoreOrganization)
* partOf only Reference(PHCoreTask)
