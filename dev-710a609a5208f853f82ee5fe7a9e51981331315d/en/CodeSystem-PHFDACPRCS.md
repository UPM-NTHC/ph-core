# PH FDA Certificate of Product Registration (CPR) CodeSystem - Draft PH Core Implementation Guide v0.2.0

## CodeSystem: PH FDA Certificate of Product Registration (CPR) CodeSystem 

 
Registered drug products from the Philippine Food and Drug Administration (FDA) 

This Code system is referenced in the definition of the following value sets:

* [DrugsVS](ValueSet-drugs-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "PHFDACPRCS",
  "url" : "https://verification.fda.gov.ph",
  "version" : "0.2.0",
  "name" : "PHFDACPRCS",
  "title" : "PH FDA Certificate of Product Registration (CPR) CodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-03-21",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "Registered drug products from the Philippine Food and Drug Administration (FDA)",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PH",
      "display" : "Philippines"
    }]
  }],
  "caseSensitive" : false,
  "hierarchyMeaning" : "is-a",
  "content" : "fragment",
  "property" : [{
    "code" : "productInfo",
    "description" : "Product information document",
    "type" : "string"
  },
  {
    "code" : "genericName",
    "description" : "Generic/INN name of the drug",
    "type" : "string"
  },
  {
    "code" : "dosageStrength",
    "description" : "Dosage strength/concentration",
    "type" : "string"
  },
  {
    "code" : "dosageForm",
    "description" : "Dosage form (e.g., Tablet, Injection)",
    "type" : "string"
  },
  {
    "code" : "classification",
    "description" : "Drug classification (RX, OTC, etc.)",
    "type" : "string"
  },
  {
    "code" : "packaging",
    "description" : "Packaging description",
    "type" : "string"
  },
  {
    "code" : "pharmacologicCategory",
    "description" : "Pharmacologic/therapeutic category",
    "type" : "string"
  },
  {
    "code" : "manufacturer",
    "description" : "Drug manufacturer",
    "type" : "string"
  },
  {
    "code" : "countryOfOrigin",
    "description" : "Country where manufactured",
    "type" : "string"
  },
  {
    "code" : "trader",
    "description" : "Trading company",
    "type" : "string"
  },
  {
    "code" : "importer",
    "description" : "Importing company",
    "type" : "string"
  },
  {
    "code" : "distributor",
    "description" : "Distributing company",
    "type" : "string"
  },
  {
    "code" : "applicationType",
    "description" : "Type of FDA application",
    "type" : "string"
  },
  {
    "code" : "issuanceDate",
    "description" : "Registration issuance date",
    "type" : "string"
  },
  {
    "code" : "expiryDate",
    "description" : "Registration expiry date",
    "type" : "string"
  }],
  "concept" : [{
    "code" : "PH-FDA-DRUGS",
    "display" : "Philippine FDA Registered Drug Products",
    "definition" : "Root concept for all FDA Certificate of Product Registration (CPR) registered medications in the Philippines",
    "concept" : [{
      "code" : "DRP-10144",
      "display" : "Twinact",
      "property" : [{
        "code" : "genericName",
        "valueString" : "Telmisartan + Amlodipine (as besilate)"
      },
      {
        "code" : "dosageStrength",
        "valueString" : "40 mg 5 mg"
      },
      {
        "code" : "dosageForm",
        "valueString" : "Tablet"
      },
      {
        "code" : "classification",
        "valueString" : "Prescription Drug (RX)"
      },
      {
        "code" : "packaging",
        "valueString" : "Alu/Alu blister pack x 10's (Box of 30's)"
      },
      {
        "code" : "pharmacologicCategory",
        "valueString" : "-"
      },
      {
        "code" : "manufacturer",
        "valueString" : "Dasan Pharmaceutical Co., Ltd."
      },
      {
        "code" : "countryOfOrigin",
        "valueString" : "Korea"
      },
      {
        "code" : "importer",
        "valueString" : "Unilab, Inc."
      },
      {
        "code" : "distributor",
        "valueString" : "Unilab, Inc."
      },
      {
        "code" : "applicationType",
        "valueString" : "Initial (Reconstruction)"
      },
      {
        "code" : "issuanceDate",
        "valueString" : "16 January 2024"
      },
      {
        "code" : "expiryDate",
        "valueString" : "30 July 2026"
      }]
    },
    {
      "code" : "1193768",
      "display" : "Ascorfed-Z Cap",
      "property" : [{
        "code" : "genericName",
        "valueString" : "Ascorbic Acid + Zinc"
      },
      {
        "code" : "dosageStrength",
        "valueString" : "500 mg (equivalent to 562.5 mg Sodium Ascorbate)/10 mg (equivalent to 27.5 mg Zinc Sulfate Monohydrate)"
      },
      {
        "code" : "dosageForm",
        "valueString" : "Capsule"
      },
      {
        "code" : "classification",
        "valueString" : "Over-the-Counter (OTC) Drug"
      },
      {
        "code" : "packaging",
        "valueString" : "Alu/Deep Red PVC Blister Pack x 10's / (Box of 30's and 100's)"
      },
      {
        "code" : "pharmacologicCategory",
        "valueString" : "Vitamin/Mineral"
      }]
    }]
  }]
}

```
