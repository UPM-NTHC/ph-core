Profile: PHCoreMedicationRequest
Parent: MedicationRequest
Id: ph-core-medicationrequest
Title: "PH Core Medication Request"
Description: "Captures key FHIR Medication Request data for the Philippine context."
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 0
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
* medicationCodeableConcept ^binding.extension[+].extension[0].url = "key"
* medicationCodeableConcept ^binding.extension[=].extension[=].valueId = "phcore-medreq-fda-cpr-pref"
* medicationCodeableConcept ^binding.extension[=].extension[+].url = "purpose"
* medicationCodeableConcept ^binding.extension[=].extension[=].valueCode = #preferred
* medicationCodeableConcept ^binding.extension[=].extension[+].url = "valueSet"
* medicationCodeableConcept ^binding.extension[=].extension[=].valueCanonical = Canonical(DrugsVS)
* medicationCodeableConcept ^binding.extension[=].extension[+].url = "documentation"
* medicationCodeableConcept ^binding.extension[=].extension[=].valueMarkdown = "This value set is for use when Philippine FDA CPR product codes are preferred. It is a partial fragment and does not cover all registered drug products or medicinal substances."
* medicationCodeableConcept ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* medication[x] insert ObligationPopulateIfKnownHandle

