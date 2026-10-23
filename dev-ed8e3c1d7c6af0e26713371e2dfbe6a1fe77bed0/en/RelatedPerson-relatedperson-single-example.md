# relatedperson-single-example - Draft PH Core Implementation Guide v0.2.1

## Example RelatedPerson: relatedperson-single-example

Profile: [PH Core RelatedPerson](StructureDefinition-ph-core-relatedperson.md)

**identifier**: National unique individual identifier/1234-1234567-1 (use: official, )

**patient**: [Juan Dela Fuente Dela Cruz Male, DoB: 1980-01-01 ( http://philhealth.gov.ph/fhir/Identifier/philhealth-id#PhilHealthID#63-584789845-5)](Patient-patient-single-example.md)

**relationship**: Mother

**name**: Maria Cruz Santos(Official)

**telecom**: [+63-912-345-6789](tel:+63-912-345-6789)

**gender**: Female

**birthDate**: 1955-01-01

**address**: 123 Mabini Street 1000 PH 



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
        "code" : "1300000000",
        "display" : "National Capital Region (NCR)"
      }
    }],
    "line" : ["123 Mabini Street"],
    "postalCode" : "1000",
    "country" : "PH"
  }]
}

```
