# PH Core Disability Type Code System - Draft PH Core Implementation Guide v0.2.0

## CodeSystem: PH Core Disability Type Code System (Experimental) 

 
Code system for types of disability as defined by the Philippine government for PWD registration. 

This Code system is referenced in the definition of the following value sets:

* [PHCoreDisabilityTypeVS](ValueSet-ph-core-disability-type-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ph-core-disability-type-cs",
  "url" : "https://fhir.doh.gov.ph/phcore/CodeSystem/ph-core-disability-type-cs",
  "version" : "0.2.0",
  "name" : "PHCoreDisabilityTypeCS",
  "title" : "PH Core Disability Type Code System",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-09T07:11:37+00:00",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "Code system for types of disability as defined by the Philippine government for PWD registration.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PH",
      "display" : "Philippines"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 9,
  "concept" : [{
    "code" : "visual",
    "display" : "Visual Disability",
    "definition" : "Complete or partial loss of sight/visual function."
  },
  {
    "code" : "hearing",
    "display" : "Hearing Disability",
    "definition" : "Complete or partial loss of hearing/hearing function."
  },
  {
    "code" : "speech",
    "display" : "Speech Impairment",
    "definition" : "Complete or partial loss of speech or communication function."
  },
  {
    "code" : "physical",
    "display" : "Physical/Orthopedic Disability",
    "definition" : "Impairment in physical/orthopedic function including locomotor disabilities."
  },
  {
    "code" : "intellectual",
    "display" : "Intellectual Disability",
    "definition" : "Significant limitations in intellectual functioning and adaptive behavior."
  },
  {
    "code" : "learning",
    "display" : "Learning Disability",
    "definition" : "Neurological disorders affecting acquisition and use of listening, speaking, reading, writing, reasoning, or mathematical abilities."
  },
  {
    "code" : "psychosocial",
    "display" : "Psychosocial Disability",
    "definition" : "Mental health conditions and psychosocial impairments."
  },
  {
    "code" : "visual-low-vision",
    "display" : "Low Vision",
    "definition" : "Significant visual impairment not correctable by standard glasses/contact lenses."
  },
  {
    "code" : "visual-blindness",
    "display" : "Blindness",
    "definition" : "Complete loss of vision or light perception."
  }]
}

```
