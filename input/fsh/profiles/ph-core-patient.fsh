Profile: PHCorePatient
Parent: Patient
Id: ph-core-patient
Title: "PH Core Patient"
Description: "Captures key demographic and administrative information about individuals receiving care or other health-related services."
* extension contains
    http://hl7.org/fhir/StructureDefinition/patient-nationality named nationality 0..* and
    http://hl7.org/fhir/StructureDefinition/patient-religion named religion 0..* and
    http://hl7.org/fhir/StructureDefinition/individual-genderIdentity named genderIdentity 0..* and
    IndigenousStatus named indigenousStatus 0..* and
    // IndigenousPeople named indigenousPeople 0..1 and // removed, capturing indigenousStatus
    Occupation named occupation 0..* and
    Race named race 0..1 and
    EducationalAttainment named educationalAttainment 0..1 and
    http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender named sex 0..* and
    PHCorePWDDisability named pwdDisability 0..1
* extension[genderIdentity] ^short = "Gender Identity - in compliance with SOGIE Bill"
* extension[sex] ^short = "Sex assigned at birth - in compliance with SOGIE Bill"
    
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slicing based on identifier system"
* identifier ^slicing.ordered = false

* identifier contains
    PHCorePhilHealthID 0..* MS and
    PHCorePhilSysID 0..* MS

* identifier[PHCorePhilHealthID] only PHCorePhilHealthID
* identifier[PHCorePhilHealthID] insert ObligationOptional
* identifier[PHCorePhilSysID] only PHCorePhilSysID
* identifier[PHCorePhilSysID] insert ObligationOptional

* address 0..* MS
* address insert ObligationOptional
* address only PHCoreAddress

* birthDate 0..1 MS
* birthDate insert ObligationOptional
* gender 0..1 MS
* gender insert ObligationOptional
* gender ^short = "Administrative Gender - for backward compatibility with existing implementations"
* maritalStatus from http://hl7.org/fhir/ValueSet/marital-status (required)
* name 0..* MS
* name insert ObligationOptional
* name only PHCoreName
* telecom 0..* MS
* telecom insert ObligationOptional
* contact.name only PHCoreName
* contact.relationship from http://hl7.org/fhir/ValueSet/relatedperson-relationshiptype (required)

* contact.address MS
* contact.address insert ObligationOptional
* contact.address only PHCoreAddress

// PH Core Profile References - Issue #274
* generalPractitioner only Reference(PHCorePractitioner or PHCorePractitionerRole or PHCoreOrganization)
* managingOrganization only Reference(PHCoreOrganization)
* link.other only Reference(PHCorePatient or PHCoreRelatedPerson)
* contact.organization only Reference(PHCoreOrganization)

