Profile: PHCorePractitioner
Parent: Practitioner
Id: ph-core-practitioner
Title: "PH Core Practitioner"
Description: "The PH Core Practitioner Profile inherits from the [FHIR R4 Practitioner resource](https://hl7.org/fhir/R4/practitioner.html); refer to it for scope and usage definitions. This profile sets minimum expectations for the Practitioner resource to record, search, and fetch basic demographics and administrative information about an individual practitioner in a Philippine context. It specifies which core elements, extensions, vocabularies, and value sets SHALL be present and constrains how the elements are used. It provides the floor for standards development for Philippine use cases."

* extension contains
    http://hl7.org/fhir/StructureDefinition/individual-genderIdentity named genderIdentity 0..* and
    http://hl7.org/fhir/StructureDefinition/individual-pronouns named individualPronouns 0..* and
    http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender named sex 0..*

* extension[sex] ^short = "Recorded sex or gender"
// Supply the recorded concept in extension[type], such as sex assigned at birth, when known.
* extension[genderIdentity] ^short = "Gender Identity"
* extension[individualPronouns] ^short = "Individual pronouns"


// Appraised - keep - AU Core best practice: 1 independent source IG marks this path MS: AU Core IG (at least 2 required). Original rule: * name MS
* name.given ^short = "First name (given[0]) and Middle Name (given[1])."
* name.given ^definition = "First name (given[0]) and Middle Name (given[1])."
* name insert ObligationOptional
// Appraised - keep - AU Core best practice: 1 independent source IG marks this path MS: AU Core IG (at least 2 required). Original rule: * name.family MS
* name.family insert ObligationOptional
// Appraised - keep - AU Core best practice: 1 independent source IG marks this path MS: AU Core IG (at least 2 required). Original rule: * name.given MS
* name.given insert ObligationOptional

// Remove - not sufficient evidence: 0 independent source IGs mark this exact path MS (at least 2 required). Original rule: * telecom MS
// * telecom insert ObligationOptional

// Remove - not sufficient evidence: 0 independent source IGs mark this exact path MS (at least 2 required). Original rule: * address MS
// * address insert ObligationOptional
* address only PHCoreAddress

// Remove - not sufficient evidence: 0 independent source IGs mark this exact path MS (at least 2 required). Original rule: * birthDate MS
// * birthDate insert ObligationOptional
// Remove - not sufficient evidence: 0 independent source IGs mark this exact path MS (at least 2 required). Original rule: * gender MS
// * gender insert ObligationOptional
