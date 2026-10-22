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
* medicationCodeableConcept ^binding.extension[+].extension[0].url = "key"
* medicationCodeableConcept ^binding.extension[=].extension[=].valueId = "phcore-meddisp-fda-cpr-pref"
* medicationCodeableConcept ^binding.extension[=].extension[+].url = "purpose"
* medicationCodeableConcept ^binding.extension[=].extension[=].valueCode = #preferred
* medicationCodeableConcept ^binding.extension[=].extension[+].url = "valueSet"
* medicationCodeableConcept ^binding.extension[=].extension[=].valueCanonical = Canonical(DrugsVS)
* medicationCodeableConcept ^binding.extension[=].extension[+].url = "documentation"
* medicationCodeableConcept ^binding.extension[=].extension[=].valueMarkdown = "This value set is for use when Philippine FDA CPR product codes are preferred. It is a partial fragment and does not cover all registered drug products or medicinal substances."
* medicationCodeableConcept ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* medication[x] insert ObligationPopulateIfKnownHandle

