# PH Core RelatedPerson - Draft PH Core Implementation Guide v0.2.1

## Resource Profile: PH Core RelatedPerson 

**Usages:**

* Refer to this Profile: [PH Core Claim](StructureDefinition-ph-core-claim.md), [PH Core Condition](StructureDefinition-ph-core-condition.md), [PH Core Encounter](StructureDefinition-ph-core-encounter.md), [PH Core Medication Administration](StructureDefinition-ph-core-medicationadministration.md)... Show 9 more, [PH Core Medication Dispense](StructureDefinition-ph-core-medicationdispense.md), [PH Core Medication Request](StructureDefinition-ph-core-medicationrequest.md), [PH Core Medication Statement](StructureDefinition-ph-core-medicationstatement.md), [PH Core Observation](StructureDefinition-ph-core-observation.md), [PH Core Patient](StructureDefinition-ph-core-patient.md), [PH Core Procedure](StructureDefinition-ph-core-procedure.md), [PH Core Provenance](StructureDefinition-ph-core-provenance.md), [PH Core ServiceRequest](StructureDefinition-ph-core-serviceRequest.md) and [PH Core Task](StructureDefinition-ph-core-task.md)
* Examples for this Profile: [RelatedPerson/relatedperson-single-example](RelatedPerson-relatedperson-single-example.md)
* CapabilityStatements using this Profile: [CapabilityStatement[https://fhir.doh.gov.ph/phcore/CapabilityStatement/PHCoreServerCapabilityStatement|0.2.1]](CapabilityStatement-PHCoreServerCapabilityStatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir.ph.core|current/StructureDefinition/StructureDefinition-ph-core-relatedperson.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-ph-core-relatedperson.csv), [Excel](../StructureDefinition-ph-core-relatedperson.xlsx), [Schematron](../StructureDefinition-ph-core-relatedperson.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ph-core-relatedperson",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 0
  }],
  "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-relatedperson",
  "version" : "0.2.1",
  "name" : "PHCoreRelatedPerson",
  "title" : "PH Core RelatedPerson",
  "status" : "draft",
  "date" : "2026-10-23T04:35:45+00:00",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "This profile localizes the FHIR R4 RelatedPerson resource to the Philippine context.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "RelatedPerson",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "RelatedPerson",
      "path" : "RelatedPerson"
    },
    {
      "id" : "RelatedPerson.extension",
      "path" : "RelatedPerson.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "RelatedPerson.extension:genderIdentity",
      "path" : "RelatedPerson.extension",
      "sliceName" : "genderIdentity",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/individual-genderIdentity|5.3.0"]
      }]
    },
    {
      "id" : "RelatedPerson.extension:individualPronouns",
      "path" : "RelatedPerson.extension",
      "sliceName" : "individualPronouns",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/individual-pronouns|5.3.0"]
      }]
    },
    {
      "id" : "RelatedPerson.extension:sex",
      "path" : "RelatedPerson.extension",
      "sliceName" : "sex",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender|5.3.0"]
      }]
    },
    {
      "id" : "RelatedPerson.identifier",
      "path" : "RelatedPerson.identifier",
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
      "id" : "RelatedPerson.identifier:PHCorePhilHealthID",
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
      "path" : "RelatedPerson.identifier",
      "sliceName" : "PHCorePhilHealthID",
      "short" : "PhilHealth ID",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "RelatedPerson.identifier:PHCorePhilHealthID.type",
      "path" : "RelatedPerson.identifier.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
          "code" : "NH"
        }]
      }
    },
    {
      "id" : "RelatedPerson.identifier:PHCorePhilHealthID.system",
      "path" : "RelatedPerson.identifier.system",
      "min" : 1,
      "fixedUri" : "http://philhealth.gov.ph/fhir/Identifier/philhealth-id"
    },
    {
      "id" : "RelatedPerson.identifier:PHCorePhilHealthID.value",
      "path" : "RelatedPerson.identifier.value",
      "example" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-suppress",
          "valueBoolean" : true
        }],
        "label" : "General",
        "valueString" : "123456"
      },
      {
        "label" : "PhilHealth ID",
        "valueString" : "nn-nnnnnnnnn-n"
      }]
    },
    {
      "id" : "RelatedPerson.identifier:PHCorePhilSysID",
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
      "path" : "RelatedPerson.identifier",
      "sliceName" : "PHCorePhilSysID",
      "short" : "PhilSys ID",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "RelatedPerson.identifier:PHCorePhilSysID.type",
      "path" : "RelatedPerson.identifier.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
          "code" : "NI"
        }]
      }
    },
    {
      "id" : "RelatedPerson.identifier:PHCorePhilSysID.system",
      "path" : "RelatedPerson.identifier.system",
      "min" : 1,
      "fixedUri" : "http://philsys.gov.ph/fhir/Identifier/philsys-id"
    },
    {
      "id" : "RelatedPerson.identifier:PHCorePhilSysID.value",
      "path" : "RelatedPerson.identifier.value",
      "example" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-suppress",
          "valueBoolean" : true
        }],
        "label" : "General",
        "valueString" : "123456"
      },
      {
        "label" : "PhilSys ID",
        "valueString" : "1234-5678-9101-1213"
      }]
    },
    {
      "id" : "RelatedPerson.name",
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
      "path" : "RelatedPerson.name",
      "mustSupport" : true
    },
    {
      "id" : "RelatedPerson.name.given",
      "path" : "RelatedPerson.name.given",
      "short" : "First name (given[0]) and Middle Name (given[1]).",
      "definition" : "First name (given[0]) and Middle Name (given[1])."
    },
    {
      "id" : "RelatedPerson.telecom",
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
      "path" : "RelatedPerson.telecom",
      "mustSupport" : true
    },
    {
      "id" : "RelatedPerson.address",
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
      "path" : "RelatedPerson.address",
      "type" : [{
        "code" : "Address",
        "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-address"]
      }],
      "mustSupport" : true
    }]
  }
}

```
