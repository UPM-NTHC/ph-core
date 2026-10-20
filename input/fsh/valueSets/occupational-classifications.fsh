ValueSet: OccupationClassifications
Id: occupational-classifications
Title: "Occupation Classifications"
Description: "The Occupation codes valueset includes Occupational Classification values from the Philippine Standard Occupational Classification (PSOC) published by the Philippine Statistic Authority (PSA)."
* insert ShareableValueSet
* include $PSOC#111102 "Hospital Administrator"
* include $PSOC#111103 "Medical Department Head"
* include $PSOC#121101 "General Manager"
* include $PSOC#211101 "Medical Doctor"

// Pre-computed expansion eliminates terminology server dependency
* ^expansion.timestamp = "2026-04-07T00:00:00Z"
* ^expansion.total = 4
* ^expansion.offset = 0
* ^expansion.parameter.name = "version"
* ^expansion.parameter.valueUri = "https://psa.gov.ph/classification/psoc/unit|0.1.0"
* ^expansion.contains.system = "https://psa.gov.ph/classification/psoc/unit"
* ^expansion.contains.code = #111102
* ^expansion.contains.display = "Hospital Administrator"
* ^expansion.contains[+].system = "https://psa.gov.ph/classification/psoc/unit"
* ^expansion.contains[=].code = #111103
* ^expansion.contains[=].display = "Medical Department Head"
* ^expansion.contains[+].system = "https://psa.gov.ph/classification/psoc/unit"
* ^expansion.contains[=].code = #121101
* ^expansion.contains[=].display = "General Manager"
* ^expansion.contains[+].system = "https://psa.gov.ph/classification/psoc/unit"
* ^expansion.contains[=].code = #211101
* ^expansion.contains[=].display = "Medical Doctor"
