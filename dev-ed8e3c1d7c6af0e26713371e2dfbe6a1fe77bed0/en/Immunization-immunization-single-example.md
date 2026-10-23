# immunization-single-example - Draft PH Core Implementation Guide v0.2.1

## Example Immunization: immunization-single-example

Profile: [PH Core Immunization](StructureDefinition-ph-core-immunization.md)

**Administered Product**: [Medication ](Medication-medication-vaccine-example.md)

**identifier**: [Uniform Resource Identifier (URI)](http://terminology.hl7.org/7.4.0/NamingSystem-uri.html)/urn:oid:1.3.6.1.4.1.21367.2005.3.7.1234

**status**: Completed

**vaccineCode**: Influenza H5N1-1203 Vaccine

**patient**: [Juan Dela Fuente Dela Cruz Male, DoB: 1980-01-01 ( http://philhealth.gov.ph/fhir/Identifier/philhealth-id#PhilHealthID#63-584789845-5)](Patient-patient-single-example.md)

**encounter**: [Encounter: status = finished; class = ambulatory (ActCode#AMB); period = 2013-01-10 09:00:00+0800 --> 2013-01-10 09:30:00+0800](Encounter-encounter-immunization-example.md)

**occurrence**: 2013-01-10

**primarySource**: true

**location**: [Location Philippine General Hospital](Location-location-single-example.md)

**lotNumber**: AAJN11K

**expirationDate**: 2015-02-15

**site**: Left arm

**route**: Intramuscular injection

### Performers

| | | |
| :--- | :--- | :--- |
| - | **Function** | **Actor** |
| * | Ordering Provider | [Dr. Maria Clara Santos](Practitioner-practitioner-single-example.md) |

**note**: 

> 

Notes on administration of vaccine


**fundingSource**: Private

### ProtocolApplieds

| | | |
| :--- | :--- | :--- |
| - | **TargetDisease** | **DoseNumber[x]** |
| * | Influenza H5N1 | 1 |



## Resource Content

```json
{
  "resourceType" : "Immunization",
  "id" : "immunization-single-example",
  "meta" : {
    "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-immunization"]
  },
  "extension" : [{
    "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/administered-product",
    "valueReference" : {
      "reference" : "Medication/medication-vaccine-example"
    }
  }],
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:1.3.6.1.4.1.21367.2005.3.7.1234"
  }],
  "status" : "completed",
  "vaccineCode" : {
    "coding" : [{
      "system" : "http://hl7.org/fhir/sid/cvx",
      "code" : "123",
      "display" : "influenza, H5N1-1203"
    }],
    "text" : "Influenza H5N1-1203 Vaccine"
  },
  "patient" : {
    "reference" : "Patient/patient-single-example"
  },
  "encounter" : {
    "reference" : "Encounter/encounter-immunization-example"
  },
  "occurrenceDateTime" : "2013-01-10",
  "primarySource" : true,
  "location" : {
    "reference" : "Location/location-single-example"
  },
  "lotNumber" : "AAJN11K",
  "expirationDate" : "2015-02-15",
  "site" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActSite",
      "code" : "LA",
      "display" : "left arm"
    }],
    "text" : "Left arm"
  },
  "route" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-RouteOfAdministration",
      "code" : "IM",
      "display" : "Injection, intramuscular"
    }],
    "text" : "Intramuscular injection"
  },
  "performer" : [{
    "function" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0443",
        "code" : "OP",
        "display" : "Ordering Provider"
      }],
      "text" : "Ordering Provider"
    },
    "actor" : {
      "reference" : "Practitioner/practitioner-single-example",
      "display" : "Dr. Maria Clara Santos"
    }
  }],
  "note" : [{
    "text" : "Notes on administration of vaccine"
  }],
  "fundingSource" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/immunization-funding-source",
      "code" : "private",
      "display" : "Private"
    }],
    "text" : "Private"
  },
  "protocolApplied" : [{
    "targetDisease" : [{
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "772828001",
        "display" : "Influenza caused by Influenza A virus subtype H5N1"
      }],
      "text" : "Influenza H5N1"
    }],
    "doseNumberPositiveInt" : 1
  }]
}

```
