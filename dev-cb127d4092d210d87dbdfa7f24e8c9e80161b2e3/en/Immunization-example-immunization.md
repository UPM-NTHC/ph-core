# example-immunization - Draft PH Core Implementation Guide v0.2.0

## Example Immunization: example-immunization

Profile: [PH Core Immunization](StructureDefinition-ph-core-immunization.md)

**identifier**: [Uniform Resource Identifier (URI)](http://terminology.hl7.org/7.1.0/NamingSystem-uri.html)/urn:oid:1.3.6.1.4.1.21367.2005.3.7.1234

**status**: Completed

**vaccineCode**: influenza, H5N1-1203

**patient**: [Juan Jane Dela Fuente Dela Cruz Male, DoB: 1980-01-01 ( http://philhealth.gov.ph/fhir/Identifier/philhealth-id#PhilHealthID#63-584789845-5)](Patient-example-patient.md)

**encounter**: [Encounter: identifier = http://example.org/encounter-id#ENC-12345; status = finished; class = ambulatory (ActCode#AMB); type = ambulatory; period = 2023-01-01 10:00:00+0000 --> 2023-01-01 11:00:00+0000](Encounter-encounter-single-example.md)

**occurrence**: 2013-01-10

**primarySource**: true

**lotNumber**: AAJN11K

**expirationDate**: 2015-02-15

**site**: left arm

**route**: Injection, intramuscular

**doseQuantity**: 5 mg (Details: UCUM codemg = 'mg')

### Performers

| | | |
| :--- | :--- | :--- |
| - | **Function** | **Actor** |
| * | Ordering Provider | [Practitioner Maria Clara Santos ](Practitioner-example-practitioner.md) |

**note**: 

> 

Notes on adminstration of vaccine


**isSubpotent**: true

**fundingSource**: Private



## Resource Content

```json
{
  "resourceType" : "Immunization",
  "id" : "example-immunization",
  "meta" : {
    "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-immunization"]
  },
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:1.3.6.1.4.1.21367.2005.3.7.1234"
  }],
  "status" : "completed",
  "vaccineCode" : {
    "coding" : [{
      "system" : "http://hl7.org/fhir/sid/cvx",
      "code" : "123"
    }],
    "text" : "influenza, H5N1-1203"
  },
  "patient" : {
    "reference" : "Patient/example-patient"
  },
  "encounter" : {
    "reference" : "Encounter/encounter-single-example"
  },
  "occurrenceDateTime" : "2013-01-10",
  "primarySource" : true,
  "lotNumber" : "AAJN11K",
  "expirationDate" : "2015-02-15",
  "site" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActSite",
      "code" : "LA",
      "display" : "left arm"
    }]
  },
  "route" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-RouteOfAdministration",
      "code" : "IM",
      "display" : "Injection, intramuscular"
    }]
  },
  "doseQuantity" : {
    "value" : 5,
    "system" : "http://unitsofmeasure.org",
    "code" : "mg"
  },
  "performer" : [{
    "function" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0443",
        "code" : "OP"
      }]
    },
    "actor" : {
      "reference" : "Practitioner/example-practitioner"
    }
  }],
  "note" : [{
    "text" : "Notes on adminstration of vaccine"
  }],
  "isSubpotent" : true,
  "fundingSource" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/immunization-funding-source",
      "code" : "private"
    }]
  }
}

```
