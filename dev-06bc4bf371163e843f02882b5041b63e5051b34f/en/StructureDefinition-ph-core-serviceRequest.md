# PH Core ServiceRequest - Draft PH Core Implementation Guide v0.2.1

## Resource Profile: PH Core ServiceRequest 

**Usages:**

* Refer to this Profile: [PH Core Observation](StructureDefinition-ph-core-observation.md)
* Examples for this Profile: [ServiceRequest/servicerequest-appendectomy-example](ServiceRequest-servicerequest-appendectomy-example.md) and [ServiceRequest/servicerequest-single-example](ServiceRequest-servicerequest-single-example.md)
* CapabilityStatements using this Profile: [CapabilityStatement[https://fhir.doh.gov.ph/phcore/CapabilityStatement/PHCoreServerCapabilityStatement|0.2.1]](CapabilityStatement-PHCoreServerCapabilityStatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir.ph.core|current/StructureDefinition/StructureDefinition-ph-core-serviceRequest.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-ph-core-serviceRequest.csv), [Excel](../StructureDefinition-ph-core-serviceRequest.xlsx), [Schematron](../StructureDefinition-ph-core-serviceRequest.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ph-core-serviceRequest",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 0
  }],
  "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-serviceRequest",
  "version" : "0.2.1",
  "name" : "PHCoreServiceRequest",
  "title" : "PH Core ServiceRequest",
  "status" : "draft",
  "date" : "2026-10-26T05:47:31+00:00",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "The PH Core ServiceRequest Profile is a Philippine-specific FHIR profile that represents a record of a request for services such as diagnostic investigations, treatments, or operations to be performed within the Philippine health system. It constrains the base FHIR ServiceRequest resource by defining minimum expectations on core elements, extensions, vocabularies, and value sets relevant to local clinical and administrative workflows. It serves as a nationally consistent baseline for recording, searching, and fetching service request information to support interoperable health information exchange across Philippine health facilities and programs.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "quick",
    "uri" : "http://siframework.org/cqf",
    "name" : "Quality Improvement and Clinical Knowledge (QUICK)"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ServiceRequest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ServiceRequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ServiceRequest",
      "path" : "ServiceRequest"
    },
    {
      "id" : "ServiceRequest.subject",
      "path" : "ServiceRequest.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-patient",
        "http://hl7.org/fhir/StructureDefinition/Group",
        "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-location",
        "http://hl7.org/fhir/StructureDefinition/Device"]
      }]
    },
    {
      "id" : "ServiceRequest.encounter",
      "path" : "ServiceRequest.encounter",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-encounter"]
      }]
    },
    {
      "id" : "ServiceRequest.requester",
      "path" : "ServiceRequest.requester",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-practitioner",
        "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-practitionerrole",
        "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-organization",
        "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-patient",
        "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-relatedperson",
        "http://hl7.org/fhir/StructureDefinition/Device"]
      }]
    }]
  }
}

```
