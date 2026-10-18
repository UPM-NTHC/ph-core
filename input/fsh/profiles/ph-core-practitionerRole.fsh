Profile: PHCorePractitionerRole
Parent: PractitionerRole
Id: ph-core-practitionerrole
Title: "PH Core PractitionerRole"
Description: "The PH Core Practitioner Role Profile inherits from the [FHIR R4 PractitionerRole resource](https://hl7.org/fhir/R4/practitionerrole.html); refer to it for scope and usage definitions. This profile sets minimum expectations for the PractitionerRole resource to record, search, and fetch basic demographics and administrative information about an individual practitioner role in a Philippine context. It specifies which core elements, extensions, vocabularies, and value sets SHALL be present and constrains how the elements are used. It provides the floor for standards development for Philippine use cases."
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 0

// JAO 2021-0002 Annex B Release 01, HEALTH CARE PROFESSIONAL item 9:
// Healthcare Professional Category is represented by a code. This maps to the
// eReferral/NHDR practitioner-role exchange use case recorded in PR #160.
// MS: role exchange for eReferral and NHDR (PR #160).
// Appraised - keep - AU Core best practice: 1 independent source IG marks this path MS: AU Core IG (at least 2 required). Original rule: * code 0..* MS
* code insert ObligationPopulateIfKnownHandle

* code ^binding.extension[+].extension[0].url = "key"
* code ^binding.extension[=].extension[=].valueId = "practitionerrole-prc-profession-codes"
* code ^binding.extension[=].extension[+].url = "purpose"
* code ^binding.extension[=].extension[=].valueCode = #preferred
* code ^binding.extension[=].extension[+].url = "valueSet"
* code ^binding.extension[=].extension[=].valueCanonical = Canonical(PRCProfessionCodesVS)
* code ^binding.extension[=].extension[+].url = "documentation"
* code ^binding.extension[=].extension[=].valueMarkdown = "This value set is for use when PRC Profession Codes are preferred."
* code ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"

// Appraised - keep - AU Core best practice: 1 independent source IG marks this path MS: AU Core IG (at least 2 required). Original rule: * identifier 0..* MS
* identifier insert ObligationPopulateIfKnownHandle

// Appraised - keep - AU Core best practice: 1 independent source IG marks this path MS: AU Core IG (at least 2 required). Original rule: * telecom 0..* MS
* telecom insert ObligationPopulateIfKnownHandle
// Appraised - keep - AU Core best practice: 1 independent source IG marks this path MS: AU Core IG (at least 2 required). Original rule: * telecom.system 0..1 MS
* telecom.system insert ObligationPopulateIfKnownHandle
// Appraised - keep - AU Core best practice: 1 independent source IG marks this path MS: AU Core IG (at least 2 required). Original rule: * telecom.value 0..1 MS
* telecom.value insert ObligationPopulateIfKnownHandle

// Appraised - keep - AU Core best practice: 1 independent source IG marks this path MS: AU Core IG (at least 2 required). Original rule: * specialty 0..* MS
* specialty insert ObligationPopulateIfKnownHandle

// Appraised - keep - AU Core best practice: 1 independent source IG marks this path MS: AU Core IG (at least 2 required). Original rule: * practitioner 0..1 MS
* practitioner insert ObligationPopulateIfKnownHandle
* practitioner only Reference(PHCorePractitioner)

// Appraised - keep - AU Core best practice: 1 independent source IG marks this path MS: AU Core IG (at least 2 required). Original rule: * organization 0..1 MS
* organization insert ObligationPopulateIfKnownHandle
* organization only Reference(PHCoreOrganization)

* location only Reference(PHCoreLocation)
