Profile: PHCoreObservation
Parent: Observation
Id: ph-core-observation
Title: "PH Core Observation"
Description: "Measurements and simple assertions made about a patient, device or other subject."
* subject only Reference(PHCorePatient or Group or Device or Location)
* encounter only Reference(PHCoreEncounter)

* performer only Reference(PHCorePractitioner or PHCorePractitionerRole or PHCoreOrganization or PHCorePatient or PHCoreRelatedPerson or CareTeam)
* basedOn only Reference(CarePlan or DeviceRequest or ImmunizationRecommendation or MedicationRequest or NutritionOrder or PHCoreServiceRequest)
* partOf only Reference(PHCoreMedicationAdministration or PHCoreMedicationDispense or PHCoreMedicationStatement or PHCoreProcedure or PHCoreImmunization or ImagingStudy)
* hasMember only Reference(PHCoreObservation or Observation or QuestionnaireResponse or MolecularSequence)
* derivedFrom only Reference(DocumentReference or ImagingStudy or Media or QuestionnaireResponse or PHCoreObservation or Observation or MolecularSequence)
