# Resource PHCoreServer



## Resource Content

```json
{
  "resourceType" : "Basic",
  "id" : "PHCoreServer",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 0
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.capabilities",
    "valueCanonical" : "https://fhir.doh.gov.ph/phcore/CapabilityStatement/PHCoreServerCapabilityStatement"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.url",
    "valueUri" : "https://fhir.doh.gov.ph/phcore/ActorDefinition/PHCoreServer"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.version",
    "valueString" : "0.2.1"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.name",
    "valueString" : "PHCoreServer"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.title",
    "valueString" : "PH Core Server"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.status",
    "valueCode" : "draft"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.date",
    "valueDateTime" : "2026-10-15"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.publisher",
    "valueString" : "UP Manila National TeleHealth Center"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.contact",
    "valueContactDetail" : {
      "name" : "UP Manila National TeleHealth Center",
      "telecom" : [{
        "system" : "url",
        "value" : "https://github.com/UP-NTHC"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.description",
    "valueMarkdown" : "A system that accepts FHIR API requests and provides responses using PH Core resources."
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.useContext",
    "valueUsageContext" : {
      "code" : {
        "system" : "http://terminology.hl7.org/CodeSystem/usage-context-type",
        "code" : "jurisdiction"
      },
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "urn:iso:std:iso:3166",
          "code" : "PH",
          "display" : "Philippines"
        }]
      }
    }
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.type",
    "valueCode" : "system"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.documentation",
    "valueMarkdown" : "A PH Core Server accepts FHIR API requests and provides responses containing PH Core resources. It fulfills population obligations when producing response resources and correctly handles resources in supported incoming write requests. It may store, generate, aggregate or proxy resources; it is not required to originate clinical facts or support every write interaction. The role applies to the request being answered; a system may also act as a PH Core Client in other exchanges. The API requirements are defined in the [PH Core Server CapabilityStatement](CapabilityStatement-PHCoreServerCapabilityStatement.html)."
  }],
  "code" : {
    "coding" : [{
      "system" : "http://hl7.org/fhir/fhir-types",
      "code" : "ActorDefinition"
    }]
  }
}

```
