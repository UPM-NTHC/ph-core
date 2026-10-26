# practitionerrole-single-example - Draft PH Core Implementation Guide v0.2.0

## Example PractitionerRole: practitionerrole-single-example

Dr. Maria Clara Santos is a General Practitioner working with the Department of Health. One of her assignments is at the Philippine General Hospital.



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "practitionerrole-single-example",
  "meta" : {
    "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-practitionerrole"]
  },
  "identifier" : [{
    "system" : "http://doh.gov.ph/fhir/Identifier/practitioner-role-id"
  }],
  "active" : true,
  "practitioner" : {
    "reference" : "Practitioner/practitioner-single-example"
  },
  "organization" : {
    "reference" : "Organization/organization-single-example"
  },
  "code" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/practitioner-role",
      "code" : "doctor",
      "display" : "Doctor"
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
