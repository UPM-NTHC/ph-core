ValueSet: EducationalAttainments
Id: educational-attainments
Title: "Educational Attainments"
Description: "All categories of educational programs, courses, and attainment levels in the Philippines, based on the Philippine Standard Classification of Education (PSCED) published by the Philippine Statistics Authority (PSA)"
* insert ShareableValueSet
* include $PSCED#C201301 "Elementary Graduate"
* include $PSCED#C201302 "High School Graduate"
* include $PSCED#C201303 "College Graduate"
* include $PSCED#C201304 "Postgraduate"

// Pre-computed expansion eliminates terminology server dependency
* ^expansion.timestamp = "2026-04-07T00:00:00Z"
* ^expansion.total = 4
* ^expansion.offset = 0
// * ^expansion.parameter.name = "version"
// * ^expansion.parameter.valueUri = "https://psa.gov.ph/classification/psced/level|0.1.0"
* ^expansion.contains.system = "https://psa.gov.ph/classification/psced/level"
* ^expansion.contains.code = #C201301
* ^expansion.contains.display = "Elementary Graduate"
* ^expansion.contains[+].system = "https://psa.gov.ph/classification/psced/level"
* ^expansion.contains[=].code = #C201302
* ^expansion.contains[=].display = "High School Graduate"
* ^expansion.contains[+].system = "https://psa.gov.ph/classification/psced/level"
* ^expansion.contains[=].code = #C201303
* ^expansion.contains[=].display = "College Graduate"
* ^expansion.contains[+].system = "https://psa.gov.ph/classification/psced/level"
* ^expansion.contains[=].code = #C201304
* ^expansion.contains[=].display = "Postgraduate"
