Profile: PHCoreProvenance
Parent: Provenance
Id: ph-core-provenance
Title: "PH Core Provenance"
Description: "This profile localizes the FHIR R4 Provenance resource to the Philippine context, capturing key information about who, what, when, and where for a set of resources. It is used to track the authorship and history of healthcare data in Philippine health information systems."
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 0

// ============================================
// US CORE PROVENANCE MANDATORY ELEMENTS
// ============================================

* target 1..* MS
  * ^short = "The Resource(s) this Provenance record supports"
  * ^definition = "The Reference(s) that were generated or updated by the activity described in this resource. A provenance can point to more than one target if multiple resources were created/updated by a single activity."
  * ^comment = "See the [PH Core Provenance Profile](StructureDefinition-ph-core-provenance.html) for guidance on supported resource types."
* target.reference MS
  * ^short = "Literal reference, Relative, internal or absolute URL"
  * ^definition = "A reference to another resource on the FHIR server."

* recorded 1..1 MS
  * ^short = "Timestamp when the activity was recorded / updated"
  * ^definition = "The instant of time at which the activity was recorded."
  * ^comment = "This is when the activity was recorded, not necessarily when it occurred."

// ============================================
// US CORE PROVENANCE AGENT SLICES
// ============================================

* agent ^slicing.discriminator.type = #value
* agent ^slicing.discriminator.path = "type"
* agent ^slicing.rules = #open
* agent ^slicing.description = "Slice based on the agent type code (author vs transmitter)"
* agent ^slicing.ordered = false
* agent contains
    ProvenanceAuthor 0..* MS and
    ProvenanceTransmitter 0..* MS

* agent ^short = "Actor(s) involved"
* agent ^definition = "An actor that takes part in the activity. The actor can be a person, an organization, a device, or a software system."
* agent ^comment = "At least one agent must be provided. Use the ProvenanceAuthor slice for the entity that created the content and ProvenanceTransmitter slice for the entity that sent/transmitted it."

// Base agent constraints
* agent.type MS
  * ^short = "How the agent participated"
  * ^definition = "The participation the agent had in the activity."
  * ^binding.description = "The type of participation (author, transmitter, etc.)"

* agent.who 1..1 MS
  * ^short = "Who participated"
  * ^definition = "The individual, organization, or device that participated in the activity."

* agent.onBehalfOf MS
  * ^short = "Who the agent is representing"
  * ^definition = "The organization the agent is representing. This is mandatory when the agent is a Practitioner or Device."
  * ^comment = "When the agent is a Practitioner or Device, this element identifies the organization they were acting on behalf of."

// ============================================
// REFERENCED PROFILES
// ============================================
// This profile references the following PH Core profiles:
// - PHCorePractitioner: For individual healthcare providers
// - PHCorePractitionerRole: For practitioners in specific roles
// - PHCoreOrganization: For healthcare organizations
// - PHCorePatient: For patient agents
// - PHCoreRelatedPerson: For related persons (family members, etc.)
// - Device: Base FHIR Device (no PH Core Device profile available)
// ============================================

// ============================================
// AGENT: PROVENANCE AUTHOR
// ============================================

* agent[ProvenanceAuthor]
  * ^short = "Author organization or individual responsible for the information"
  * ^definition = "The entity that created the data. This is typically an organization, practitioner, patient, or device that authored the information."
  * ^comment = """
    The author is the source of the information being recorded. This slice is used to identify who originally created the content.

    Referenced Profiles:
    - PHCorePractitioner: Philippine healthcare practitioner
    - PHCorePractitionerRole: Practitioner in a specific role
    - PHCoreOrganization: Philippine healthcare organization
    - PHCorePatient: Philippine patient
    - PHCoreRelatedPerson: Related person (family member, guardian, etc.)
    - Device: Base FHIR Device (no PH Core Device profile)
    """

* agent[ProvenanceAuthor].type 1..1 MS
  * ^short = "How the agent participated"
  * ^definition = "The type of agent participation. For the author slice, this is fixed to 'author'."
  * ^comment = "Fixed value: author"
* agent[ProvenanceAuthor].type = http://terminology.hl7.org/CodeSystem/provenance-participant-type#author

* agent[ProvenanceAuthor].who 1..1 MS
  * ^short = "Who participated"
  * ^definition = "The individual, organization, or device that authored the information."
  * ^comment = """
    References PH Core profiles where available:
    - PHCorePractitioner | PHCorePractitionerRole | PHCoreOrganization | PHCorePatient | PHCoreRelatedPerson
    Uses base FHIR Device when no PH Core profile exists.
    """
* agent[ProvenanceAuthor].who only Reference(PHCorePractitioner or PHCorePractitionerRole or PHCoreOrganization or PHCorePatient or PHCoreRelatedPerson or Device)

* agent[ProvenanceAuthor].onBehalfOf MS
  * ^short = "Who the agent is representing"
  * ^definition = "The organization the agent is representing. This is mandatory when the agent is a Practitioner or Device (per provenance-1 constraint)."
  * ^comment = "References PHCoreOrganization"
* agent[ProvenanceAuthor].onBehalfOf only Reference(PHCoreOrganization)

// ============================================
// AGENT: PROVENANCE TRANSMITTER
// ============================================

* agent[ProvenanceTransmitter]
  * ^short = "Transmitter that provided the information"
  * ^definition = "The entity that transmitted the data from the source to the destination. If the transmitter is a device, the transmitter organization must also be valued."
  * ^comment = """
    The transmitter represents who sent the information, which may differ from who authored it. This is important for tracking the chain of custody.

    Referenced Profiles:
    - PHCorePractitioner: Philippine healthcare practitioner
    - PHCorePractitionerRole: Practitioner in a specific role
    - PHCoreOrganization: Philippine healthcare organization
    - PHCorePatient: Philippine patient
    - PHCoreRelatedPerson: Related person (family member, guardian, etc.)
    - Device: Base FHIR Device (no PH Core Device profile)
    """

* agent[ProvenanceTransmitter].type 1..1 MS
  * ^short = "How the agent participated"
  * ^definition = "The type of agent participation. For the transmitter slice, this is fixed to 'transmitter'."
  * ^comment = "Fixed value: transmitter"
* agent[ProvenanceTransmitter].type = http://terminology.hl7.org/CodeSystem/provenance-participant-type#transmitter

* agent[ProvenanceTransmitter].who 1..1 MS
  * ^short = "Who participated"
  * ^definition = "The individual, organization, or device that transmitted the information."
  * ^comment = """
    References PH Core profiles where available:
    - PHCorePractitioner | PHCorePractitionerRole | PHCoreOrganization | PHCorePatient | PHCoreRelatedPerson
    Uses base FHIR Device when no PH Core profile exists.
    """
* agent[ProvenanceTransmitter].who only Reference(PHCorePractitioner or PHCorePractitionerRole or PHCoreOrganization or PHCorePatient or PHCoreRelatedPerson or Device)

* agent[ProvenanceTransmitter].onBehalfOf MS
  * ^short = "Who the agent is representing"
  * ^definition = "The organization the transmitter is representing. This is mandatory when the transmitter is a Practitioner or Device (per provenance-1 constraint)."
  * ^comment = "References PHCoreOrganization"
* agent[ProvenanceTransmitter].onBehalfOf only Reference(PHCoreOrganization)

// ============================================
// PH CORE SPECIFIC REFERENCE CONSTRAINTS
// ============================================

* location only Reference(PHCoreLocation)

// ============================================
// INVARIANTS (from US Core Provenance)
// ============================================

* target.reference insert ObligationPopulateIfKnownHandle
* agent.type insert ObligationPopulateIfKnownHandle
* agent.onBehalfOf insert ObligationPopulateIfKnownHandle
* agent[ProvenanceAuthor] insert ObligationPopulateIfKnownHandle
* agent[ProvenanceAuthor].onBehalfOf insert ObligationPopulateIfKnownHandle
* agent[ProvenanceTransmitter] insert ObligationPopulateIfKnownHandle
* agent[ProvenanceTransmitter].onBehalfOf insert ObligationPopulateIfKnownHandle

* agent obeys provenance-1


Invariant: provenance-1
Description: "onBehalfOf SHALL be present when Provenance.agent.who is a Practitioner or Device"
Severity: #error
Expression: "who.exists((resolve() is Practitioner) or (resolve() is Device)) implies onBehalfOf.exists()"
