# example-practitioner - Draft PH Core Implementation Guide v0.2.0

## Example Practitioner: example-practitioner

Profile: [PH Core Practitioner](StructureDefinition-ph-core-practitioner.md)

**name**: Maria Clara Santos 

**telecom**: [+63-912-345-6789](tel:+63-912-345-6789), [maria.santos@example.ph](mailto:maria.santos@example.ph)

**address**: 1234 Mabini Street Manila NCR 1000 PH (home)

**gender**: Female

**birthDate**: 1985-05-15



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "example-practitioner",
  "meta" : {
    "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-practitioner"]
  },
  "name" : [{
    "family" : "Santos",
    "given" : ["Maria", "Clara"]
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
    "use" : "home",
    "line" : ["1234 Mabini Street"],
    "city" : "Manila",
    "state" : "NCR",
    "postalCode" : "1000",
    "country" : "PH"
  }],
  "gender" : "female",
  "birthDate" : "1985-05-15"
}

```
