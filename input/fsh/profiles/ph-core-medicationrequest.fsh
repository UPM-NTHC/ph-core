Profile: PHCoreMedicationRequest
Parent: MedicationRequest
Id: ph-core-medicationrequest
Title: "PH Core Medication Request"
Description: "Captures key FHIR Medication Request data for the Philippine context."
* insert ExperimentalStructureDefinition

// Philippine-specific references
* subject only Reference(PHCorePatient or Group)
* encounter only Reference(PHCoreEncounter)
* medicationReference only Reference(PHCoreMedication)
* requester only Reference(PHCorePractitioner or PHCorePractitionerRole or PHCoreOrganization or PHCorePatient or PHCoreRelatedPerson or Device)
* performer only Reference(PHCorePractitioner or PHCorePractitionerRole or PHCoreOrganization or PHCorePatient or Device or PHCoreRelatedPerson or CareTeam)
* recorder only Reference(PHCorePractitioner or PHCorePractitionerRole)
* reasonReference only Reference(Condition or PHCoreObservation)
* basedOn only Reference(CarePlan or PHCoreMedicationRequest or ServiceRequest or ImmunizationRecommendation)
* priorPrescription only Reference(PHCoreMedicationRequest)

// Philippine-specific binding for medication codes
* medication[x] only CodeableConcept or Reference(PHCoreMedication)
* medicationCodeableConcept from DrugsVS (preferred)
* medication[x] insert ObligationOptional

