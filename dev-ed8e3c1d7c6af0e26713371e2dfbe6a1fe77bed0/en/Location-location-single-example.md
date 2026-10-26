# Example PH Core Location - Draft PH Core Implementation Guide v0.2.1

## Example Location: Example PH Core Location

Profile: [PH Core Location](StructureDefinition-ph-core-location.md)

**status**: Active

**name**: Philippine General Hospital

**type**: Hospital

**address**: Taft Avenue 1000 PH (work)

**physicalType**: Building

### Positions

| | | |
| :--- | :--- | :--- |
| - | **Longitude** | **Latitude** |
| * | 120.9856 | 14.5764 |

**managingOrganization**: [Organization Philippine General Hospital](Organization-organization-pgh-example.md)



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "location-single-example",
  "meta" : {
    "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-location"]
  },
  "status" : "active",
  "name" : "Philippine General Hospital",
  "type" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
      "code" : "HOSP",
      "display" : "Hospital"
    }],
    "text" : "Hospital"
  }],
  "address" : {
    "extension" : [{
      "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/region",
      "valueCoding" : {
        "system" : "https://psa.gov.ph/classification/psgc",
        "code" : "1300000000",
        "display" : "National Capital Region (NCR)"
      }
    },
    {
      "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/city-municipality",
      "valueCoding" : {
        "system" : "https://psa.gov.ph/classification/psgc",
        "code" : "1380600000",
        "display" : "City of Manila"
      }
    }],
    "use" : "work",
    "line" : ["Taft Avenue"],
    "postalCode" : "1000",
    "country" : "PH"
  },
  "physicalType" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/location-physical-type",
      "code" : "bu",
      "display" : "Building"
    }],
    "text" : "Building"
  },
  "position" : {
    "longitude" : 120.9856,
    "latitude" : 14.5764
  },
  "managingOrganization" : {
    "reference" : "Organization/organization-pgh-example"
  }
}

```
