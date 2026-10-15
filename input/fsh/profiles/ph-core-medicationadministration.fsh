Profile: PHCoreMedicationAdministration
Parent: MedicationAdministration
Id: ph-core-medicationadministration
Title: "PH Core Medication Administration"
Description: "Captures key FHIR Medication Administration data for the Philippine context."
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 0
* insert ExperimentalStructureDefinition

// Philippine-specific references
* subject only Reference(PHCorePatient or Group)
* context only Reference(PHCoreEncounter or EpisodeOfCare)
* medicationReference only Reference(PHCoreMedication)
* performer.actor only Reference(PHCorePractitioner or PHCorePractitionerRole or PHCorePatient or PHCoreRelatedPerson or Device)
* reasonReference only Reference(Condition or PHCoreObservation or DiagnosticReport)
* request only Reference(PHCoreMedicationRequest)
* partOf only Reference(PHCoreMedicationAdministration or PHCoreProcedure)

// Philippine-specific binding for medication codes
* medication[x] only CodeableConcept or Reference(PHCoreMedication)
* medicationCodeableConcept from DrugsVS (preferred)
* medication[x] insert ObligationPopulateIfKnownHandle
