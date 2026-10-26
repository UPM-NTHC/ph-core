# patient-acs-example - Draft PH Core Implementation Guide v0.2.0

## Example Patient: patient-acs-example

Profile: [PH Core Patient](StructureDefinition-ph-core-patient.md)

Juan Carlos Dela Cruz (official) Male, DoB: 1981-03-15 ( http://philhealth.gov.ph/fhir/Identifier/philhealth-id#PhilHealthID#63-584789845-5)

-------

| | |
| :--- | :--- |
| Active: | true |
| Contact Detail | * [+63-917-123-4567](tel:+63-917-123-4567)
* 123 Mabini Street Barangay Malinis City of Las Piñas 1740 PH (home)
 |
| Links: | * General Practitioner: [Practitioner Maria Clara Santos (official)](Practitioner-practitioner-ed-example.md)
* Managing Organization: [Organization Philippine General Hospital](Organization-organization-pgh-example.md)
 |
| [Race](StructureDefinition-race.md) | Filipino |
| Patient Nationality: | * code: Philippines
* period: 1981-03-15 --> (ongoing)
 |
| [Educational Attainment](StructureDefinition-educational-attainment.md) | Elementary Graduate |
| Occupation: | * occupationClassification: Street Food Vendor
* occupationLength: 2015-01-01 --> (ongoing)
 |
| [Indigenous People](StructureDefinition-indigenous-people.md) | false |
| [Patient Religion](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-patient-religion.html) | Roman Catholic Church |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "patient-acs-example",
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
        "start" : "1981-03-15"
      }
    }],
    "url" : "http://hl7.org/fhir/StructureDefinition/patient-nationality"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/patient-religion",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ReligiousAffiliation",
        "code" : "1041",
        "display" : "Roman Catholic Church"
      }]
    }
  },
  {
    "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/indigenous-people",
    "valueBoolean" : false
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
        "code" : "C201301",
        "display" : "Elementary Graduate"
      }]
    }
  },
  {
    "extension" : [{
      "url" : "occupationClassification",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://psa.gov.ph/classification/psoc/unit",
          "code" : "911102",
          "display" : "Street Food Vendor"
        }]
      }
    },
    {
      "url" : "occupationLength",
      "valuePeriod" : {
        "start" : "2015-01-01"
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
    "use" : "official",
    "family" : "Dela Cruz",
    "given" : ["Juan", "Carlos"]
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "+63-917-123-4567",
    "use" : "mobile"
  }],
  "gender" : "male",
  "birthDate" : "1981-03-15",
  "address" : [{
    "extension" : [{
      "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/city-municipality",
      "valueCoding" : {
        "system" : "https://psa.gov.ph/classification/psgc",
        "code" : "1380200000",
        "display" : "City of Las Piñas"
      }
    },
    {
      "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/region",
      "valueCoding" : {
        "system" : "https://psa.gov.ph/classification/psgc",
        "code" : "1300000000",
        "display" : "National Capital Region"
      }
    }],
    "use" : "home",
    "type" : "both",
    "line" : ["123 Mabini Street", "Barangay Malinis"],
    "city" : "City of Las Piñas",
    "district" : "NCR",
    "postalCode" : "1740",
    "country" : "PH"
  }],
  "generalPractitioner" : [{
    "reference" : "Practitioner/practitioner-ed-example"
  }],
  "managingOrganization" : {
    "reference" : "Organization/organization-pgh-example"
  }
}

```
