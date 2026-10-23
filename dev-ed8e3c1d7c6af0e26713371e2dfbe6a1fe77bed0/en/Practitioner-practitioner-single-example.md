# practitioner-single-example - Draft PH Core Implementation Guide v0.2.1

## Example Practitioner: practitioner-single-example

Profile: [PH Core Practitioner](StructureDefinition-ph-core-practitioner.md)

> **Person Recorded Sex Or Gender**
* value: Female (finding)
* type: Sex Assigned at Birth

> **Individual Gender Identity**
* value: Identifies as female gender

> **Individual Pronouns**
* value: she/her/her/hers/herself

**name**: Maria Clara Santos (Official)

**telecom**: [+63-912-345-6789](tel:+63-912-345-6789), [maria.santos@example.ph](mailto:maria.santos@example.ph)

**address**: 1234 Mabini Street 1000 PH (home)

**gender**: Female

**birthDate**: 1985-05-15

### Qualifications

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Identifier** | **Code** | **Period** | **Issuer** |
| * | `https://www.prc.gov.ph`/0123456 | Physician | 2010-07-15 --> (ongoing) | [Organization Professional Regulation Commission (illustrative)](Organization-organization-prc-example.md) |

**communication**: Filipino, English



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "practitioner-single-example",
  "meta" : {
    "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-practitioner"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "value",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "248152002",
          "display" : "Female (finding)"
        }]
      }
    },
    {
      "url" : "type",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "76689-9",
          "display" : "Sex Assigned at Birth"
        }]
      }
    }],
    "url" : "http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender"
  },
  {
    "extension" : [{
      "url" : "value",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "446141000124107",
          "display" : "Identifies as female gender"
        }]
      }
    }],
    "url" : "http://hl7.org/fhir/StructureDefinition/individual-genderIdentity"
  },
  {
    "extension" : [{
      "url" : "value",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "LA29519-8",
          "display" : "she/her/her/hers/herself"
        }]
      }
    }],
    "url" : "http://hl7.org/fhir/StructureDefinition/individual-pronouns"
  }],
  "name" : [{
    "use" : "official",
    "family" : "Santos",
    "given" : ["Maria", "Clara"],
    "suffix" : ["MD"]
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "+63-912-345-6789",
    "use" : "mobile"
  },
  {
    "system" : "email",
    "value" : "maria.santos@example.ph",
    "use" : "work"
  }],
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
    "use" : "home",
    "line" : ["1234 Mabini Street"],
    "postalCode" : "1000",
    "country" : "PH"
  }],
  "gender" : "female",
  "birthDate" : "1985-05-15",
  "qualification" : [{
    "identifier" : [{
      "system" : "https://www.prc.gov.ph",
      "value" : "0123456"
    }],
    "code" : {
      "coding" : [{
        "system" : "https://fhir.doh.gov.ph/phcore/CodeSystem/prc",
        "code" : "2200",
        "display" : "Physician"
      }]
    },
    "period" : {
      "start" : "2010-07-15"
    },
    "issuer" : {
      "reference" : "Organization/organization-prc-example"
    }
  }],
  "communication" : [{
    "text" : "Filipino"
  },
  {
    "coding" : [{
      "system" : "urn:ietf:bcp:47",
      "code" : "en",
      "display" : "English"
    }]
  }]
}

```
