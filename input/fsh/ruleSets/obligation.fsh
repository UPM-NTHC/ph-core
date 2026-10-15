// PH Core obligation authoring guide
// Source: https://hl7.org/fhir/extensions/CodeSystem-obligation.html
//
// Select the behavior for the use case independently of element cardinality:
// - able-to-populate: capability to supply a real value in some circumstances;
//   it does not prescribe when the value must be sent.
// - populate-if-known: supply a known value when producing a resource. The
//   system need not be capable of ever knowing a value for this element.
//   Known values include those available in memory, storage or elsewhere in
//   the conforming system; this is not limited to data captured in the current UI.
// - populate: supply a known, shareable value and also have the capability to
//   populate the element (the HL7 code specializes both behaviors above).
// - handle: correctly consider the meaning of received content. This does not
//   automatically require storing it, displaying it or inventing a missing value.
// - display: present the value when showing resource content to a human user.
//
// SHALL is mandatory, SHOULD is recommended and MAY is optional behavior.
// The Required/Recommended names below refer to population CAPABILITY strength.
// They are not cardinality rules or requirements to send every known value.
// For selected paths that SHALL be populated when known, use
// ObligationPopulateIfKnownHandle; no capability to obtain unknown values is required.
//
// Production and handling are separate duties, not an if/else branch:
// - producing a resource: apply the designated population obligation;
// - processing received content: apply the designated handling obligation.
// Missing values do not turn handle into a substitute for population. Omission
// must still satisfy cardinality, invariants and the applicable profile's rules.
// Population duties remain subject to the code's privacy/security qualifications.
// No RuleSet here automatically adds a data-absent-reason or a capture workflow.
//
// Both-actor helpers apply to Client request production/response processing and
// Server response production/request processing for interactions they support.
// For mandatory population of known values by BOTH producing roles, use:
//   * birthDate insert ObligationPopulateIfKnownHandle
// For that production duty on the SERVER only, with handling on both roles, use:
//   * birthDate insert ObligationHandleBothActors
//   * birthDate insert ObligationActorAndCode(PHCoreServer, #SHALL:populate-if-known)
// Choose the example's element only when justified by the implementation use case.

// Low-level assignment to one actor Instance name. Canonical() resolves SUSHI's URL.
// Also marks the selected element MS.
// Add applicability documentation where the use case needs more specific scope.
RuleSet: ObligationActorAndCode(actor, code)
* ^mustSupport = true
* ^extension[$obligation][+].extension[code].valueCode = {code}
* ^extension[$obligation][=].extension[actor].valueCanonical = Canonical({actor})

// Attach an element id to the obligation extension most recently selected.
// Use for an obligation declared at profile level that identifies affected elements;
// this helper does not create a new obligation or independently assign MS.
RuleSet: ObligationElement(element)
* ^extension[$obligation][=].extension[elementId].valueString = {element}

// A shared code can identify both actors in one obligation extension.
// Actor applicability follows the resource direction; it does not require write support.
// Also marks the selected element MS; this does not propagate duties to child paths.
RuleSet: ObligationBothActorsAndCode(code)
* ^mustSupport = true
* ^extension[$obligation][+].extension[code].valueCode = {code}
* ^extension[$obligation][=].extension[actor][0].valueCanonical = Canonical(PHCoreClient)
* ^extension[$obligation][=].extension[actor][+].valueCanonical = Canonical(PHCoreServer)

// Mandatory correct handling for both roles when processing received resources.
// Handling remains mandatory even when the separate population capability is MAY.
RuleSet: ObligationHandleBothActors
* insert ObligationBothActorsAndCode(#SHALL:handle)
* ^extension[$obligation][=].extension[documentation].valueMarkdown = "Applies when the Client processes response resources or the Server processes resources in supported incoming requests. Correct handling is use-case dependent and is not a blanket persistence or display requirement."

// Assign a production code to both roles, retaining its SHALL/SHOULD/MAY strength.
// This helper does not add handling or display; compose those duties explicitly.
RuleSet: ObligationProduceBothActors(code)
* insert ObligationBothActorsAndCode({code})
* ^extension[$obligation][=].extension[documentation].valueMarkdown = "Applies when the Client produces resources for supported resource-bearing requests or the Server produces resources in responses. This obligation does not require a read-only Client to author resources, a Server to originate clinical facts, or either actor to implement write interactions."

// Capability-based variants remain distinct from conditional population duties.
// Cardinality, MS, capability and actual population remain distinct.
// Required: SHALL have population capability; SHALL handle received content.
// Capability alone does not require sending every known value.
RuleSet: ObligationRequired
* insert ObligationHandleBothActors
* insert ObligationProduceBothActors(#SHALL:able-to-populate)

// Recommended: SHOULD have population capability; SHALL handle received content.
RuleSet: ObligationRecommended
* insert ObligationHandleBothActors
* insert ObligationProduceBothActors(#SHOULD:able-to-populate)

// Optional capability retained for existing profile insertions in this stack layer.
// The following population-policy layer migrates these calls and removes this RuleSet.
RuleSet: ObligationOptional
* insert ObligationHandleBothActors
* insert ObligationProduceBothActors(#MAY:able-to-populate)

// Client presentation recommendation, applicable when content is shown to humans.
// Does not require a headless application to add a UI or apply to Server presentation.
RuleSet: ObligationClientDisplay
* insert ObligationActorAndCode(PHCoreClient, #SHOULD:display)
* ^extension[$obligation][=].extension[documentation].valueMarkdown = "Applies when the Client presents the resource content to a human user. A headless Client is not required to introduce a user interface."

// Both roles SHALL populate known values and SHALL handle received content.
// The Client additionally SHOULD display values when presenting the resource.
RuleSet: ObligationPopulateIfKnownDisplay
* insert ObligationProduceBothActors(#SHALL:populate-if-known)
* insert ObligationHandleBothActors
* insert ObligationClientDisplay

// Both roles SHOULD have population capability and SHALL handle received content.
// The Client additionally SHOULD display values; known-value population is not mandated.
RuleSet: ObligationAbleToPopulateDisplay
* insert ObligationProduceBothActors(#SHOULD:able-to-populate)
* insert ObligationHandleBothActors
* insert ObligationClientDisplay

// Both roles SHALL populate and SHALL handle received content; the Client SHOULD display.
// populate includes population capability as well as sending known, shareable values.
RuleSet: ObligationPopulateDisplay
* insert ObligationProduceBothActors(#SHALL:populate)
* insert ObligationHandleBothActors
* insert ObligationClientDisplay

// Both roles SHALL populate and SHALL handle received content, without a display duty.
// This is stronger than populate-if-known because populate also requires capability.
RuleSet: ObligationPopulateHandle
* insert ObligationProduceBothActors(#SHALL:populate)
* insert ObligationHandleBothActors

// Both roles SHALL populate known values and SHALL handle received content.
// Appropriate when known values must be sent but the system need not be capable
// of ever obtaining them. Unknown/withheld values follow the profile's constraints.
// This applies to Client production too; use actor-specific rules for Server-only duty.
RuleSet: ObligationPopulateIfKnownHandle
* insert ObligationProduceBothActors(#SHALL:populate-if-known)
* insert ObligationHandleBothActors
