ValueSet: PRCAllCodesVS
Id: prc-all-codes
Title: "PRC All Codes ValueSet"
Description: "The complete set of all concepts defined by PRCCodeSystem version 0.1.0, including its root and structural grouping concepts. This immutable technical ValueSet is the CodeSystem's full-content ValueSet; use the category-specific PRC ValueSets for code selection."
* insert ShareableValueSet
* ^url = "https://fhir.doh.gov.ph/phcore/ValueSet/prc-all-codes"
* ^version = "0.1.0"
* ^date = "2026-10-17"
* ^status = #draft
* ^publisher = "UP Manila National TeleHealth Center"
* ^jurisdiction = urn:iso:std:iso:3166#PH "Philippines"
* ^purpose = "Identify the complete contents of PRCCodeSystem version 0.1.0 for CodeSystem.valueSet metadata and terminology server compatibility."
* ^immutable = true
* include codes from system PRCCodeSystem|0.1.0
