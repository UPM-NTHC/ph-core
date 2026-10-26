# Terminology - Draft PH Core Implementation Guide v0.2.0

## Terminology

# Terminology

This page provides a summary of all terminology resources (ValueSets, CodeSystems, and ConceptMaps) defined in this implementation guide.

## Value Sets

The following ValueSets are defined in this implementation guide:

The following value sets are defined in this implementation guide:

Column attribute descriptions are as follows:

* **ValueSet:** The title of the value set with a link to the detail page.
* **Profiles and Extensions where used:** The profiles and extensions that reference the value set.
* **Available from:** Where the value set is published.

| | | |
| :--- | :--- | :--- |
| [Barangays](ValueSet-barangays.md) | [Barangay](StructureDefinition-barangay.md) | PH Core |
| [Cities](ValueSet-cities.md) | [City/Municipality](StructureDefinition-city-municipality.md) | PH Core |
| [Drugs](ValueSet-drugs-vs.md) | [PH Core Medication](StructureDefinition-ph-core-medication.md),[PH Core Medication Statement](StructureDefinition-ph-core-medicationstatement.md),[PH Core Medication Request](StructureDefinition-ph-core-medicationrequest.md),[PH Core Medication Administration](StructureDefinition-ph-core-medicationadministration.md),[PH Core Medication Dispense](StructureDefinition-ph-core-medicationdispense.md) | PH Core |
| [Educational Attainments](ValueSet-educational-attainments.md) | [Educational Attainment](StructureDefinition-educational-attainment.md) | PH Core |
| [Indigenous Groups](ValueSet-indigenous-groups-vs.md) | [Indigenous Group](StructureDefinition-indigenous-group.md) | PH Core |
| [Occupation Classifications](ValueSet-occupational-classifications.md) | [Occupation](StructureDefinition-occupation.md) | PH Core |
| [Provinces](ValueSet-provinces.md) | [Province](StructureDefinition-province.md) | PH Core |
| [Regions](ValueSet-regions.md) | [Region](StructureDefinition-region.md) | PH Core |

## Code Systems

The following CodeSystems are defined in this implementation guide:

The following code systems are used in this implementation guide:

Column attribute descriptions are as follows:

* **CodeSystem:** The title of a code system with a link to the detail page.
* **ValueSet where used:** The value set(s) that reference the code system.
* **Available from:** Where the code system is published.
* **Publisher:** Identifies the organisation responsible for maintaining the code system.

| | | | |
| :--- | :--- | :--- | :--- |
| [FDA CPR Codes](https://verification.fda.gov.ph) | [Drugs](ValueSet-drugs-vs.md) | External | PH FDA |
| [Indigenous Groups](CodeSystem-indigenous-groups-cs.md) | [Indigenous Groups](ValueSet-indigenous-groups-vs.md) | PH Core | UP Manila National TeleHealth Center |
| [level](https://psa.gov.ph/classification/psced/level) | [Educational Attainments](ValueSet-educational-attainments.md) | External | PSA |
| [Mock PSCED](CodeSystem-PSCED.md) | [Educational Attainments](ValueSet-educational-attainments.md) | External | UP Manila National TeleHealth Center |
| [Mock PSGC](CodeSystem-PSGC.md) | [Barangays](ValueSet-barangays.md),[Cities](ValueSet-cities.md),[Provinces](ValueSet-provinces.md),[Regions](ValueSet-regions.md) | External | UP Manila National TeleHealth Center |
| [Mock PSOC](CodeSystem-PSOC.md) | [Occupation Classifications](ValueSet-occupational-classifications.md) | External | UP Manila National TeleHealth Center |
| [PH FDA Certificate of Product Registration (CPR) CodeSystem](CodeSystem-PHFDACPRCS.md) | [Drugs](ValueSet-drugs-vs.md) | External | UP Manila National TeleHealth Center |
| [psgc](https://psa.gov.ph/classification/psgc) | [Barangays](ValueSet-barangays.md),[Cities](ValueSet-cities.md),[Provinces](ValueSet-provinces.md),[Regions](ValueSet-regions.md) | External | PSA |
| [unit](https://psa.gov.ph/classification/psoc/unit) | [Occupation Classifications](ValueSet-occupational-classifications.md) | External | PSA |

## Concept Maps

The following ConceptMaps are defined in this implementation guide:

**No ConceptMaps defined in this guide.**

## Terminology Bindings Summary

The following table summarizes terminology bindings across all profiles in this implementation guide. For detailed binding information, see each profile's definition.

| | | | |
| :--- | :--- | :--- | :--- |
| [Barangay](StructureDefinition-barangay.md) | `Extension.value[x]` | extensible | [Barangays](ValueSet-barangays.md) |
| [City/Municipality](StructureDefinition-city-municipality.md) | `Extension.value[x]` | extensible | [Cities](ValueSet-cities.md) |
| [Educational Attainment](StructureDefinition-educational-attainment.md) | `Extension.value[x]` | required | [EducationalAttainments](ValueSet-educational-attainments.md) |
| [Indigenous Group](StructureDefinition-indigenous-group.md) | `Extension.value[x]` | required | [IndigenousGroupsVS](ValueSet-indigenous-groups-vs.md) |
| [Occupation](StructureDefinition-occupation.md) | `Extension.extension.value[x]` | extensible | [OccupationClassifications](ValueSet-occupational-classifications.md) |
| [PH Core Medication](StructureDefinition-ph-core-medication.md) | `Medication.code` | preferred | [DrugsVS](ValueSet-drugs-vs.md) |
| [PH Core Medication Administration](StructureDefinition-ph-core-medicationadministration.md) | `MedicationAdministration.medication[x]` | preferred | [DrugsVS](ValueSet-drugs-vs.md) |
| [PH Core Medication Dispense](StructureDefinition-ph-core-medicationdispense.md) | `MedicationDispense.medication[x]` | preferred | [DrugsVS](ValueSet-drugs-vs.md) |
| [PH Core Medication Request](StructureDefinition-ph-core-medicationrequest.md) | `MedicationRequest.medication[x]` | preferred | [DrugsVS](ValueSet-drugs-vs.md) |
| [PH Core Medication Statement](StructureDefinition-ph-core-medicationstatement.md) | `MedicationStatement.medication[x]` | preferred | [DrugsVS](ValueSet-drugs-vs.md) |
| [Province](StructureDefinition-province.md) | `Extension.value[x]` | extensible | [Provinces](ValueSet-provinces.md) |
| [Region](StructureDefinition-region.md) | `Extension.value[x]` | extensible | [Regions](ValueSet-regions.md) |

-------

## External Terminology

This implementation guide also references terminology from external sources:

* [FHIR Standard Terminology](http://hl7.org/fhir/R4/terminologies-systems.html)
* [HL7 Terminology (THO)](https://terminology.hl7.org/)
* External code systems referenced in ValueSet definitions

For a complete list of all artifacts including external references, see the [Artifacts](artifacts.md) page.

