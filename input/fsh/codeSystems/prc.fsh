// Consolidates PRC CPDAS council/profession codes with the 2026 PRC examination list.
// CPDAS source (2021-01-12): https://www.prc.gov.ph/sites/default/files/CPDAS%20Frequently%20Asked%20Questions%20%28FAQs%29.pdf
// Examination source (posted 2026-03-18): https://www.prc.gov.ph/article/summary-list-professional-regulatory-boards-names-licensure-examinations-and-abbreviations
CodeSystem: PRCCodeSystem
Id: prc
Title: "PRC CodeSystem"
Description: "Consolidated PH Core terminology for PRC CPDAS Council codes, CPDAS numerical profession codes, and PRC licensure examination codes. CPDAS council and profession concepts reflect the FAQ as of 12 January 2021; PRC examination concepts reflect the standardized list posted 18 March 2026. The hierarchy groups related concepts and does not assert an is-a relationship. The 2021 CPDAS table says its numeric profession codes are for CPD attendance sheets and is subject to regular updating. The 2026 Food Technology and Speech-Language Pathology examination boards have abstract local grouping nodes because the 2021 CPDAS table has no council codes for them; those nodes are not CouncilCode values."
// This draft terminology supports genuine PRC qualification exchange; the dated source coverage is documented above.
* ^experimental = false
* ^caseSensitive = true
* ^url = "https://fhir.doh.gov.ph/phcore/CodeSystem/prc"
* ^valueSet = "https://fhir.doh.gov.ph/phcore/ValueSet/prc-all-codes"
* ^version = "0.1.0"
* ^date = "2026-10-17"
* ^status = #draft
* ^publisher = "UP Manila National TeleHealth Center"
* ^jurisdiction = urn:iso:std:iso:3166#PH "Philippines"
* ^purpose = "Provide one grouped terminology namespace while preserving PRC council codes, numerical profession codes, and examination codes as distinct concepts."
* ^hierarchyMeaning = #grouped-by
* ^content = #complete
* ^count = 172
* ^property[0].code = #concept-kind
* ^property[=].uri = "https://fhir.doh.gov.ph/phcore/CodeSystem/prc#concept-kind"
* ^property[=].type = #string
* ^property[=].description = "Concept category: root, council, profession, examination, or structural-board-group."
* ^property[+].code = #notSelectable
* ^property[=].uri = "http://hl7.org/fhir/concept-properties#notSelectable"
* ^property[=].type = #boolean
* ^property[=].description = "The concept is a structural grouping node and is not intended to be selected directly."
* ^property[+].code = #cpdas-row-number
* ^property[=].uri = "https://fhir.doh.gov.ph/phcore/CodeSystem/prc#cpdas-row-number"
* ^property[=].type = #integer
* ^property[=].description = "The CPDAS table No. for a numerical profession concept; this is a row reference, not the code."
* ^property[+].code = #prc-exam-list-number
* ^property[=].uri = "https://fhir.doh.gov.ph/phcore/CodeSystem/prc#prc-exam-list-number"
* ^property[=].type = #integer
* ^property[=].description = "The PRC examination list number; it can repeat for multiple examinations associated with one board."
* ^property[+].code = #prc-exam-board-name
* ^property[=].uri = "https://fhir.doh.gov.ph/phcore/CodeSystem/prc#prc-exam-board-name"
* ^property[=].type = #string
* ^property[=].description = "The exact PRC board name from the 2026 examination list."
* #PRC "Professional Regulation Commission"
* #PRC ^property[0].code = #concept-kind
* #PRC ^property[=].valueString = "root"
* #PRC ^property[+].code = #notSelectable
* #PRC ^property[=].valueBoolean = true
* #PRC #ACC "Accountancy"
* #PRC #ACC ^property[0].code = #concept-kind
* #PRC #ACC ^property[=].valueString = "council"
* #PRC #AER "Aeronautical Engineering"
* #PRC #AER ^property[0].code = #concept-kind
* #PRC #AER ^property[=].valueString = "council"
* #PRC #ABE "Agricultural & Biosystems Engineering"
* #PRC #ABE ^property[0].code = #concept-kind
* #PRC #ABE ^property[=].valueString = "council"
* #PRC #AGR "Agriculture"
* #PRC #AGR ^property[0].code = #concept-kind
* #PRC #AGR ^property[=].valueString = "council"
* #PRC #ARC "Architecture"
* #PRC #ARC ^property[0].code = #concept-kind
* #PRC #ARC ^property[=].valueString = "council"
* #PRC #CHE "Chemical Engineering"
* #PRC #CHE ^property[0].code = #concept-kind
* #PRC #CHE ^property[=].valueString = "council"
* #PRC #CHM "Chemistry"
* #PRC #CHM ^property[0].code = #concept-kind
* #PRC #CHM ^property[=].valueString = "council"
* #PRC #OCE "Civil Engineering"
* #PRC #OCE ^property[0].code = #concept-kind
* #PRC #OCE ^property[=].valueString = "council"
* #PRC #CRM "Criminology"
* #PRC #CRM ^property[0].code = #concept-kind
* #PRC #CRM ^property[=].valueString = "council"
* #PRC #OCB "Customs Broker"
* #PRC #OCB ^property[0].code = #concept-kind
* #PRC #OCB ^property[=].valueString = "council"
* #PRC #DNT "Dentistry"
* #PRC #DNT ^property[0].code = #concept-kind
* #PRC #DNT ^property[=].valueString = "council"
* #PRC #OEE "Electrical Engineering"
* #PRC #OEE ^property[0].code = #concept-kind
* #PRC #OEE ^property[=].valueString = "council"
* #PRC #ECE "Electronics Engineering"
* #PRC #ECE ^property[0].code = #concept-kind
* #PRC #ECE ^property[=].valueString = "council"
* #PRC #OEP "Environmental Planning"
* #PRC #OEP ^property[0].code = #concept-kind
* #PRC #OEP ^property[=].valueString = "council"
* #PRC #FIS "Fisheries"
* #PRC #FIS ^property[0].code = #concept-kind
* #PRC #FIS ^property[=].valueString = "council"
* #PRC #FRT "Forestry"
* #PRC #FRT ^property[0].code = #concept-kind
* #PRC #FRT ^property[=].valueString = "council"
* #PRC #OGE "Geodetic Engineering"
* #PRC #OGE ^property[0].code = #concept-kind
* #PRC #OGE ^property[=].valueString = "council"
* #PRC #GEO "Geology"
* #PRC #GEO ^property[0].code = #concept-kind
* #PRC #GEO ^property[=].valueString = "council"
* #PRC #OGC "Guidance & Counseling"
* #PRC #OGC ^property[0].code = #concept-kind
* #PRC #OGC ^property[=].valueString = "council"
* #PRC #OID "Interior Design"
* #PRC #OID ^property[0].code = #concept-kind
* #PRC #OID ^property[=].valueString = "council"
* #PRC #OLA "Landscape Architecture"
* #PRC #OLA ^property[0].code = #concept-kind
* #PRC #OLA ^property[=].valueString = "council"
* #PRC #LIB "Librarian"
* #PRC #LIB ^property[0].code = #concept-kind
* #PRC #LIB ^property[=].valueString = "council"
* #PRC #OMP "Master Plumbing"
* #PRC #OMP ^property[0].code = #concept-kind
* #PRC #OMP ^property[=].valueString = "council"
* #PRC #MEE "Mechanical Engineering"
* #PRC #MEE ^property[0].code = #concept-kind
* #PRC #MEE ^property[=].valueString = "council"
* #PRC #OMT "Medical Technology"
* #PRC #OMT ^property[0].code = #concept-kind
* #PRC #OMT ^property[=].valueString = "council"
* #PRC #MED "Medicine"
* #PRC #MED ^property[0].code = #concept-kind
* #PRC #MED ^property[=].valueString = "council"
* #PRC #OME "Metallurgical Engineering"
* #PRC #OME ^property[0].code = #concept-kind
* #PRC #OME ^property[=].valueString = "council"
* #PRC #MDW "Midwifery"
* #PRC #MDW ^property[0].code = #concept-kind
* #PRC #MDW ^property[=].valueString = "council"
* #PRC #MIN "Mining Engineering"
* #PRC #MIN ^property[0].code = #concept-kind
* #PRC #MIN ^property[=].valueString = "council"
* #PRC #NAME "Naval Architecture"
* #PRC #NAME ^property[0].code = #concept-kind
* #PRC #NAME ^property[=].valueString = "council"
* #PRC #NRS "Nursing"
* #PRC #NRS ^property[0].code = #concept-kind
* #PRC #NRS ^property[=].valueString = "council"
* #PRC #NAD "Nutrition & Dietetics"
* #PRC #NAD ^property[0].code = #concept-kind
* #PRC #NAD ^property[=].valueString = "council"
* #PRC #OCT "Occupational Therapy"
* #PRC #OCT ^property[0].code = #concept-kind
* #PRC #OCT ^property[=].valueString = "council"
* #PRC #OPT "Optometry"
* #PRC #OPT ^property[0].code = #concept-kind
* #PRC #OPT ^property[=].valueString = "council"
* #PRC #PHA "Pharmacy"
* #PRC #PHA ^property[0].code = #concept-kind
* #PRC #PHA ^property[=].valueString = "council"
* #PRC #PHT "Physical Therapy"
* #PRC #PHT ^property[0].code = #concept-kind
* #PRC #PHT ^property[=].valueString = "council"
* #PRC #PTR "Professional Teachers"
* #PRC #PTR ^property[0].code = #concept-kind
* #PRC #PTR ^property[=].valueString = "council"
* #PRC #PSYCH "Psychology"
* #PRC #PSYCH ^property[0].code = #concept-kind
* #PRC #PSYCH ^property[=].valueString = "council"
* #PRC #RAD "Radiologic Technology"
* #PRC #RAD ^property[0].code = #concept-kind
* #PRC #RAD ^property[=].valueString = "council"
* #PRC #RAE "Real Estate Service"
* #PRC #RAE ^property[0].code = #concept-kind
* #PRC #RAE ^property[=].valueString = "council"
* #PRC #RES "Respiratory Therapy"
* #PRC #RES ^property[0].code = #concept-kind
* #PRC #RES ^property[=].valueString = "council"
* #PRC #SAN "Sanitary Engineering"
* #PRC #SAN ^property[0].code = #concept-kind
* #PRC #SAN ^property[=].valueString = "council"
* #PRC #OSW "Social Workers"
* #PRC #OSW ^property[0].code = #concept-kind
* #PRC #OSW ^property[=].valueString = "council"
* #PRC #VET "Veterinary Medicine"
* #PRC #VET ^property[0].code = #concept-kind
* #PRC #VET ^property[=].valueString = "council"
* #PRC #ACC #100 "Certified Public Accountant"
* #PRC #ACC #100 ^property[0].code = #concept-kind
* #PRC #ACC #100 ^property[=].valueString = "profession"
* #PRC #ACC #100 ^property[+].code = #cpdas-row-number
* #PRC #ACC #100 ^property[=].valueInteger = 1
* #PRC #AER #3400 "Aeronautical Engineer"
* #PRC #AER #3400 ^property[0].code = #concept-kind
* #PRC #AER #3400 ^property[=].valueString = "profession"
* #PRC #AER #3400 ^property[+].code = #cpdas-row-number
* #PRC #AER #3400 ^property[=].valueInteger = 2
* #PRC #ABE #200 "Agricultural And Biosystems Engineer"
* #PRC #ABE #200 ^property[0].code = #concept-kind
* #PRC #ABE #200 ^property[=].valueString = "profession"
* #PRC #ABE #200 ^property[+].code = #cpdas-row-number
* #PRC #ABE #200 ^property[=].valueInteger = 3
* #PRC #AGR #4200 "Agriculturist"
* #PRC #AGR #4200 ^property[0].code = #concept-kind
* #PRC #AGR #4200 ^property[=].valueString = "profession"
* #PRC #AGR #4200 ^property[+].code = #cpdas-row-number
* #PRC #AGR #4200 ^property[=].valueInteger = 4
* #PRC #ARC #300 "Architect"
* #PRC #ARC #300 ^property[0].code = #concept-kind
* #PRC #ARC #300 ^property[=].valueString = "profession"
* #PRC #ARC #300 ^property[+].code = #cpdas-row-number
* #PRC #ARC #300 ^property[=].valueInteger = 5
* #PRC #CHE #410 "Chemical Engineer"
* #PRC #CHE #410 ^property[0].code = #concept-kind
* #PRC #CHE #410 ^property[=].valueString = "profession"
* #PRC #CHE #410 ^property[+].code = #cpdas-row-number
* #PRC #CHE #410 ^property[=].valueInteger = 6
* #PRC #CHM #510 "Chemist"
* #PRC #CHM #510 ^property[0].code = #concept-kind
* #PRC #CHM #510 ^property[=].valueString = "profession"
* #PRC #CHM #510 ^property[+].code = #cpdas-row-number
* #PRC #CHM #510 ^property[=].valueInteger = 7
* #PRC #CHM #520 "Chemical Technician"
* #PRC #CHM #520 ^property[0].code = #concept-kind
* #PRC #CHM #520 ^property[=].valueString = "profession"
* #PRC #CHM #520 ^property[+].code = #cpdas-row-number
* #PRC #CHM #520 ^property[=].valueInteger = 8
* #PRC #OCE #600 "Civil Engineer"
* #PRC #OCE #600 ^property[0].code = #concept-kind
* #PRC #OCE #600 ^property[=].valueString = "profession"
* #PRC #OCE #600 ^property[+].code = #cpdas-row-number
* #PRC #OCE #600 ^property[=].valueInteger = 9
* #PRC #CRM #3500 "Criminologist"
* #PRC #CRM #3500 ^property[0].code = #concept-kind
* #PRC #CRM #3500 ^property[=].valueString = "profession"
* #PRC #CRM #3500 ^property[+].code = #cpdas-row-number
* #PRC #CRM #3500 ^property[=].valueInteger = 10
* #PRC #OCB #800 "Customs Broker"
* #PRC #OCB #800 ^property[0].code = #concept-kind
* #PRC #OCB #800 ^property[=].valueString = "profession"
* #PRC #OCB #800 ^property[+].code = #cpdas-row-number
* #PRC #OCB #800 ^property[=].valueInteger = 11
* #PRC #DNT #910 "Dentist"
* #PRC #DNT #910 ^property[0].code = #concept-kind
* #PRC #DNT #910 ^property[=].valueString = "profession"
* #PRC #DNT #910 ^property[+].code = #cpdas-row-number
* #PRC #DNT #910 ^property[=].valueInteger = 12
* #PRC #DNT #920 "Dental Hygienist"
* #PRC #DNT #920 ^property[0].code = #concept-kind
* #PRC #DNT #920 ^property[=].valueString = "profession"
* #PRC #DNT #920 ^property[+].code = #cpdas-row-number
* #PRC #DNT #920 ^property[=].valueInteger = 13
* #PRC #DNT #930 "Dental Technologist"
* #PRC #DNT #930 ^property[0].code = #concept-kind
* #PRC #DNT #930 ^property[=].valueString = "profession"
* #PRC #DNT #930 ^property[+].code = #cpdas-row-number
* #PRC #DNT #930 ^property[=].valueInteger = 14
* #PRC #OEE #1100 "Registered Electrical Engineer"
* #PRC #OEE #1100 ^property[0].code = #concept-kind
* #PRC #OEE #1100 ^property[=].valueString = "profession"
* #PRC #OEE #1100 ^property[+].code = #cpdas-row-number
* #PRC #OEE #1100 ^property[=].valueInteger = 15
* #PRC #OEE #1110 "Professional Electrical Engineer"
* #PRC #OEE #1110 ^property[0].code = #concept-kind
* #PRC #OEE #1110 ^property[=].valueString = "profession"
* #PRC #OEE #1110 ^property[+].code = #cpdas-row-number
* #PRC #OEE #1110 ^property[=].valueInteger = 16
* #PRC #OEE #1150 "Registered Master Electrician"
* #PRC #OEE #1150 ^property[0].code = #concept-kind
* #PRC #OEE #1150 ^property[=].valueString = "profession"
* #PRC #OEE #1150 ^property[+].code = #cpdas-row-number
* #PRC #OEE #1150 ^property[=].valueInteger = 17
* #PRC #ECE #1200 "Electronics And Communications Engineer"
* #PRC #ECE #1200 ^property[0].code = #concept-kind
* #PRC #ECE #1200 ^property[=].valueString = "profession"
* #PRC #ECE #1200 ^property[+].code = #cpdas-row-number
* #PRC #ECE #1200 ^property[=].valueInteger = 18
* #PRC #ECE #1201 "Professional Electronics Engineer"
* #PRC #ECE #1201 ^property[0].code = #concept-kind
* #PRC #ECE #1201 ^property[=].valueString = "profession"
* #PRC #ECE #1201 ^property[+].code = #cpdas-row-number
* #PRC #ECE #1201 ^property[=].valueInteger = 19
* #PRC #ECE #1202 "Electronics Engineer"
* #PRC #ECE #1202 ^property[0].code = #concept-kind
* #PRC #ECE #1202 ^property[=].valueString = "profession"
* #PRC #ECE #1202 ^property[+].code = #cpdas-row-number
* #PRC #ECE #1202 ^property[=].valueInteger = 20
* #PRC #ECE #1203 "Electronics Technician"
* #PRC #ECE #1203 ^property[0].code = #concept-kind
* #PRC #ECE #1203 ^property[=].valueString = "profession"
* #PRC #ECE #1203 ^property[+].code = #cpdas-row-number
* #PRC #ECE #1203 ^property[=].valueInteger = 21
* #PRC #OEP #3600 "Environmental Planner"
* #PRC #OEP #3600 ^property[0].code = #concept-kind
* #PRC #OEP #3600 ^property[=].valueString = "profession"
* #PRC #OEP #3600 ^property[+].code = #cpdas-row-number
* #PRC #OEP #3600 ^property[=].valueInteger = 22
* #PRC #FIS #4300 "Fisheries Technologist"
* #PRC #FIS #4300 ^property[0].code = #concept-kind
* #PRC #FIS #4300 ^property[=].valueString = "profession"
* #PRC #FIS #4300 ^property[+].code = #cpdas-row-number
* #PRC #FIS #4300 ^property[=].valueInteger = 23
* #PRC #FRT #1300 "Forester"
* #PRC #FRT #1300 ^property[0].code = #concept-kind
* #PRC #FRT #1300 ^property[=].valueString = "profession"
* #PRC #FRT #1300 ^property[+].code = #cpdas-row-number
* #PRC #FRT #1300 ^property[=].valueInteger = 24
* #PRC #OGE #1410 "Geodetic Engineer"
* #PRC #OGE #1410 ^property[0].code = #concept-kind
* #PRC #OGE #1410 ^property[=].valueString = "profession"
* #PRC #OGE #1410 ^property[+].code = #cpdas-row-number
* #PRC #OGE #1410 ^property[=].valueInteger = 25
* #PRC #GEO #1510 "Geologist"
* #PRC #GEO #1510 ^property[0].code = #concept-kind
* #PRC #GEO #1510 ^property[=].valueString = "profession"
* #PRC #GEO #1510 ^property[+].code = #cpdas-row-number
* #PRC #GEO #1510 ^property[=].valueInteger = 26
* #PRC #GEO #1520 "Geologic Aide"
* #PRC #GEO #1520 ^property[0].code = #concept-kind
* #PRC #GEO #1520 ^property[=].valueString = "profession"
* #PRC #GEO #1520 ^property[+].code = #cpdas-row-number
* #PRC #GEO #1520 ^property[=].valueInteger = 27
* #PRC #OGC #4100 "Guidance Counselor"
* #PRC #OGC #4100 ^property[0].code = #concept-kind
* #PRC #OGC #4100 ^property[=].valueString = "profession"
* #PRC #OGC #4100 ^property[+].code = #cpdas-row-number
* #PRC #OGC #4100 ^property[=].valueInteger = 28
* #PRC #OID #310 "Interior Designer"
* #PRC #OID #310 ^property[0].code = #concept-kind
* #PRC #OID #310 ^property[=].valueString = "profession"
* #PRC #OID #310 ^property[+].code = #cpdas-row-number
* #PRC #OID #310 ^property[=].valueInteger = 29
* #PRC #OLA #320 "Landscape Architect"
* #PRC #OLA #320 ^property[0].code = #concept-kind
* #PRC #OLA #320 ^property[=].valueString = "profession"
* #PRC #OLA #320 ^property[+].code = #cpdas-row-number
* #PRC #OLA #320 ^property[=].valueInteger = 30
* #PRC #LIB #3800 "Librarian"
* #PRC #LIB #3800 ^property[0].code = #concept-kind
* #PRC #LIB #3800 ^property[=].valueString = "profession"
* #PRC #LIB #3800 ^property[+].code = #cpdas-row-number
* #PRC #LIB #3800 ^property[=].valueInteger = 31
* #PRC #OMP #1900 "Master Plumber"
* #PRC #OMP #1900 ^property[0].code = #concept-kind
* #PRC #OMP #1900 ^property[=].valueString = "profession"
* #PRC #OMP #1900 ^property[+].code = #cpdas-row-number
* #PRC #OMP #1900 ^property[=].valueInteger = 32
* #PRC #MEE #2010 "Professional Mechanical Engineer"
* #PRC #MEE #2010 ^property[0].code = #concept-kind
* #PRC #MEE #2010 ^property[=].valueString = "profession"
* #PRC #MEE #2010 ^property[+].code = #cpdas-row-number
* #PRC #MEE #2010 ^property[=].valueInteger = 33
* #PRC #MEE #2040 "Mechanical Engineer"
* #PRC #MEE #2040 ^property[0].code = #concept-kind
* #PRC #MEE #2040 ^property[=].valueString = "profession"
* #PRC #MEE #2040 ^property[+].code = #cpdas-row-number
* #PRC #MEE #2040 ^property[=].valueInteger = 34
* #PRC #MEE #2060 "Certified Plant Mechanic"
* #PRC #MEE #2060 ^property[0].code = #concept-kind
* #PRC #MEE #2060 ^property[=].valueString = "profession"
* #PRC #MEE #2060 ^property[+].code = #cpdas-row-number
* #PRC #MEE #2060 ^property[=].valueInteger = 35
* #PRC #OMT #2110 "Medical Technologist"
* #PRC #OMT #2110 ^property[0].code = #concept-kind
* #PRC #OMT #2110 ^property[=].valueString = "profession"
* #PRC #OMT #2110 ^property[+].code = #cpdas-row-number
* #PRC #OMT #2110 ^property[=].valueInteger = 36
* #PRC #OMT #2120 "Medical Laboratory Technician"
* #PRC #OMT #2120 ^property[0].code = #concept-kind
* #PRC #OMT #2120 ^property[=].valueString = "profession"
* #PRC #OMT #2120 ^property[+].code = #cpdas-row-number
* #PRC #OMT #2120 ^property[=].valueInteger = 37
* #PRC #MED #2200 "Physician"
* #PRC #MED #2200 ^property[0].code = #concept-kind
* #PRC #MED #2200 ^property[=].valueString = "profession"
* #PRC #MED #2200 ^property[+].code = #cpdas-row-number
* #PRC #MED #2200 ^property[=].valueInteger = 38
* #PRC #OME #1810 "Metallurgical Engineer"
* #PRC #OME #1810 ^property[0].code = #concept-kind
* #PRC #OME #1810 ^property[=].valueString = "profession"
* #PRC #OME #1810 ^property[+].code = #cpdas-row-number
* #PRC #OME #1810 ^property[=].valueInteger = 39
* #PRC #OME #1820 "Metallurgical Plant Foreman"
* #PRC #OME #1820 ^property[0].code = #concept-kind
* #PRC #OME #1820 ^property[=].valueString = "profession"
* #PRC #OME #1820 ^property[+].code = #cpdas-row-number
* #PRC #OME #1820 ^property[=].valueInteger = 40
* #PRC #MDW #2310 "Midwife (Ra 2382)"
* #PRC #MDW #2310 ^property[0].code = #concept-kind
* #PRC #MDW #2310 ^property[=].valueString = "profession"
* #PRC #MDW #2310 ^property[+].code = #cpdas-row-number
* #PRC #MDW #2310 ^property[=].valueInteger = 41
* #PRC #MDW #2320 "Midwife"
* #PRC #MDW #2320 ^property[0].code = #concept-kind
* #PRC #MDW #2320 ^property[=].valueString = "profession"
* #PRC #MDW #2320 ^property[+].code = #cpdas-row-number
* #PRC #MDW #2320 ^property[=].valueInteger = 42
* #PRC #MIN #2410 "Mining Engineer"
* #PRC #MIN #2410 ^property[0].code = #concept-kind
* #PRC #MIN #2410 ^property[=].valueString = "profession"
* #PRC #MIN #2410 ^property[+].code = #cpdas-row-number
* #PRC #MIN #2410 ^property[=].valueInteger = 43
* #PRC #MIN #2420 "Certified Mine Foreman"
* #PRC #MIN #2420 ^property[0].code = #concept-kind
* #PRC #MIN #2420 ^property[=].valueString = "profession"
* #PRC #MIN #2420 ^property[+].code = #cpdas-row-number
* #PRC #MIN #2420 ^property[=].valueInteger = 44
* #PRC #MIN #2440 "Certified Quarry Foreman"
* #PRC #MIN #2440 ^property[0].code = #concept-kind
* #PRC #MIN #2440 ^property[=].valueString = "profession"
* #PRC #MIN #2440 ^property[+].code = #cpdas-row-number
* #PRC #MIN #2440 ^property[=].valueInteger = 45
* #PRC #NAME #2500 "Naval Architect & Marine Engineer"
* #PRC #NAME #2500 ^property[0].code = #concept-kind
* #PRC #NAME #2500 ^property[=].valueString = "profession"
* #PRC #NAME #2500 ^property[+].code = #cpdas-row-number
* #PRC #NAME #2500 ^property[=].valueInteger = 46
* #PRC #NRS #2600 "Nurse"
* #PRC #NRS #2600 ^property[0].code = #concept-kind
* #PRC #NRS #2600 ^property[=].valueString = "profession"
* #PRC #NRS #2600 ^property[+].code = #cpdas-row-number
* #PRC #NRS #2600 ^property[=].valueInteger = 47
* #PRC #NAD #1010 "Nutritionist Dietitian"
* #PRC #NAD #1010 ^property[0].code = #concept-kind
* #PRC #NAD #1010 ^property[=].valueString = "profession"
* #PRC #NAD #1010 ^property[+].code = #cpdas-row-number
* #PRC #NAD #1010 ^property[=].valueInteger = 48
* #PRC #OCT #2920 "Occupational Therapist"
* #PRC #OCT #2920 ^property[0].code = #concept-kind
* #PRC #OCT #2920 ^property[=].valueString = "profession"
* #PRC #OCT #2920 ^property[+].code = #cpdas-row-number
* #PRC #OCT #2920 ^property[=].valueInteger = 49
* #PRC #OPT #2700 "Optometrist"
* #PRC #OPT #2700 ^property[0].code = #concept-kind
* #PRC #OPT #2700 ^property[=].valueString = "profession"
* #PRC #OPT #2700 ^property[+].code = #cpdas-row-number
* #PRC #OPT #2700 ^property[=].valueInteger = 50
* #PRC #OPT #2710 "Ocular Pharmacologist"
* #PRC #OPT #2710 ^property[0].code = #concept-kind
* #PRC #OPT #2710 ^property[=].valueString = "profession"
* #PRC #OPT #2710 ^property[+].code = #cpdas-row-number
* #PRC #OPT #2710 ^property[=].valueInteger = 51
* #PRC #PHA #2810 "Pharmacist"
* #PRC #PHA #2810 ^property[0].code = #concept-kind
* #PRC #PHA #2810 ^property[=].valueString = "profession"
* #PRC #PHA #2810 ^property[+].code = #cpdas-row-number
* #PRC #PHA #2810 ^property[=].valueInteger = 52
* #PRC #PHA #2820 "Chinese Druggist"
* #PRC #PHA #2820 ^property[0].code = #concept-kind
* #PRC #PHA #2820 ^property[=].valueString = "profession"
* #PRC #PHA #2820 ^property[+].code = #cpdas-row-number
* #PRC #PHA #2820 ^property[=].valueInteger = 53
* #PRC #PHT #2910 "Physical Therapist"
* #PRC #PHT #2910 ^property[0].code = #concept-kind
* #PRC #PHT #2910 ^property[=].valueString = "profession"
* #PRC #PHT #2910 ^property[+].code = #cpdas-row-number
* #PRC #PHT #2910 ^property[=].valueInteger = 54
* #PRC #PTR #4000 "Professional Teacher"
* #PRC #PTR #4000 ^property[0].code = #concept-kind
* #PRC #PTR #4000 ^property[=].valueString = "profession"
* #PRC #PTR #4000 ^property[+].code = #cpdas-row-number
* #PRC #PTR #4000 ^property[=].valueInteger = 55
* #PRC #PSYCH #4520 "Psychologist"
* #PRC #PSYCH #4520 ^property[0].code = #concept-kind
* #PRC #PSYCH #4520 ^property[=].valueString = "profession"
* #PRC #PSYCH #4520 ^property[+].code = #cpdas-row-number
* #PRC #PSYCH #4520 ^property[=].valueInteger = 56
* #PRC #PSYCH #4530 "Psychometrician"
* #PRC #PSYCH #4530 ^property[0].code = #concept-kind
* #PRC #PSYCH #4530 ^property[=].valueString = "profession"
* #PRC #PSYCH #4530 ^property[+].code = #cpdas-row-number
* #PRC #PSYCH #4530 ^property[=].valueInteger = 57
* #PRC #RAD #3710 "Radiologic Technologist"
* #PRC #RAD #3710 ^property[0].code = #concept-kind
* #PRC #RAD #3710 ^property[=].valueString = "profession"
* #PRC #RAD #3710 ^property[+].code = #cpdas-row-number
* #PRC #RAD #3710 ^property[=].valueInteger = 58
* #PRC #RAD #3720 "X-Ray Technologist"
* #PRC #RAD #3720 ^property[0].code = #concept-kind
* #PRC #RAD #3720 ^property[=].valueString = "profession"
* #PRC #RAD #3720 ^property[+].code = #cpdas-row-number
* #PRC #RAD #3720 ^property[=].valueInteger = 59
* #PRC #RAE #4410 "Real Estate Consultant"
* #PRC #RAE #4410 ^property[0].code = #concept-kind
* #PRC #RAE #4410 ^property[=].valueString = "profession"
* #PRC #RAE #4410 ^property[+].code = #cpdas-row-number
* #PRC #RAE #4410 ^property[=].valueInteger = 60
* #PRC #RAE #4420 "Real Estate Appraiser"
* #PRC #RAE #4420 ^property[0].code = #concept-kind
* #PRC #RAE #4420 ^property[=].valueString = "profession"
* #PRC #RAE #4420 ^property[+].code = #cpdas-row-number
* #PRC #RAE #4420 ^property[=].valueInteger = 61
* #PRC #RAE #4430 "Real Estate Broker"
* #PRC #RAE #4430 ^property[0].code = #concept-kind
* #PRC #RAE #4430 ^property[=].valueString = "profession"
* #PRC #RAE #4430 ^property[+].code = #cpdas-row-number
* #PRC #RAE #4430 ^property[=].valueInteger = 62
* #PRC #RES #4510 "Respiratory Therapist"
* #PRC #RES #4510 ^property[0].code = #concept-kind
* #PRC #RES #4510 ^property[=].valueString = "profession"
* #PRC #RES #4510 ^property[+].code = #cpdas-row-number
* #PRC #RES #4510 ^property[=].valueInteger = 63
* #PRC #SAN #3000 "Sanitary Engineer"
* #PRC #SAN #3000 ^property[0].code = #concept-kind
* #PRC #SAN #3000 ^property[=].valueString = "profession"
* #PRC #SAN #3000 ^property[+].code = #cpdas-row-number
* #PRC #SAN #3000 ^property[=].valueInteger = 64
* #PRC #OSW #3200 "Social Worker"
* #PRC #OSW #3200 ^property[0].code = #concept-kind
* #PRC #OSW #3200 ^property[=].valueString = "profession"
* #PRC #OSW #3200 ^property[+].code = #cpdas-row-number
* #PRC #OSW #3200 ^property[=].valueInteger = 65
* #PRC #VET #3300 "Veterinarian"
* #PRC #VET #3300 ^property[0].code = #concept-kind
* #PRC #VET #3300 ^property[=].valueString = "profession"
* #PRC #VET #3300 ^property[+].code = #cpdas-row-number
* #PRC #VET #3300 ^property[=].valueInteger = 66
* #PRC #board-food-technology "Food Technology" "Abstract local grouping node; no CPDAS Council code appears for this board in the 2021 table."
* #PRC #board-food-technology ^property[0].code = #concept-kind
* #PRC #board-food-technology ^property[=].valueString = "structural-board-group"
* #PRC #board-food-technology ^property[+].code = #notSelectable
* #PRC #board-food-technology ^property[=].valueBoolean = true
* #PRC #board-speech-language-pathology "Speech-Language Pathology" "Abstract local grouping node; no CPDAS Council code appears for this board in the 2021 table."
* #PRC #board-speech-language-pathology ^property[0].code = #concept-kind
* #PRC #board-speech-language-pathology ^property[=].valueString = "structural-board-group"
* #PRC #board-speech-language-pathology ^property[+].code = #notSelectable
* #PRC #board-speech-language-pathology ^property[=].valueBoolean = true
* #PRC #AER #AELE "Aeronautical Engineers Licensure Examination"
* #PRC #AER #AELE ^property[0].code = #concept-kind
* #PRC #AER #AELE ^property[=].valueString = "examination"
* #PRC #AER #AELE ^property[+].code = #prc-exam-list-number
* #PRC #AER #AELE ^property[=].valueInteger = 1
* #PRC #AER #AELE ^property[+].code = #prc-exam-board-name
* #PRC #AER #AELE ^property[=].valueString = "Aeronautical Engineering"
* #PRC #ABE #ABELE "Agricultural and Biosystems Engineers Licensure Examination"
* #PRC #ABE #ABELE ^property[0].code = #concept-kind
* #PRC #ABE #ABELE ^property[=].valueString = "examination"
* #PRC #ABE #ABELE ^property[+].code = #prc-exam-list-number
* #PRC #ABE #ABELE ^property[=].valueInteger = 2
* #PRC #ABE #ABELE ^property[+].code = #prc-exam-board-name
* #PRC #ABE #ABELE ^property[=].valueString = "Agricultural and Biosystems Engineering"
* #PRC #AGR #AgLE "Agriculturists Licensure Examination"
* #PRC #AGR #AgLE ^property[0].code = #concept-kind
* #PRC #AGR #AgLE ^property[=].valueString = "examination"
* #PRC #AGR #AgLE ^property[+].code = #prc-exam-list-number
* #PRC #AGR #AgLE ^property[=].valueInteger = 3
* #PRC #AGR #AgLE ^property[+].code = #prc-exam-board-name
* #PRC #AGR #AgLE ^property[=].valueString = "Agriculture"
* #PRC #ARC #LEA "Licensure Examination for Architects"
* #PRC #ARC #LEA ^property[0].code = #concept-kind
* #PRC #ARC #LEA ^property[=].valueString = "examination"
* #PRC #ARC #LEA ^property[+].code = #prc-exam-list-number
* #PRC #ARC #LEA ^property[=].valueInteger = 4
* #PRC #ARC #LEA ^property[+].code = #prc-exam-board-name
* #PRC #ARC #LEA ^property[=].valueString = "Architecture"
* #PRC #ACC #CPALE "Certified Public Accountants Licensure Examination"
* #PRC #ACC #CPALE ^property[0].code = #concept-kind
* #PRC #ACC #CPALE ^property[=].valueString = "examination"
* #PRC #ACC #CPALE ^property[+].code = #prc-exam-list-number
* #PRC #ACC #CPALE ^property[=].valueInteger = 5
* #PRC #ACC #CPALE ^property[+].code = #prc-exam-board-name
* #PRC #ACC #CPALE ^property[=].valueString = "Accountancy"
* #PRC #CHE #ChELE "Chemical Engineers Licensure Examination"
* #PRC #CHE #ChELE ^property[0].code = #concept-kind
* #PRC #CHE #ChELE ^property[=].valueString = "examination"
* #PRC #CHE #ChELE ^property[+].code = #prc-exam-list-number
* #PRC #CHE #ChELE ^property[=].valueInteger = 6
* #PRC #CHE #ChELE ^property[+].code = #prc-exam-board-name
* #PRC #CHE #ChELE ^property[=].valueString = "Chemical Engineering"
* #PRC #CHM #CLE "Chemists Licensure Examination"
* #PRC #CHM #CLE ^property[0].code = #concept-kind
* #PRC #CHM #CLE ^property[=].valueString = "examination"
* #PRC #CHM #CLE ^property[+].code = #prc-exam-list-number
* #PRC #CHM #CLE ^property[=].valueInteger = 7
* #PRC #CHM #CLE ^property[+].code = #prc-exam-board-name
* #PRC #CHM #CLE ^property[=].valueString = "Chemistry"
* #PRC #CHM #CTLE "Chemical Technicians Licensure Examination"
* #PRC #CHM #CTLE ^property[0].code = #concept-kind
* #PRC #CHM #CTLE ^property[=].valueString = "examination"
* #PRC #CHM #CTLE ^property[+].code = #prc-exam-list-number
* #PRC #CHM #CTLE ^property[=].valueInteger = 7
* #PRC #CHM #CTLE ^property[+].code = #prc-exam-board-name
* #PRC #CHM #CTLE ^property[=].valueString = "Chemistry"
* #PRC #OCE #CELE "Civil Engineers Licensure Examination"
* #PRC #OCE #CELE ^property[0].code = #concept-kind
* #PRC #OCE #CELE ^property[=].valueString = "examination"
* #PRC #OCE #CELE ^property[+].code = #prc-exam-list-number
* #PRC #OCE #CELE ^property[=].valueInteger = 8
* #PRC #OCE #CELE ^property[+].code = #prc-exam-board-name
* #PRC #OCE #CELE ^property[=].valueString = "Civil Engineering"
* #PRC #CRM #LEC "Licensure Examination for Criminologists"
* #PRC #CRM #LEC ^property[0].code = #concept-kind
* #PRC #CRM #LEC ^property[=].valueString = "examination"
* #PRC #CRM #LEC ^property[+].code = #prc-exam-list-number
* #PRC #CRM #LEC ^property[=].valueInteger = 9
* #PRC #CRM #LEC ^property[+].code = #prc-exam-board-name
* #PRC #CRM #LEC ^property[=].valueString = "Criminology"
* #PRC #OCB #CuBLE "Customs Brokers Licensure Examination"
* #PRC #OCB #CuBLE ^property[0].code = #concept-kind
* #PRC #OCB #CuBLE ^property[=].valueString = "examination"
* #PRC #OCB #CuBLE ^property[+].code = #prc-exam-list-number
* #PRC #OCB #CuBLE ^property[=].valueInteger = 10
* #PRC #OCB #CuBLE ^property[+].code = #prc-exam-board-name
* #PRC #OCB #CuBLE ^property[=].valueString = "Customs Brokers"
* #PRC #DNT #DLE "Dentists Licensure Examination"
* #PRC #DNT #DLE ^property[0].code = #concept-kind
* #PRC #DNT #DLE ^property[=].valueString = "examination"
* #PRC #DNT #DLE ^property[+].code = #prc-exam-list-number
* #PRC #DNT #DLE ^property[=].valueInteger = 11
* #PRC #DNT #DLE ^property[+].code = #prc-exam-board-name
* #PRC #DNT #DLE ^property[=].valueString = "Dentistry"
* #PRC #DNT #DHLE "Dental Hygienists Licensure Examination"
* #PRC #DNT #DHLE ^property[0].code = #concept-kind
* #PRC #DNT #DHLE ^property[=].valueString = "examination"
* #PRC #DNT #DHLE ^property[+].code = #prc-exam-list-number
* #PRC #DNT #DHLE ^property[=].valueInteger = 11
* #PRC #DNT #DHLE ^property[+].code = #prc-exam-board-name
* #PRC #DNT #DHLE ^property[=].valueString = "Dentistry"
* #PRC #DNT #DTLE "Dental Technologists Licensure Examination"
* #PRC #DNT #DTLE ^property[0].code = #concept-kind
* #PRC #DNT #DTLE ^property[=].valueString = "examination"
* #PRC #DNT #DTLE ^property[+].code = #prc-exam-list-number
* #PRC #DNT #DTLE ^property[=].valueInteger = 11
* #PRC #DNT #DTLE ^property[+].code = #prc-exam-board-name
* #PRC #DNT #DTLE ^property[=].valueString = "Dentistry"
* #PRC #OEE #REELE "Registered Electrical Engineers Licensure Examination"
* #PRC #OEE #REELE ^property[0].code = #concept-kind
* #PRC #OEE #REELE ^property[=].valueString = "examination"
* #PRC #OEE #REELE ^property[+].code = #prc-exam-list-number
* #PRC #OEE #REELE ^property[=].valueInteger = 12
* #PRC #OEE #REELE ^property[+].code = #prc-exam-board-name
* #PRC #OEE #REELE ^property[=].valueString = "Electrical Engineering"
* #PRC #OEE #RMELE "Registered Master Electricians Licensure Examination"
* #PRC #OEE #RMELE ^property[0].code = #concept-kind
* #PRC #OEE #RMELE ^property[=].valueString = "examination"
* #PRC #OEE #RMELE ^property[+].code = #prc-exam-list-number
* #PRC #OEE #RMELE ^property[=].valueInteger = 12
* #PRC #OEE #RMELE ^property[+].code = #prc-exam-board-name
* #PRC #OEE #RMELE ^property[=].valueString = "Electrical Engineering"
* #PRC #ECE #EELE "Electronics Engineers Licensure Examination"
* #PRC #ECE #EELE ^property[0].code = #concept-kind
* #PRC #ECE #EELE ^property[=].valueString = "examination"
* #PRC #ECE #EELE ^property[+].code = #prc-exam-list-number
* #PRC #ECE #EELE ^property[=].valueInteger = 13
* #PRC #ECE #EELE ^property[+].code = #prc-exam-board-name
* #PRC #ECE #EELE ^property[=].valueString = "Electronics Engineering"
* #PRC #ECE #ETLE "Electronics Technicians Licensure Examination"
* #PRC #ECE #ETLE ^property[0].code = #concept-kind
* #PRC #ECE #ETLE ^property[=].valueString = "examination"
* #PRC #ECE #ETLE ^property[+].code = #prc-exam-list-number
* #PRC #ECE #ETLE ^property[=].valueInteger = 13
* #PRC #ECE #ETLE ^property[+].code = #prc-exam-board-name
* #PRC #ECE #ETLE ^property[=].valueString = "Electronics Engineering"
* #PRC #OEP #EnPLE "Environmental Planners Licensure Examination"
* #PRC #OEP #EnPLE ^property[0].code = #concept-kind
* #PRC #OEP #EnPLE ^property[=].valueString = "examination"
* #PRC #OEP #EnPLE ^property[+].code = #prc-exam-list-number
* #PRC #OEP #EnPLE ^property[=].valueInteger = 14
* #PRC #OEP #EnPLE ^property[+].code = #prc-exam-board-name
* #PRC #OEP #EnPLE ^property[=].valueString = "Environmental Planning"
* #PRC #FIS #FPLE "Fisheries Professionals Licensure Examination"
* #PRC #FIS #FPLE ^property[0].code = #concept-kind
* #PRC #FIS #FPLE ^property[=].valueString = "examination"
* #PRC #FIS #FPLE ^property[+].code = #prc-exam-list-number
* #PRC #FIS #FPLE ^property[=].valueInteger = 15
* #PRC #FIS #FPLE ^property[+].code = #prc-exam-board-name
* #PRC #FIS #FPLE ^property[=].valueString = "Fisheries"
* #PRC #board-food-technology #PFTLE "Professional Food Technologists Licensure Examination"
* #PRC #board-food-technology #PFTLE ^property[0].code = #concept-kind
* #PRC #board-food-technology #PFTLE ^property[=].valueString = "examination"
* #PRC #board-food-technology #PFTLE ^property[+].code = #prc-exam-list-number
* #PRC #board-food-technology #PFTLE ^property[=].valueInteger = 16
* #PRC #board-food-technology #PFTLE ^property[+].code = #prc-exam-board-name
* #PRC #board-food-technology #PFTLE ^property[=].valueString = "Food Technology"
* #PRC #FRT #PFLE "Professional Foresters Licensure Examination"
* #PRC #FRT #PFLE ^property[0].code = #concept-kind
* #PRC #FRT #PFLE ^property[=].valueString = "examination"
* #PRC #FRT #PFLE ^property[+].code = #prc-exam-list-number
* #PRC #FRT #PFLE ^property[=].valueInteger = 17
* #PRC #FRT #PFLE ^property[+].code = #prc-exam-board-name
* #PRC #FRT #PFLE ^property[=].valueString = "Foresters"
* #PRC #OGE #GELE "Geodetic Engineers Licensure Examination"
* #PRC #OGE #GELE ^property[0].code = #concept-kind
* #PRC #OGE #GELE ^property[=].valueString = "examination"
* #PRC #OGE #GELE ^property[+].code = #prc-exam-list-number
* #PRC #OGE #GELE ^property[=].valueInteger = 18
* #PRC #OGE #GELE ^property[+].code = #prc-exam-board-name
* #PRC #OGE #GELE ^property[=].valueString = "Geodetic Engineering"
* #PRC #GEO #GLE "Geologists Licensure Examination"
* #PRC #GEO #GLE ^property[0].code = #concept-kind
* #PRC #GEO #GLE ^property[=].valueString = "examination"
* #PRC #GEO #GLE ^property[+].code = #prc-exam-list-number
* #PRC #GEO #GLE ^property[=].valueInteger = 19
* #PRC #GEO #GLE ^property[+].code = #prc-exam-board-name
* #PRC #GEO #GLE ^property[=].valueString = "Geology"
* #PRC #OGC #GCLE "Guidance Counselors Licensure Examination"
* #PRC #OGC #GCLE ^property[0].code = #concept-kind
* #PRC #OGC #GCLE ^property[=].valueString = "examination"
* #PRC #OGC #GCLE ^property[+].code = #prc-exam-list-number
* #PRC #OGC #GCLE ^property[=].valueInteger = 20
* #PRC #OGC #GCLE ^property[+].code = #prc-exam-board-name
* #PRC #OGC #GCLE ^property[=].valueString = "Guidance and Counseling"
* #PRC #OID #LEID "Licensure Examination for Interior Designers"
* #PRC #OID #LEID ^property[0].code = #concept-kind
* #PRC #OID #LEID ^property[=].valueString = "examination"
* #PRC #OID #LEID ^property[+].code = #prc-exam-list-number
* #PRC #OID #LEID ^property[=].valueInteger = 21
* #PRC #OID #LEID ^property[+].code = #prc-exam-board-name
* #PRC #OID #LEID ^property[=].valueString = "Interior Design"
* #PRC #OLA #LALE "Landscape Architects Licensure Examination"
* #PRC #OLA #LALE ^property[0].code = #concept-kind
* #PRC #OLA #LALE ^property[=].valueString = "examination"
* #PRC #OLA #LALE ^property[+].code = #prc-exam-list-number
* #PRC #OLA #LALE ^property[=].valueInteger = 22
* #PRC #OLA #LALE ^property[+].code = #prc-exam-board-name
* #PRC #OLA #LALE ^property[=].valueString = "Landscape Architecture"
* #PRC #LIB #LLE "Librarians Licensure Examination"
* #PRC #LIB #LLE ^property[0].code = #concept-kind
* #PRC #LIB #LLE ^property[=].valueString = "examination"
* #PRC #LIB #LLE ^property[+].code = #prc-exam-list-number
* #PRC #LIB #LLE ^property[=].valueInteger = 23
* #PRC #LIB #LLE ^property[+].code = #prc-exam-board-name
* #PRC #LIB #LLE ^property[=].valueString = "Librarians"
* #PRC #OMP #MPLE "Master Plumbers Licensure Examination"
* #PRC #OMP #MPLE ^property[0].code = #concept-kind
* #PRC #OMP #MPLE ^property[=].valueString = "examination"
* #PRC #OMP #MPLE ^property[+].code = #prc-exam-list-number
* #PRC #OMP #MPLE ^property[=].valueInteger = 24
* #PRC #OMP #MPLE ^property[+].code = #prc-exam-board-name
* #PRC #OMP #MPLE ^property[=].valueString = "Master Plumbers"
* #PRC #MEE #MELE "Mechanical Engineers Licensure Examination"
* #PRC #MEE #MELE ^property[0].code = #concept-kind
* #PRC #MEE #MELE ^property[=].valueString = "examination"
* #PRC #MEE #MELE ^property[+].code = #prc-exam-list-number
* #PRC #MEE #MELE ^property[=].valueInteger = 25
* #PRC #MEE #MELE ^property[+].code = #prc-exam-board-name
* #PRC #MEE #MELE ^property[=].valueString = "Mechanical Engineering"
* #PRC #MEE #CPMLE "Certified Plant Mechanics Licensure Examination"
* #PRC #MEE #CPMLE ^property[0].code = #concept-kind
* #PRC #MEE #CPMLE ^property[=].valueString = "examination"
* #PRC #MEE #CPMLE ^property[+].code = #prc-exam-list-number
* #PRC #MEE #CPMLE ^property[=].valueInteger = 25
* #PRC #MEE #CPMLE ^property[+].code = #prc-exam-board-name
* #PRC #MEE #CPMLE ^property[=].valueString = "Mechanical Engineering"
* #PRC #MEE #PME-OETE "Professional Mechanical Engineers Oral Examination/Technical Evaluation"
* #PRC #MEE #PME-OETE ^property[0].code = #concept-kind
* #PRC #MEE #PME-OETE ^property[=].valueString = "examination"
* #PRC #MEE #PME-OETE ^property[+].code = #prc-exam-list-number
* #PRC #MEE #PME-OETE ^property[=].valueInteger = 25
* #PRC #MEE #PME-OETE ^property[+].code = #prc-exam-board-name
* #PRC #MEE #PME-OETE ^property[=].valueString = "Mechanical Engineering"
* #PRC #OMT #MTLE "Medical Technologists Licensure Examination"
* #PRC #OMT #MTLE ^property[0].code = #concept-kind
* #PRC #OMT #MTLE ^property[=].valueString = "examination"
* #PRC #OMT #MTLE ^property[+].code = #prc-exam-list-number
* #PRC #OMT #MTLE ^property[=].valueInteger = 26
* #PRC #OMT #MTLE ^property[+].code = #prc-exam-board-name
* #PRC #OMT #MTLE ^property[=].valueString = "Medical Technology"
* #PRC #MED #PLE "Physicians Licensure Examination"
* #PRC #MED #PLE ^property[0].code = #concept-kind
* #PRC #MED #PLE ^property[=].valueString = "examination"
* #PRC #MED #PLE ^property[+].code = #prc-exam-list-number
* #PRC #MED #PLE ^property[=].valueInteger = 27
* #PRC #MED #PLE ^property[+].code = #prc-exam-board-name
* #PRC #MED #PLE ^property[=].valueString = "Medicine"
* #PRC #MED #QA-FMP "Qualifying Assessment-Foreign Medical Professionals"
* #PRC #MED #QA-FMP ^property[0].code = #concept-kind
* #PRC #MED #QA-FMP ^property[=].valueString = "examination"
* #PRC #MED #QA-FMP ^property[+].code = #prc-exam-list-number
* #PRC #MED #QA-FMP ^property[=].valueInteger = 27
* #PRC #MED #QA-FMP ^property[+].code = #prc-exam-board-name
* #PRC #MED #QA-FMP ^property[=].valueString = "Medicine"
* #PRC #OME #MetELE "Metallurgical Engineers Licensure Examination"
* #PRC #OME #MetELE ^property[0].code = #concept-kind
* #PRC #OME #MetELE ^property[=].valueString = "examination"
* #PRC #OME #MetELE ^property[+].code = #prc-exam-list-number
* #PRC #OME #MetELE ^property[=].valueInteger = 28
* #PRC #OME #MetELE ^property[+].code = #prc-exam-board-name
* #PRC #OME #MetELE ^property[=].valueString = "Metallurgical Engineering"
* #PRC #MDW #MidLE "Midwives Licensure Examination"
* #PRC #MDW #MidLE ^property[0].code = #concept-kind
* #PRC #MDW #MidLE ^property[=].valueString = "examination"
* #PRC #MDW #MidLE ^property[+].code = #prc-exam-list-number
* #PRC #MDW #MidLE ^property[=].valueInteger = 29
* #PRC #MDW #MidLE ^property[+].code = #prc-exam-board-name
* #PRC #MDW #MidLE ^property[=].valueString = "Midwifery"
* #PRC #MIN #MinELE "Mining Engineers Licensure Examination"
* #PRC #MIN #MinELE ^property[0].code = #concept-kind
* #PRC #MIN #MinELE ^property[=].valueString = "examination"
* #PRC #MIN #MinELE ^property[+].code = #prc-exam-list-number
* #PRC #MIN #MinELE ^property[=].valueInteger = 30
* #PRC #MIN #MinELE ^property[+].code = #prc-exam-board-name
* #PRC #MIN #MinELE ^property[=].valueString = "Mining Engineering"
* #PRC #NAME #NALE "Naval Architects Licensure Examination"
* #PRC #NAME #NALE ^property[0].code = #concept-kind
* #PRC #NAME #NALE ^property[=].valueString = "examination"
* #PRC #NAME #NALE ^property[+].code = #prc-exam-list-number
* #PRC #NAME #NALE ^property[=].valueInteger = 31
* #PRC #NAME #NALE ^property[+].code = #prc-exam-board-name
* #PRC #NAME #NALE ^property[=].valueString = "Naval Architecture"
* #PRC #NRS #NLE "Nurses Licensure Examination"
* #PRC #NRS #NLE ^property[0].code = #concept-kind
* #PRC #NRS #NLE ^property[=].valueString = "examination"
* #PRC #NRS #NLE ^property[+].code = #prc-exam-list-number
* #PRC #NRS #NLE ^property[=].valueInteger = 32
* #PRC #NRS #NLE ^property[+].code = #prc-exam-board-name
* #PRC #NRS #NLE ^property[=].valueString = "Nursing"
* #PRC #NAD #NDLE "Nutritionists-Dietitians Licensure Examination"
* #PRC #NAD #NDLE ^property[0].code = #concept-kind
* #PRC #NAD #NDLE ^property[=].valueString = "examination"
* #PRC #NAD #NDLE ^property[+].code = #prc-exam-list-number
* #PRC #NAD #NDLE ^property[=].valueInteger = 33
* #PRC #NAD #NDLE ^property[+].code = #prc-exam-board-name
* #PRC #NAD #NDLE ^property[=].valueString = "Nutrition and Dietetics"
* #PRC #OPT #OLE "Optometrists Licensure Examination"
* #PRC #OPT #OLE ^property[0].code = #concept-kind
* #PRC #OPT #OLE ^property[=].valueString = "examination"
* #PRC #OPT #OLE ^property[+].code = #prc-exam-list-number
* #PRC #OPT #OLE ^property[=].valueInteger = 34
* #PRC #OPT #OLE ^property[+].code = #prc-exam-board-name
* #PRC #OPT #OLE ^property[=].valueString = "Optometry"
* #PRC #OPT #OPSCLE "Ocular Pharmacologists Special Certification Licensure Examination"
* #PRC #OPT #OPSCLE ^property[0].code = #concept-kind
* #PRC #OPT #OPSCLE ^property[=].valueString = "examination"
* #PRC #OPT #OPSCLE ^property[+].code = #prc-exam-list-number
* #PRC #OPT #OPSCLE ^property[=].valueInteger = 34
* #PRC #OPT #OPSCLE ^property[+].code = #prc-exam-board-name
* #PRC #OPT #OPSCLE ^property[=].valueString = "Optometry"
* #PRC #PHA #PhLE "Pharmacists Licensure Examination"
* #PRC #PHA #PhLE ^property[0].code = #concept-kind
* #PRC #PHA #PhLE ^property[=].valueString = "examination"
* #PRC #PHA #PhLE ^property[+].code = #prc-exam-list-number
* #PRC #PHA #PhLE ^property[=].valueInteger = 35
* #PRC #PHA #PhLE ^property[+].code = #prc-exam-board-name
* #PRC #PHA #PhLE ^property[=].valueString = "Pharmacy"
* #PRC #PHT #PTLE "Physical Therapists Licensure Examination"
* #PRC #PHT #PTLE ^property[0].code = #concept-kind
* #PRC #PHT #PTLE ^property[=].valueString = "examination"
* #PRC #PHT #PTLE ^property[+].code = #prc-exam-list-number
* #PRC #PHT #PTLE ^property[=].valueInteger = 36
* #PRC #PHT #PTLE ^property[+].code = #prc-exam-board-name
* #PRC #PHT #PTLE ^property[=].valueString = "Physical Therapy"
* #PRC #OCT #OTLE "Occupational Therapists Licensure Examination"
* #PRC #OCT #OTLE ^property[0].code = #concept-kind
* #PRC #OCT #OTLE ^property[=].valueString = "examination"
* #PRC #OCT #OTLE ^property[+].code = #prc-exam-list-number
* #PRC #OCT #OTLE ^property[=].valueInteger = 37
* #PRC #OCT #OTLE ^property[+].code = #prc-exam-board-name
* #PRC #OCT #OTLE ^property[=].valueString = "Occupational Therapy"
* #PRC #PTR #LEPT "Licensure Examination for Professional Teachers"
* #PRC #PTR #LEPT ^property[0].code = #concept-kind
* #PRC #PTR #LEPT ^property[=].valueString = "examination"
* #PRC #PTR #LEPT ^property[+].code = #prc-exam-list-number
* #PRC #PTR #LEPT ^property[=].valueInteger = 38
* #PRC #PTR #LEPT ^property[+].code = #prc-exam-board-name
* #PRC #PTR #LEPT ^property[=].valueString = "Professional Teachers"
* #PRC #PSYCH #PsLE "Psychologists Licensure Examination"
* #PRC #PSYCH #PsLE ^property[0].code = #concept-kind
* #PRC #PSYCH #PsLE ^property[=].valueString = "examination"
* #PRC #PSYCH #PsLE ^property[+].code = #prc-exam-list-number
* #PRC #PSYCH #PsLE ^property[=].valueInteger = 39
* #PRC #PSYCH #PsLE ^property[+].code = #prc-exam-board-name
* #PRC #PSYCH #PsLE ^property[=].valueString = "Psychology"
* #PRC #PSYCH #PmLE "Psychometricians Licensure Examination"
* #PRC #PSYCH #PmLE ^property[0].code = #concept-kind
* #PRC #PSYCH #PmLE ^property[=].valueString = "examination"
* #PRC #PSYCH #PmLE ^property[+].code = #prc-exam-list-number
* #PRC #PSYCH #PmLE ^property[=].valueInteger = 39
* #PRC #PSYCH #PmLE ^property[+].code = #prc-exam-board-name
* #PRC #PSYCH #PmLE ^property[=].valueString = "Psychology"
* #PRC #RAD #RTLE "Radiologic Technologists Licensure Examination"
* #PRC #RAD #RTLE ^property[0].code = #concept-kind
* #PRC #RAD #RTLE ^property[=].valueString = "examination"
* #PRC #RAD #RTLE ^property[+].code = #prc-exam-list-number
* #PRC #RAD #RTLE ^property[=].valueInteger = 40
* #PRC #RAD #RTLE ^property[+].code = #prc-exam-board-name
* #PRC #RAD #RTLE ^property[=].valueString = "Radiologic Technology"
* #PRC #RAD #XTLE "X-Ray Technologists Licensure Examination"
* #PRC #RAD #XTLE ^property[0].code = #concept-kind
* #PRC #RAD #XTLE ^property[=].valueString = "examination"
* #PRC #RAD #XTLE ^property[+].code = #prc-exam-list-number
* #PRC #RAD #XTLE ^property[=].valueInteger = 40
* #PRC #RAD #XTLE ^property[+].code = #prc-exam-board-name
* #PRC #RAD #XTLE ^property[=].valueString = "Radiologic Technology"
* #PRC #RAE #REALE "Real Estate Appraisers Licensure Examination"
* #PRC #RAE #REALE ^property[0].code = #concept-kind
* #PRC #RAE #REALE ^property[=].valueString = "examination"
* #PRC #RAE #REALE ^property[+].code = #prc-exam-list-number
* #PRC #RAE #REALE ^property[=].valueInteger = 41
* #PRC #RAE #REALE ^property[+].code = #prc-exam-board-name
* #PRC #RAE #REALE ^property[=].valueString = "Real Estate Service"
* #PRC #RAE #REBLE "Real Estate Brokers Licensure Examination"
* #PRC #RAE #REBLE ^property[0].code = #concept-kind
* #PRC #RAE #REBLE ^property[=].valueString = "examination"
* #PRC #RAE #REBLE ^property[+].code = #prc-exam-list-number
* #PRC #RAE #REBLE ^property[=].valueInteger = 41
* #PRC #RAE #REBLE ^property[+].code = #prc-exam-board-name
* #PRC #RAE #REBLE ^property[=].valueString = "Real Estate Service"
* #PRC #RAE #RECLE "Real Estate Consultants Licensure Examination"
* #PRC #RAE #RECLE ^property[0].code = #concept-kind
* #PRC #RAE #RECLE ^property[=].valueString = "examination"
* #PRC #RAE #RECLE ^property[+].code = #prc-exam-list-number
* #PRC #RAE #RECLE ^property[=].valueInteger = 41
* #PRC #RAE #RECLE ^property[+].code = #prc-exam-board-name
* #PRC #RAE #RECLE ^property[=].valueString = "Real Estate Service"
* #PRC #RES #ResTLE "Respiratory Therapists Licensure Examination"
* #PRC #RES #ResTLE ^property[0].code = #concept-kind
* #PRC #RES #ResTLE ^property[=].valueString = "examination"
* #PRC #RES #ResTLE ^property[+].code = #prc-exam-list-number
* #PRC #RES #ResTLE ^property[=].valueInteger = 42
* #PRC #RES #ResTLE ^property[+].code = #prc-exam-board-name
* #PRC #RES #ResTLE ^property[=].valueString = "Respiratory Therapy"
* #PRC #SAN #SELE "Sanitary Engineers Licensure Examination"
* #PRC #SAN #SELE ^property[0].code = #concept-kind
* #PRC #SAN #SELE ^property[=].valueString = "examination"
* #PRC #SAN #SELE ^property[+].code = #prc-exam-list-number
* #PRC #SAN #SELE ^property[=].valueInteger = 43
* #PRC #SAN #SELE ^property[+].code = #prc-exam-board-name
* #PRC #SAN #SELE ^property[=].valueString = "Sanitary Engineering"
* #PRC #OSW #SWLE "Social Workers Licensure Examination"
* #PRC #OSW #SWLE ^property[0].code = #concept-kind
* #PRC #OSW #SWLE ^property[=].valueString = "examination"
* #PRC #OSW #SWLE ^property[+].code = #prc-exam-list-number
* #PRC #OSW #SWLE ^property[=].valueInteger = 44
* #PRC #OSW #SWLE ^property[+].code = #prc-exam-board-name
* #PRC #OSW #SWLE ^property[=].valueString = "Social Workers"
* #PRC #board-speech-language-pathology #SLPLE "Speech-Language Pathologists Licensure Examination"
* #PRC #board-speech-language-pathology #SLPLE ^property[0].code = #concept-kind
* #PRC #board-speech-language-pathology #SLPLE ^property[=].valueString = "examination"
* #PRC #board-speech-language-pathology #SLPLE ^property[+].code = #prc-exam-list-number
* #PRC #board-speech-language-pathology #SLPLE ^property[=].valueInteger = 45
* #PRC #board-speech-language-pathology #SLPLE ^property[+].code = #prc-exam-board-name
* #PRC #board-speech-language-pathology #SLPLE ^property[=].valueString = "Speech-Language Pathology"
* #PRC #VET #VLE "Veterinarians Licensure Examination"
* #PRC #VET #VLE ^property[0].code = #concept-kind
* #PRC #VET #VLE ^property[=].valueString = "examination"
* #PRC #VET #VLE ^property[+].code = #prc-exam-list-number
* #PRC #VET #VLE ^property[=].valueInteger = 46
* #PRC #VET #VLE ^property[+].code = #prc-exam-board-name
* #PRC #VET #VLE ^property[=].valueString = "Veterinary Medicine"
