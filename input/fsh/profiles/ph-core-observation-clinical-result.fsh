Profile: PHCoreObservationClinicalResult
Parent: PHCoreObservation
Id: ph-core-observation-clinical-result
Title: "PH Core Observation Clinical Result"
Description: "A selected clinical measurement, test or panel with a result value, member/component results, or an explicit reason why the expected result is absent."
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 0
// Source: USCoreObservationClinicalResultProfile.fsh applies us-core-2 and
// marks value[x] and dataAbsentReason MS. Scope this to clinical results.
* obeys ph-obs-001
* value[x] insert ObligationPopulateIfKnownHandle
// PH actor obligations express support for this explicitly US-supported path;
// they are PH actor mappings, not copied US Core obligation extensions.
* dataAbsentReason insert ObligationPopulateIfKnownHandle
