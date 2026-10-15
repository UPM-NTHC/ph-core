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
// PH Core assigns population duties to the Client and handling duties to the Server.
// Each obligation extension identifies only its designated actor.
// For Client population of known values and Server handling, use:
//   * birthDate insert ObligationPopulateIfKnownHandle
// Choose the example's element only when justified by the implementation use case.

// Low-level assignment to one actor Instance name. Canonical() resolves SUSHI's URL.
// Primitive helpers assign obligations without independently marking the element MS.
// Add applicability documentation where the use case needs more specific scope.
RuleSet: ObligationActorAndCode(actor, code)
* ^extension[$obligation][+].extension[code].valueCode = {code}
* ^extension[$obligation][=].extension[actor].valueCanonical = Canonical({actor})

// Attach an element id to the obligation extension most recently selected.
// Use for an obligation declared at profile level that identifies affected elements;
// this helper does not create a new obligation or independently assign MS.
RuleSet: ObligationElement(element)
* ^extension[$obligation][=].extension[elementId].valueString = {element}

// Mandatory correct handling by the Server when processing received resources.
// This does not propagate duties to child paths or require persistence or display.
RuleSet: ObligationServerHandle
* insert ObligationActorAndCode(PHCoreServer, #SHALL:handle)
* ^extension[$obligation][=].extension[documentation].valueMarkdown = "Applies when the Server processes resources in supported incoming requests. Correct handling is use-case dependent and is not a blanket persistence or display requirement."

// Assign a production code to the Client, retaining its SHALL/SHOULD/MAY strength.
// This helper does not add handling or display; compose those duties explicitly.
RuleSet: ObligationClientProduce(code)
* insert ObligationActorAndCode(PHCoreClient, {code})
* ^extension[$obligation][=].extension[documentation].valueMarkdown = "Applies when the Client produces resources for supported resource-bearing requests. This obligation does not require a read-only Client to author resources or implement write interactions."

// Capability-based variants remain distinct from conditional population duties.
// Cardinality, MS, capability and actual population remain distinct.
// Composite helpers explicitly mark their selected element MS.
// Required: Client SHALL have population capability; Server SHALL handle received content.
// Capability alone does not require sending every known value.
RuleSet: ObligationRequired
* ^mustSupport = true
* insert ObligationServerHandle
* insert ObligationClientProduce(#SHALL:able-to-populate)

// Recommended: Client SHOULD have population capability; Server SHALL handle received content.
RuleSet: ObligationRecommended
* ^mustSupport = true
* insert ObligationServerHandle
* insert ObligationClientProduce(#SHOULD:able-to-populate)

// Recommended actual population on submission is distinct from recommended capability.
// Client SHOULD populate; Server SHALL handle received content.
RuleSet: ObligationClientShouldPopulate
* ^mustSupport = true
* insert ObligationServerHandle
* insert ObligationClientProduce(#SHOULD:populate)

// Client presentation recommendation, applicable when content is shown to humans.
// Does not require a headless application to add a UI or apply to Server presentation.
RuleSet: ObligationClientDisplay
* insert ObligationActorAndCode(PHCoreClient, #SHOULD:display)
* ^extension[$obligation][=].extension[documentation].valueMarkdown = "Applies when the Client presents the resource content to a human user. A headless Client is not required to introduce a user interface."

// Client SHALL populate known values; Server SHALL handle received content.
// The Client additionally SHOULD display values when presenting the resource.
RuleSet: ObligationPopulateIfKnownDisplay
* ^mustSupport = true
* insert ObligationClientProduce(#SHALL:populate-if-known)
* insert ObligationServerHandle
* insert ObligationClientDisplay

// Client SHOULD have population capability; Server SHALL handle received content.
// The Client additionally SHOULD display values; known-value population is not mandated.
RuleSet: ObligationAbleToPopulateDisplay
* ^mustSupport = true
* insert ObligationClientProduce(#SHOULD:able-to-populate)
* insert ObligationServerHandle
* insert ObligationClientDisplay

// Client SHALL populate and SHOULD display; Server SHALL handle received content.
// populate includes population capability as well as sending known, shareable values.
RuleSet: ObligationPopulateDisplay
* ^mustSupport = true
* insert ObligationClientProduce(#SHALL:populate)
* insert ObligationServerHandle
* insert ObligationClientDisplay

// Client SHALL populate; Server SHALL handle received content, without a display duty.
// This is stronger than populate-if-known because populate also requires capability.
RuleSet: ObligationPopulateHandle
* ^mustSupport = true
* insert ObligationClientProduce(#SHALL:populate)
* insert ObligationServerHandle

// Client SHALL populate known values; Server SHALL handle received content.
// Appropriate when known values must be sent but the system need not be capable
// of ever obtaining them. Unknown/withheld values follow the profile's constraints.
RuleSet: ObligationPopulateIfKnownHandle
* ^mustSupport = true
* insert ObligationClientProduce(#SHALL:populate-if-known)
* insert ObligationServerHandle
