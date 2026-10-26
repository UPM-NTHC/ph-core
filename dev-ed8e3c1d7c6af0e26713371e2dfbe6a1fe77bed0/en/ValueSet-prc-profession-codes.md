# PRC Profession Codes ValueSet - Draft PH Core Implementation Guide v0.2.1

## ValueSet: PRC Profession Codes ValueSet 

 **References** 

* [PH Core Practitioner](StructureDefinition-ph-core-practitioner.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "prc-profession-codes",
  "url" : "https://fhir.doh.gov.ph/phcore/ValueSet/prc-profession-codes",
  "version" : "0.2.1",
  "name" : "PRCProfessionCodesVS",
  "title" : "PRC Profession Codes ValueSet",
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
  "description" : "The 66 numerical profession codes in the PRC CPDAS table as of 12 January 2021. PRC states that the codes are used on attendance sheets for accredited CPD programs, and notes that the FAQ is subject to regular updating. Use these codes for a qualification or practitioner role only when the CPDAS profession classification matches; the code does not assert current license validity.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PH",
      "display" : "Philippines"
    }]
  }],
  "purpose" : "Preferred classification for PRC profession codes when they accurately describe the qualification held.",
  "compose" : {
    "include" : [{
      "system" : "https://fhir.doh.gov.ph/phcore/CodeSystem/prc",
      "concept" : [{
        "code" : "100",
        "display" : "Certified Public Accountant"
      },
      {
        "code" : "3400",
        "display" : "Aeronautical Engineer"
      },
      {
        "code" : "200",
        "display" : "Agricultural And Biosystems Engineer"
      },
      {
        "code" : "4200",
        "display" : "Agriculturist"
      },
      {
        "code" : "300",
        "display" : "Architect"
      },
      {
        "code" : "410",
        "display" : "Chemical Engineer"
      },
      {
        "code" : "510",
        "display" : "Chemist"
      },
      {
        "code" : "520",
        "display" : "Chemical Technician"
      },
      {
        "code" : "600",
        "display" : "Civil Engineer"
      },
      {
        "code" : "3500",
        "display" : "Criminologist"
      },
      {
        "code" : "800",
        "display" : "Customs Broker"
      },
      {
        "code" : "910",
        "display" : "Dentist"
      },
      {
        "code" : "920",
        "display" : "Dental Hygienist"
      },
      {
        "code" : "930",
        "display" : "Dental Technologist"
      },
      {
        "code" : "1100",
        "display" : "Registered Electrical Engineer"
      },
      {
        "code" : "1110",
        "display" : "Professional Electrical Engineer"
      },
      {
        "code" : "1150",
        "display" : "Registered Master Electrician"
      },
      {
        "code" : "1200",
        "display" : "Electronics And Communications Engineer"
      },
      {
        "code" : "1201",
        "display" : "Professional Electronics Engineer"
      },
      {
        "code" : "1202",
        "display" : "Electronics Engineer"
      },
      {
        "code" : "1203",
        "display" : "Electronics Technician"
      },
      {
        "code" : "3600",
        "display" : "Environmental Planner"
      },
      {
        "code" : "4300",
        "display" : "Fisheries Technologist"
      },
      {
        "code" : "1300",
        "display" : "Forester"
      },
      {
        "code" : "1410",
        "display" : "Geodetic Engineer"
      },
      {
        "code" : "1510",
        "display" : "Geologist"
      },
      {
        "code" : "1520",
        "display" : "Geologic Aide"
      },
      {
        "code" : "4100",
        "display" : "Guidance Counselor"
      },
      {
        "code" : "310",
        "display" : "Interior Designer"
      },
      {
        "code" : "320",
        "display" : "Landscape Architect"
      },
      {
        "code" : "3800",
        "display" : "Librarian"
      },
      {
        "code" : "1900",
        "display" : "Master Plumber"
      },
      {
        "code" : "2010",
        "display" : "Professional Mechanical Engineer"
      },
      {
        "code" : "2040",
        "display" : "Mechanical Engineer"
      },
      {
        "code" : "2060",
        "display" : "Certified Plant Mechanic"
      },
      {
        "code" : "2110",
        "display" : "Medical Technologist"
      },
      {
        "code" : "2120",
        "display" : "Medical Laboratory Technician"
      },
      {
        "code" : "2200",
        "display" : "Physician"
      },
      {
        "code" : "1810",
        "display" : "Metallurgical Engineer"
      },
      {
        "code" : "1820",
        "display" : "Metallurgical Plant Foreman"
      },
      {
        "code" : "2310",
        "display" : "Midwife (Ra 2382)"
      },
      {
        "code" : "2320",
        "display" : "Midwife"
      },
      {
        "code" : "2410",
        "display" : "Mining Engineer"
      },
      {
        "code" : "2420",
        "display" : "Certified Mine Foreman"
      },
      {
        "code" : "2440",
        "display" : "Certified Quarry Foreman"
      },
      {
        "code" : "2500",
        "display" : "Naval Architect & Marine Engineer"
      },
      {
        "code" : "2600",
        "display" : "Nurse"
      },
      {
        "code" : "1010",
        "display" : "Nutritionist Dietitian"
      },
      {
        "code" : "2920",
        "display" : "Occupational Therapist"
      },
      {
        "code" : "2700",
        "display" : "Optometrist"
      },
      {
        "code" : "2710",
        "display" : "Ocular Pharmacologist"
      },
      {
        "code" : "2810",
        "display" : "Pharmacist"
      },
      {
        "code" : "2820",
        "display" : "Chinese Druggist"
      },
      {
        "code" : "2910",
        "display" : "Physical Therapist"
      },
      {
        "code" : "4000",
        "display" : "Professional Teacher"
      },
      {
        "code" : "4520",
        "display" : "Psychologist"
      },
      {
        "code" : "4530",
        "display" : "Psychometrician"
      },
      {
        "code" : "3710",
        "display" : "Radiologic Technologist"
      },
      {
        "code" : "3720",
        "display" : "X-Ray Technologist"
      },
      {
        "code" : "4410",
        "display" : "Real Estate Consultant"
      },
      {
        "code" : "4420",
        "display" : "Real Estate Appraiser"
      },
      {
        "code" : "4430",
        "display" : "Real Estate Broker"
      },
      {
        "code" : "4510",
        "display" : "Respiratory Therapist"
      },
      {
        "code" : "3000",
        "display" : "Sanitary Engineer"
      },
      {
        "code" : "3200",
        "display" : "Social Worker"
      },
      {
        "code" : "3300",
        "display" : "Veterinarian"
      }]
    }]
  }
}

```
