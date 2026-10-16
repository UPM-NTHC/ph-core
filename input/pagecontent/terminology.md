### Terminology

This page provides a summary of all terminology resources (ValueSets, CodeSystems, and ConceptMaps) defined in this implementation guide.

#### Value Sets

The following ValueSets are defined in this implementation guide:

{% include valueset-list-generator.md %}

#### Code Systems

The following CodeSystems are defined in this implementation guide:

{% include codesystem-list-generator.md %}

#### Concept Maps

The following ConceptMaps are defined in this implementation guide:

{% include conceptmap-list-generator.md %}

#### Terminology Bindings Summary

The following table summarizes terminology bindings across all profiles in this implementation guide. For detailed binding information, see each profile's definition.

{% include bindings-list-generator.md %}

---

#### External Terminology

This implementation guide also references terminology from external sources:

- [FHIR Standard Terminology](http://hl7.org/fhir/R4/terminologies-systems.html)
- [HL7 Terminology (THO)](https://terminology.hl7.org/)
- External code systems referenced in ValueSet definitions

For a complete list of all artifacts including external references, see the [Artifacts](artifacts.html) page.

### Data absent reason terminology

The standard DAR extension has canonical URL `http://hl7.org/fhir/StructureDefinition/data-absent-reason` and a `valueCode`. Native Observation absence reasons and permitted exceptional Coding values use CodeSystem `http://terminology.hl7.org/CodeSystem/data-absent-reason`. The extension URL is not a Coding.system. PH Core reuses these standard artifacts rather than creating a local absence CodeSystem.

An appropriate concept in an extensibly bound value set takes precedence over an external code. A required binding must still be satisfied; adding generic DAR coding does not expand the value set. Preserve known CodeableConcept text where allowed, including a known medication description without a mapped code. Coding has no `text` child; a display string alone is not a verified geographic code.

Unknown information, a declined answer, withheld information and known clinical absence have different meanings. In particular, `Others` in a classification is not an unknown value, and no known allergy is not a generic missing-data reason. See the [missing-data policy](client-server-conformance.html#missing-data) and the [FHIR R4 terminology rules](https://hl7.org/fhir/R4/terminologies.html).

### Draft coverage and source authority

The geographic ValueSets enumerate illustrative subsets, even though their codes come from PSGC. The locally authored FDA CPR CodeSystem is a fragment. PSOC and PSCED resources contain mock examples, and the indigenous-group/disability vocabularies are provisional local lists. Their descriptions do not establish authoritative national coverage or current issuer endorsement.

Extensible or preferred bindings permit representations beyond these draft lists according to FHIR binding rules. A required binding remains a real restriction when the element is supplied; source coverage and the local use case must be appraised before such bindings become a national exchange requirement.
