# relatedperson-single-example - Draft PH Core Implementation Guide v0.2.0

## Example RelatedPerson: relatedperson-single-example

Maria Cruz Santos, born on January 1, 1955, is the mother of the patient. She resides at 123 Mabini Street, 1100, Philippines. Her PhilSys ID is 1234-1234567-1.



## Resource Content

```json
{
  "resourceType" : "RelatedPerson",
  "id" : "relatedperson-single-example",
  "meta" : {
    "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-relatedperson"]
  },
  "identifier" : [{
    "use" : "official",
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "NI"
      }]
    },
    "system" : "http://philsys.gov.ph/fhir/Identifier/philsys-id",
    "value" : "1234-1234567-1"
  }],
  "patient" : {
    "reference" : "Patient/patient-single-example"
  },
  "relationship" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
      "code" : "MTH",
      "display" : "mother"
    }],
    "text" : "Mother"
  }],
  "name" : [{
    "use" : "official",
    "text" : "Maria Cruz Santos",
    "family" : "Santos",
    "given" : ["Maria", "Cruz"]
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "+63-912-345-6789",
    "use" : "mobile"
  }],
  "gender" : "female",
  "birthDate" : "1955-01-01",
  "address" : [{
    "extension" : [{
      "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/barangay",
      "valueCoding" : {
        "system" : "https://psa.gov.ph/classification/psgc",
        "code" : "0133070250",
        "display" : "Paringao"
      }
    },
    {
      "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/city-municipality",
      "valueCoding" : {
        "system" : "https://psa.gov.ph/classification/psgc",
        "code" : "0133070000",
        "display" : "Bauang"
      }
    },
    {
      "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/province",
      "valueCoding" : {
        "system" : "https://psa.gov.ph/classification/psgc",
        "code" : "0133000000",
        "display" : "La Union"
      }
    },
    {
      "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/region",
      "valueCoding" : {
        "system" : "https://psa.gov.ph/classification/psgc",
        "code" : "0100000000",
        "display" : "Ilocos Region"
      }
    }],
    "line" : ["123 Mabini Street"],
    "postalCode" : "1100",
    "country" : "PH"
  }]
}

```
