# Example PH Core Organization - Draft PH Core Implementation Guide v0.2.1

## Example Organization: Example PH Core Organization

Profile: [PH Core Organization](StructureDefinition-ph-core-organization.md)

Example Manila Health Center (https://nhfr.doh.gov.ph/#0987654321)

-------

| | |
| :--- | :--- |
| Active: | true |
| Other Ids: | * `https://fhir.doh.gov.ph/phcore/Identifier/hcpn-code`/HCPN-EXAMPLE-MANILA-001
* `http://nhdr.gov.ph/fhir/Identifier/philhealthaccreditationnumber`/PAN-2024-00001
* `http://nhdr.gov.ph/fhir/Identifier/philhealthemployernumber`/PEN-000000001
* `http://my-hospital.org/internal-id`/HOSP-INT-12345
 |
| Contact Detail | * [+63-2-8651-7800](tel:+63-2-8651-7800)
* [contact@doh.gov.ph](mailto:contact@doh.gov.ph)
* 123 Hospital Street 1000 PH (work)
 |
| Contact Detail | * Health Facility Contact
* [+63-2-8651-7800](tel:+63-2-8651-7800)
* 125 Central Office Street 1000 PH (work)
 |



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "organization-single-example",
  "meta" : {
    "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-organization"]
  },
  "identifier" : [{
    "system" : "https://nhfr.doh.gov.ph/",
    "value" : "0987654321"
  },
  {
    "system" : "https://fhir.doh.gov.ph/phcore/Identifier/hcpn-code",
    "value" : "HCPN-EXAMPLE-MANILA-001"
  },
  {
    "system" : "http://nhdr.gov.ph/fhir/Identifier/philhealthaccreditationnumber",
    "value" : "PAN-2024-00001"
  },
  {
    "system" : "http://nhdr.gov.ph/fhir/Identifier/philhealthemployernumber",
    "value" : "PEN-000000001"
  },
  {
    "system" : "http://my-hospital.org/internal-id",
    "value" : "HOSP-INT-12345"
  }],
  "active" : true,
  "name" : "Example Manila Health Center",
  "telecom" : [{
    "system" : "phone",
    "value" : "+63-2-8651-7800",
    "use" : "work"
  },
  {
    "system" : "email",
    "value" : "contact@doh.gov.ph",
    "use" : "work"
  }],
  "address" : [{
    "extension" : [{
      "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/region",
      "valueCoding" : {
        "system" : "https://psa.gov.ph/classification/psgc",
        "code" : "1300000000"
      }
    },
    {
      "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/city-municipality",
      "valueCoding" : {
        "system" : "https://psa.gov.ph/classification/psgc",
        "code" : "1380600000"
      }
    }],
    "use" : "work",
    "line" : ["123 Hospital Street"],
    "postalCode" : "1000",
    "country" : "PH"
  }],
  "contact" : [{
    "name" : {
      "text" : "Health Facility Contact"
    },
    "telecom" : [{
      "system" : "phone",
      "value" : "+63-2-8651-7800"
    }],
    "address" : {
      "extension" : [{
        "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/region",
        "valueCoding" : {
          "system" : "https://psa.gov.ph/classification/psgc",
          "code" : "1300000000"
        }
      },
      {
        "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/city-municipality",
        "valueCoding" : {
          "system" : "https://psa.gov.ph/classification/psgc",
          "code" : "1380600000"
        }
      }],
      "use" : "work",
      "line" : ["125 Central Office Street"],
      "postalCode" : "1000",
      "country" : "PH"
    }
  }]
}

```
