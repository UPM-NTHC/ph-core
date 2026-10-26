# patient-single-example - Draft PH Core Implementation Guide v0.2.1

## Example Patient: patient-single-example

Profile: [PH Core Patient](StructureDefinition-ph-core-patient.md)

Juan Dela Fuente Dela Cruz Male, DoB: 1980-01-01 ( http://philhealth.gov.ph/fhir/Identifier/philhealth-id#PhilHealthID#63-584789845-5)

-------

| | |
| :--- | :--- |
| Active: | true |
| Contact Detail | 123 Mabini Street Ermita City of Manila 1000 PH |
| [Race](StructureDefinition-race.md) | Filipino |
| Patient Nationality: | * code: Philippines
* period: 2020-01-01 --> 2023-01-01
 |
| [Indigenous status](StructureDefinition-indigenous-status.md) | Aetas |
| [Educational Attainment](StructureDefinition-educational-attainment.md) | College Graduate |
| [Patient Mother's Maiden Name](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-patient-mothersMaidenName.html) | Maria Cruz Santos |
| Occupation: | * occupationClassification: Hospital Administrator
* occupationLength: 2020-01-01 --> (ongoing)
 |
| [Patient Religion](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-patient-religion.html) | Atheism |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "patient-single-example",
  "meta" : {
    "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-patient"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "code",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "urn:iso:std:iso:3166",
          "code" : "PH",
          "display" : "Philippines"
        }]
      }
    },
    {
      "url" : "period",
      "valuePeriod" : {
        "start" : "2020-01-01",
        "end" : "2023-01-01"
      }
    }],
    "url" : "http://hl7.org/fhir/StructureDefinition/patient-nationality"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/patient-mothersMaidenName",
    "valueString" : "Maria Cruz Santos"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/patient-religion",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ReligiousAffiliation",
        "code" : "1007",
        "display" : "Atheism"
      }]
    }
  },
  {
    "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/indigenous-status",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://fhir.doh.gov.ph/phcore/CodeSystem/indigenous-status-cs",
        "code" : "Aetas",
        "display" : "Aetas"
      }]
    }
  },
  {
    "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/race",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v3-Race",
        "code" : "2036-2",
        "display" : "Filipino"
      }]
    }
  },
  {
    "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/educational-attainment",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://psa.gov.ph/classification/psced/level",
        "code" : "C201303",
        "display" : "College Graduate"
      }]
    }
  },
  {
    "extension" : [{
      "url" : "occupationClassification",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://psa.gov.ph/classification/psoc/unit",
          "code" : "111102",
          "display" : "Hospital Administrator"
        }]
      }
    },
    {
      "url" : "occupationLength",
      "valuePeriod" : {
        "start" : "2020-01-01"
      }
    }],
    "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/occupation"
  }],
  "identifier" : [{
    "system" : "http://philhealth.gov.ph/fhir/Identifier/philhealth-id",
    "value" : "63-584789845-5"
  }],
  "active" : true,
  "name" : [{
    "family" : "Dela Cruz",
    "given" : ["Juan", "Dela Fuente"]
  }],
  "gender" : "male",
  "birthDate" : "1980-01-01",
  "address" : [{
    "extension" : [{
      "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/city-municipality",
      "valueCoding" : {
        "system" : "https://psa.gov.ph/classification/psgc",
        "code" : "1380600000",
        "display" : "City of Manila"
      }
    },
    {
      "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/region",
      "valueCoding" : {
        "system" : "https://psa.gov.ph/classification/psgc",
        "code" : "0402100000",
        "display" : "Cavite"
      }
    }],
    "line" : ["123 Mabini Street", "Ermita"],
    "city" : "City of Manila",
    "district" : "NCR",
    "postalCode" : "1000",
    "country" : "PH"
  }]
}

```
