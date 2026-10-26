# City/Municipality - Draft PH Core Implementation Guide v0.2.0

## Extension: City/Municipality (Experimental) 

City/municipality from the standard geographic code.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [PH Core Address](StructureDefinition-ph-core-address.md)
* Examples for this Extension: [Bundle/transaction-example](Bundle-transaction-example.md), [Philippine General Hospital](Location-location-single-example.md), [Department of Health - Sattelite Office](Organization-organization-single-example.md), [Patient/example-patient](Patient-example-patient.md)... Show 3 more, [Patient/patient-single-example](Patient-patient-single-example.md), [Practitioner/practitioner-single-example](Practitioner-practitioner-single-example.md) and [RelatedPerson/relatedperson-single-example](RelatedPerson-relatedperson-single-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ph.core|current/StructureDefinition/city-municipality)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-city-municipality.csv), [Excel](../StructureDefinition-city-municipality.xlsx), [Schematron](../StructureDefinition-city-municipality.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "city-municipality",
  "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/city-municipality",
  "version" : "0.2.0",
  "name" : "CityMunicipality",
  "title" : "City/Municipality",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-12T04:48:36+00:00",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "City/municipality from the standard geographic code.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PH",
      "display" : "Philippines"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Address"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "City/Municipality",
      "definition" : "City/municipality from the standard geographic code."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/city-municipality"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://fhir.doh.gov.ph/phcore/ValueSet/cities"
      }
    }]
  }
}

```
