# PH Core Organization - Draft PH Core Implementation Guide v0.2.1

## Resource Profile: PH Core Organization 

### Identifier namespaces

The following system URIs identify the Organization identifier slices used by PH Core. Their use in this guide does not imply that the issuing organizations have approved these URIs as FHIR identifier namespaces. Pending confirmation with the relevant authorities, treat them as provisional namespace choices for PH Core exchange.

| | | |
| :--- | :--- | :--- |
| NhfrCode | DOH National Health Facility Registry code | `https://nhfr.doh.gov.ph/` |
| HcpnCode | Health Care Provider Network code | `https://fhir.doh.gov.ph/phcore/Identifier/hcpn-code` |
| PAN | PhilHealth Accreditation Number | `http://nhdr.gov.ph/fhir/Identifier/philhealthaccreditationnumber` |
| PEN | PhilHealth Employer Number | `http://nhdr.gov.ph/fhir/Identifier/philhealthemployernumber` |

Each named slice has a distinct system pattern. Additional identifier systems are permitted by the open slicing rule. Identifier values are scoped by their system URI; retain the exact URI, including its scheme and trailing slash, when exchanging identifiers. Any future namespace replacement requires a documented migration.

**Usages:**

* Refer to this Profile: [PH Core Claim](StructureDefinition-ph-core-claim.md), [PH Core Encounter](StructureDefinition-ph-core-encounter.md), [PH Core HealthcareService](StructureDefinition-ph-core-healthcareservice.md), [PH Core Immunization](StructureDefinition-ph-core-immunization.md)... Show 13 more, [PH Core Location](StructureDefinition-ph-core-location.md), [PH Core Medication Dispense](StructureDefinition-ph-core-medicationdispense.md), [PH Core Medication Request](StructureDefinition-ph-core-medicationrequest.md), [PH Core Medication Statement](StructureDefinition-ph-core-medicationstatement.md), [PH Core Observation](StructureDefinition-ph-core-observation.md), [PH Core Organization](StructureDefinition-ph-core-organization.md), [PH Core Patient](StructureDefinition-ph-core-patient.md), [PH Core Practitioner](StructureDefinition-ph-core-practitioner.md), [PH Core PractitionerRole](StructureDefinition-ph-core-practitionerrole.md), [PH Core Procedure](StructureDefinition-ph-core-procedure.md), [PH Core Provenance](StructureDefinition-ph-core-provenance.md), [PH Core ServiceRequest](StructureDefinition-ph-core-serviceRequest.md) and [PH Core Task](StructureDefinition-ph-core-task.md)
* Examples for this Profile: [Philippine General Hospital](Organization-organization-pgh-example.md), [Philippine Health Insurance Corporation (illustrative)](Organization-organization-philhealth-example.md), [Professional Regulation Commission (illustrative)](Organization-organization-prc-example.md) and [Example Manila Health Center](Organization-organization-single-example.md)
* CapabilityStatements using this Profile: [CapabilityStatement[https://fhir.doh.gov.ph/phcore/CapabilityStatement/PHCoreServerCapabilityStatement|0.2.1]](CapabilityStatement-PHCoreServerCapabilityStatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir.ph.core|current/StructureDefinition/StructureDefinition-ph-core-organization.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-ph-core-organization.csv), [Excel](../StructureDefinition-ph-core-organization.xlsx), [Schematron](../StructureDefinition-ph-core-organization.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ph-core-organization",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 0
  }],
  "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-organization",
  "version" : "0.2.1",
  "name" : "PHCoreOrganization",
  "title" : "PH Core Organization",
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
  "description" : "This profile localizes the FHIR R4 Organization resource to the Philippine context.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
    "identity" : "servd",
    "uri" : "http://www.omg.org/spec/ServD/1.0/",
    "name" : "ServD"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Organization",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Organization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Organization",
      "path" : "Organization"
    },
    {
      "id" : "Organization.identifier",
      "path" : "Organization.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "description" : "Slicing based on identifier system",
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Organization.identifier:NhfrCode",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate-if-known"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://fhir.doh.gov.ph/phcore/ActorDefinition/PHCoreClient"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "Applies when the Client produces resources for supported resource-bearing requests. This obligation does not require a read-only Client to author resources or implement write interactions."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:handle"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://fhir.doh.gov.ph/phcore/ActorDefinition/PHCoreServer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "Applies when the Server processes resources in supported incoming requests. Correct handling is use-case dependent and is not a blanket persistence or display requirement."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Organization.identifier",
      "sliceName" : "NhfrCode",
      "short" : "DOH NHFR Code",
      "definition" : "Health Facility Code (HFC) from the National Health Facility Registry",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:NhfrCode.type",
      "path" : "Organization.identifier.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
          "code" : "NH"
        }]
      }
    },
    {
      "id" : "Organization.identifier:NhfrCode.system",
      "path" : "Organization.identifier.system",
      "min" : 1,
      "fixedUri" : "https://nhfr.doh.gov.ph/"
    },
    {
      "id" : "Organization.identifier:NhfrCode.value",
      "path" : "Organization.identifier.value",
      "example" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-suppress",
          "valueBoolean" : true
        }],
        "label" : "General",
        "valueString" : "123456"
      },
      {
        "label" : "DOH NHFR Code",
        "valueString" : "DOH000000000012345"
      }]
    },
    {
      "id" : "Organization.identifier:HcpnSite",
      "path" : "Organization.identifier",
      "sliceName" : "HcpnSite",
      "short" : "HCPN Integration Site; Note that the cities and provinces can establish their own HCPN, but DOH can only Monitor Sites listed on http://bit.ly/ListofUHCIS",
      "definition" : "Health Care Provider Network (HCPN) code uniquely identifying an organization within its Health Care Provider Network in the Philippines. There is no National Coded Registry of capturing this, hence Free Text or string is ok and has to be agreed upon by their designated networks. Note that the cities and provinces can establish their own HCPN, but DOH can only Monitor Sites listed on http://bit.ly/ListofUHCIS",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Organization.identifier:HcpnSite.type",
      "path" : "Organization.identifier.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
          "code" : "LR"
        }]
      }
    },
    {
      "id" : "Organization.identifier:HcpnSite.system",
      "path" : "Organization.identifier.system",
      "min" : 1,
      "fixedUri" : "https://fhir.doh.gov.ph/phcore/Identifier/hcpn-code"
    },
    {
      "id" : "Organization.identifier:HcpnSite.value",
      "path" : "Organization.identifier.value",
      "example" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-suppress",
          "valueBoolean" : true
        }],
        "label" : "General",
        "valueString" : "123456"
      },
      {
        "label" : "HCPN entry for Aklan",
        "valueString" : "Aklan"
      },
      {
        "label" : "HCPN entry for Baguio City",
        "valueString" : "Baguio City"
      }]
    },
    {
      "id" : "Organization.identifier:PAN",
      "path" : "Organization.identifier",
      "sliceName" : "PAN",
      "short" : "PAN - PhilHealth Accreditation Number",
      "definition" : "The unique number issued by PhilHealth to accredited institutions.",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Organization.identifier:PAN.type",
      "path" : "Organization.identifier.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
          "code" : "NPI"
        }]
      }
    },
    {
      "id" : "Organization.identifier:PAN.system",
      "path" : "Organization.identifier.system",
      "min" : 1,
      "fixedUri" : "http://nhdr.gov.ph/fhir/Identifier/philhealthaccreditationnumber"
    },
    {
      "id" : "Organization.identifier:PAN.value",
      "path" : "Organization.identifier.value",
      "short" : "PhilHealth Accreditation Number",
      "example" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-suppress",
          "valueBoolean" : true
        }],
        "label" : "General",
        "valueString" : "123456"
      }]
    },
    {
      "id" : "Organization.identifier:PEN",
      "path" : "Organization.identifier",
      "sliceName" : "PEN",
      "short" : "PEN - PhilHealth Employer Number",
      "definition" : "The unique number issued by PhilHealth to employers.",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Organization.identifier:PEN.type",
      "path" : "Organization.identifier.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
          "code" : "NE"
        }]
      }
    },
    {
      "id" : "Organization.identifier:PEN.system",
      "path" : "Organization.identifier.system",
      "min" : 1,
      "fixedUri" : "http://nhdr.gov.ph/fhir/Identifier/philhealthemployernumber"
    },
    {
      "id" : "Organization.identifier:PEN.value",
      "path" : "Organization.identifier.value",
      "example" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-suppress",
          "valueBoolean" : true
        }],
        "label" : "General",
        "valueString" : "123456"
      }]
    },
    {
      "id" : "Organization.name",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate-if-known"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://fhir.doh.gov.ph/phcore/ActorDefinition/PHCoreClient"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "Applies when the Client produces resources for supported resource-bearing requests. This obligation does not require a read-only Client to author resources or implement write interactions."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:handle"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://fhir.doh.gov.ph/phcore/ActorDefinition/PHCoreServer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "Applies when the Server processes resources in supported incoming requests. Correct handling is use-case dependent and is not a blanket persistence or display requirement."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Organization.name",
      "mustSupport" : true
    },
    {
      "id" : "Organization.telecom",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate-if-known"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://fhir.doh.gov.ph/phcore/ActorDefinition/PHCoreClient"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "Applies when the Client produces resources for supported resource-bearing requests. This obligation does not require a read-only Client to author resources or implement write interactions."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:handle"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://fhir.doh.gov.ph/phcore/ActorDefinition/PHCoreServer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "Applies when the Server processes resources in supported incoming requests. Correct handling is use-case dependent and is not a blanket persistence or display requirement."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Organization.telecom",
      "mustSupport" : true
    },
    {
      "id" : "Organization.address",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate-if-known"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://fhir.doh.gov.ph/phcore/ActorDefinition/PHCoreClient"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "Applies when the Client produces resources for supported resource-bearing requests. This obligation does not require a read-only Client to author resources or implement write interactions."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:handle"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://fhir.doh.gov.ph/phcore/ActorDefinition/PHCoreServer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "Applies when the Server processes resources in supported incoming requests. Correct handling is use-case dependent and is not a blanket persistence or display requirement."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Organization.address",
      "type" : [{
        "code" : "Address",
        "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-address"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Organization.partOf",
      "path" : "Organization.partOf",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
          "valueBoolean" : true
        }],
        "code" : "Reference",
        "targetProfile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-organization"]
      }]
    },
    {
      "id" : "Organization.contact.address",
      "path" : "Organization.contact.address",
      "type" : [{
        "code" : "Address",
        "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-address"]
      }]
    }]
  }
}

```
