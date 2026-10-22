// Shared resource capability patterns for the PH Core Server requirements statement.
// Resource selection is MAY; read/search and listed child expectations apply once selected.
// Conditional write/transaction expectations are governed by client-server-conformance.md.
RuleSet: PHCoreCatalogResource(resourceType, profile, historyExpectation)
* rest.resource[+].type = {resourceType}
* rest.resource[=].extension[$capabilityExpectation].valueCode = #MAY
* rest.resource[=].supportedProfile[0] = Canonical({profile})
* rest.resource[=].supportedProfile[=].extension[$capabilityExpectation].valueCode = #SHALL
* rest.resource[=].documentation = "Selecting this resource for PH Core REST access requires the listed profile, read, search and SHALL searches/combinations. The conditionalCreate SHALL expectation applies only if create is declared; conditionalUpdate and minimum versioned support apply only if update is declared. versioned-update also satisfies the minimum version-aware support requirement. A read-only implementation may omit those write properties. History recommendations apply to persisted records; a stateless facade may expose the declared upstream history arrangements. Include/revinclude recommendations apply when both resource types are supported and the authorized referenced resources are locally accessible. Search support does not select additional MS elements or require values to be collected. See [Client and Server conformance](client-server-conformance.html) for applicability, search behavior and atomic-ingestion requirements."
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[=].extension[$capabilityExpectation].valueCode = #SHALL
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].interaction[=].extension[$capabilityExpectation].valueCode = #SHALL
* rest.resource[=].interaction[+].code = #vread
* rest.resource[=].interaction[=].extension[$capabilityExpectation].valueCode = {historyExpectation}
* rest.resource[=].interaction[+].code = #history-instance
* rest.resource[=].interaction[=].extension[$capabilityExpectation].valueCode = {historyExpectation}
* rest.resource[=].interaction[+].code = #history-type
* rest.resource[=].interaction[=].extension[$capabilityExpectation].valueCode = #MAY
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].interaction[=].extension[$capabilityExpectation].valueCode = #MAY
* rest.resource[=].interaction[=].documentation = "If create is supported, conditional create SHALL also be supported, individually and in supported transactions. Read-only implementations need not support create or conditionalCreate."
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].interaction[=].extension[$capabilityExpectation].valueCode = #MAY
* rest.resource[=].interaction[=].documentation = "If update is supported, conditional update and version-aware updates SHALL be supported. Metadata SHALL state versioned or versioned-update according to the actual policy; unsupported stale If-Match values SHALL fail with 412. updateCreate is a separate optional capability and SHALL NOT be inferred from conditionalUpdate."
* rest.resource[=].interaction[+].code = #patch
* rest.resource[=].interaction[=].extension[$capabilityExpectation].valueCode = #MAY
* rest.resource[=].interaction[=].documentation = "Declare the implemented patch formats and follow FHIR version/concurrency requirements when PATCH is supported."
* rest.resource[=].interaction[+].code = #delete
* rest.resource[=].interaction[=].extension[$capabilityExpectation].valueCode = #MAY
* rest.resource[=].conditionalCreate = true
* rest.resource[=].conditionalCreate.extension[$capabilityExpectation].valueCode = #SHALL
* rest.resource[=].conditionalUpdate = true
* rest.resource[=].conditionalUpdate.extension[$capabilityExpectation].valueCode = #SHALL
// Minimum version support when update is implemented; versioned-update also qualifies.
* rest.resource[=].versioning = #versioned
* rest.resource[=].versioning.extension[$capabilityExpectation].valueCode = #SHALL
* insert PHCoreCommonSearch
* rest.resource[=].searchRevInclude[0] = "Provenance:target"
* rest.resource[=].searchRevInclude[=].extension[$capabilityExpectation].valueCode = #SHOULD
* rest.resource[=].operation[0].name = "validate"
* rest.resource[=].operation[=].definition = "http://hl7.org/fhir/OperationDefinition/Resource-validate"
* rest.resource[=].operation[=].extension[$capabilityExpectation].valueCode = #SHOULD
* rest.resource[=].operation[=].documentation = "If offered, $validate SHALL be able to resolve the selected PH Core profile and validate against the requested profile. The existence of a generic HAPI validation operation or a meta.profile tag does not establish PH Core profile conformance. Validation of an instance does not establish compliance with actor obligations."

RuleSet: PHCoreCatalogSearch(name, definition, type, expectation)
* rest.resource[=].searchParam[+].name = "{name}"
* rest.resource[=].searchParam[=].definition = "{definition}"
* rest.resource[=].searchParam[=].type = {type}
* rest.resource[=].searchParam[=].extension[$capabilityExpectation].valueCode = {expectation}

RuleSet: PHCoreCommonSearch
* insert PHCoreCatalogSearch(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert PHCoreCatalogSearch(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert PHCoreCatalogSearch(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)
* insert PHCoreCatalogSearch(_tag, http://hl7.org/fhir/SearchParameter/Resource-tag, #token, #SHOULD)
* insert PHCoreCatalogSearch(_security, http://hl7.org/fhir/SearchParameter/Resource-security, #token, #SHOULD)
* insert PHCoreCatalogSearch(_source, http://hl7.org/fhir/SearchParameter/Resource-source, #uri, #SHOULD)

RuleSet: PHCoreCatalogInclude(value)
* rest.resource[=].searchInclude[+] = "{value}"
* rest.resource[=].searchInclude[=].extension[$capabilityExpectation].valueCode = #SHOULD

RuleSet: PHCoreSearchCombination2(first, second, expectation)
* rest.resource[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].extension[=].extension[0].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "{first}"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "{second}"
* rest.resource[=].extension[=].extension[+].url = $capabilityExpectation
* rest.resource[=].extension[=].extension[=].valueCode = {expectation}

RuleSet: PHCoreSearchCombination3(first, second, third, expectation)
* insert PHCoreSearchCombination2({first}, {second}, {expectation})
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "{third}"
