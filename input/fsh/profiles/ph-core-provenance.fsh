Profile: PHCoreProvenance
Parent: Provenance
Id: ph-core-provenance
Title: "PH Core Provenance"
Description: "This profile identifies the resources described by an activity, when the activity was recorded, and the agents responsible for creating, updating, or transmitting the information."

// Human Appraisal: draft attribution baseline selected for early PH Core development.
// This is a working design, not evidence of national policy or multi-IG adoption.
// Source: US Core Provenance 10.0.0-ballot (reviewed 2026-10-13).
// https://build.fhir.org/ig/HL7/US-Core/StructureDefinition-us-core-provenance.html
// Supporting source guidance: https://build.fhir.org/ig/HL7/US-Core/basic-provenance.html
// Source comparison and development context belong in author comments, not published profile prose.
// Preserve R4 cardinalities for target, recorded, agent and who without restating them.
* target insert ObligationRequired
* target.reference insert ObligationOptional
* recorded insert ObligationRequired
* recorded ^comment = "The time the activity was recorded. Use occurred[x] for when the activity happened, if known."

// Optional local reference constraint; location is not selected as Must Support.
* location only Reference(PHCoreLocation)

// Open, unordered role slices: neither named slice is required in every record.
* agent ^slicing.discriminator.type = #value
* agent ^slicing.discriminator.path = "type"
* agent ^slicing.rules = #open
* agent ^slicing.description = "Agents classified by their participation type. Other agent types remain allowed."
* agent contains
    ProvenanceAuthor 0..* and
    ProvenanceTransmitter 0..*

* agent[ProvenanceAuthor] insert ObligationOptional
* agent[ProvenanceAuthor] ^short = "Agent responsible for creating or updating the information"
* agent[ProvenanceAuthor] ^definition = "The individual, organization, or device responsible for the information produced by the activity described in this record."
* agent[ProvenanceAuthor].type 1..1
* agent[ProvenanceAuthor].type insert ObligationRequired
* agent[ProvenanceAuthor].type = http://terminology.hl7.org/CodeSystem/provenance-participant-type#author
* agent[ProvenanceAuthor].who insert ObligationRequired
* agent[ProvenanceAuthor].onBehalfOf insert ObligationOptional

* agent[ProvenanceTransmitter] insert ObligationOptional
* agent[ProvenanceTransmitter] ^short = "Agent that provided the copy to the receiving system"
* agent[ProvenanceTransmitter] ^definition = "The entity that provided the copy to the receiving system. It may differ from the author."
* agent[ProvenanceTransmitter].type 1..1
* agent[ProvenanceTransmitter].type insert ObligationRequired
* agent[ProvenanceTransmitter].type = http://terminology.hl7.org/CodeSystem/provenance-participant-type#transmitter
* agent[ProvenanceTransmitter].who insert ObligationRequired
* agent[ProvenanceTransmitter].onBehalfOf insert ObligationOptional

// Apply common reference constraints and obligations to every agent, including other roles.
// Declare slice support before common support so SUSHI retains slice MS and obligations in its differential.
* agent insert ObligationRequired
* agent.type insert ObligationOptional
* agent.who insert ObligationRequired
* agent.who only Reference(PHCorePractitioner or PHCorePractitionerRole or PHCoreOrganization or PHCorePatient or PHCoreRelatedPerson or Device)
* agent.onBehalfOf insert ObligationOptional
* agent.onBehalfOf only Reference(PHCoreOrganization)
* agent.onBehalfOf ^comment = "The organization represented by the agent. Required for a Practitioner or Device by provenance-1."

// Retain the existing US Core conditional attribution rule; reference resolution is needed to evaluate it.
* agent obeys provenance-1

Invariant: provenance-1
Description: "onBehalfOf SHALL be present when Provenance.agent.who is a Practitioner or Device"
Severity: #error
Expression: "who.exists((resolve() is Practitioner) or (resolve() is Device)) implies onBehalfOf.exists()"
