Instance: PHCoreServer
InstanceOf: ActorDefinition
Title: "PH Core Server"
Description: "A system that accepts FHIR API requests and provides responses using PH Core resources."
Usage: #definition
* name = "PHCoreServer"
// * title = "PH Core Server"
// * version = "0.2.1"
* status = #draft
* date = "2026-10-15"
// R5 deprecates ActorDefinition.jurisdiction; identify PH through useContext instead.
* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#jurisdiction
* useContext[=].valueCodeableConcept.coding = urn:iso:std:iso:3166#PH "Philippines"
// * jurisdiction = urn:iso:std:iso:3166#PH "Philippines"
// * language = #en
// * publisher = "UP Manila National TeleHealth Center"
// * contact[0].name = "UP Manila National TeleHealth Center"
// * contact[=].telecom[0].system = #url
// * contact[=].telecom[=].value = "https://github.com/UP-NTHC"
* type = #system
// FMM 0: draft, not yet balloted for implementation maturity.
// The structuredefinition-fmm context permits Resource/DomainResource, including these definitions.
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* extension[=].valueInteger = 0
* description = "A system that accepts FHIR API requests and provides responses using PH Core resources."
* documentation = "A PH Core Server accepts FHIR API requests and provides responses containing PH Core resources. It fulfills population obligations when producing response resources and correctly handles resources in supported incoming write requests. It may store, generate, aggregate or proxy resources; it is not required to originate clinical facts or support every write interaction. The role applies to the request being answered; a system may also act as a PH Core Client in other exchanges. The API requirements are defined in the [PH Core Server CapabilityStatement](CapabilityStatement-PHCoreServerCapabilityStatement.html)."
// Preserve the R5 capabilities association in the published R4 Basic backport.
// The current Publisher uses an R6 ActorDefinition model without the native capabilities field.
// R4 pattern: https://hl7.org.au/fhir/core/2.0.0/ActorDefinition-au-core-actor-requester.json
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.capabilities"
* extension[=].valueCanonical = Canonical(PHCoreServerCapabilityStatement)
