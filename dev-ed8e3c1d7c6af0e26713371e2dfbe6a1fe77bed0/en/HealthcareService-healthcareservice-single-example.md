# Example PH Core HealthcareService - Draft PH Core Implementation Guide v0.2.1

## Example HealthcareService: Example PH Core HealthcareService

Profile: [PH Core HealthcareService](StructureDefinition-ph-core-healthcareservice.md)

**identifier**: `http://pgh.gov.ph/fhir/Identifier/service-id`/PGH-OPD-GMED-001

**active**: true

**providedBy**: [Organization Philippine General Hospital](Organization-organization-pgh-example.md)

**category**: Specialist Medical

**type**: General Practice

**specialty**: General medicine

**location**: [Location Philippine General Hospital](Location-location-single-example.md)

**name**: Outpatient Department - General Medicine

**telecom**: [+63-2-5548-0000](tel:+63-2-5548-0000), [opd.gmed@pgh.gov.ph](mailto:opd.gmed@pgh.gov.ph)

> **availableTime****daysOfWeek**: Monday, Tuesday, Wednesday, Thursday, Friday**availableStartTime**: 08:00:00**availableEndTime**: 17:00:00

### NotAvailables

| | |
| :--- | :--- |
| - | **Description** |
| * | Closed on public holidays |



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
