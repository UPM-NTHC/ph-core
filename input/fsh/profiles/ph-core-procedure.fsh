Profile: PHCoreProcedure
Parent: Procedure
Id: ph-core-procedure
Title: "PH Core Procedure"
Description: "An action that is or was performed on or for a patient, practitioner, device, organization, or location."
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 0
* subject only Reference(PHCorePatient or Group)
* subject insert ObligationRequired // Source IGs marking this exact FHIR path MS in supplied table: Road Safety IG; AU Core IG.

* encounter only Reference(PHCoreEncounter)
* encounter insert ObligationPopulateIfKnownHandle // Source IGs marking this exact FHIR path MS in supplied table: Road Safety IG; AU Core IG.

* status insert ObligationRequired // Source IGs marking this exact FHIR path MS in supplied table: Road Safety IG; AU Core IG.

* performed[x] insert ObligationPopulateIfKnownHandle // Appraised - keep - AU Core best practice: 1 independent source IG marks this path MS: AU Core IG (at least 2 required). Original rule: * performed[x] MS

* reasonReference only Reference(Condition or PHCoreObservation or PHCoreProcedure or DiagnosticReport or DocumentReference)
* reasonReference insert ObligationPopulateIfKnownHandle // Appraised - keep - AU Core best practice: 1 independent source IG marks this path MS: AU Core IG (at least 2 required). Original rule: * reasonReference MS

* basedOn only Reference(CarePlan or ServiceRequest) // Note: No changes to Base FHIR, but Re-declared here for convenience of adjusting when new PH Core profiles are added
* partOf only Reference(PHCoreProcedure or Observation or MedicationAdministration)
* recorder only Reference(PHCorePatient or PHCoreRelatedPerson or PHCorePractitioner or PHCorePractitionerRole)
* asserter only Reference(PHCorePatient or PHCoreRelatedPerson or PHCorePractitioner or PHCorePractitionerRole)
* performer.actor only Reference(PHCorePractitioner or PHCorePractitionerRole or PHCoreOrganization or PHCorePatient or PHCoreRelatedPerson or Device)
* performer.onBehalfOf only Reference(PHCoreOrganization)
* location only Reference(PHCoreLocation)
* report only Reference(DiagnosticReport or DocumentReference or Composition)
* complicationDetail only Reference(Condition)
* focalDevice.manipulated only Reference(Device)
* usedReference only Reference(Device or PHCoreMedication or Substance)
