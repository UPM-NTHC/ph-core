The [HL7 Cross Paradigm Implementation Guide: Gender Harmony](https://hl7.org/xprod/ig/uv/gender-harmony/fhirgenderharmony.html) is an informative FHIR R5 guide. This page applies its relevant sex and gender guidance to the extensions declared in PH Core's FHIR R4 profiles; it adds no conformance requirement.

### Keep the meaning clear

FHIR labels `Patient.gender` as administrative gender, but systems may use it for administrative sex or gender and for purposes such as patient matching or choosing a laboratory reference range. State its intended meaning to exchange partners. When both concepts are needed, systems can use `Patient.gender` for the agreed administrative gender and the optional `Patient.extension[sex]` slice for the separate recorded sex value.

Use the optional `genderIdentity` and `individualPronouns` extensions for those concepts. Do not infer them from `Patient.gender` or the `sex` slice.

#### Searching by administrative gender

In the focused Patient example, `Patient.gender` is `male`. A client can search for Patient records with this value:

```
GET [base]/Patient?gender=male
```

This standard FHIR search looks only at `Patient.gender`; it does not search the `sex`, `genderIdentity` or `individualPronouns` extensions. The PH Core Server CapabilityStatement lists the `gender` search as `SHOULD`, so servers are recommended to support it, but clients should check a server's CapabilityStatement before relying on it.

The [FHIR for FAIR guidance](https://build.fhir.org/ig/HL7/fhir-for-fair/FHIRandFAIR.html) explains that searchable information can help people and software find relevant records. This search supports Findability; it does not grant permission to read matching records. The server's access controls still apply.

### Gender identity

Use the optional `genderIdentity` extension on the applicable person resource to exchange a person's gender identity. In PH Core, this slice is available on Patient, Practitioner and RelatedPerson. The extension can carry more than one value and a period of applicability, so systems can represent a change over time instead of replacing the earlier value.

Gender identity is stored with other person-level demographics. Control access to the resource carefully, since resource-level permissions can expose the extension alongside those other demographics.

### Pronouns and name to use

Use the optional `individualPronouns` extension for a person's pronouns. Pronouns are distinct from gender identity. The extension can include a period when the pronouns apply.

When a person has asked to be addressed by a particular name, represent that name using `HumanName.use = usual` on the relevant person resource. This is separate from an official name retained for other purposes.

### Recorded sex or gender

HL7 treats administrative sex and administrative gender as types of recorded sex or gender.

First identify the concept needed for the exchange and its use case. Examples include sex assigned at birth, administrative sex, legal sex or gender, and a value recorded by a payer. Then agree with exchange partners how to represent that concept.

If a suitable jurisdiction- or use-case-specific field or extension is already in use, keep using it rather than replacing it just to use the generic extension.

PH Core declares the optional `sex` slice using HL7's `individual-recordedSexOrGender` extension. Use its `value` for the recorded value and its `type` to identify what that value means. The [Patient sex and gender example](Patient-patient-sex-and-gender-example.html) has separate entries for a birth certificate, insurance card and driver's license, each with its own type and period. Do not infer the meaning from the code alone when the `type` is available.

The example uses text for the insurance-card and driver's-license type labels rather than introducing local codes for those source categories.

Sex assigned at birth is one kind of recorded sex or gender. It describes that source's record; it does not establish a person's gender identity, pronouns, or current clinical characteristics.

### Why these concepts use extensions

The [FHIR design background](https://hl7.org/xprod/ig/uv/gender-harmony/fhirdesignbackground.html) explains the tradeoffs behind using extensions: they can share structure across resources and be adopted in earlier FHIR releases, while changing a core Patient element requires broader standards review. Observations can hold more metadata but may be less discoverable and require separate authorization. Extensions are also less visible, and resource-level permissions may expose them with other demographics.

PH Core declares `genderIdentity`, `individualPronouns` and `sex` on Patient, Practitioner and RelatedPerson.

When interpreting some lab results, clinicians may need to choose a sex-related normal range. FHIR has an optional field for recording that choice. Its [technical description](https://hl7.org/fhir/extensions/StructureDefinition-patient-sexParameterForClinicalUse.html) gives the formal name for developers. The PH Core Patient profile does not include this field. Before adding it, the PH Core community needs to agree on when it is needed and how it should be used. This page does not add the field or a substitute.
