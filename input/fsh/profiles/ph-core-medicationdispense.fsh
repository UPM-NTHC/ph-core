Profile: PHCoreMedicationDispense
Parent: MedicationDispense
Id: ph-core-medicationdispense
Title: "PH Core Medication Dispense"
Description: "Captures key FHIR Medication Dispense data for the Philippine context."
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 0
* insert ExperimentalStructureDefinition

// Philippine-specific references
* subject only Reference(PHCorePatient or Group)
* context only Reference(PHCoreEncounter or EpisodeOfCare)
* medicationReference only Reference(PHCoreMedication)
* performer.actor only Reference(PHCorePractitioner or PHCorePractitionerRole or PHCoreOrganization or PHCorePatient or Device or PHCoreRelatedPerson)
* location only Reference(PHCoreLocation)
* authorizingPrescription only Reference(PHCoreMedicationRequest)
* destination only Reference(PHCoreLocation)
* receiver only Reference(PHCorePatient or PHCorePractitioner)
* substitution.responsibleParty only Reference(PHCorePractitioner or PHCorePractitionerRole)

// Philippine-specific binding for medication codes
* medication[x] only CodeableConcept or Reference(PHCoreMedication)
* medicationCodeableConcept from DrugsVS (preferred)
* medication[x] insert ObligationOptional

