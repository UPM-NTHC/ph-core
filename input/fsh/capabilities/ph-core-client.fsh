// Synthesis of published US Core 9.0.0 client scope and AU Core 2.0.0 actor roles.
// Intentionally references the shared Server catalog rather than duplicating it.
Instance: PHCoreClientCapabilityStatement
InstanceOf: CapabilityStatement
Usage: #definition
// * name = "PHCoreClientCapabilityStatement"
// * title = "PH Core Client CapabilityStatement"
// * version = "0.2.1"
* status = #draft
* date = "2026-10-15"
// * language = #en
// * publisher = "UP Manila National TeleHealth Center"
// * contact[0].name = "UP Manila National TeleHealth Center"
// * contact[=].telecom[0].system = #url
// * contact[=].telecom[=].value = "https://github.com/UP-NTHC"
// * jurisdiction = urn:iso:std:iso:3166#PH "Philippines"

// FMM 0: draft, not yet balloted for implementation maturity.
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* extension[=].valueInteger = 0
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #json
* format[=].extension[$capabilityExpectation].valueCode = #SHALL
* format[+] = #xml
* format[=].extension[$capabilityExpectation].valueCode = #MAY
* rest.mode = #client
* description = "Baseline requirements for systems initiating PH Core FHIR API requests. Clients select the profiles and interactions needed for their use cases from the PH Core Server capability catalog."
* rest.documentation = "The PH Core Client SHALL support at least one PH Core resource profile relevant to its use case and follow that profile's constraints and applicable obligations. It SHALL fulfill handling obligations for the selected elements. It SHALL accept conformant received resources without rejecting them solely because valid optional content is present or optional values are absent; this does not require processing every non-MS optional element. For selected retrieval use cases, it SHALL support read and SHALL use the applicable queries from the PH Core Server CapabilityStatement. It SHALL use JSON and handle paging links and OperationOutcome responses for interactions it supports. It SHOULD inspect the Server's current CapabilityStatement before exchange and select the queries needed for its use case. The Server catalog does not require the Client to implement every listed query. Write support is optional; when sending resource payloads, the Client SHALL conform to the selected profiles and their applicable production obligations. When using conditional create or update, the Client SHALL supply selective identity criteria, handle no-match/single-match/multiple-match outcomes and respect the Server's version policy. A Client using transactions SHALL provide coherent fullUrl references, process transaction-response outcomes and treat an error as failure of the complete transaction. Retrying a request requires an identity/version strategy; an uncertain network outcome does not make an ordinary POST safe to repeat. These requirements do not require every Client to support every catalog profile, query or write interaction. Non-REST systems may claim profile-only conformance. A system claiming REST Client conformance SHALL document the profiles and interactions it supports in an implementation-specific CapabilityStatement; it is not required to host a /metadata endpoint solely for its Client role. See [PH Core Server CapabilityStatement](CapabilityStatement-PHCoreServerCapabilityStatement.html) and [Client and Server conformance](client-server-conformance.html)."
* rest.security.description = "The Client SHALL use HTTPS for production exchange and follow the Server's authorization requirements. Identity, trust, authorization and consent arrangements SHALL be defined by the deployment or downstream implementation guide. A specific OAuth or SMART deployment topology is not imposed by this baseline."
