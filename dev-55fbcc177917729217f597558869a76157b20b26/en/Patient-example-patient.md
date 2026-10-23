# example-patient - Draft PH Core Implementation Guide v0.2.0

## Example Patient: example-patient

Juan Dela Cruz is a male patient born on 1 January 1980, residing in Manila, NCR, Philippines.



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "example-patient",
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
    "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/race",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v3-Race",
        "code" : "2036-2",
        "display" : "Filipino"
      }]
    }
  }],
  "identifier" : [{
    "system" : "http://philhealth.gov.ph/fhir/Identifier/philhealth-id",
    "value" : "63-584789845-5"
  }],
  "active" : true,
  "name" : [{
    "family" : "Dela Cruz",
    "given" : ["Juan Jane", "Dela Fuente"]
  }],
  "gender" : "male",
  "birthDate" : "1980-01-01",
  "address" : [{
    "extension" : [{
      "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/barangay",
      "valueCoding" : {
        "system" : "https://psa.gov.ph/classification/psgc",
        "code" : "1380100001",
        "display" : "Barangay 1"
      }
    },
    {
      "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/city-municipality",
      "valueCoding" : {
        "system" : "https://psa.gov.ph/classification/psgc",
        "code" : "1380200000",
        "display" : "City of Las Piñas"
      }
    },
    {
      "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/province",
      "valueCoding" : {
        "system" : "https://psa.gov.ph/classification/psgc",
        "code" : "0402100000",
        "display" : "Cavite"
      }
    }],
    "line" : ["123 Mabini Street", "Barangay Malinis"],
    "city" : "Quezon City",
    "district" : "NCR",
    "postalCode" : "1100",
    "country" : "PH"
  }]
}

```
