Profile: PHCorePatient
Parent: Patient
Id: ph-core-patient
Title: "PH Core Patient"
Description: "Captures key demographic and administrative information about individuals receiving care or other health-related services."
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 0
* extension contains
    http://hl7.org/fhir/StructureDefinition/patient-nationality|5.3.0 named nationality 0..* and
    http://hl7.org/fhir/StructureDefinition/patient-religion|5.3.0 named religion 0..* and
    http://hl7.org/fhir/StructureDefinition/individual-genderIdentity named genderIdentity 0..* and
    http://hl7.org/fhir/StructureDefinition/individual-pronouns named individualPronouns 0..* and
    IndigenousStatus named indigenousStatus 0..* and
    // IndigenousPeople named indigenousPeople 0..1 and // removed, capturing indigenousStatus
    Occupation named occupation 0..* and
    Race named race 0..1 and
    EducationalAttainment named educationalAttainment 0..1 and
    http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender named sex 0..* and
    PHCorePWDDisability named pwdDisability 0..1
* extension[genderIdentity] ^short = "Gender Identity"
* extension[sex] ^short = "Recorded sex or gender"
// Supply the recorded concept in extension[type], such as sex assigned at birth, when known.
* extension[individualPronouns] ^short = "Individual pronouns"

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slicing based on identifier system"
* identifier ^slicing.ordered = false

* identifier contains
    PHCorePhilHealthID 0..* and
    PHCorePhilSysID 0..*

* identifier[PHCorePhilHealthID].system = "http://philhealth.gov.ph/fhir/Identifier/philhealth-id" (exactly)
* identifier[PHCorePhilHealthID] ^short = "PhilHealth ID"
* identifier[PHCorePhilHealthID].value ^example[0].extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-suppress].valueBoolean = true // Clears out Example General: 123456
* identifier[PHCorePhilHealthID].value ^example[1].label = "PhilHealth ID"
* identifier[PHCorePhilHealthID].value ^example[1].valueString = "nn-nnnnnnnnn-n"
* identifier[PHCorePhilHealthID].type = $v2-0203#NH
* identifier[PHCorePhilHealthID] insert ObligationOptional


* identifier[PHCorePhilSysID].system = "http://philsys.gov.ph/fhir/Identifier/philsys-id" (exactly)
* identifier[PHCorePhilSysID] ^short = "PhilSys ID"
* identifier[PHCorePhilSysID].value ^example[0].extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-suppress].valueBoolean = true // Clears out Example General: 123456
* identifier[PHCorePhilSysID].value ^example[1].label = "PhilSys ID"
* identifier[PHCorePhilSysID].value ^example[1].valueString = "1234-5678-9101-1213"
* identifier[PHCorePhilSysID].type = $v2-0203#NI
* identifier[PHCorePhilSysID] insert ObligationOptional

* address insert ObligationOptional // Source IGs marking this exact FHIR path MS in supplied table: Immunization IG; Road Safety IG; AU Core IG.
* address only PHCoreAddress

* birthDate insert ObligationOptional // Source IGs marking this exact FHIR path MS in supplied table: Immunization IG; Road Safety IG; AU Core IG.
* gender insert ObligationOptional // Source IGs marking this exact FHIR path MS in supplied table: Immunization IG; AU Core IG.
* gender ^short = "Administrative Gender - for backward compatibility with existing implementations"
// Retain the R4 extensible marital-status binding; no stronger local binding is selected.
* name insert ObligationOptional // Source IGs marking this exact FHIR path MS in supplied table: Road Safety IG; AU Core IG.
* name.given ^short = "First name (given[0]) and Middle Name (given[1])."
* name.given ^definition = "First name (given[0]) and Middle Name (given[1])."
// Appraised - keep - AU Core best practice: 1 independent source IG marks this path MS: AU Core IG (at least 2 required). Original rule: * name.family MS
* name.family insert ObligationOptional
// Appraised - keep - AU Core best practice: 1 independent source IG marks this path MS: AU Core IG (at least 2 required). Original rule: * name.given MS
* name.given insert ObligationOptional

* telecom insert ObligationOptional // Source IGs marking this exact FHIR path MS in supplied table: Road Safety IG; AU Core IG.

* contact.name.given ^short = "First name (given[0]) and Middle Name (given[1])."
* contact.name.given ^definition = "First name (given[0]) and Middle Name (given[1])."

// Retain the R4 extensible patient-contactrelationship binding for contact roles.

* contact.address only PHCoreAddress
// Person-root gender extensions are not declared on Patient.contact.
// Use a RelatedPerson record when a person-level demographic representation is needed.

// PH Core Profile References - Issue #274
* generalPractitioner only Reference(PHCorePractitioner or PHCorePractitionerRole or PHCoreOrganization)
* managingOrganization only Reference(PHCoreOrganization)
* link.other only Reference(PHCorePatient or PHCoreRelatedPerson)
* contact.organization only Reference(PHCoreOrganization)
