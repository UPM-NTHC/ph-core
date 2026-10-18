Profile: PHCorePractitioner
Parent: Practitioner
Id: ph-core-practitioner
Title: "PH Core Practitioner"
Description: "The PH Core Practitioner Profile inherits from the [FHIR R4 Practitioner resource](https://hl7.org/fhir/R4/practitioner.html); refer to it for scope and usage definitions. This profile sets minimum expectations for the Practitioner resource to record, search, and fetch basic demographics and administrative information about an individual practitioner in a Philippine context. It specifies which core elements, extensions, vocabularies, and value sets SHALL be present and constrains how the elements are used. It provides the floor for standards development for Philippine use cases."
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 0

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
* name insert ObligationPopulateIfKnownHandle
// Appraised - keep - AU Core best practice: 1 independent source IG marks this path MS: AU Core IG (at least 2 required). Original rule: * name.family MS
* name.family insert ObligationPopulateIfKnownHandle
// Appraised - keep - AU Core best practice: 1 independent source IG marks this path MS: AU Core IG (at least 2 required). Original rule: * name.given MS
* name.given insert ObligationPopulateIfKnownHandle

// Remove - not sufficient evidence: 0 independent source IGs mark this exact path MS (at least 2 required). Original rule: * telecom MS
// * telecom insert ObligationPopulateIfKnownHandle

// Remove - not sufficient evidence: 0 independent source IGs mark this exact path MS (at least 2 required). Original rule: * address MS
// * address insert ObligationPopulateIfKnownHandle
* address only PHCoreAddress

// Slice by identifier.system to identify a PRC-issued license; qualification.code independently classifies the profession for filtering.
// A PRC license qualification has one PRC profession code; this structural pairing does not verify the number-code match against PRC registry data.
// PRC examination names and abbreviations identify examinations and are not qualification codes.

* qualification.issuer only Reference(PHCoreOrganization)

* qualification.code ^binding.extension[+].extension[0].url = "key"
* qualification.code ^binding.extension[=].extension[=].valueId = "practitioner-prc-profession-codes"
* qualification.code ^binding.extension[=].extension[+].url = "purpose"
* qualification.code ^binding.extension[=].extension[=].valueCode = #preferred
* qualification.code ^binding.extension[=].extension[+].url = "valueSet"
* qualification.code ^binding.extension[=].extension[=].valueCanonical = Canonical(PRCProfessionCodesVS)
* qualification.code ^binding.extension[=].extension[+].url = "documentation"
* qualification.code ^binding.extension[=].extension[=].valueMarkdown = "This value set is for use when PRC Profession Codes are preferred."
* qualification.code ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"


* qualification ^slicing.discriminator.type = #value
* qualification ^slicing.discriminator.path = "identifier.system"
* qualification ^slicing.rules = #open
* qualification ^slicing.ordered = false
* qualification ^slicing.description = "PRC professional licenses are identified by the qualification identifier system."
* qualification contains PRCLicense 0..*
* qualification[PRCLicense] insert ObligationPopulateIfKnownHandle
* qualification[PRCLicense] ^short = "PRC professional license"
* qualification[PRCLicense] ^definition = "A professional license issued by the Professional Regulation Commission. Each distinct license is represented by its own qualification."
* qualification[PRCLicense].identifier 1..1
* qualification[PRCLicense].identifier.system = "https://www.prc.gov.ph" (exactly)
* qualification[PRCLicense].identifier.value 1..1
* qualification[PRCLicense].identifier.value ^short = "PRC license number"

* qualification[PRCLicense].code from PRCProfessionCodesVS (required)
* qualification[PRCLicense].code ^comment = "Use a PRC CPDAS numerical profession code when it accurately classifies the qualification. This code does not assert that the license is active."
* qualification[PRCLicense].issuer only Reference(PHCoreOrganization)
* qualification[PRCLicense] obeys ph-prc-001

// Remove - not sufficient evidence: 0 independent source IGs mark this exact path MS (at least 2 required). Original rule: * birthDate MS
// * birthDate insert ObligationPopulateIfKnownHandle
// Remove - not sufficient evidence: 0 independent source IGs mark this exact path MS (at least 2 required). Original rule: * gender MS
// * gender insert ObligationPopulateIfKnownHandle
