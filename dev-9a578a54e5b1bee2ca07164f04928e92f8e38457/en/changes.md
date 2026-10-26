# Changes - Draft PH Core Implementation Guide v0.2.0

## Changes

# Version History

This page documents the version history of the Philippine Core (PH Core) Implementation Guide.

## Version Summary

| | | | |
| :--- | :--- | :--- | :--- |
| [0.3.0](#v030) | 2026-05-20 | Current | Stabilization release — validation fixes, CI improvements, documentation cleanup |
| [0.2.0](#v020) | 2026-04-29 | Stable | Profile expansion — template migration, new profiles, canonical URL established |
| [0.1.0](#v010) | 2025-10-06 | Baseline | Foundation release — core profiles established |

## Detailed Release Notes

### v0.3.0

**Released:** 2026-05-20 **Commit:** `76989a5`

* Validation fixes across multiple profiles
* CI/CD pipeline improvements
* Documentation cleanup and corrections
* Ready for versioned publishing

### v0.2.0

**Released:** 2026-04-29 **Commit:** `62218df`

* Template migration from `fhir.base` to `fhir2.base`
* Major profile expansion: Medication, Condition, Provenance, ServiceRequest, Procedure
* Canonical URL established: `https://fhir.doh.gov.ph/phcore`
* `sushi-config.yaml` version set to `0.2.0`

### v0.1.0

**Released:** 2025-10-06 **Commit:** `25db46c`

* Foundation release
* Core profiles: Patient, Organization, Location, Encounter, Observation
* Initial terminology and identifier systems
* Merge pull request #122

-------

## Release Workflow

For details on how PH Core releases are created and published, see the [Version Release Workflow](version-release-workflow.md) page.

