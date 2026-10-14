
### Draft Philippine Core FHIR Implementation Guide (PH Core IG)

<svg xmlns="http://www.w3.org/2000/svg" role="img" aria-labelledby="title desc"
     width="100%" viewBox="0 0 1400 200" preserveAspectRatio="xMidYMin meet">

  <title id="title">DRAFT – PH-Core IG Disclaimer</title>
  <desc id="desc">This guide is a draft and under active development. Not for public consumption.</desc>

  <defs>
    <style>
      text { font-family: "Segoe UI", "Helvetica Neue", Arial, sans-serif; }
      .panel { fill: #fff8d9; stroke: #e0c24f; stroke-width: 2; rx: 10; ry: 10; }
      .header { fill: #c0392b; }
      .title { fill: #ffffff; font-weight: 800; font-size: 40px; letter-spacing: 6px; }
      .body  { fill: #222222; font-size: 30px; font-weight: 600; }
      .muted { fill: #555555; font-size: 30px; }
    </style>
    <filter id="shadow" x="-10%" y="-10%" width="120%" height="120%">
      <feDropShadow dx="0" dy="2" stdDeviation="2" flood-color="rgba(0,0,0,0.18)"/>
    </filter>
    <linearGradient id="headerGloss" x1="0" y1="0" x2="0" y2="1">
      <stop offset="0" stop-color="#d24b3e"/>
      <stop offset="1" stop-color="#b33427"/>
    </linearGradient>
  </defs>

  <!-- Card panel -->
  <rect class="panel" x="6" y="6" width="1388" height="188" filter="url(#shadow)"/>

  <!-- Red header bar with DRAFT -->
  <rect class="header" x="6" y="6" width="1388" height="64" rx="10" ry="10" fill="url(#headerGloss)"/>
  <text class="title" x="700" y="46" text-anchor="middle" dominant-baseline="middle">DRAFT</text>

  <!-- Body text -->
  <g transform="translate(0,10)">
    <text class="body" x="66" y="112">This is still under development and not yet active for public consumption.</text>
    <text class="muted" x="66" y="148">Content, data models, and implementation details are subject to change.</text>
    <text class="muted" x="66" y="182"></text>
  </g>

  <!-- Optional right icon -->
  <g transform="translate(1310,100) scale(1.8)" aria-hidden="true">
    <circle cx="0" cy="0" r="30" fill="#f4d03f" stroke="#b7950b" stroke-width="2"/>
    <text x="0" y="19" text-anchor="middle" font-size="60" font-weight="700" fill="#c0392b">!</text>
  </g>
</svg>

> **Project Status: In Development**  
> This Implementation Guide is under active development and is not yet available for public or production use. Content, data models, and implementation details are subject to change.

The Philippine Core FHIR Implementation Guide (PH Core IG) proposes a reusable baseline of clinical and administrative data representations for interoperable health information exchange in the Philippines. It provides a common, implementable foundation for health systems to consistently exchange data using the HL7® FHIR® standard.

PH Core IG standardizes commonly used FHIR profiles, extensions, terminology bindings, and conformance expectations that are applicable across health programs, facilities, and systems nationwide. Program- or use case–specific IGs can reuse these draft artifacts and define the additional requirements of their exchange contracts.

### Project Background

PH Core is actively being developed by UP Manila National TeleHealth Center, under the guidance of the Phillippines Department of Health, with technical assistance from CSIRO Australia.

The initial draft of IG will be tested in the Connectathon to validate proof of concept and direction settings for the Philippines Core IG development process.

### Purpose and Scope

The PH Core IG aims to:

1. Promote nationwide consistency and interoperability of health data
2. Support alignment with national policies such as JAO 2021-0002
3. Enable reuse of HL7 and international FHIR artifacts
4. Provide clear, testable specifications for system implementers

This guide focuses on core clinical and administrative resources (e.g., Patient, Practitioner, Organization, Encounter, Observation) that are widely applicable across multiple use cases. It does not define program-specific workflows or reporting payloads, which are addressed by downstream Implementation Guides.

### Usage of this Guide

- Health information systems implement PH Core profiles as a baseline for interoperability
- Program-specific IGs inherit from PH Core and apply additional constraints
- Developers and vendors use the guide to build and validate FHIR-conformant systems
- Policy and governance bodies use it as a reference for national standardization

### Development and Governance

The PH Core IG is developed through a collaborative, open, and standards-based process, involving the Department of Health (DOH), PhilHealth, UP Manila, and key technical partners. Development follows international best practices, uses open-source tooling (FHIR Shorthand, GitHub, IG Publisher), and is governed through structured review and change control mechanisms.

### Relationship with other IGs

**PH Core:**

- defines local representations, reference constraints, terminology bindings and explicitly selected actor obligations. This draft does not publish a server CapabilityStatement or a uniform requirement to implement every REST interaction.
- for use by the stakeholders in the Philippines when implementing FHIR to provide a common implementation and to be built upon when creating further profiles and implementation guides.
- conformance may become tied to regulatory and/or contractual agreements in order to necessitate adoption to this more prescriptive specification.

The context of PH Core within the set of FHIR Standards is shown in the diagram below.

<img
  src="ph-ig-ecosystem.png"
  alt="PH IG Ecosystem"
  style="width: 100%; height: auto;"
  loading="lazy"
/>

{% capture layers_svg %}{% include layers.svg %}{% endcapture %}
<style>
  .ph-core-architecture-diagram > svg {
    display: block;
    width: 100% !important;
    max-width: 100%;
    height: auto !important;
  }
</style>
<div class="ph-core-architecture-diagram">
{{ layers_svg | remove: '<?xml version="1.0" encoding="us-ascii" standalone="no"?>' }}
</div>

### Usage

PH Core is particularly useful in defining:

- A testable level of system conformance
- Assumed support by client applications
- The basis of downstream implementation guides

Check each artifact for the constraints and obligations it actually declares. A reference-localization profile and a profile with selected support obligations have different contracts; base FHIR cardinalities continue to apply in both.

This working specification supports prototype implementation and review. The [example scenarios](examples.html) illustrate its current content; downstream IGs define their own workflows and server capabilities.

FHIR®© Connectathon events are key to the verification of the guide as being suitable for implementation. This implementation guide will be used as the basis for the Philippines Connectathon events.

### Dependencies

{% include ip-statements.xhtml %}
{% include cross-version-analysis.xhtml %}
{% include dependency-table.xhtml %}
{% capture dependency_table_short %}{% include dependency-table-short.xhtml %}{% endcapture %}
{{ dependency_table_short | replace: 'id="dep', 'id="dep-short' | replace: 'href="#dep', 'href="#dep-short' }}
{% include dependency-table-nontech.xhtml %}
{% include globals-table.xhtml %}
