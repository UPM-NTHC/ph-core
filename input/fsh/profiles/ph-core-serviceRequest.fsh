Profile: PHCoreServiceRequest
Parent: ServiceRequest
Id: ph-core-serviceRequest
Title: "PH Core ServiceRequest"
Description: "The PH Core ServiceRequest Profile is a Philippine-specific FHIR profile that represents a record of a request for services such as diagnostic investigations, treatments, or operations to be performed within the Philippine health system. It constrains the base FHIR ServiceRequest resource by defining minimum expectations on core elements, extensions, vocabularies, and value sets relevant to local clinical and administrative workflows. It serves as a nationally consistent baseline for recording, searching, and fetching service request information to support interoperable health information exchange across Philippine health facilities and programs."
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 0

* encounter only Reference(PHCoreEncounter)
* requester only Reference(PHCorePractitioner or PHCorePractitionerRole or PHCoreOrganization or PHCorePatient or PHCoreRelatedPerson or Device) // add PHCoreDevice when it is created
* subject only Reference(PHCorePatient or Group or PHCoreLocation or Device) // add PHCoreGroup and PHCoreDevice when they are created


// Vibe Code Cleaning ~ removed the data elements below. Need to confirm with the author if there is any intent to keep.

// Appraised - for removal: 0 independent source IGs mark authoredOn MS; its 0..1 cardinality is inherited from FHIR R4 ServiceRequest.
// * authoredOn insert ObligationPopulateIfKnownHandle

// Appraised - for removal: 0 independent source IGs mark category MS. Base 0..* is inherited; a national category slice may be added when defined.
// * category insert ObligationPopulateIfKnownHandle

// Appraised - for removal: independent source IG marks encounter MS (Road Safety IG); base 0..1 is inherited.
// * encounter insert ObligationPopulateIfKnownHandle

// Appraised - for removal: 0 independent source IGs mark occurrence[x] MS; its 0..1 cardinality is inherited from FHIR R4 ServiceRequest.
// * occurrence[x] insert ObligationPopulateIfKnownHandle
// occurrenceDateTime is the FSH path for the dateTime choice of occurrence[x]; it inherits the same base 0..1 cardinality.
// * occurrenceDateTime insert ObligationPopulateIfKnownHandle
// * occurrenceDateTime ^extension[$obligation][0].extension[documentation].valueMarkdown = "Handling the supported dateTime representation of the recorded service occurrence."

// Appraised - for removal: 0 independent source IGs mark requester MS; its 0..1 cardinality is inherited from FHIR R4 ServiceRequest.
// * requester insert ObligationPopulateIfKnownHandle

// Appraised - for removal: independent source IG marks subject MS (Road Safety IG); base 1..1 is inherited.
// * subject insert ObligationRequired

// Appraised - for removal: independent source IG marks status MS (Road Safety IG); base 1..1 is inherited.
// * status insert ObligationRequired

// Appraised - for removal: independent source IG marks supportingInfo MS (Road Safety IG); base 0..* is inherited.
// * supportingInfo insert ObligationPopulateIfKnownHandle
