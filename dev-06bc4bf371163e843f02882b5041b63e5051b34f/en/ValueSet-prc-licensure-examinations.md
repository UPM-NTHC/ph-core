# PRC Licensure Examinations ValueSet - Draft PH Core Implementation Guide v0.2.1

## ValueSet: PRC Licensure Examinations ValueSet (Experimental) 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "prc-licensure-examinations",
  "url" : "https://fhir.doh.gov.ph/phcore/ValueSet/prc-licensure-examinations",
  "version" : "0.2.1",
  "name" : "PRCLicensureExaminationsVS",
  "title" : "PRC Licensure Examinations ValueSet",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-10-17",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "The 59 PRC examination and assessment codes in the standardized nomenclature list posted 18 March 2026. Codes are examination identifiers, not professional qualifications or license numbers.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PH",
      "display" : "Philippines"
    }]
  }],
  "purpose" : "Use for an examination or assessment offered by the PRC; do not use as a qualification code.",
  "compose" : {
    "include" : [{
      "system" : "https://fhir.doh.gov.ph/phcore/CodeSystem/prc",
      "concept" : [{
        "code" : "AELE",
        "display" : "Aeronautical Engineers Licensure Examination"
      },
      {
        "code" : "ABELE",
        "display" : "Agricultural and Biosystems Engineers Licensure Examination"
      },
      {
        "code" : "AgLE",
        "display" : "Agriculturists Licensure Examination"
      },
      {
        "code" : "LEA",
        "display" : "Licensure Examination for Architects"
      },
      {
        "code" : "CPALE",
        "display" : "Certified Public Accountants Licensure Examination"
      },
      {
        "code" : "ChELE",
        "display" : "Chemical Engineers Licensure Examination"
      },
      {
        "code" : "CLE",
        "display" : "Chemists Licensure Examination"
      },
      {
        "code" : "CTLE",
        "display" : "Chemical Technicians Licensure Examination"
      },
      {
        "code" : "CELE",
        "display" : "Civil Engineers Licensure Examination"
      },
      {
        "code" : "LEC",
        "display" : "Licensure Examination for Criminologists"
      },
      {
        "code" : "CuBLE",
        "display" : "Customs Brokers Licensure Examination"
      },
      {
        "code" : "DLE",
        "display" : "Dentists Licensure Examination"
      },
      {
        "code" : "DHLE",
        "display" : "Dental Hygienists Licensure Examination"
      },
      {
        "code" : "DTLE",
        "display" : "Dental Technologists Licensure Examination"
      },
      {
        "code" : "REELE",
        "display" : "Registered Electrical Engineers Licensure Examination"
      },
      {
        "code" : "RMELE",
        "display" : "Registered Master Electricians Licensure Examination"
      },
      {
        "code" : "EELE",
        "display" : "Electronics Engineers Licensure Examination"
      },
      {
        "code" : "ETLE",
        "display" : "Electronics Technicians Licensure Examination"
      },
      {
        "code" : "EnPLE",
        "display" : "Environmental Planners Licensure Examination"
      },
      {
        "code" : "FPLE",
        "display" : "Fisheries Professionals Licensure Examination"
      },
      {
        "code" : "PFTLE",
        "display" : "Professional Food Technologists Licensure Examination"
      },
      {
        "code" : "PFLE",
        "display" : "Professional Foresters Licensure Examination"
      },
      {
        "code" : "GELE",
        "display" : "Geodetic Engineers Licensure Examination"
      },
      {
        "code" : "GLE",
        "display" : "Geologists Licensure Examination"
      },
      {
        "code" : "GCLE",
        "display" : "Guidance Counselors Licensure Examination"
      },
      {
        "code" : "LEID",
        "display" : "Licensure Examination for Interior Designers"
      },
      {
        "code" : "LALE",
        "display" : "Landscape Architects Licensure Examination"
      },
      {
        "code" : "LLE",
        "display" : "Librarians Licensure Examination"
      },
      {
        "code" : "MPLE",
        "display" : "Master Plumbers Licensure Examination"
      },
      {
        "code" : "MELE",
        "display" : "Mechanical Engineers Licensure Examination"
      },
      {
        "code" : "CPMLE",
        "display" : "Certified Plant Mechanics Licensure Examination"
      },
      {
        "code" : "PME-OETE",
        "display" : "Professional Mechanical Engineers Oral Examination/Technical Evaluation"
      },
      {
        "code" : "MTLE",
        "display" : "Medical Technologists Licensure Examination"
      },
      {
        "code" : "PLE",
        "display" : "Physicians Licensure Examination"
      },
      {
        "code" : "QA-FMP",
        "display" : "Qualifying Assessment-Foreign Medical Professionals"
      },
      {
        "code" : "MetELE",
        "display" : "Metallurgical Engineers Licensure Examination"
      },
      {
        "code" : "MidLE",
        "display" : "Midwives Licensure Examination"
      },
      {
        "code" : "MinELE",
        "display" : "Mining Engineers Licensure Examination"
      },
      {
        "code" : "NALE",
        "display" : "Naval Architects Licensure Examination"
      },
      {
        "code" : "NLE",
        "display" : "Nurses Licensure Examination"
      },
      {
        "code" : "NDLE",
        "display" : "Nutritionists-Dietitians Licensure Examination"
      },
      {
        "code" : "OLE",
        "display" : "Optometrists Licensure Examination"
      },
      {
        "code" : "OPSCLE",
        "display" : "Ocular Pharmacologists Special Certification Licensure Examination"
      },
      {
        "code" : "PhLE",
        "display" : "Pharmacists Licensure Examination"
      },
      {
        "code" : "PTLE",
        "display" : "Physical Therapists Licensure Examination"
      },
      {
        "code" : "OTLE",
        "display" : "Occupational Therapists Licensure Examination"
      },
      {
        "code" : "LEPT",
        "display" : "Licensure Examination for Professional Teachers"
      },
      {
        "code" : "PsLE",
        "display" : "Psychologists Licensure Examination"
      },
      {
        "code" : "PmLE",
        "display" : "Psychometricians Licensure Examination"
      },
      {
        "code" : "RTLE",
        "display" : "Radiologic Technologists Licensure Examination"
      },
      {
        "code" : "XTLE",
        "display" : "X-Ray Technologists Licensure Examination"
      },
      {
        "code" : "REALE",
        "display" : "Real Estate Appraisers Licensure Examination"
      },
      {
        "code" : "REBLE",
        "display" : "Real Estate Brokers Licensure Examination"
      },
      {
        "code" : "RECLE",
        "display" : "Real Estate Consultants Licensure Examination"
      },
      {
        "code" : "ResTLE",
        "display" : "Respiratory Therapists Licensure Examination"
      },
      {
        "code" : "SELE",
        "display" : "Sanitary Engineers Licensure Examination"
      },
      {
        "code" : "SWLE",
        "display" : "Social Workers Licensure Examination"
      },
      {
        "code" : "SLPLE",
        "display" : "Speech-Language Pathologists Licensure Examination"
      },
      {
        "code" : "VLE",
        "display" : "Veterinarians Licensure Examination"
      }]
    }]
  }
}

```
