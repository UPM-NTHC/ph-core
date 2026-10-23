# practitionerrole-ed-example - Draft PH Core Implementation Guide v0.2.0

## Example PractitionerRole: practitionerrole-ed-example

Profile: [PH Core PractitionerRole](StructureDefinition-ph-core-practitionerrole.md)

**identifier**: `http://doh.gov.ph/fhir/Identifier/practitioner-role-id`/PR-ED-001

**active**: true

**practitioner**: [Practitioner Maria Clara Santos (official)](Practitioner-practitioner-ed-example.md)

**organization**: [Organization Philippine General Hospital](Organization-organization-pgh-example.md)

**code**: Doctor

**specialty**: Emergency medicine

**telecom**: [+63-2-8651-7802](tel:+63-2-8651-7802), [ed.attending@pgh.gov.ph](mailto:ed.attending@pgh.gov.ph)



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "practitionerrole-ed-example",
  "meta" : {
    "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-practitionerrole"]
  },
  "identifier" : [{
    "system" : "http://doh.gov.ph/fhir/Identifier/practitioner-role-id",
    "value" : "PR-ED-001"
  }],
  "active" : true,
  "practitioner" : {
    "reference" : "Practitioner/practitioner-ed-example"
  },
  "organization" : {
    "reference" : "Organization/organization-pgh-example"
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
      "code" : "773568002",
      "display" : "Emergency medicine"
    }]
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "+63-2-8651-7802",
    "use" : "work"
  },
  {
    "system" : "email",
    "value" : "ed.attending@pgh.gov.ph",
    "use" : "work"
  }]
}

```
