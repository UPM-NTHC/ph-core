# Example PH Core HealthcareService - Draft PH Core Implementation Guide v0.2.1

## Example HealthcareService: Example PH Core HealthcareService

Profile: [PH Core HealthcareService](StructureDefinition-ph-core-healthcareservice.md)

Outpatient Department - General Medicine (General Practice) by Philippine General Hospital (Healthcare Provider) (https://nhfr.doh.gov.ph/#1234567890) (http://pgh.gov.ph/fhir/Identifier/service-id#PGH-OPD-GMED-001)

-------

| | |
| :--- | :--- |
| Active: | true |
| Provided By: | [Philippine General Hospital (Healthcare Provider) (https://nhfr.doh.gov.ph/#1234567890)](Organization-organization-pgh-example.md) |
| Category: | Specialist Medical |
| Type: | General Practice |
| Specialty: | General medicine |
| Location: | [Philippine General Hospital (Hospital)](Location-location-single-example.md) |
| Contact Detail | * [+63-2-5548-0000](tel:+63-2-5548-0000)
* [opd.gmed@pgh.gov.ph](mailto:opd.gmed@pgh.gov.ph)
 |
| Availability: | * Monday, Tuesday, Wednesday, Thursday, Friday: 08:00:00 - 17:00:00
* Not available: Closed on public holidays
 |



## Resource Content

```json
{
  "resourceType" : "HealthcareService",
  "id" : "healthcareservice-single-example",
  "meta" : {
    "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-healthcareservice"]
  },
  "identifier" : [{
    "system" : "http://pgh.gov.ph/fhir/Identifier/service-id",
    "value" : "PGH-OPD-GMED-001"
  }],
  "active" : true,
  "providedBy" : {
    "reference" : "Organization/organization-pgh-example"
  },
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/service-category",
      "code" : "27",
      "display" : "Specialist Medical"
    }],
    "text" : "Specialist Medical"
  }],
  "type" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/service-type",
      "code" : "124",
      "display" : "General Practice"
    }],
    "text" : "General Practice"
  }],
  "specialty" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "394802001",
      "display" : "General medicine"
    }],
    "text" : "General medicine"
  }],
  "location" : [{
    "reference" : "Location/location-single-example"
  }],
  "name" : "Outpatient Department - General Medicine",
  "telecom" : [{
    "system" : "phone",
    "value" : "+63-2-5548-0000",
    "use" : "work"
  },
  {
    "system" : "email",
    "value" : "opd.gmed@pgh.gov.ph",
    "use" : "work"
  }],
  "availableTime" : [{
    "daysOfWeek" : ["mon", "tue", "wed", "thu", "fri"],
    "availableStartTime" : "08:00:00",
    "availableEndTime" : "17:00:00"
  }],
  "notAvailable" : [{
    "description" : "Closed on public holidays"
  }]
}

```
