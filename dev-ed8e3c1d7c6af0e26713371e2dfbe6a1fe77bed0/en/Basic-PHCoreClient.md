# Resource PHCoreClient



## Resource Content

```json
{
  "resourceType" : "Basic",
  "id" : "PHCoreClient",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 0
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.capabilities",
    "valueCanonical" : "https://fhir.doh.gov.ph/phcore/CapabilityStatement/PHCoreClientCapabilityStatement"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.url",
    "valueUri" : "https://fhir.doh.gov.ph/phcore/ActorDefinition/PHCoreClient"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.version",
    "valueString" : "0.2.1"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.name",
    "valueString" : "PHCoreClient"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.title",
    "valueString" : "PH Core Client"
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
    "valueMarkdown" : "A system that initiates FHIR API requests to access or exchange PH Core resources."
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
    "valueMarkdown" : "A PH Core Client initiates FHIR API requests to access or exchange PH Core resources. It correctly handles resources received in responses. When it produces resources for a supported write interaction, it fulfills the applicable population obligations. A read-only client is not required to author resource payloads. The role applies to the request being initiated; a system may also act as a PH Core Server in other exchanges. The API requirements are defined in the [PH Core Client CapabilityStatement](CapabilityStatement-PHCoreClientCapabilityStatement.html)."
  }],
  "code" : {
    "coding" : [{
      "system" : "http://hl7.org/fhir/fhir-types",
      "code" : "ActorDefinition"
    }]
  }
}

```
