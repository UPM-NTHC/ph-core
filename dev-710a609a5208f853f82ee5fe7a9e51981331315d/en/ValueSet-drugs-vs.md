# Drugs - Draft PH Core Implementation Guide v0.2.0

## ValueSet: Drugs (Experimental) 

 
This value set includes all drug or medicament substance codes and all pharmaceutical/biologic products from FDA. 

 **References** 

* [PH Core Medication](StructureDefinition-ph-core-medication.md)
* [PH Core Medication Administration](StructureDefinition-ph-core-medicationadministration.md)
* [PH Core Medication Dispense](StructureDefinition-ph-core-medicationdispense.md)
* [PH Core Medication Request](StructureDefinition-ph-core-medicationrequest.md)
* [PH Core Medication Statement](StructureDefinition-ph-core-medicationstatement.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "drugs-vs",
  "url" : "https://fhir.doh.gov.ph/phcore/ValueSet/drugs-vs",
  "version" : "0.2.0",
  "name" : "DrugsVS",
  "title" : "Drugs",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-10T02:11:38+00:00",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "This value set includes all drug or medicament substance codes and all pharmaceutical/biologic products from FDA.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PH",
      "display" : "Philippines"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://verification.fda.gov.ph"
    }]
  }
}

```
