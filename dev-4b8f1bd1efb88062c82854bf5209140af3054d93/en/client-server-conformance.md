# Client Server Conformance - Draft PH Core Implementation Guide v0.2.1

## Client Server Conformance

PH Core defines two API actors: **PH Core Client**, which initiates a request, and **PH Core Server**, which accepts the request and provides a response. A system may implement either role or both. These roles apply per exchange and do not prescribe a centralized or peer-to-peer topology.

### Applying profile obligations

Handling obligations apply when a Client processes response resources or a Server processes resources in incoming requests it supports. Production obligations apply when a Client produces resources for a supported request or a Server produces response resources. Production does not necessarily mean original clinical capture: a Server may assemble, transform or return previously stored resources.

Read-only Clients do not need to implement resource authoring. Servers do not need to originate clinical facts. For selected paths carrying `SHALL:populate-if-known`, producers SHALL include values they know and are permitted to share; they are not required to be capable of ever obtaining an unknown value. This applies to resource-bearing requests produced by Clients and response resources produced by Servers. Handling applies separately when received content is processed. `able-to-populate`, `populate-if-known` and `populate` remain distinct. `handle` does not automatically require persistence or display. Display obligations apply when content is presented to a human.

The ActorDefinitions describe roles, profile obligations describe element behavior, and CapabilityStatements describe the API contract. None replaces the other. A Cardinality constraint remains an instance constraint regardless of actor.

### Missing data

These rules apply to producers of request or response resources and to systems exchanging PH Core profiles outside REST. They apply together with the selected profile's cardinalities, bindings, invariants and actor obligations.

* Producers SHALL include known, shareable values where the selected population obligation requires them. A missing value does not excuse omission of a known value.
* When an optional value and any meaningful reason for its absence are unavailable, producers SHALL omit the element. Must Support alone does not require an unknown placeholder, a new collection workflow or a fabricated value.
* Producers SHOULD preserve a known, shareable absence reason when the applicable profile permits it and that reason is relevant to the exchange. An optional element MAY carry an explicit absence reason; it need not be made mandatory to communicate that reason.
* Mandatory elements and conditionally required content SHALL satisfy the applicable profile even when the real value is unavailable. For a permitted non-coded datatype, use the standard [Data Absent Reason extension](https://hl7.org/fhir/R4/extension-data-absent-reason.html). For a missing required date with no more specific known reason, use `unknown`.
* An absence reason on a parent SHALL NOT be treated as satisfying required children, fixed values or other constraints. The Patient name constraint and inherited Observation result constraint define their respective value/absence exclusions.

The general extension representation rules do not establish a named DAR slice, support obligation or new invariant on each primitive in PH Core. Known partial dates retain their recorded precision; do not invent dates to fill missing information.

For Observations, use `Observation.dataAbsentReason` for an absent top-level result and `Observation.component.dataAbsentReason` for an absent component result, as illustrated in blood-pressure examples. A top-level result value and its native absence reason SHALL NOT coexist under inherited R4 `obs-6`. The [Clinical Result profile](StructureDefinition-ph-core-observation-clinical-result.md) requires a value or reason for an individual result without components or member observations. Panels may instead carry their results through `component` or `hasMember`; they do not need a top-level reason solely because they have no scalar value. The generic Observation profile does not gain additional DAR obligations or component-presence invariants from this guidance.

For coded elements, preserve meaningful source text when the datatype and binding permit it. For extensible bindings, an appropriate concept in the bound value set SHALL be used when available. Use an appropriate exceptional concept from the applicable value set before considering an allowed external absence code. For a selected screening question whose answer value set contains an appropriate exceptional answer, use that answer in `valueCodeableConcept`; otherwise use native Observation DAR when appropriate. Required bindings SHALL be respected: generic DAR coding outside the required value set is not a replacement for a bound status or intent. If no truthful conformant representation exists, follow the applicable exchange's error or reconciliation process rather than invent a value. This guidance does not add custom hasValue() invariants to status or intent.

`unknown`, `not-asked`, `asked-declined`, `masked` and `not-applicable` convey different facts. Producers SHALL select the reason supported by the source and SHALL NOT infer refusal or masking from a blank field. Absence of an allergy record does not assert no known allergies. Use an appropriate clinical assertion for known negative findings.

Patient names and national identifiers remain optional. Preserve meaningful text-only names when their parts cannot be distinguished. Omit unknown optional race, indigenous-status, occupation and geographic items by default; their existing structures and bindings still apply. `Others` is not an unknown indigenous classification, and DAR is not a geographic identity.

Processors SHALL correctly interpret supported absence representations as missing content with the stated reason, rather than as actual dates, measurements, identifiers or clinical negative findings. Handling does not automatically require persistence or display. When displaying an absence reason, present its meaning and preserve the distinction from a measured value. Validation of an instance and compliance with a producer's known-value obligations are separate checks.

See the [missing-data examples](examples.md#missing-data-examples) for the Patient name extension, native Observation reasons and optional omission. The named Patient DAR slice follows US Core's explicit missing-name pattern; allowing meaningful name.text is a PH adaptation. General missing-data guidance is not evidence that US Core declares a DAR slice on every optional field.

### Declaring support

The [Client CapabilityStatement](CapabilityStatement-PHCoreClientCapabilityStatement.md) supplies the basic request-initiator requirements. The [Server CapabilityStatement](CapabilityStatement-PHCoreServerCapabilityStatement.md) contains the resource and search catalog. Both are requirements statements, not claims that a particular deployment implements all catalog entries.

Each REST actor SHALL support at least one relevant PH Core resource profile. A patient-centric deployment SHALL support PH Core Patient for its exchanged patient context. A directory serving providers, organizations, locations or services does not need Patient solely to claim Server conformance. Resource-level MAY means a resource is selectable; nested SHALL requirements apply when that resource is selected for the specified interaction. Additional capabilities may be implemented and SHALL be declared in the deployment statement.

The Address profile constrains embedded datatype content and is not a REST resource. A reference to a base FHIR resource without a PH Core profile does not create a new PH Core profile or make that resource universally mandatory. Implementations SHALL declare how supported references are handled and make the resources needed for their use cases accessible through declared arrangements. This baseline does not require all references to be local. The catalog recommends explicit bounded `_include` and `_revinclude` values when the related resource types are supported and the authorized resources are locally accessible.

Claim and Task are optional API catalog entries. Their profiles alone do not establish claim submission, adjudication, referral state transitions or acknowledgement workflows. Downstream guides define those contracts. Create, update, patch and delete remain selectable interactions. Selecting create or update triggers the conditional-write and atomic-ingestion requirements below. Version and instance history are recommended for persisted clinical records; type/system history and batch remain optional. `$everything`, `$document` and `$summary` are not required by this baseline. Selecting optional API capabilities does not waive profile constraints or applicable element obligations.

Servers SHALL return an implementation-specific CapabilityStatement from `GET [base]/metadata`. It SHALL declare actual supported capabilities, use `kind = instance`, and identify this Server requirements statement in `instantiates`. A Client SHALL document its actual capabilities in an implementation-specific statement but is not required to expose a server endpoint. A dual-role implementation MAY include both `rest.mode = client` and `rest.mode = server`, and identify both applicable PH Core statements in `instantiates`. It SHALL claim only requirements it actually satisfies; a partial implementation does not acquire conformance by copying a requirements statement into `/metadata`.

Systems exchanging files, documents or messages without implementing the baseline REST contract may claim conformance to supported PH Core profiles. Profile-only conformance does not imply Client or Server API conformance.

### Search and related-resource retrieval

For each resource selected for PH Core REST access, the Server **SHALL** support `read` and `search-type`, including Claim, Task, Medication and Provenance. A Client selects the profiles and queries needed for its use case; it is not required to implement the entire Server catalog.

| | |
| :--- | :--- |
| Common filters | **SHALL**support`_id`,`_lastUpdated`,`_profile`;**SHOULD**support`_tag`,`_security`,`_source`. |
| Identity and context | **SHALL**support the listed identifier, patient/target and other SHALL filters for the selected resource. Provenance uses target and event context; it has no standard business identifier element. |
| Resource-specific retrieval | **SHALL**support filters and combinations marked SHALL;**SHOULD**support those marked SHOULD in the Server catalog. |
| Methods and paging | **SHALL**support GET and POST search,`_count`and FHIR paging links. Returned match counts**SHALL NOT**exceed`_count`; zero requests a count-only response. Clients follow returned paging links. |
| Filter semantics | **SHALL**support exact`_id`, namespace-qualified`system|code`token matching and ordinary AND combinations of supported filters. Single-target literal-reference searches**SHALL**accept the id and Type/id forms. Mandatory date filters**SHALL**support`gt`,`ge`,`lt`,`le`and repeated bounds for ranges. |
| Refinements | **SHOULD**support`_sort`on applicable declared token/string/date filters, token alternatives where applicable, and single-hop identifier chaining when the target resource is supported and locally searchable. |
| Related content | **SHOULD**support the catalog's explicit`_include`paths and`_revinclude=Provenance:target`when both resource types are supported and the referenced resources are locally accessible and authorized. |

Examples of the required combinations include Observation `patient+code+date`, Encounter `patient+date` and `patient+status`, MedicationRequest `patient+status+intent`, and Provenance `target+recorded`. The machine-readable search-parameter-combination extensions identify these combinations and their strengths. Declaring query support does not add MS, require every instance to contain the indexed value, or change the profile's capture/population obligations.

`_profile` searches asserted `meta.profile` values; a match is not proof that the resource was validated. `_security` filtering is not a replacement for authorization. `_lastUpdated` searches current resource state and is not a complete deletion feed; deletion-aware synchronization requires a declared history/tombstone or equivalent contract.

Single-hop chaining such as `patient.identifier=system|value` searches the referenced Patient's identifier. It is distinct from the `:identifier` modifier on an embedded logical reference. Broad `_has`, fulltext, `_filter`, wildcard or iterative graph retrieval remain optional and **SHALL** be declared if implemented. Search-result controls such as `_count` and `_sort` are not new resource-field SearchParameter definitions.

### Conditional writes and atomic ingestion

A **write-enabled ingestion Server** supports `create` or `update` for at least one selected PH Core resource. A read-only Server is not required to support either interaction, the associated conditional flags or transaction. In the requirements catalog, the SHALL expectations on `conditionalCreate`, `conditionalUpdate`, `versioning` and transaction apply only under the following conditions:

| | |
| :--- | :--- |
| create | **SHALL**support conditional create for that resource, both individually and within supported transactions. |
| update | **SHALL**support conditional update and version-aware updates for that resource. The minimum version policy is`versioned`;`versioned-update`also qualifies and signals the stricter If-Match policy. |
| create or update | **SHALL**support atomic FHIR transaction Bundles containing supported PH Core resources. |

Conditional create uses `If-None-Exist` on POST or `Bundle.entry.request.ifNoneExist`. Zero matches creates; one match reuses the existing resource without updating it; multiple matches return `412 Precondition Failed`. Criteria **SHALL** be selective according to the deployment's identity contract. Use namespace-qualified identifiers where that resource has an appropriate business identifier. A person's name alone is not a national identity or deduplication rule. Provenance requires an explicit event-identity strategy rather than a nonexistent `identifier` search.

Conditional update uses search criteria in the PUT URL. It **SHALL** follow FHIR's no-match, single-match and multiple-match rules, including `412` for ambiguous matches. A supplied resource id must follow FHIR's update-as-create and identity-consistency rules. `updateCreate` governs client-assigned logical ids and is separate from `conditionalUpdate`; support **SHALL NOT** be inferred from the latter. Deployment metadata **SHALL** state the actual version policy and any update-as-create support. A stale or incorrect supplied If-Match version **SHALL** fail with `412`; Clients follow stricter declared version policies when present.

Transactions **SHALL** preserve all-or-nothing persistence, resolve intra-Bundle temporary `fullUrl` references and return a `transaction-response` with entry outcomes and assigned identities. A failing or unsupported entry **SHALL** cause failure without partial persistence. Clients **SHALL NOT** assume that splitting a transaction into independent requests provides equivalent behavior. Stable conditional criteria and version handling are still needed for retries; atomicity alone does not make every repeated transaction idempotent.

These are externally observable interface requirements. An OpenHIE layer or peer-facing facade can implement them through an appropriate upstream service; the guide does not require a particular storage engine. Conditional delete, client-assigned-id creation, batch, HAPI administration operations, `$everything` and `$lastn` remain optional capabilities. A Server offering PATCH **SHALL** declare its supported patch formats and follow FHIR concurrency requirements.

### Profile-aware validation

Servers **SHALL** declare their actual selected PH Core profiles using `supportedProfile` in their deployment CapabilityStatement. A generic base-resource declaration or a successful JSON parse does not establish PH Core conformance. Servers **SHOULD** offer the standard `$validate` operation for supported profiles. If offered, it **SHALL** resolve the requested PH Core profile and apply its constraints; the deployment must make the relevant PH Core and terminology definitions available to its validator.

Instance validation, handling of invalid incoming writes, and compliance with actor obligations are distinct concerns. Tests **SHALL** check the deployment's declared validation and write behavior, rather than treating an advertised operation or a `meta.profile` assertion as proof of enforcement. Profile cardinalities, bindings, invariants and designated obligations remain authoritative.

### Deployment roles

In an OpenHIE deployment, a facility may act as Client toward an interoperability layer; that layer acts as Server on its external API and as Client toward registries or a shared health record. In peer-to-peer exchange, the initiating facility is Client and the responding facility is Server. When the direction reverses, their roles reverse. Endpoint discovery, routing, identity reconciliation, trust, authorization, consent and audit policy remain deployment or downstream-guide responsibilities.

The FHIR Client role is different from the OpenHIE Client Registry component. A Client Registry is an identity service and normally acts as a Server for requests to its interface.

