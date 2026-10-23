# organization-pgh-example - Draft PH Core Implementation Guide v0.2.1

## Example Organization: organization-pgh-example

Profile: [PH Core Organization](StructureDefinition-ph-core-organization.md)

**identifier**: `https://nhfr.doh.gov.ph/`/1234567890, `http://nhdr.gov.ph/fhir/Identifier/philhealthaccreditationnumber`/PAN-2024-56789, `http://nhdr.gov.ph/fhir/Identifier/philhealthemployernumber`/PEN-987654321

**active**: true

**type**: Healthcare Provider

**name**: Philippine General Hospital

**telecom**: [+63-2-8651-7800](tel:+63-2-8651-7800), [contact@pgh.gov.ph](mailto:contact@pgh.gov.ph)

**address**: Taft Avenue Manila 1000 PH (work)

### Contacts

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Name** | **Telecom** | **Address** |
| * | Hospital Administrator | [+63-2-8651-7801](tel:+63-2-8651-7801) | Taft Avenue Manila 1000 PH (work) |



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "organization-pgh-example",
  "meta" : {
    "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-organization"]
  },
  "identifier" : [{
    "system" : "https://nhfr.doh.gov.ph/",
    "value" : "1234567890"
  },
  {
    "system" : "http://nhdr.gov.ph/fhir/Identifier/philhealthaccreditationnumber",
    "value" : "PAN-2024-56789"
  },
  {
    "system" : "http://nhdr.gov.ph/fhir/Identifier/philhealthemployernumber",
    "value" : "PEN-987654321"
  }],
  "active" : true,
  "type" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/organization-type",
      "code" : "prov",
      "display" : "Healthcare Provider"
    }]
  }],
  "name" : "Philippine General Hospital",
  "telecom" : [{
    "system" : "phone",
    "value" : "+63-2-8651-7800",
    "use" : "work"
  },
  {
    "system" : "email",
    "value" : "contact@pgh.gov.ph",
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
    "type" : "both",
    "line" : ["Taft Avenue"],
    "city" : "Manila",
    "district" : "NCR",
    "postalCode" : "1000",
    "country" : "PH"
  }],
  "contact" : [{
    "name" : {
      "text" : "Hospital Administrator"
    },
    "telecom" : [{
      "system" : "phone",
      "value" : "+63-2-8651-7801"
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
      "line" : ["Taft Avenue"],
      "city" : "Manila",
      "postalCode" : "1000",
      "country" : "PH"
    }
  }]
}

```
