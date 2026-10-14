RuleSet: ObligationActorAndCode(actor, code)
* ^mustSupport = true
* ^extension[$obligation][+].extension[code].valueCode = {code}
* ^extension[$obligation][=].extension[actor].valueCanonical = {actor}

RuleSet: ObligationElement(element)
* ^extension[$obligation][=].extension[elementId].valueString = {element}

// Generic obligation sets based on EU EPS patterns.
// They vary by creator obligation level while maintaining consistent server/consumer obligations.
// Use these when you need standardized obligation patterns across elements.

// Using $server, $consumer, $creator aliases (like EU EPS) to provide full canonical URLs
// required by the obligation extension's valueCanonical field. Direct Instance names would
// resolve as relative references, causing validation errors.

// ObligationRequired: Use for REQUIRED elements where creators MUST be able to populate
// - Server SHALL handle
// - Consumer SHALL handle
// - Creator SHALL be able-to-populate (mandatory capability)
RuleSet: ObligationRequired
* insert ObligationActorAndCode($server, #SHALL:handle)
* insert ObligationActorAndCode($consumer, #SHALL:handle)
* insert ObligationActorAndCode($creator, #SHALL:able-to-populate)

// ObligationRecommended: Use for RECOMMENDED elements where creators SHOULD be able to populate
// - Server SHALL handle
// - Consumer SHALL handle
// - Creator SHOULD be able-to-populate (recommended capability)
RuleSet: ObligationRecommended
* insert ObligationActorAndCode($server, #SHALL:handle)
* insert ObligationActorAndCode($consumer, #SHALL:handle)
* insert ObligationActorAndCode($creator, #SHOULD:able-to-populate)

// ObligationOptional: Use for OPTIONAL elements where creators MAY populate
// - Server SHALL handle
// - Consumer SHALL handle
// - Creator MAY be able-to-populate (optional capability)
RuleSet: ObligationOptional
* insert ObligationActorAndCode($server, #SHALL:handle)
* insert ObligationActorAndCode($consumer, #SHALL:handle)
* insert ObligationActorAndCode($creator, #MAY:able-to-populate)

RuleSet: ObligationPopulateIfKnownDisplay
* insert ObligationActorAndCode($creator, #SHALL:populate-if-known)
* insert ObligationActorAndCode($consumer, #SHALL:handle)
* insert ObligationActorAndCode($consumer, #SHOULD:display)

RuleSet: ObligationAbleToPopulateDisplay
* insert ObligationActorAndCode($creator, #SHOULD:able-to-populate)
* insert ObligationActorAndCode($consumer, #SHALL:handle)
* insert ObligationActorAndCode($consumer, #SHOULD:display)

RuleSet: ObligationPopulateDisplay
* insert ObligationActorAndCode($creator, #SHALL:populate)
* insert ObligationActorAndCode($consumer, #SHALL:handle)
* insert ObligationActorAndCode($consumer, #SHOULD:display)

RuleSet: ObligationPopulateHandle
* insert ObligationActorAndCode($creator, #SHALL:populate)
* insert ObligationActorAndCode($consumer, #SHALL:handle)

RuleSet: ObligationPopulateIfKnownHandle
* insert ObligationActorAndCode($creator, #SHALL:populate-if-known)
* insert ObligationActorAndCode($consumer, #SHALL:handle)
