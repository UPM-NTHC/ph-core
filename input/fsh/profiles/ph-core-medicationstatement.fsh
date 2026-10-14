Profile: PHCoreMedicationStatement
Parent: MedicationStatement
Id: ph-core-medicationstatement
Title: "PH Core Medication Statement"
Description: "Captures key FHIR Medication Statement data for the Philippine context."
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 0
* insert ExperimentalStructureDefinition

// Philippine-specific references
* subject only Reference(PHCorePatient)
* context only Reference(PHCoreEncounter)
* medicationReference only Reference(PHCoreMedication)
* informationSource only Reference(PHCorePatient or PHCorePractitioner or PHCorePractitionerRole or PHCoreRelatedPerson or PHCoreOrganization)
* derivedFrom only Reference(PHCoreMedicationStatement or PHCoreMedicationRequest or PHCoreMedicationDispense or PHCoreMedicationAdministration or PHCoreProcedure or PHCoreObservation)
* reasonReference only Reference(Condition or PHCoreObservation or DiagnosticReport)


// PartOf references to PH Core profiles
* partOf only Reference(PHCoreMedicationAdministration or PHCoreMedicationDispense or PHCoreMedicationStatement or PHCoreProcedure or PHCoreObservation)

// BasedOn references to PH Core profiles
* basedOn only Reference(PHCoreMedicationRequest or CarePlan or ServiceRequest)

// Philippine-specific binding for medication codes
* medication[x] only CodeableConcept or Reference(PHCoreMedication)
* medicationCodeableConcept from DrugsVS (preferred)
* medication[x] insert ObligationOptional
