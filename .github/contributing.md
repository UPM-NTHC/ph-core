# Contributing to PH Core Implementation Guide

Thank you for your interest in contributing to the PH Core Implementation Guide! This document provides guidelines and instructions for contributing to this FHIR Implementation Guide (IG) project.

> ⚠️ **Living Document Notice:** The heuristics and decision principles in this guide are subject to change as the IG undergoes review and edge cases are discovered. The PH Core team is actively refining these rules through implementation experience. **This guide will be updated accordingly** as agreements evolve—contributors should expect changes and check for the latest version when contributing.

---

## Table of Contents

1. [PH Core Philosophy](#ph-core-philosophy)
2. [Profile Inclusion Criteria](#profile-inclusion-criteria)
3. [Profile Development Rules](#profile-development-rules)
4. [Profile Reference Hierarchy](#profile-reference-hierarchy)
5. [Registry Engagement Framework](#registry-engagement-framework)
6. [Decision Log](#decision-log)
7. [Visual Documentation](#visual-documentation)
8. [How to Submit Issues and Pull Requests](#how-to-submit-issues-and-pull-requests)
9. [Coding Style Guidelines](#coding-style-guidelines)
10. [Branching Strategy](#branching-strategy)
11. [Process for Code Review](#process-for-code-review)
12. [Development Setup](#development-setup)
13. [Internal Contributing Workflow](#internal-contributing-workflow-ph-core-team)
14. [Additional Resources](#additional-resources)

---

## PH Core Philosophy

### Mission Statement

> PH Core defines the **minimum data commonly required for health information exchange across the Philippine health system**, similar to AU Base and US Core approaches.

### Key Concepts

| Concept | Description |
|---------|-------------|
| **National Commonality** | PH Core captures data elements that are *commonly needed* across multiple Philippine health programs, facilities, and use cases—not specialized or program-specific data |
| **Foundation, Not Ceiling** | PH Core provides a **floor** (minimum baseline), not a ceiling. Program-specific IGs can extend PH Core with additional constraints |
| **Reuse and Alignment** | Elements in PH Core are those that have demonstrated reuse value across ≥2 implementation contexts |

### Comparison with Peer IGs

| IG | Philosophy |
|----|------------|
| **AU Base** | "A set of resources and profiles that define the common and base level requirements for Australian implementations" |
| **US Core** | "Defines the minimum set of constraints on the FHIR resources to create the US Core Profiles" |
| **PH Core** | "Defines the minimum expectations for data commonly exchanged across Philippine health systems" |

---

## Profile Inclusion Criteria

### Standard Rule: Shared Use and Multiple-IG MS

A resource or data element is eligible as a PH Core candidate only when both conditions are met:

- It is independently used by **2 or more source Implementation Guides (IGs)** within the Philippine health system.
- The same element is explicitly designated Must Support (MS) by **at least 2 independent source IGs**.

Count only independent Philippine source IGs in both conditions. Foreign IGs may inform Human Appraisal, but do not satisfy this local threshold merely by being a second IG. Record their package/version and exact path when used as appraisal evidence.

Count only independent source IGs in both conditions; the PH Core IG being developed does not count as a source. Structural presence inherited from the FHIR base resource does not by itself establish independent use or an MS designation. Meeting these thresholds makes an element eligible for consideration; it does not automatically select it for PH Core MS. Apply the documented local use-case and obligation rules separately.

**Rationale:** This ensures PH Core contains only nationally reusable components, avoiding program-specific bloat while enabling true interoperability.

**Process:**
1. Identify data elements across local IGs (e.g., NHDR, eReferral, PhilHealth Claims, Facility Systems)
2. Map to base FHIR resources
3. If at least 2 independent source IGs use the element and at least 2 independent source IGs explicitly designate that same FHIR path MS, treat it as a PH Core candidate.
4. Profile the element with PH Core constraints

### Version 0.3.0 Rule: Include if appropriately mapped from DOH JAO 2021-0002

The JAO's Annex B Release 01 is the initial list of mandatory national health
data standards for interoperability. See the
[DOH/PhilHealth JAO 2021-0002](https://law.upd.edu.ph/wp-content/uploads/2021/06/DOH-PHIC-JAO-No-2021-002.pdf).

- A proposed PH Core data element **MUST** map to one or more specific data
  elements in Annex B, Release 01 of the JAO.
- The crosswalk **MUST** identify the JAO data-element name, definition, source
  of definition, and data/system/application, and the corresponding FHIR path.
- If the source and FHIR concepts differ in granularity, the crosswalk **MUST**
  explain any split, combination, or transformation. A similar label alone does
  not establish an appropriate mapping.
- If no appropriate JAO data element exists, record the gap. A proposed
  exception **MUST** be reviewed under the existing Human Appraisal process and
  documented in the Decision Log.
- JAO mapping supports data-element selection. It **SHALL NOT** by itself set
  FHIR cardinality, MS, terminology bindings, obligations, or requirements on
  child representation paths; apply the Profile Development Rules separately.

### Exception Rule: Human Appraisal

The cross-IG eligibility thresholds may be waived through **human appraisal** when:
- The element has **high national policy priority** (e.g., mandated by DOH JAO)
- The element **enables critical interoperability** despite limited current adoption
- The element is **essential for patient safety** or **regulatory compliance**
- The element is **foundational infrastructure** (e.g., identifiers, addresses)

### Documentation Requirement

When bypassing either cross-IG threshold, the justification must be documented in:
1. The profile's FSH comments (e.g., `// Exception: Required by DOH JAO 2021-0002`)
2. The issue/PR description
3. The [Decision Log](#decision-log)

---

## Profile Development Rules

MS identifies support selected for an implementation use case; cardinality
constrains resource instances; obligations specify actor behavior. See
[FHIR R4 MustSupport](https://hl7.org/fhir/R4/conformance-rules.html#mustSupport)
and the [Obligation extension](https://hl7.org/fhir/extensions/StructureDefinition-obligation.html).

### Rule 1: Cardinality, MS, and Obligation Designation

- The element **MUST** first be selected for a documented local use case.
- Authors **MUST** resolve the profile's full parent chain, compare the
  inherited effective cardinality, and verify the exact path against the
  matching FHIR R4 snapshot, including nested backbone and datatype paths.
  When the intended minimum and maximum equal the inherited cardinality,
  authors **MUST NOT** restate them in FSH or add a redundant declaration to
  trigger MS or obligation mapping.
- Cardinalities written in a `contains` rule define new named slices. Authors
  **MUST** assess those slice cardinalities separately; they **MUST NOT** remove
  them solely because the numbers match the unsliced parent element.
- A PH Core cardinality constraint that changes the inherited minimum or
  maximum **MUST** be explicitly declared and justified by the local use case.
- A selected MS element **MUST** have explicitly designated obligations based
  on the responsible actors and expected behavior, whether its cardinality is
  inherited or constrained by PH Core. Base cardinality alone **SHALL NOT**
  determine MS or actor obligations.
- A use-case-backed required cardinality constraint (`1..1` or `1..*`)
  **SHALL** have MS and `ObligationRequired`.
- A use-case-selected MS element with an explicitly constrained optional
  cardinality (`0..1` or `0..*`) **SHALL** have `ObligationOptional` unless the
  use case justifies a different actor obligation.

```fsh
// Patient.birthDate remains 0..1 in the base; select it without restating that cardinality
* birthDate MS
* birthDate insert ObligationOptional

// Example of a justified constraint: strengthen Patient.name from base 0..* to 1..*
* name 1..* MS
* name insert ObligationRequired

// AllergyIntolerance.reaction.manifestation is already required in base FHIR R4
* reaction.manifestation MS
* reaction.manifestation insert ObligationRequired
```

### Rule 2: Optional FHIR Elements and subelements/subpaths

- A FHIR element that is declared MUST SUPPORT **MUST** declare appropriate Obligations.
- Selected MS and its obligations **MUST** be declared explicitly on the
  applicable path.

```fsh
// Practitioner role selected for eReferral/NHDR exchange (PR #160); code is base 0..*
* code MS
* code insert ObligationOptional
```

### Rule 3: Required FHIR Elements and subelements/subpaths

- A use-case-selected FHIR element with inherited or explicitly constrained
  required cardinality **SHALL** have MS and `ObligationRequired` when that
  actor behavior is required by the use case.
- Its representation paths **SHALL NOT** acquire MS or obligations solely
  because the parent is required.

```fsh
// Reviewed allergy-capture requirement; manifestation inherits 1..* from R4
* reaction.manifestation MS
* reaction.manifestation insert ObligationRequired
```

### Rule 4: Designated Obligations for MS

- Every declared MS element **MUST** have designated obligations.
- Each obligation **MUST** identify at least 1 responsible actor and expected behavior.
- Contributors **SHOULD** cite the source mapping, implementation contract,
  policy, issue, or recorded human appraisal in FSH comments and the PR.
- Datatype, binding strength, consistency with another profile, or presence in
  an example **SHALL NOT** automatically assign MS or obligations.
- Requirements included in PH Core **MUST** meet the existing
  [inclusion criteria](#profile-inclusion-criteria). Program-specific
  requirements **SHOULD** be constrained in downstream IGs where appropriate.

### Obligation RuleSets

The reusable `Obligation*` RuleSets remain available:

| RuleSet | Creator behavior | Server and Consumer behavior |
|---------|------------------|------------------------------|
| `ObligationRequired` | `SHALL:able-to-populate` | `SHALL:handle` |
| `ObligationRecommended` | `SHOULD:able-to-populate` | `SHALL:handle` |
| `ObligationOptional` | `MAY:able-to-populate` | `SHALL:handle` |

- Authors **MUST** distinguish capability (`able-to-populate`) from mandatory
  instance population (`populate`) when designating obligations.
- `ObligationOptional` still requires Server and Consumer `SHALL:handle`;
  optional Creator capability does not make those handling responsibilities optional.
- Changes **SHALL** be checked in generated differentials and snapshots and
  validated with SUSHI and IG Publisher.

The [CodeableConcept obligation review](codeableconcept-obligation-review.md)
records the removed blanket applications and retained support requirements.

---

## Profile Reference Hierarchy

### Reference Priority Order

When profiles reference other resources, follow this priority:

1. **PH Core profiles FIRST** (when available)
2. **Base FHIR R4 resources SECOND** (when no PH Core profile exists)
3. **Document missing profiles** with comments like `// Add PHCoreX once available`

### Decision Flowchart

```
For each reference element (subject, encounter, performer, etc.):
├── Is there a PH Core profile for this resource type?
│   ├── YES → Reference PH Core first, then base FHIR if needed
│   └── NO  → Reference base FHIR only
└── Is PH Core profile planned but not yet available?
    ├── YES → Add comment: // Add PHCoreX once available (see issue #N)
    └── NO  → Use base FHIR reference only
```

### Example FSH Pattern

```fsh
// CORRECT: PH Core first, then base FHIR
* subject only Reference(PHCorePatient or Group)
* encounter only Reference(PHCoreEncounter)
* performer.actor only Reference(PHCorePractitioner or PHCorePractitionerRole or Device)

// CORRECT: With documentation for missing PH Core profile
* reasonReference only Reference(Condition or PHCoreObservation or PHCoreProcedure)
// Note: PHCoreCondition should be added when available
```

### How to Determine Valid Reference Choices

Contributors must **dynamically check** the base FHIR R4 documentation. Do NOT rely on static lists.

**Step 1: Check the FHIR R4 Documentation**
- **FHIR R4 Index**: https://hl7.org/fhir/R4/index.html
- **FHIR R4 Table of Contents**: https://hl7.org/fhir/R4/toc.html

Use the Table of Contents to find the resource page, then check the element's `Reference(...)` type.

**Step 2: Map to PH Core Equivalents**

If a PH Core profile exists, use it instead of base FHIR:

| Base FHIR | PH Core Equivalent |
|-----------|-------------------|
| `Patient` | `PHCorePatient` |
| `Encounter` | `PHCoreEncounter` |
| `Observation` | `PHCoreObservation` |
| `Condition` | `PHCoreCondition` |
| `Procedure` | `PHCoreProcedure` |
| `Practitioner` | `PHCorePractitioner` |
| `PractitionerRole` | `PHCorePractitionerRole` |
| `Organization` | `PHCoreOrganization` |
| `Location` | `PHCoreLocation` |
| `RelatedPerson` | `PHCoreRelatedPerson` |
| `ServiceRequest` | `PHCoreServiceRequest` |
| `Medication` | `PHCoreMedication` |
| `MedicationRequest` | `PHCoreMedicationRequest` |
| `Immunization` | `PHCoreImmunization` |
| `Task` | `PHCoreTask` |
| `Provenance` | `PHCoreProvenance` |

> ⚠️ **Important**: This list is a **sample**. Always check the [PH Core IG Artifacts](https://build.fhir.org/ig/UP-Manila-SILab/ph-core/artifacts.html) page for the current, complete list of available profiles. For any resource not listed there, use the base FHIR resource name directly.

---

## Registry Engagement Framework

### External Registries

PH Core integrates with Philippine national registries for identifiers and terminology:

| Registry | Data Type | Current Status | Engagement Model | Agreement Needed |
|----------|-----------|----------------|------------------|------------------|
| **NHFR** | Facility codes | Endpoint identified | Terminology artifact | MOU or data use |
| **PhilHealth** | Member IDs, accreditation | NamingSystem exists | Canonical URL alignment | DOH coordination |
| **PhilSys** (PSA) | National ID | NamingSystem exists | Identifier validation | PSA agreement |
| **PRC** | License numbers | Not in PH Core | License verification | PRC data sharing |
| **BIR** | TIN for organizations | Not defined | Tax identifier use | BIR coordination |
| **DOH** | eHealth standards | Active collaboration | Governance authority | Formal mandate |

### Registry Engagement Principles

1. **Non-FHIR Registry Integration**: For registries without FHIR APIs, PH Core publishes NamingSystems and CodeSystems that reference the external registry's canonical identifiers.

2. **Governance Model**: Registry updates are coordinated through DOH-KMITS as the national health IT governance body. Changes to external code systems require registry owner approval.

3. **Versioning Strategy**: When external registries change their code sets:
   - Minor changes (new codes): Added in patch releases
   - Major changes (breaking): Coordinated with registry owner, announced in release notes
   - Deprecated codes: Marked with `inactive` status in CodeSystem

4. **Legal Framework**: 
   - **MOU required** for data sharing agreements (NHFR, PRC)
   - **DOH coordination** sufficient for government bodies (PhilHealth, PhilSys)
   - **Formal mandate** applies to DOH-published standards

5. **CodeSystem Publication**: PH Core publishes its own CodeSystems for:
   - Philippine government classifications (PSGC, PSOC, PSCED)
   - DOH-maintained code lists
   - Interim registries without FHIR endpoints

---

## Decision Log

This section documents significant decisions that bypassed standard rules or established new patterns.

| Date | Issue/PR | Decision | Rationale | Rule Bypassed |
|------|----------|----------|-----------|---------------|
| 2026-02 | #139 | Adopt CamelCase with CS/VS/NS suffixes | Better tooling support, explicit resource type identification | Previous naming conventions |
| 2026-03 | #150 | Change example suffix from `-ex` to `-example` | "ex" was ambiguous (Extension vs Example) | Previous file naming |
| 2026-03 | #166, #175 | Complete transition to `-example` suffix | Consistency across all example files | Previous file naming |
| 2026-10-09 | #265 | Retain `AllergyIntolerance.reaction.manifestation` MS under human appraisal | Omitting the manifestation would lose safety-relevant detail for the confirmed allergy-capture use case; JAO Release 01 lists allergy type and category but no separate manifestation field | JAO v0.3.0 mapping rule, Human Appraisal exception |


### Content review status (13 October 2026)

This review corrects source meaning and illustrative data. It does not certify that the existing source-IG comparison comments meet the current local eligibility thresholds.

| Item | Applied change or retained boundary | Remaining appraisal |
| --- | --- | --- |
| Occupation duration | Classification remains required within the extension; duration is optional because a source can know occupation without its dates. No MS or obligations added. | Compare national occupation use cases and duration units. |
| Patient bindings and contact demographics | Retain inherited R4 marital-status/contact-role bindings; remove person-root extension declarations from the contact backbone. | Any stronger binding or new contact representation needs a local use case. |
| Race, indigenous-status and PWD terminology | Preserve existing draft artifacts and identify their provisional meaning/coverage. | Select dated Philippine classifications and issuer semantics through Human Appraisal. |
| Source-IG support comments | Preserve existing selected MS and obligations. | Attach versioned independent Philippine source evidence or record each exception; AU guidance alone is not local multi-IG evidence. |
| Provenance organization attribution | Preserve the existing draft `provenance-1` rule. | Appraise independent practitioners and patient-held devices before expanding its intended scope. |

These pending items are review questions, not new national mandates or completed endorsements.

### Example Entry Format

```markdown
| 2026-01-15 | #176 | Create PHCorePRCIdentifier profile | Required for PRC license verification; foundational for practitioner credentials | ≥2 IG Rule |
| | | | DOH JAO requires PRC verification for e-prescribing | |
```

---

## Visual Documentation

The following diagrams illustrate PH Core architecture and workflows:

### IG Structure Overview

![IG Structure](images/ig-structure-diagram.svg)

*Diagram showing the relationship between sushi-config, input/fsh directories, and output generation*

### Profile Inheritance Chain

![Profile Inheritance](images/profile-inheritance-diagram.svg)

*Diagram showing PH Core profiles extending base FHIR R4 resources*

### Profile Reference Hierarchy

![Reference Hierarchy](images/reference-hierarchy-diagram.svg)

*Diagram showing PH Core → Base FHIR → External profile relationships*

### Profile Inclusion Flow

![Inclusion Flow](images/inclusion-flow-diagram.svg)

*Flowchart of the independent-use and MS thresholds from identification to inclusion*

### Identifier Systems Map

![Identifier Systems](images/identifier-systems-diagram.svg)

*Diagram showing Philippine identifier systems (PhilHealth, PhilSys, PRC, NHFR) connecting to profiles*

### Terminology Publication Flow

![Terminology Flow](images/terminology-flow-diagram.svg)

*Diagram showing NHFR/DOH sources → CodeSystem → ValueSet → Profile binding*

### Contribution Workflow

![Contribution Workflow](images/contribution-workflow-diagram.svg)

*Visual workflow: Branch → FSH changes → Build → QA → PR → Review → Merge*

> **Note**: Diagrams are stored in `/images/` directory. To update diagrams, edit source files in `/images-source/` and regenerate using the appropriate tooling.

---

## How to Submit Issues and Pull Requests

### **SUBMITTING ISSUES**

#### Before submitting an issue, please ensure the following:

* **Search Existing Issues:** Check if your issue has already been raised. Duplicates will be closed.
* **Provide Clear Details:** When submitting a new issue, include:
  * **Issue Title**: A concise title that summarizes the problem.
  * **Description**: A detailed description of the issue.
  * **Reproduction Steps**: Clear steps to reproduce the problem.
  * **Expected Behavior**: What you expected to happen.
  * **Actual Behavior**: What actually happened, including any error messages or logs.
  * **Environment Details**: If relevant, specify the version of the code and your system details.

#### Issue Label Conventions

Use the following prefixes for issue titles:

| Prefix | Description |
|--------|-------------|
| `[BUG]` | Bug reports |
| `[FR]` | Feature Request |
| `-[FR-A]` | Add |
| `-[FR-R]` | Read |
| `-[FR-D]` | Delete |
| `-[FR-U]` | Update |
| `-[FR-O]` | Others |
| `[T]` | Task |

### **SUBMITTING PULL REQUEST**

#### To submit a pull request (PR), follow these steps:

1. **Fork the Repository**: Create a copy of the repository to your GitHub account by clicking the "Fork" button.

2. **Clone the Fork**: Clone your fork locally to work on your changes.
   ```bash
   git clone https://github.com/YOUR-USERNAME/ph-core.git
   ```

3. **Create a Branch**: Use a meaningful branch name (see [Branching Strategy](#branching-strategy)). Use hyphens, not slashes.
   ```bash
   git checkout -b feat-short-description
   ```

4. **Make Changes**: Implement your changes while following the [Coding Style Guidelines](#coding-style-guidelines).

5. **Build and Test Locally**: Run SUSHI and the IG publisher to ensure your changes build correctly.
   ```bash
   # Generate FHIR resources
   sushi .

   # Update publisher (first time or when updates are available)
   ./_updatePublisher.sh  # macOS/Linux
   _updatePublisher.bat   # Windows

   # Build the IG
   ./_genonce.sh  # macOS/Linux
   _genonce.bat   # Windows
   ```

6. **Commit Changes**: Write clear and concise commit messages. Follow the format:
   ```bash
   git commit -m "Describe the changes made"
   ```

7. **Push the Changes**: Push your branch to your forked repository.
   ```bash
   git push origin feat-short-description
   ```

8. **Create a Pull Request**: Go to the original repository, click "New Pull Request," and select your branch. Include:
   * A clear description of your changes.
   * A reference to any relevant issues by using `Fixes #(issue-number)`.
   * Test results or any other relevant information.

---

## Coding Style Guidelines

### **Follow these coding standards to ensure consistency across the project:**

#### FSH (FHIR Shorthand) Guidelines

* **Indentation:** Use 2 spaces for indentation in all FSH files when continuing lines. Top-level declarations have no indentation.
* **Line Length:** Limit lines to a maximum of 100 characters.
* **File Organization:** Flat structure preferred. Indent only for line continuations and nested elements.

#### Naming Conventions

PH Core follows **CamelCase with explicit suffixes** (established Feb-Mar 2026 via PR #139):

| Element Type | FSH Name Pattern | ID Pattern | File Pattern | Example |
|--------------|------------------|------------|--------------|---------|
| **Profile** | `PHCore{Resource}` | `ph-core-{resource}` | `ph-core-{resource}.fsh` | `PHCorePatient`, `ph-core-patient.fsh` |
| **Extension** | `{PascalCase}` | `{kebab-case}` | `{id}.fsh` | `IndigenousPeople`, `indigenous-people.fsh` |
| **CodeSystem** | `{Name}CS` or `{ACRONYM}` | `{kebab}-cs` or `{ACRONYM}` | `{name}.fsh` | `IndigenousGroupsCS`, `indigenous-status.fsh` |
| **ValueSet** | `{Name}VS` or `{Plural}` | `{kebab}-vs` or `{plural}` | `{name}.fsh` | `Regions`, `regions.fsh` |
| **NamingSystem** | `{System}NS` | `{system}-ns` | `{system}-ns.fsh` | `PhilHealthIDNS`, `philhealth-id-ns.fsh` |
| **Example** | `{resource}-{scenario}-example` | (same as name) | `{id}.fsh` | `patient-single-example.fsh` |
| **Actor** | `{Noun}` | `{noun}` | `{noun}.fsh` | `Server`, `server.fsh` |
| **RuleSet** | `{PascalCaseDescription}` | (inline only) | `{description}.fsh` | `ObligationRequired`, `obligation.fsh` |
| **Alias (External)** | `${UPPERCASE}` | N/A | aliases.fsh | `$sct`, `$PSOC` |
| **Alias (Actor)** | `${lowercase}` | N/A | aliases.fsh | `$server`, `$creator` |

**Key Points:**
- Profile names use `PHCore` prefix (PascalCase)
- Extensions do NOT use PHCore prefix (implicitly PH Core)
- CodeSystems use `CS` suffix OR official acronym (PSOC, PSGC, PSCED)
- ValueSets use `VS` suffix OR simple plural noun (Regions, Provinces)
- NamingSystems use `NS` suffix
- Examples use `-example` suffix (changed from `-ex` via Issue #150)
- Aliases: external terminology = UPPERCASE, actors = lowercase (EU EPS pattern)

#### FSH File Organization

```fsh
// 1. Aliases (if any)
Alias: $loinc = http://loinc.org
Alias: $snomed = http://snomed.info/sct

// 2. Profile/Extension/Logical definition
Profile: PHCorePatient
Parent: Patient
Id: ph-core-patient
Title: "PH Core Patient Profile"
Description: "Philippine Core Patient Profile"

// 3. Rules - flat structure, * prefix
* identifier 1..* MS
* identifier insert ObligationRequired
* name 1..* MS
* name insert ObligationRequired
* maritalStatus from http://hl7.org/fhir/ValueSet/marital-status (required)

// 4. Invariants (if any)
Invariant: ph-pat-001
Description: "Patient name must include family name"
Severity: #error
```

#### Comments

* Use `//` for inline comments where necessary.
* Add comments for complex rules or business logic.
* **TDG References:** Format as `// TDG Row REF-XX: "{element}" -> {FHIR path}`
* Ensure profiles and extensions have clear descriptions.

#### Testing

* Ensure your FSH compiles without errors using `sushi .`
* Expected result: `0 Errors, 0 Warnings`
* Provide examples for new profiles.
* Validate the IG builds successfully before submitting a PR.

#### Examples

* **Do NOT manually set `meta.profile` in example instances.** SUSHI automatically populates `meta.profile` from the `InstanceOf` declaration. Manual lines are redundant, risk stale canonical URLs when the IG canonical changes, and create maintenance burden.
  ```fsh
  // ❌ WRONG - redundant and brittle
  * meta.profile = "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-claim"

  // ✅ CORRECT - SUSHI auto-generates meta.profile from InstanceOf
  Instance: claim-single-example
  InstanceOf: PHCoreClaim
  Usage: #example
  ```

---

## Branching Strategy

### **Branch Naming Conventions**

> **Important:** Branch names must **NOT** contain `/` or other special characters that may cause issues with the FHIR auto-IG builder (build.fhir.org).
>
> **Correct:** `feat-create-medication-series`, `fix-patient-profile`, `hotfix-build-error`
> **Incorrect:** `feat/create-medication-series`, `feature/update`, `bug_fix/validator`
>
> The auto-IG builder converts `/` to `-` in URLs, which can cause broken build links and failed IG previews.

### **Main Branches:**

* **main**: This branch contains the latest working code and is where new features are merged before going to production.
* **releases-tag**: These are tagged branches which contains versioned latest production ready code.

### **Feature Branches:**

* Create a feature branch from `main` for new features or bug fixes.
* Use the format: `{type}-{issue-number}-{description}` (e.g., `feature-272-contributing-md`, `fix-156-patient-binding`)
* Merge your feature branch back into `main` when your work is done, and submit a pull request.

### **Hotfix Branches:**

* If an urgent bug needs fixing in production, create a `hotfix-short-description` branch off `main`, fix the issue, then merge it back into `main`.

### **Release Branches:**

* When preparing a new production release, create a `v#.#.#` branch from `main`, after final adjustments and after testing.

---

## Process for Code Review

### After you submit a pull request, it will go through the following review process:

#### **Automated Checks:**

* Your code will be checked by automated tools (e.g., CI pipeline) for build success, SUSHI compilation, and validation checks.
* Ensure all checks pass before submitting the PR.

#### **Reviewer Assignment:**

* A project maintainer or other contributors will be assigned to review your PR. They will check for:
  * Code correctness and FHIR compliance.
  * Adherence to Coding Style Guidelines.
  * Potential issues with profiles, extensions, or examples.
  * Test coverage and functionality.
  * Correct canonical URLs and identifiers.

#### **Feedback:**

* You may receive feedback or requests for changes. Please address the comments by pushing additional commits to the same branch.
* For any non-code changes requested (e.g., documentation or formatting), make sure to fix them.

#### **Approval:**

* Once the review is complete and all feedback is addressed, the reviewer will approve the PR.

#### **Merging:**

* After approval, the PR will be merged into the target branch `main`.
* The PR will be **squash merged** to maintain a clean commit history.

#### **Post-Merge:**

* After the merge, ensure any linked issues are automatically closed by the PR.
* Delete the feature branch after merge.

#### **Reviewer Checklist**

* Does the IG build locally and in CI?
* Are new artifacts linked in the IG?
* Are identifiers and canonical URLs correct?
* Are changes documented in PR notes?

---

## Development Setup

### Prerequisites & Installation

#### A. Java

* Install JDK 11+ (Java 11 or newer).
* Set `JAVA_HOME` and ensure `java -version` works.

#### B. Node.js & SUSHI

* Install Node.js 18 LTS (recommended: use `nvm`):
  ```bash
  nvm install 18
  nvm use 18
  ```
* Install SUSHI globally:
  ```bash
  npm install -g fsh-sushi
  ```
* Verify:
  ```bash
  node -v
  npm -v
  sushi -h
  ```

#### C. Git

* Install Git and configure your name/email:
  ```bash
  git --version
  git config --global user.name "Your Name"
  git config --global user.email "your.email@example.com"
  ```

#### D. Optional Tools

* VS Code + FHIR/vscode-fsh extension for FSH authoring.

### Building & Validating Locally

1. **Clone the Repository**
   ```bash
   git clone https://github.com/UP-Manila-SILab/ph-core.git
   cd PH-Core
   ```

2. **Generate FHIR Resources**
   ```bash
   sushi .        # outputs to fsh-generated/
   ```

3. **Update IG Publisher**
   * Windows: Run `_updatePublisher.bat`
   * macOS/Linux: Run `./_updatePublisher.sh`

4. **Build the IG**
   * Windows: Run `_genonce.bat`
   * macOS/Linux: Run `./_genonce.sh`

5. **Preview**
   Open `output/index.html` in your browser to preview.

---

## Internal Contributing Workflow (PH Core Team)

For PH Core team members, follow this workflow:

### Branching

**Create issue:**
- Create branch from Github UI, copy the recommended commands OR
- run terminal commands
  ```sh
  git pull origin
  git checkout {branch name generated}
  ```

![Branching workflow](https://github.com/user-attachments/assets/7d62020a-7f9b-4ee6-bbb3-27fe59215214)


### Commit & PR

- Make small, focused commits with clear messages.
- Build and test locally before pushing.
- Push your branch and open a Pull Request (PR) to `main`.

### Pull Request Policy

1. ✅ Only merge when **CI is green**.
2. 📝 **Merge notes required** (unless history is self-explanatory).
3. 🔄 **Preferred merge method:** Squash and Merge.
4. 🌿 **Delete the feature branch** after merge.
5. ✅ **Mark all files as reviewed** in GitHub UI.

### Reviewer Checklist

- Does the IG build locally and in CI?
- Are new artifacts linked in the IG?
- Are identifiers and canonical URLs correct?
- Are changes documented in PR notes?

---

## Additional Resources

- **PH Core IG Build**: https://build.fhir.org/ig/UP-Manila-SILab/ph-core
- **FHIR R4 Specification**: https://hl7.org/fhir/R4/index.html
- **SUSHI Documentation**: https://fshschool.org/
- **Issue Tracker**: https://github.com/UP-Manila-SILab/ph-core/issues

### Reference Implementations

- [AU Base](https://github.com/hl7au/au-fhir-base) - Australian base patterns
- [AU Core](https://github.com/hl7au/au-fhir-core) - Australian FHIR Core
- [US Core](https://github.com/HL7/US-Core) - US Core implementation
- [UK Core](https://github.com/NHSDigital/FHIR-R4-UKCORE) - NHS England patterns

---

## Questions?

- Open an issue: https://github.com/UP-Manila-SILab/ph-core/issues
- Email: nih-nthc.upmanila@up.edu.ph
- Facebook Page: https://www.facebook.com/UPMTelehealth

Thank you for contributing to Philippine health interoperability!
