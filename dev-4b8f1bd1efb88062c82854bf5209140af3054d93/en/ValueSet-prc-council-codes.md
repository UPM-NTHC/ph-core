# PRC Council Codes ValueSet - Draft PH Core Implementation Guide v0.2.1

## ValueSet: PRC Council Codes ValueSet (Experimental) 

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
  "id" : "prc-council-codes",
  "url" : "https://fhir.doh.gov.ph/phcore/ValueSet/prc-council-codes",
  "version" : "0.2.1",
  "name" : "PRCCouncilCodesVS",
  "title" : "PRC Council Codes ValueSet",
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
  "description" : "The Council and Code entries in the PRC CPDAS profession table as of 12 January 2021. The source says its profession codes are used for attendance sheets at accredited CPD programs.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PH",
      "display" : "Philippines"
    }]
  }],
  "purpose" : "Use for the CPD Council classification shown in the dated PRC CPDAS table.",
  "compose" : {
    "include" : [{
      "system" : "https://fhir.doh.gov.ph/phcore/CodeSystem/prc",
      "concept" : [{
        "code" : "ACC",
        "display" : "Accountancy"
      },
      {
        "code" : "AER",
        "display" : "Aeronautical Engineering"
      },
      {
        "code" : "ABE",
        "display" : "Agricultural & Biosystems Engineering"
      },
      {
        "code" : "AGR",
        "display" : "Agriculture"
      },
      {
        "code" : "ARC",
        "display" : "Architecture"
      },
      {
        "code" : "CHE",
        "display" : "Chemical Engineering"
      },
      {
        "code" : "CHM",
        "display" : "Chemistry"
      },
      {
        "code" : "OCE",
        "display" : "Civil Engineering"
      },
      {
        "code" : "CRM",
        "display" : "Criminology"
      },
      {
        "code" : "OCB",
        "display" : "Customs Broker"
      },
      {
        "code" : "DNT",
        "display" : "Dentistry"
      },
      {
        "code" : "OEE",
        "display" : "Electrical Engineering"
      },
      {
        "code" : "ECE",
        "display" : "Electronics Engineering"
      },
      {
        "code" : "OEP",
        "display" : "Environmental Planning"
      },
      {
        "code" : "FIS",
        "display" : "Fisheries"
      },
      {
        "code" : "FRT",
        "display" : "Forestry"
      },
      {
        "code" : "OGE",
        "display" : "Geodetic Engineering"
      },
      {
        "code" : "GEO",
        "display" : "Geology"
      },
      {
        "code" : "OGC",
        "display" : "Guidance & Counseling"
      },
      {
        "code" : "OID",
        "display" : "Interior Design"
      },
      {
        "code" : "OLA",
        "display" : "Landscape Architecture"
      },
      {
        "code" : "LIB",
        "display" : "Librarian"
      },
      {
        "code" : "OMP",
        "display" : "Master Plumbing"
      },
      {
        "code" : "MEE",
        "display" : "Mechanical Engineering"
      },
      {
        "code" : "OMT",
        "display" : "Medical Technology"
      },
      {
        "code" : "MED",
        "display" : "Medicine"
      },
      {
        "code" : "OME",
        "display" : "Metallurgical Engineering"
      },
      {
        "code" : "MDW",
        "display" : "Midwifery"
      },
      {
        "code" : "MIN",
        "display" : "Mining Engineering"
      },
      {
        "code" : "NAME",
        "display" : "Naval Architecture"
      },
      {
        "code" : "NRS",
        "display" : "Nursing"
      },
      {
        "code" : "NAD",
        "display" : "Nutrition & Dietetics"
      },
      {
        "code" : "OCT",
        "display" : "Occupational Therapy"
      },
      {
        "code" : "OPT",
        "display" : "Optometry"
      },
      {
        "code" : "PHA",
        "display" : "Pharmacy"
      },
      {
        "code" : "PHT",
        "display" : "Physical Therapy"
      },
      {
        "code" : "PTR",
        "display" : "Professional Teachers"
      },
      {
        "code" : "PSYCH",
        "display" : "Psychology"
      },
      {
        "code" : "RAD",
        "display" : "Radiologic Technology"
      },
      {
        "code" : "RAE",
        "display" : "Real Estate Service"
      },
      {
        "code" : "RES",
        "display" : "Respiratory Therapy"
      },
      {
        "code" : "SAN",
        "display" : "Sanitary Engineering"
      },
      {
        "code" : "OSW",
        "display" : "Social Workers"
      },
      {
        "code" : "VET",
        "display" : "Veterinary Medicine"
      }]
    }]
  }
}

```
