Profile: PHCoreRelatedPerson
Parent: RelatedPerson
Id: ph-core-relatedperson
Title: "PH Core RelatedPerson"
Description: "This profile localizes the FHIR R4 RelatedPerson resource to the Philippine context."


* extension contains
    http://hl7.org/fhir/StructureDefinition/individual-genderIdentity named genderIdentity 0..* and
    http://hl7.org/fhir/StructureDefinition/individual-pronouns named individualPronouns 0..* and
    http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender named sex 0..*

* extension[sex] ^short = "Recorded sex or gender"
// Supply the recorded concept in extension[type], such as sex assigned at birth, when known.
* extension[genderIdentity] ^short = "Gender Identity"
* extension[individualPronouns] ^short = "Individual pronouns"

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slicing based on identifier system"
* identifier ^slicing.ordered = false
* identifier contains
    PHCorePhilHealthID 0..* and
    PHCorePhilSysID 0..*
* identifier[PHCorePhilHealthID] ^patternIdentifier.system = "http://philhealth.gov.ph/fhir/Identifier/philhealth-id"
* identifier[PHCorePhilHealthID] ^short = "PhilHealth ID"
* identifier[PHCorePhilHealthID].value ^example[0].extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-suppress].valueBoolean = true // Clears out Example General: 123456
* identifier[PHCorePhilHealthID].value ^example[1].label = "PhilHealth ID"
* identifier[PHCorePhilHealthID].value ^example[1].valueString = "nn-nnnnnnnnn-n"
* identifier[PHCorePhilHealthID].type = $v2-0203#NH
* identifier[PHCorePhilHealthID] insert ObligationOptional

* identifier[PHCorePhilSysID] ^patternIdentifier.system = "http://philsys.gov.ph/fhir/Identifier/philsys-id"
* identifier[PHCorePhilSysID] ^short = "PhilSys ID"
* identifier[PHCorePhilSysID].value ^example[0].extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-suppress].valueBoolean = true // Clears out Example General: 123456
* identifier[PHCorePhilSysID].value ^example[1].label = "PhilSys ID"
* identifier[PHCorePhilSysID].value ^example[1].valueString = "1234-5678-9101-1213"
* identifier[PHCorePhilSysID].type = $v2-0203#NI
* identifier[PHCorePhilSysID] insert ObligationOptional

// MS commented out for manual review: 1 independent source IG marks this path MS: AU Core IG (at least 2 required). Original rule: * address MS
* address insert ObligationOptional
* address only PHCoreAddress

// MS commented out for manual review: 1 independent source IG marks this path MS: AU Core IG (at least 2 required). Original rule: * telecom MS
* telecom insert ObligationOptional

* name insert ObligationOptional // Source IGs marking this exact FHIR path MS in supplied table: Immunization IG; AU Core IG.
* name.given ^short = "First name (given[0]) and Middle Name (given[1])."
* name.given ^definition = "First name (given[0]) and Middle Name (given[1])."

// TODO: Explicitly cite system url when RelatedPerson is being reviewed
