Profile: PHCoreImmunization
Parent: Immunization
Id: ph-core-immunization
Title: "PH Core Immunization"
Description: "Describes the event of a patient being administered a vaccine or a record of an immunization as reported by a patient, a clinician or another party."

* extension contains
    BatchNumber named batchNumber 0..1 and
    AdministeredProduct named administeredProduct 0..1
// Appraised - Keep - Immu IG: 1 independent source IG marks this path MS: Immunization IG (at least 2 required). Original rule: * extension[batchNumber] BatchNumber named batchNumber 0..1 MS
// Appraised - Keep - Immu IG: 1 independent source IG marks this path MS: Immunization IG (at least 2 required). Original rule: * extension[administeredProduct] AdministeredProduct named administeredProduct 0..1 MS
* extension[batchNumber] insert ObligationOptional
* extension[administeredProduct] insert ObligationOptional

* patient only Reference(PHCorePatient) // Source IGs marking this exact FHIR path MS in supplied table: Immunization IG; AU Core IG.
* patient insert ObligationRequired

* status insert ObligationRequired // Source IGs marking this exact FHIR path MS in supplied table: Immunization IG; AU Core IG.

* lotNumber insert ObligationOptional // Source IGs marking this exact FHIR path MS in supplied table: Immunization IG; AU Core IG.

* encounter insert ObligationOptional // Appraised - Keep - Immu IG: 1 independent source IG marks this path MS: Immunization IG (at least 2 required). Original rule: * encounter MS
* encounter only Reference(PHCoreEncounter)

* location only Reference(PHCoreLocation)
* location insert ObligationOptional // Appraised - Keep - Immu IG: 1 independent source IG marks this path MS: Immunization IG (at least 2 required). Original rule: * location MS

* occurrence[x] only dateTime
* occurrenceDateTime insert ObligationRequired // Appraised - Keep - Immu IG: 1 independent source IG marks this path MS: Immunization IG (at least 2 required). Original rule: * occurrenceDateTime MS

* performer insert ObligationOptional // Appraised - Keep - Immu IG: 1 independent source IG marks this path MS: Immunization IG (at least 2 required). Original rule: * performer MS

* performer.actor insert ObligationRequired // Appraised - Keep - Immu IG: 1 independent source IG marks this path MS: Immunization IG (at least 2 required). Original rule: * performer.actor MS
* performer.actor only Reference(PHCorePractitioner or PHCorePractitionerRole or PHCoreOrganization) // In FHIR R4 additional Profile was added Patient and RelatedPerson

* performer.actor.display insert ObligationOptional // Appraised - Keep - Immu IG: 1 independent source IG marks this path MS: Immunization IG (at least 2 required). Original rule: * performer.actor.display MS

* primarySource insert ObligationOptional // Appraised - Keep - Immu IG: 1 independent source IG marks this path MS: AU Core IG (at least 2 required). Original rule: * primarySource MS

* note insert ObligationOptional // Appraised - Keep - Immu IG: 1 independent source IG marks this path MS: AU Core IG (at least 2 required). Original rule: * note MS

* protocolApplied insert ObligationOptional // Appraised - Keep - Immu IG: 1 independent source IG marks this path MS: Immunization IG (at least 2 required). Original rule: * protocolApplied MS

* protocolApplied.doseNumberPositiveInt insert ObligationOptional // Appraised - Keep - Immu IG: 1 independent source IG marks this path MS: Immunization IG (at least 2 required). Original rule: * protocolApplied.doseNumberPositiveInt MS
