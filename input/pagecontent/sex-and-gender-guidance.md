# Sex and Gender Guidance

This informative guidance adapts the [HL7 Cross Paradigm Implementation Guide: Gender Harmony](https://hl7.org/xprod/ig/uv/gender-harmony/fhirgenderharmony.html), based on FHIR R5, to the optional sex and gender extensions declared in PH Core's FHIR R4 profiles. It adds no conformance requirement.

## Keep the meaning clear

FHIR labels `Patient.gender` as administrative gender, but systems may use it for administrative sex or gender and for purposes such as patient matching or choosing a laboratory reference range. State its intended meaning to exchange partners. When both concepts are needed, systems can use `Patient.gender` for the agreed administrative gender and the optional `Patient.extension[sex]` slice for the separate recorded sex value.

Use the optional `genderIdentity` and `individualPronouns` extensions for those concepts. Do not infer them from `Patient.gender` or the `sex` slice.

## Gender identity

Use the optional `genderIdentity` extension on the applicable person resource to exchange a person's gender identity. In PH Core, this slice is available on Patient, Practitioner and RelatedPerson. The extension can carry more than one value and a period of applicability, so systems can represent a change over time instead of replacing the earlier value.

Because gender identity is personal demographic information, implementers should consider how their authorization and access controls protect it. Resource-level access may expose it together with other demographics on that resource.

## Pronouns and name to use

Use the optional `individualPronouns` extension for a person's pronouns. Pronouns are distinct from gender identity. The extension can include a period when the pronouns apply.

When a person has asked to be addressed by a particular name, represent that name using `HumanName.use = usual` on the relevant person resource. This is separate from an official name retained for other purposes.

## Recorded sex or gender

HL7 treats administrative sex and administrative gender as types of recorded sex or gender.

First identify the concept needed for the exchange and its use case. Examples include sex assigned at birth, administrative sex, legal sex or gender, and a value recorded by a payer. Then agree with exchange partners how to represent that concept.

If a suitable jurisdiction- or use-case-specific field or extension is already in use, keep using it rather than replacing it just to use the generic extension.

PH Core declares the optional `sex` slice using HL7's `individual-recordedSexOrGender` extension. Use its `value` for the recorded value and its `type` to identify what that value means. The [Patient sex and gender example](Patient-patient-sex-and-gender-example.html) has separate entries for a birth certificate, insurance card and driver's license, each with its own type and period. Do not infer the meaning from the code alone when the `type` is available.

The example uses text for the insurance-card and driver's-license type labels rather than introducing local codes for those source categories.

Sex assigned at birth is one kind of recorded sex or gender. It represents the concept recorded by the source; it should not be assumed to describe every other sex or gender concept about a person. In particular, it is not a substitute for gender identity or pronouns.

## Why these concepts use extensions

The [FHIR design background](https://hl7.org/xprod/ig/uv/gender-harmony/fhirdesignbackground.html) explains the tradeoffs behind using extensions: they can share structure across resources and be adopted in earlier FHIR releases, while changing a core Patient element requires broader standards review. Observations can hold more metadata but may be less discoverable and require separate authorization. Extensions are also less visible, and resource-level permissions may expose them with other demographics.

PH Core declares `genderIdentity`, `individualPronouns` and `sex` on Patient, Practitioner and RelatedPerson. This page does not define an Observation-based representation or the `patient-sexParameterForClinicalUse` extension, which is not declared by the PH Core Patient profile.
