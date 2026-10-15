Instance: PHCoreClient
InstanceOf: ActorDefinition
Title: "PH Core Client"
Description: "A system that initiates FHIR API requests to access or exchange PH Core resources."
Usage: #definition
// * name = "PHCoreClient"
// * title = "PH Core Client"
// * version = "0.2.1"
* status = #draft
* date = "2026-10-15"
// * language = #en
// * publisher = "UP Manila National TeleHealth Center"
// * contact[0].name = "UP Manila National TeleHealth Center"
// * contact[=].telecom[0].system = #url
// * contact[=].telecom[=].value = "https://github.com/UP-NTHC"
// * jurisdiction = urn:iso:std:iso:3166#PH "Philippines"
* type = #system
// FMM 0: draft, not yet balloted for implementation maturity.
// The structuredefinition-fmm context permits Resource/DomainResource, including these definitions.
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* extension[=].valueInteger = 0
* description = "A system that initiates FHIR API requests to access or exchange PH Core resources."
* documentation = "A PH Core Client initiates FHIR API requests to access or exchange PH Core resources. It correctly handles resources received in responses. When it produces resources for a supported write interaction, it fulfills the applicable population obligations. A read-only client is not required to author resource payloads. The role applies to the request being initiated; a system may also act as a PH Core Server in other exchanges. The API requirements are defined in the [PH Core Client CapabilityStatement](CapabilityStatement-PHCoreClientCapabilityStatement.html)."
// Preserve the R5 capabilities association in the published R4 Basic backport.
// The current Publisher uses an R6 ActorDefinition model without the native capabilities field.
// R4 pattern: https://hl7.org.au/fhir/core/2.0.0/ActorDefinition-au-core-actor-requester.json
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.capabilities"
* extension[=].valueCanonical = Canonical(PHCoreClientCapabilityStatement)
