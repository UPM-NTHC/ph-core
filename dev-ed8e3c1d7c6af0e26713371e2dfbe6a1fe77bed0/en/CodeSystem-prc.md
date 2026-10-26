# PRC CodeSystem - Draft PH Core Implementation Guide v0.2.1

## CodeSystem: PRC CodeSystem 

This Code system is referenced in the definition of the following value sets:

* [PRC All Codes ValueSet](ValueSet-prc-all-codes.md)
* [PRC Council Codes ValueSet](ValueSet-prc-council-codes.md)
* [PRC Licensure Examinations ValueSet](ValueSet-prc-licensure-examinations.md)
* [PRC Profession Codes ValueSet](ValueSet-prc-profession-codes.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "prc",
  "url" : "https://fhir.doh.gov.ph/phcore/CodeSystem/prc",
  "version" : "0.2.1",
  "name" : "PRCCodeSystem",
  "title" : "PRC CodeSystem",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-10-17",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "Consolidated PH Core terminology for PRC CPDAS Council codes, CPDAS numerical profession codes, and PRC licensure examination codes. CPDAS council and profession concepts reflect the FAQ as of 12 January 2021; PRC examination concepts reflect the standardized list posted 18 March 2026. The hierarchy groups related concepts and does not assert an is-a relationship. The 2021 CPDAS table says its numeric profession codes are for CPD attendance sheets and is subject to regular updating. The 2026 Food Technology and Speech-Language Pathology examination boards have abstract local grouping nodes because the 2021 CPDAS table has no council codes for them; those nodes are not CouncilCode values.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PH",
      "display" : "Philippines"
    }]
  }],
  "purpose" : "Provide one grouped terminology namespace while preserving PRC council codes, numerical profession codes, and examination codes as distinct concepts.",
  "caseSensitive" : true,
  "valueSet" : "https://fhir.doh.gov.ph/phcore/ValueSet/prc-all-codes",
  "hierarchyMeaning" : "grouped-by",
  "content" : "complete",
  "count" : 172,
  "property" : [{
    "code" : "concept-kind",
    "uri" : "https://fhir.doh.gov.ph/phcore/CodeSystem/prc#concept-kind",
    "description" : "Concept category: root, council, profession, examination, or structural-board-group.",
    "type" : "string"
  },
  {
    "code" : "notSelectable",
    "uri" : "http://hl7.org/fhir/concept-properties#notSelectable",
    "description" : "The concept is a structural grouping node and is not intended to be selected directly.",
    "type" : "boolean"
  },
  {
    "code" : "cpdas-row-number",
    "uri" : "https://fhir.doh.gov.ph/phcore/CodeSystem/prc#cpdas-row-number",
    "description" : "The CPDAS table No. for a numerical profession concept; this is a row reference, not the code.",
    "type" : "integer"
  },
  {
    "code" : "prc-exam-list-number",
    "uri" : "https://fhir.doh.gov.ph/phcore/CodeSystem/prc#prc-exam-list-number",
    "description" : "The PRC examination list number; it can repeat for multiple examinations associated with one board.",
    "type" : "integer"
  },
  {
    "code" : "prc-exam-board-name",
    "uri" : "https://fhir.doh.gov.ph/phcore/CodeSystem/prc#prc-exam-board-name",
    "description" : "The exact PRC board name from the 2026 examination list.",
    "type" : "string"
  }],
  "concept" : [{
    "code" : "PRC",
    "display" : "Professional Regulation Commission",
    "property" : [{
      "code" : "concept-kind",
      "valueString" : "root"
    },
    {
      "code" : "notSelectable",
      "valueBoolean" : true
    }],
    "concept" : [{
      "code" : "ACC",
      "display" : "Accountancy",
      "property" : [{
        "code" : "concept-kind",
        "valueString" : "council"
      }],
      "concept" : [{
        "code" : "100",
        "display" : "Certified Public Accountant",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "profession"
        },
        {
          "code" : "cpdas-row-number",
          "valueInteger" : 1
        }]
      },
      {
        "code" : "CPALE",
        "display" : "Certified Public Accountants Licensure Examination",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "examination"
        },
        {
          "code" : "prc-exam-list-number",
          "valueInteger" : 5
        },
        {
          "code" : "prc-exam-board-name",
          "valueString" : "Accountancy"
        }]
      }]
    },
    {
      "code" : "AER",
      "display" : "Aeronautical Engineering",
      "property" : [{
        "code" : "concept-kind",
        "valueString" : "council"
      }],
      "concept" : [{
        "code" : "3400",
        "display" : "Aeronautical Engineer",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "profession"
        },
        {
          "code" : "cpdas-row-number",
          "valueInteger" : 2
        }]
      },
      {
        "code" : "AELE",
        "display" : "Aeronautical Engineers Licensure Examination",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "examination"
        },
        {
          "code" : "prc-exam-list-number",
          "valueInteger" : 1
        },
        {
          "code" : "prc-exam-board-name",
          "valueString" : "Aeronautical Engineering"
        }]
      }]
    },
    {
      "code" : "ABE",
      "display" : "Agricultural & Biosystems Engineering",
      "property" : [{
        "code" : "concept-kind",
        "valueString" : "council"
      }],
      "concept" : [{
        "code" : "200",
        "display" : "Agricultural And Biosystems Engineer",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "profession"
        },
        {
          "code" : "cpdas-row-number",
          "valueInteger" : 3
        }]
      },
      {
        "code" : "ABELE",
        "display" : "Agricultural and Biosystems Engineers Licensure Examination",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "examination"
        },
        {
          "code" : "prc-exam-list-number",
          "valueInteger" : 2
        },
        {
          "code" : "prc-exam-board-name",
          "valueString" : "Agricultural and Biosystems Engineering"
        }]
      }]
    },
    {
      "code" : "AGR",
      "display" : "Agriculture",
      "property" : [{
        "code" : "concept-kind",
        "valueString" : "council"
      }],
      "concept" : [{
        "code" : "4200",
        "display" : "Agriculturist",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "profession"
        },
        {
          "code" : "cpdas-row-number",
          "valueInteger" : 4
        }]
      },
      {
        "code" : "AgLE",
        "display" : "Agriculturists Licensure Examination",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "examination"
        },
        {
          "code" : "prc-exam-list-number",
          "valueInteger" : 3
        },
        {
          "code" : "prc-exam-board-name",
          "valueString" : "Agriculture"
        }]
      }]
    },
    {
      "code" : "ARC",
      "display" : "Architecture",
      "property" : [{
        "code" : "concept-kind",
        "valueString" : "council"
      }],
      "concept" : [{
        "code" : "300",
        "display" : "Architect",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "profession"
        },
        {
          "code" : "cpdas-row-number",
          "valueInteger" : 5
        }]
      },
      {
        "code" : "LEA",
        "display" : "Licensure Examination for Architects",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "examination"
        },
        {
          "code" : "prc-exam-list-number",
          "valueInteger" : 4
        },
        {
          "code" : "prc-exam-board-name",
          "valueString" : "Architecture"
        }]
      }]
    },
    {
      "code" : "CHE",
      "display" : "Chemical Engineering",
      "property" : [{
        "code" : "concept-kind",
        "valueString" : "council"
      }],
      "concept" : [{
        "code" : "410",
        "display" : "Chemical Engineer",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "profession"
        },
        {
          "code" : "cpdas-row-number",
          "valueInteger" : 6
        }]
      },
      {
        "code" : "ChELE",
        "display" : "Chemical Engineers Licensure Examination",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "examination"
        },
        {
          "code" : "prc-exam-list-number",
          "valueInteger" : 6
        },
        {
          "code" : "prc-exam-board-name",
          "valueString" : "Chemical Engineering"
        }]
      }]
    },
    {
      "code" : "CHM",
      "display" : "Chemistry",
      "property" : [{
        "code" : "concept-kind",
        "valueString" : "council"
      }],
      "concept" : [{
        "code" : "510",
        "display" : "Chemist",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "profession"
        },
        {
          "code" : "cpdas-row-number",
          "valueInteger" : 7
        }]
      },
      {
        "code" : "520",
        "display" : "Chemical Technician",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "profession"
        },
        {
          "code" : "cpdas-row-number",
          "valueInteger" : 8
        }]
      },
      {
        "code" : "CLE",
        "display" : "Chemists Licensure Examination",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "examination"
        },
        {
          "code" : "prc-exam-list-number",
          "valueInteger" : 7
        },
        {
          "code" : "prc-exam-board-name",
          "valueString" : "Chemistry"
        }]
      },
      {
        "code" : "CTLE",
        "display" : "Chemical Technicians Licensure Examination",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "examination"
        },
        {
          "code" : "prc-exam-list-number",
          "valueInteger" : 7
        },
        {
          "code" : "prc-exam-board-name",
          "valueString" : "Chemistry"
        }]
      }]
    },
    {
      "code" : "OCE",
      "display" : "Civil Engineering",
      "property" : [{
        "code" : "concept-kind",
        "valueString" : "council"
      }],
      "concept" : [{
        "code" : "600",
        "display" : "Civil Engineer",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "profession"
        },
        {
          "code" : "cpdas-row-number",
          "valueInteger" : 9
        }]
      },
      {
        "code" : "CELE",
        "display" : "Civil Engineers Licensure Examination",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "examination"
        },
        {
          "code" : "prc-exam-list-number",
          "valueInteger" : 8
        },
        {
          "code" : "prc-exam-board-name",
          "valueString" : "Civil Engineering"
        }]
      }]
    },
    {
      "code" : "CRM",
      "display" : "Criminology",
      "property" : [{
        "code" : "concept-kind",
        "valueString" : "council"
      }],
      "concept" : [{
        "code" : "3500",
        "display" : "Criminologist",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "profession"
        },
        {
          "code" : "cpdas-row-number",
          "valueInteger" : 10
        }]
      },
      {
        "code" : "LEC",
        "display" : "Licensure Examination for Criminologists",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "examination"
        },
        {
          "code" : "prc-exam-list-number",
          "valueInteger" : 9
        },
        {
          "code" : "prc-exam-board-name",
          "valueString" : "Criminology"
        }]
      }]
    },
    {
      "code" : "OCB",
      "display" : "Customs Broker",
      "property" : [{
        "code" : "concept-kind",
        "valueString" : "council"
      }],
      "concept" : [{
        "code" : "800",
        "display" : "Customs Broker",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "profession"
        },
        {
          "code" : "cpdas-row-number",
          "valueInteger" : 11
        }]
      },
      {
        "code" : "CuBLE",
        "display" : "Customs Brokers Licensure Examination",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "examination"
        },
        {
          "code" : "prc-exam-list-number",
          "valueInteger" : 10
        },
        {
          "code" : "prc-exam-board-name",
          "valueString" : "Customs Brokers"
        }]
      }]
    },
    {
      "code" : "DNT",
      "display" : "Dentistry",
      "property" : [{
        "code" : "concept-kind",
        "valueString" : "council"
      }],
      "concept" : [{
        "code" : "910",
        "display" : "Dentist",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "profession"
        },
        {
          "code" : "cpdas-row-number",
          "valueInteger" : 12
        }]
      },
      {
        "code" : "920",
        "display" : "Dental Hygienist",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "profession"
        },
        {
          "code" : "cpdas-row-number",
          "valueInteger" : 13
        }]
      },
      {
        "code" : "930",
        "display" : "Dental Technologist",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "profession"
        },
        {
          "code" : "cpdas-row-number",
          "valueInteger" : 14
        }]
      },
      {
        "code" : "DLE",
        "display" : "Dentists Licensure Examination",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "examination"
        },
        {
          "code" : "prc-exam-list-number",
          "valueInteger" : 11
        },
        {
          "code" : "prc-exam-board-name",
          "valueString" : "Dentistry"
        }]
      },
      {
        "code" : "DHLE",
        "display" : "Dental Hygienists Licensure Examination",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "examination"
        },
        {
          "code" : "prc-exam-list-number",
          "valueInteger" : 11
        },
        {
          "code" : "prc-exam-board-name",
          "valueString" : "Dentistry"
        }]
      },
      {
        "code" : "DTLE",
        "display" : "Dental Technologists Licensure Examination",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "examination"
        },
        {
          "code" : "prc-exam-list-number",
          "valueInteger" : 11
        },
        {
          "code" : "prc-exam-board-name",
          "valueString" : "Dentistry"
        }]
      }]
    },
    {
      "code" : "OEE",
      "display" : "Electrical Engineering",
      "property" : [{
        "code" : "concept-kind",
        "valueString" : "council"
      }],
      "concept" : [{
        "code" : "1100",
        "display" : "Registered Electrical Engineer",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "profession"
        },
        {
          "code" : "cpdas-row-number",
          "valueInteger" : 15
        }]
      },
      {
        "code" : "1110",
        "display" : "Professional Electrical Engineer",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "profession"
        },
        {
          "code" : "cpdas-row-number",
          "valueInteger" : 16
        }]
      },
      {
        "code" : "1150",
        "display" : "Registered Master Electrician",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "profession"
        },
        {
          "code" : "cpdas-row-number",
          "valueInteger" : 17
        }]
      },
      {
        "code" : "REELE",
        "display" : "Registered Electrical Engineers Licensure Examination",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "examination"
        },
        {
          "code" : "prc-exam-list-number",
          "valueInteger" : 12
        },
        {
          "code" : "prc-exam-board-name",
          "valueString" : "Electrical Engineering"
        }]
      },
      {
        "code" : "RMELE",
        "display" : "Registered Master Electricians Licensure Examination",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "examination"
        },
        {
          "code" : "prc-exam-list-number",
          "valueInteger" : 12
        },
        {
          "code" : "prc-exam-board-name",
          "valueString" : "Electrical Engineering"
        }]
      }]
    },
    {
      "code" : "ECE",
      "display" : "Electronics Engineering",
      "property" : [{
        "code" : "concept-kind",
        "valueString" : "council"
      }],
      "concept" : [{
        "code" : "1200",
        "display" : "Electronics And Communications Engineer",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "profession"
        },
        {
          "code" : "cpdas-row-number",
          "valueInteger" : 18
        }]
      },
      {
        "code" : "1201",
        "display" : "Professional Electronics Engineer",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "profession"
        },
        {
          "code" : "cpdas-row-number",
          "valueInteger" : 19
        }]
      },
      {
        "code" : "1202",
        "display" : "Electronics Engineer",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "profession"
        },
        {
          "code" : "cpdas-row-number",
          "valueInteger" : 20
        }]
      },
      {
        "code" : "1203",
        "display" : "Electronics Technician",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "profession"
        },
        {
          "code" : "cpdas-row-number",
          "valueInteger" : 21
        }]
      },
      {
        "code" : "EELE",
        "display" : "Electronics Engineers Licensure Examination",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "examination"
        },
        {
          "code" : "prc-exam-list-number",
          "valueInteger" : 13
        },
        {
          "code" : "prc-exam-board-name",
          "valueString" : "Electronics Engineering"
        }]
      },
      {
        "code" : "ETLE",
        "display" : "Electronics Technicians Licensure Examination",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "examination"
        },
        {
          "code" : "prc-exam-list-number",
          "valueInteger" : 13
        },
        {
          "code" : "prc-exam-board-name",
          "valueString" : "Electronics Engineering"
        }]
      }]
    },
    {
      "code" : "OEP",
      "display" : "Environmental Planning",
      "property" : [{
        "code" : "concept-kind",
        "valueString" : "council"
      }],
      "concept" : [{
        "code" : "3600",
        "display" : "Environmental Planner",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "profession"
        },
        {
          "code" : "cpdas-row-number",
          "valueInteger" : 22
        }]
      },
      {
        "code" : "EnPLE",
        "display" : "Environmental Planners Licensure Examination",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "examination"
        },
        {
          "code" : "prc-exam-list-number",
          "valueInteger" : 14
        },
        {
          "code" : "prc-exam-board-name",
          "valueString" : "Environmental Planning"
        }]
      }]
    },
    {
      "code" : "FIS",
      "display" : "Fisheries",
      "property" : [{
        "code" : "concept-kind",
        "valueString" : "council"
      }],
      "concept" : [{
        "code" : "4300",
        "display" : "Fisheries Technologist",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "profession"
        },
        {
          "code" : "cpdas-row-number",
          "valueInteger" : 23
        }]
      },
      {
        "code" : "FPLE",
        "display" : "Fisheries Professionals Licensure Examination",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "examination"
        },
        {
          "code" : "prc-exam-list-number",
          "valueInteger" : 15
        },
        {
          "code" : "prc-exam-board-name",
          "valueString" : "Fisheries"
        }]
      }]
    },
    {
      "code" : "FRT",
      "display" : "Forestry",
      "property" : [{
        "code" : "concept-kind",
        "valueString" : "council"
      }],
      "concept" : [{
        "code" : "1300",
        "display" : "Forester",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "profession"
        },
        {
          "code" : "cpdas-row-number",
          "valueInteger" : 24
        }]
      },
      {
        "code" : "PFLE",
        "display" : "Professional Foresters Licensure Examination",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "examination"
        },
        {
          "code" : "prc-exam-list-number",
          "valueInteger" : 17
        },
        {
          "code" : "prc-exam-board-name",
          "valueString" : "Foresters"
        }]
      }]
    },
    {
      "code" : "OGE",
      "display" : "Geodetic Engineering",
      "property" : [{
        "code" : "concept-kind",
        "valueString" : "council"
      }],
      "concept" : [{
        "code" : "1410",
        "display" : "Geodetic Engineer",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "profession"
        },
        {
          "code" : "cpdas-row-number",
          "valueInteger" : 25
        }]
      },
      {
        "code" : "GELE",
        "display" : "Geodetic Engineers Licensure Examination",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "examination"
        },
        {
          "code" : "prc-exam-list-number",
          "valueInteger" : 18
        },
        {
          "code" : "prc-exam-board-name",
          "valueString" : "Geodetic Engineering"
        }]
      }]
    },
    {
      "code" : "GEO",
      "display" : "Geology",
      "property" : [{
        "code" : "concept-kind",
        "valueString" : "council"
      }],
      "concept" : [{
        "code" : "1510",
        "display" : "Geologist",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "profession"
        },
        {
          "code" : "cpdas-row-number",
          "valueInteger" : 26
        }]
      },
      {
        "code" : "1520",
        "display" : "Geologic Aide",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "profession"
        },
        {
          "code" : "cpdas-row-number",
          "valueInteger" : 27
        }]
      },
      {
        "code" : "GLE",
        "display" : "Geologists Licensure Examination",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "examination"
        },
        {
          "code" : "prc-exam-list-number",
          "valueInteger" : 19
        },
        {
          "code" : "prc-exam-board-name",
          "valueString" : "Geology"
        }]
      }]
    },
    {
      "code" : "OGC",
      "display" : "Guidance & Counseling",
      "property" : [{
        "code" : "concept-kind",
        "valueString" : "council"
      }],
      "concept" : [{
        "code" : "4100",
        "display" : "Guidance Counselor",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "profession"
        },
        {
          "code" : "cpdas-row-number",
          "valueInteger" : 28
        }]
      },
      {
        "code" : "GCLE",
        "display" : "Guidance Counselors Licensure Examination",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "examination"
        },
        {
          "code" : "prc-exam-list-number",
          "valueInteger" : 20
        },
        {
          "code" : "prc-exam-board-name",
          "valueString" : "Guidance and Counseling"
        }]
      }]
    },
    {
      "code" : "OID",
      "display" : "Interior Design",
      "property" : [{
        "code" : "concept-kind",
        "valueString" : "council"
      }],
      "concept" : [{
        "code" : "310",
        "display" : "Interior Designer",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "profession"
        },
        {
          "code" : "cpdas-row-number",
          "valueInteger" : 29
        }]
      },
      {
        "code" : "LEID",
        "display" : "Licensure Examination for Interior Designers",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "examination"
        },
        {
          "code" : "prc-exam-list-number",
          "valueInteger" : 21
        },
        {
          "code" : "prc-exam-board-name",
          "valueString" : "Interior Design"
        }]
      }]
    },
    {
      "code" : "OLA",
      "display" : "Landscape Architecture",
      "property" : [{
        "code" : "concept-kind",
        "valueString" : "council"
      }],
      "concept" : [{
        "code" : "320",
        "display" : "Landscape Architect",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "profession"
        },
        {
          "code" : "cpdas-row-number",
          "valueInteger" : 30
        }]
      },
      {
        "code" : "LALE",
        "display" : "Landscape Architects Licensure Examination",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "examination"
        },
        {
          "code" : "prc-exam-list-number",
          "valueInteger" : 22
        },
        {
          "code" : "prc-exam-board-name",
          "valueString" : "Landscape Architecture"
        }]
      }]
    },
    {
      "code" : "LIB",
      "display" : "Librarian",
      "property" : [{
        "code" : "concept-kind",
        "valueString" : "council"
      }],
      "concept" : [{
        "code" : "3800",
        "display" : "Librarian",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "profession"
        },
        {
          "code" : "cpdas-row-number",
          "valueInteger" : 31
        }]
      },
      {
        "code" : "LLE",
        "display" : "Librarians Licensure Examination",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "examination"
        },
        {
          "code" : "prc-exam-list-number",
          "valueInteger" : 23
        },
        {
          "code" : "prc-exam-board-name",
          "valueString" : "Librarians"
        }]
      }]
    },
    {
      "code" : "OMP",
      "display" : "Master Plumbing",
      "property" : [{
        "code" : "concept-kind",
        "valueString" : "council"
      }],
      "concept" : [{
        "code" : "1900",
        "display" : "Master Plumber",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "profession"
        },
        {
          "code" : "cpdas-row-number",
          "valueInteger" : 32
        }]
      },
      {
        "code" : "MPLE",
        "display" : "Master Plumbers Licensure Examination",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "examination"
        },
        {
          "code" : "prc-exam-list-number",
          "valueInteger" : 24
        },
        {
          "code" : "prc-exam-board-name",
          "valueString" : "Master Plumbers"
        }]
      }]
    },
    {
      "code" : "MEE",
      "display" : "Mechanical Engineering",
      "property" : [{
        "code" : "concept-kind",
        "valueString" : "council"
      }],
      "concept" : [{
        "code" : "2010",
        "display" : "Professional Mechanical Engineer",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "profession"
        },
        {
          "code" : "cpdas-row-number",
          "valueInteger" : 33
        }]
      },
      {
        "code" : "2040",
        "display" : "Mechanical Engineer",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "profession"
        },
        {
          "code" : "cpdas-row-number",
          "valueInteger" : 34
        }]
      },
      {
        "code" : "2060",
        "display" : "Certified Plant Mechanic",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "profession"
        },
        {
          "code" : "cpdas-row-number",
          "valueInteger" : 35
        }]
      },
      {
        "code" : "MELE",
        "display" : "Mechanical Engineers Licensure Examination",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "examination"
        },
        {
          "code" : "prc-exam-list-number",
          "valueInteger" : 25
        },
        {
          "code" : "prc-exam-board-name",
          "valueString" : "Mechanical Engineering"
        }]
      },
      {
        "code" : "CPMLE",
        "display" : "Certified Plant Mechanics Licensure Examination",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "examination"
        },
        {
          "code" : "prc-exam-list-number",
          "valueInteger" : 25
        },
        {
          "code" : "prc-exam-board-name",
          "valueString" : "Mechanical Engineering"
        }]
      },
      {
        "code" : "PME-OETE",
        "display" : "Professional Mechanical Engineers Oral Examination/Technical Evaluation",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "examination"
        },
        {
          "code" : "prc-exam-list-number",
          "valueInteger" : 25
        },
        {
          "code" : "prc-exam-board-name",
          "valueString" : "Mechanical Engineering"
        }]
      }]
    },
    {
      "code" : "OMT",
      "display" : "Medical Technology",
      "property" : [{
        "code" : "concept-kind",
        "valueString" : "council"
      }],
      "concept" : [{
        "code" : "2110",
        "display" : "Medical Technologist",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "profession"
        },
        {
          "code" : "cpdas-row-number",
          "valueInteger" : 36
        }]
      },
      {
        "code" : "2120",
        "display" : "Medical Laboratory Technician",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "profession"
        },
        {
          "code" : "cpdas-row-number",
          "valueInteger" : 37
        }]
      },
      {
        "code" : "MTLE",
        "display" : "Medical Technologists Licensure Examination",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "examination"
        },
        {
          "code" : "prc-exam-list-number",
          "valueInteger" : 26
        },
        {
          "code" : "prc-exam-board-name",
          "valueString" : "Medical Technology"
        }]
      }]
    },
    {
      "code" : "MED",
      "display" : "Medicine",
      "property" : [{
        "code" : "concept-kind",
        "valueString" : "council"
      }],
      "concept" : [{
        "code" : "2200",
        "display" : "Physician",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "profession"
        },
        {
          "code" : "cpdas-row-number",
          "valueInteger" : 38
        }]
      },
      {
        "code" : "PLE",
        "display" : "Physicians Licensure Examination",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "examination"
        },
        {
          "code" : "prc-exam-list-number",
          "valueInteger" : 27
        },
        {
          "code" : "prc-exam-board-name",
          "valueString" : "Medicine"
        }]
      },
      {
        "code" : "QA-FMP",
        "display" : "Qualifying Assessment-Foreign Medical Professionals",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "examination"
        },
        {
          "code" : "prc-exam-list-number",
          "valueInteger" : 27
        },
        {
          "code" : "prc-exam-board-name",
          "valueString" : "Medicine"
        }]
      }]
    },
    {
      "code" : "OME",
      "display" : "Metallurgical Engineering",
      "property" : [{
        "code" : "concept-kind",
        "valueString" : "council"
      }],
      "concept" : [{
        "code" : "1810",
        "display" : "Metallurgical Engineer",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "profession"
        },
        {
          "code" : "cpdas-row-number",
          "valueInteger" : 39
        }]
      },
      {
        "code" : "1820",
        "display" : "Metallurgical Plant Foreman",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "profession"
        },
        {
          "code" : "cpdas-row-number",
          "valueInteger" : 40
        }]
      },
      {
        "code" : "MetELE",
        "display" : "Metallurgical Engineers Licensure Examination",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "examination"
        },
        {
          "code" : "prc-exam-list-number",
          "valueInteger" : 28
        },
        {
          "code" : "prc-exam-board-name",
          "valueString" : "Metallurgical Engineering"
        }]
      }]
    },
    {
      "code" : "MDW",
      "display" : "Midwifery",
      "property" : [{
        "code" : "concept-kind",
        "valueString" : "council"
      }],
      "concept" : [{
        "code" : "2310",
        "display" : "Midwife (Ra 2382)",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "profession"
        },
        {
          "code" : "cpdas-row-number",
          "valueInteger" : 41
        }]
      },
      {
        "code" : "2320",
        "display" : "Midwife",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "profession"
        },
        {
          "code" : "cpdas-row-number",
          "valueInteger" : 42
        }]
      },
      {
        "code" : "MidLE",
        "display" : "Midwives Licensure Examination",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "examination"
        },
        {
          "code" : "prc-exam-list-number",
          "valueInteger" : 29
        },
        {
          "code" : "prc-exam-board-name",
          "valueString" : "Midwifery"
        }]
      }]
    },
    {
      "code" : "MIN",
      "display" : "Mining Engineering",
      "property" : [{
        "code" : "concept-kind",
        "valueString" : "council"
      }],
      "concept" : [{
        "code" : "2410",
        "display" : "Mining Engineer",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "profession"
        },
        {
          "code" : "cpdas-row-number",
          "valueInteger" : 43
        }]
      },
      {
        "code" : "2420",
        "display" : "Certified Mine Foreman",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "profession"
        },
        {
          "code" : "cpdas-row-number",
          "valueInteger" : 44
        }]
      },
      {
        "code" : "2440",
        "display" : "Certified Quarry Foreman",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "profession"
        },
        {
          "code" : "cpdas-row-number",
          "valueInteger" : 45
        }]
      },
      {
        "code" : "MinELE",
        "display" : "Mining Engineers Licensure Examination",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "examination"
        },
        {
          "code" : "prc-exam-list-number",
          "valueInteger" : 30
        },
        {
          "code" : "prc-exam-board-name",
          "valueString" : "Mining Engineering"
        }]
      }]
    },
    {
      "code" : "NAME",
      "display" : "Naval Architecture",
      "property" : [{
        "code" : "concept-kind",
        "valueString" : "council"
      }],
      "concept" : [{
        "code" : "2500",
        "display" : "Naval Architect & Marine Engineer",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "profession"
        },
        {
          "code" : "cpdas-row-number",
          "valueInteger" : 46
        }]
      },
      {
        "code" : "NALE",
        "display" : "Naval Architects Licensure Examination",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "examination"
        },
        {
          "code" : "prc-exam-list-number",
          "valueInteger" : 31
        },
        {
          "code" : "prc-exam-board-name",
          "valueString" : "Naval Architecture"
        }]
      }]
    },
    {
      "code" : "NRS",
      "display" : "Nursing",
      "property" : [{
        "code" : "concept-kind",
        "valueString" : "council"
      }],
      "concept" : [{
        "code" : "2600",
        "display" : "Nurse",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "profession"
        },
        {
          "code" : "cpdas-row-number",
          "valueInteger" : 47
        }]
      },
      {
        "code" : "NLE",
        "display" : "Nurses Licensure Examination",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "examination"
        },
        {
          "code" : "prc-exam-list-number",
          "valueInteger" : 32
        },
        {
          "code" : "prc-exam-board-name",
          "valueString" : "Nursing"
        }]
      }]
    },
    {
      "code" : "NAD",
      "display" : "Nutrition & Dietetics",
      "property" : [{
        "code" : "concept-kind",
        "valueString" : "council"
      }],
      "concept" : [{
        "code" : "1010",
        "display" : "Nutritionist Dietitian",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "profession"
        },
        {
          "code" : "cpdas-row-number",
          "valueInteger" : 48
        }]
      },
      {
        "code" : "NDLE",
        "display" : "Nutritionists-Dietitians Licensure Examination",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "examination"
        },
        {
          "code" : "prc-exam-list-number",
          "valueInteger" : 33
        },
        {
          "code" : "prc-exam-board-name",
          "valueString" : "Nutrition and Dietetics"
        }]
      }]
    },
    {
      "code" : "OCT",
      "display" : "Occupational Therapy",
      "property" : [{
        "code" : "concept-kind",
        "valueString" : "council"
      }],
      "concept" : [{
        "code" : "2920",
        "display" : "Occupational Therapist",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "profession"
        },
        {
          "code" : "cpdas-row-number",
          "valueInteger" : 49
        }]
      },
      {
        "code" : "OTLE",
        "display" : "Occupational Therapists Licensure Examination",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "examination"
        },
        {
          "code" : "prc-exam-list-number",
          "valueInteger" : 37
        },
        {
          "code" : "prc-exam-board-name",
          "valueString" : "Occupational Therapy"
        }]
      }]
    },
    {
      "code" : "OPT",
      "display" : "Optometry",
      "property" : [{
        "code" : "concept-kind",
        "valueString" : "council"
      }],
      "concept" : [{
        "code" : "2700",
        "display" : "Optometrist",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "profession"
        },
        {
          "code" : "cpdas-row-number",
          "valueInteger" : 50
        }]
      },
      {
        "code" : "2710",
        "display" : "Ocular Pharmacologist",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "profession"
        },
        {
          "code" : "cpdas-row-number",
          "valueInteger" : 51
        }]
      },
      {
        "code" : "OLE",
        "display" : "Optometrists Licensure Examination",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "examination"
        },
        {
          "code" : "prc-exam-list-number",
          "valueInteger" : 34
        },
        {
          "code" : "prc-exam-board-name",
          "valueString" : "Optometry"
        }]
      },
      {
        "code" : "OPSCLE",
        "display" : "Ocular Pharmacologists Special Certification Licensure Examination",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "examination"
        },
        {
          "code" : "prc-exam-list-number",
          "valueInteger" : 34
        },
        {
          "code" : "prc-exam-board-name",
          "valueString" : "Optometry"
        }]
      }]
    },
    {
      "code" : "PHA",
      "display" : "Pharmacy",
      "property" : [{
        "code" : "concept-kind",
        "valueString" : "council"
      }],
      "concept" : [{
        "code" : "2810",
        "display" : "Pharmacist",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "profession"
        },
        {
          "code" : "cpdas-row-number",
          "valueInteger" : 52
        }]
      },
      {
        "code" : "2820",
        "display" : "Chinese Druggist",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "profession"
        },
        {
          "code" : "cpdas-row-number",
          "valueInteger" : 53
        }]
      },
      {
        "code" : "PhLE",
        "display" : "Pharmacists Licensure Examination",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "examination"
        },
        {
          "code" : "prc-exam-list-number",
          "valueInteger" : 35
        },
        {
          "code" : "prc-exam-board-name",
          "valueString" : "Pharmacy"
        }]
      }]
    },
    {
      "code" : "PHT",
      "display" : "Physical Therapy",
      "property" : [{
        "code" : "concept-kind",
        "valueString" : "council"
      }],
      "concept" : [{
        "code" : "2910",
        "display" : "Physical Therapist",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "profession"
        },
        {
          "code" : "cpdas-row-number",
          "valueInteger" : 54
        }]
      },
      {
        "code" : "PTLE",
        "display" : "Physical Therapists Licensure Examination",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "examination"
        },
        {
          "code" : "prc-exam-list-number",
          "valueInteger" : 36
        },
        {
          "code" : "prc-exam-board-name",
          "valueString" : "Physical Therapy"
        }]
      }]
    },
    {
      "code" : "PTR",
      "display" : "Professional Teachers",
      "property" : [{
        "code" : "concept-kind",
        "valueString" : "council"
      }],
      "concept" : [{
        "code" : "4000",
        "display" : "Professional Teacher",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "profession"
        },
        {
          "code" : "cpdas-row-number",
          "valueInteger" : 55
        }]
      },
      {
        "code" : "LEPT",
        "display" : "Licensure Examination for Professional Teachers",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "examination"
        },
        {
          "code" : "prc-exam-list-number",
          "valueInteger" : 38
        },
        {
          "code" : "prc-exam-board-name",
          "valueString" : "Professional Teachers"
        }]
      }]
    },
    {
      "code" : "PSYCH",
      "display" : "Psychology",
      "property" : [{
        "code" : "concept-kind",
        "valueString" : "council"
      }],
      "concept" : [{
        "code" : "4520",
        "display" : "Psychologist",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "profession"
        },
        {
          "code" : "cpdas-row-number",
          "valueInteger" : 56
        }]
      },
      {
        "code" : "4530",
        "display" : "Psychometrician",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "profession"
        },
        {
          "code" : "cpdas-row-number",
          "valueInteger" : 57
        }]
      },
      {
        "code" : "PsLE",
        "display" : "Psychologists Licensure Examination",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "examination"
        },
        {
          "code" : "prc-exam-list-number",
          "valueInteger" : 39
        },
        {
          "code" : "prc-exam-board-name",
          "valueString" : "Psychology"
        }]
      },
      {
        "code" : "PmLE",
        "display" : "Psychometricians Licensure Examination",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "examination"
        },
        {
          "code" : "prc-exam-list-number",
          "valueInteger" : 39
        },
        {
          "code" : "prc-exam-board-name",
          "valueString" : "Psychology"
        }]
      }]
    },
    {
      "code" : "RAD",
      "display" : "Radiologic Technology",
      "property" : [{
        "code" : "concept-kind",
        "valueString" : "council"
      }],
      "concept" : [{
        "code" : "3710",
        "display" : "Radiologic Technologist",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "profession"
        },
        {
          "code" : "cpdas-row-number",
          "valueInteger" : 58
        }]
      },
      {
        "code" : "3720",
        "display" : "X-Ray Technologist",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "profession"
        },
        {
          "code" : "cpdas-row-number",
          "valueInteger" : 59
        }]
      },
      {
        "code" : "RTLE",
        "display" : "Radiologic Technologists Licensure Examination",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "examination"
        },
        {
          "code" : "prc-exam-list-number",
          "valueInteger" : 40
        },
        {
          "code" : "prc-exam-board-name",
          "valueString" : "Radiologic Technology"
        }]
      },
      {
        "code" : "XTLE",
        "display" : "X-Ray Technologists Licensure Examination",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "examination"
        },
        {
          "code" : "prc-exam-list-number",
          "valueInteger" : 40
        },
        {
          "code" : "prc-exam-board-name",
          "valueString" : "Radiologic Technology"
        }]
      }]
    },
    {
      "code" : "RAE",
      "display" : "Real Estate Service",
      "property" : [{
        "code" : "concept-kind",
        "valueString" : "council"
      }],
      "concept" : [{
        "code" : "4410",
        "display" : "Real Estate Consultant",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "profession"
        },
        {
          "code" : "cpdas-row-number",
          "valueInteger" : 60
        }]
      },
      {
        "code" : "4420",
        "display" : "Real Estate Appraiser",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "profession"
        },
        {
          "code" : "cpdas-row-number",
          "valueInteger" : 61
        }]
      },
      {
        "code" : "4430",
        "display" : "Real Estate Broker",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "profession"
        },
        {
          "code" : "cpdas-row-number",
          "valueInteger" : 62
        }]
      },
      {
        "code" : "REALE",
        "display" : "Real Estate Appraisers Licensure Examination",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "examination"
        },
        {
          "code" : "prc-exam-list-number",
          "valueInteger" : 41
        },
        {
          "code" : "prc-exam-board-name",
          "valueString" : "Real Estate Service"
        }]
      },
      {
        "code" : "REBLE",
        "display" : "Real Estate Brokers Licensure Examination",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "examination"
        },
        {
          "code" : "prc-exam-list-number",
          "valueInteger" : 41
        },
        {
          "code" : "prc-exam-board-name",
          "valueString" : "Real Estate Service"
        }]
      },
      {
        "code" : "RECLE",
        "display" : "Real Estate Consultants Licensure Examination",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "examination"
        },
        {
          "code" : "prc-exam-list-number",
          "valueInteger" : 41
        },
        {
          "code" : "prc-exam-board-name",
          "valueString" : "Real Estate Service"
        }]
      }]
    },
    {
      "code" : "RES",
      "display" : "Respiratory Therapy",
      "property" : [{
        "code" : "concept-kind",
        "valueString" : "council"
      }],
      "concept" : [{
        "code" : "4510",
        "display" : "Respiratory Therapist",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "profession"
        },
        {
          "code" : "cpdas-row-number",
          "valueInteger" : 63
        }]
      },
      {
        "code" : "ResTLE",
        "display" : "Respiratory Therapists Licensure Examination",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "examination"
        },
        {
          "code" : "prc-exam-list-number",
          "valueInteger" : 42
        },
        {
          "code" : "prc-exam-board-name",
          "valueString" : "Respiratory Therapy"
        }]
      }]
    },
    {
      "code" : "SAN",
      "display" : "Sanitary Engineering",
      "property" : [{
        "code" : "concept-kind",
        "valueString" : "council"
      }],
      "concept" : [{
        "code" : "3000",
        "display" : "Sanitary Engineer",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "profession"
        },
        {
          "code" : "cpdas-row-number",
          "valueInteger" : 64
        }]
      },
      {
        "code" : "SELE",
        "display" : "Sanitary Engineers Licensure Examination",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "examination"
        },
        {
          "code" : "prc-exam-list-number",
          "valueInteger" : 43
        },
        {
          "code" : "prc-exam-board-name",
          "valueString" : "Sanitary Engineering"
        }]
      }]
    },
    {
      "code" : "OSW",
      "display" : "Social Workers",
      "property" : [{
        "code" : "concept-kind",
        "valueString" : "council"
      }],
      "concept" : [{
        "code" : "3200",
        "display" : "Social Worker",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "profession"
        },
        {
          "code" : "cpdas-row-number",
          "valueInteger" : 65
        }]
      },
      {
        "code" : "SWLE",
        "display" : "Social Workers Licensure Examination",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "examination"
        },
        {
          "code" : "prc-exam-list-number",
          "valueInteger" : 44
        },
        {
          "code" : "prc-exam-board-name",
          "valueString" : "Social Workers"
        }]
      }]
    },
    {
      "code" : "VET",
      "display" : "Veterinary Medicine",
      "property" : [{
        "code" : "concept-kind",
        "valueString" : "council"
      }],
      "concept" : [{
        "code" : "3300",
        "display" : "Veterinarian",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "profession"
        },
        {
          "code" : "cpdas-row-number",
          "valueInteger" : 66
        }]
      },
      {
        "code" : "VLE",
        "display" : "Veterinarians Licensure Examination",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "examination"
        },
        {
          "code" : "prc-exam-list-number",
          "valueInteger" : 46
        },
        {
          "code" : "prc-exam-board-name",
          "valueString" : "Veterinary Medicine"
        }]
      }]
    },
    {
      "code" : "board-food-technology",
      "display" : "Food Technology",
      "definition" : "Abstract local grouping node; no CPDAS Council code appears for this board in the 2021 table.",
      "property" : [{
        "code" : "concept-kind",
        "valueString" : "structural-board-group"
      },
      {
        "code" : "notSelectable",
        "valueBoolean" : true
      }],
      "concept" : [{
        "code" : "PFTLE",
        "display" : "Professional Food Technologists Licensure Examination",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "examination"
        },
        {
          "code" : "prc-exam-list-number",
          "valueInteger" : 16
        },
        {
          "code" : "prc-exam-board-name",
          "valueString" : "Food Technology"
        }]
      }]
    },
    {
      "code" : "board-speech-language-pathology",
      "display" : "Speech-Language Pathology",
      "definition" : "Abstract local grouping node; no CPDAS Council code appears for this board in the 2021 table.",
      "property" : [{
        "code" : "concept-kind",
        "valueString" : "structural-board-group"
      },
      {
        "code" : "notSelectable",
        "valueBoolean" : true
      }],
      "concept" : [{
        "code" : "SLPLE",
        "display" : "Speech-Language Pathologists Licensure Examination",
        "property" : [{
          "code" : "concept-kind",
          "valueString" : "examination"
        },
        {
          "code" : "prc-exam-list-number",
          "valueInteger" : 45
        },
        {
          "code" : "prc-exam-board-name",
          "valueString" : "Speech-Language Pathology"
        }]
      }]
    }]
  }]
}

```
