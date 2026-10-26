# practitionerrole-single-example - Draft PH Core Implementation Guide v0.2.1

## Example PractitionerRole: practitionerrole-single-example

Profile: [PH Core PractitionerRole](StructureDefinition-ph-core-practitionerrole.md)

Maria Clara Santos (official): Physician at Philippine General Hospital (Healthcare Provider) (https://nhfr.doh.gov.ph/#1234567890) (http://doh.gov.ph/fhir/Identifier/practitioner-role-id#PR-OPD-001)

-------

| | |
| :--- | :--- |
| Active: | true |
| Practitioner: | [Maria Clara Santos (official)](Practitioner-practitioner-single-example.md) |
| Organization: | [Philippine General Hospital (Healthcare Provider) (https://nhfr.doh.gov.ph/#1234567890)](Organization-organization-pgh-example.md) |
| Role: | Physician |
| Specialty: | General medicine |
| Location: | [Philippine General Hospital (Hospital)](Location-location-single-example.md) |
| Contact Detail | * [+63-2-8651-7800](tel:+63-2-8651-7800)
* [maria.santos@doh.gov.ph](mailto:maria.santos@doh.gov.ph)
 |



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "practitionerrole-single-example",
  "meta" : {
    "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-practitionerrole"]
  },
  "identifier" : [{
    "system" : "http://doh.gov.ph/fhir/Identifier/practitioner-role-id",
    "value" : "PR-OPD-001"
  }],
  "active" : true,
  "practitioner" : {
    "reference" : "Practitioner/practitioner-single-example"
  },
  "organization" : {
    "reference" : "Organization/organization-pgh-example"
  },
  "code" : [{
    "coding" : [{
      "system" : "https://fhir.doh.gov.ph/phcore/CodeSystem/prc",
      "code" : "2200",
      "display" : "Physician"
    }]
  }],
  "specialty" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "394802001",
      "display" : "General medicine"
    }]
  }],
  "location" : [{
    "reference" : "Location/location-single-example"
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "+63-2-8651-7800"
  },
  {
    "system" : "email",
    "value" : "maria.santos@doh.gov.ph"
  }]
}

```
