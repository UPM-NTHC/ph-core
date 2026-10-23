# Resource Draft PH Core Implementation Guide



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "fhir.ph.core",
  "language" : "en",
  "url" : "https://fhir.doh.gov.ph/phcore/ImplementationGuide/fhir.ph.core",
  "version" : "0.2.0",
  "name" : "PHCoreImplementationGuide",
  "title" : "Draft PH Core Implementation Guide",
  "status" : "draft",
  "date" : "2026-06-10T01:16:31+00:00",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "This implementation guide is provided to support the use of FHIR®© in an Philippines context, and defines the minimum set of constraints on the FHIR resources to create the PH Core profiles. This implementation guide forms the foundation to build future PH Realm FHIR implementation guides and its content will continue to grow to meet the needs of PH implementers.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PH",
      "display" : "Philippines"
    }]
  }],
  "packageId" : "fhir.ph.core",
  "license" : "CC-BY-1.0",
  "fhirVersion" : ["4.0.1"],
  "dependsOn" : [{
    "id" : "hl7tx",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on HL7 Terminology"
    }],
    "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
    "packageId" : "hl7.terminology.r4",
    "version" : "7.1.0"
  },
  {
    "id" : "hl7ext",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on the HL7 Extension Pack"
    }],
    "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
    "packageId" : "hl7.fhir.uv.extensions.r4",
    "version" : "5.3.0"
  }],
  "definition" : {
    "extension" : [{
      "extension" : [{
        "url" : "code",
        "valueString" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2025+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "ci-build"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://verification.fda.gov.ph"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://my-hospital.org/internal-id"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://psa.gov.ph/classification/psced/level"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://psa.gov.ph/classification/psgc"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://psa.gov.ph/classification/psoc/unit"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "https://fhir.doh.gov.ph/phcore/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "i18n-default-lang"
      },
      {
        "url" : "value",
        "valueString" : "en"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
      "valueCode" : "hl7.fhir.uv.tools.r4#1.1.2"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2025+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "ci-build"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://verification.fda.gov.ph"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://my-hospital.org/internal-id"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://psa.gov.ph/classification/psced/level"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://psa.gov.ph/classification/psgc"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://psa.gov.ph/classification/psoc/unit"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "https://fhir.doh.gov.ph/phcore/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "i18n-default-lang"
      },
      {
        "url" : "value",
        "valueString" : "en"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    }],
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/administered-product"
      },
      "name" : "Administered Product",
      "description" : "The vaccine product that was administered.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "AllergyIntolerance"
      }],
      "reference" : {
        "reference" : "AllergyIntolerance/allergy-single-example"
      },
      "name" : "allergy-single-example",
      "description" : "Juan Dela Cruz has a high criticality, active allergy to Benethamine penicillin.",
      "exampleCanonical" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-allergyintolerance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/barangay"
      },
      "name" : "Barangay",
      "description" : "Barangay from the standard geographic code.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/barangays"
      },
      "name" : "Barangays",
      "description" : "The Barangay codes valueset includes all barangay values from the Philippine Standard Geographic Codes (PSGC) published by the Philippine Statistic Authority (PSA).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/batch-number"
      },
      "name" : "Batch Number",
      "description" : "The batch number of the vaccine administered.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/cities"
      },
      "name" : "Cities",
      "description" : "All city values from the Philippine Standard Geographic Codes (PSGC) published by the Philippine Statistic Authority (PSA).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/city-municipality"
      },
      "name" : "City/Municipality",
      "description" : "City/municipality from the standard geographic code.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Claim"
      }],
      "reference" : {
        "reference" : "Claim/claim-single-example"
      },
      "name" : "claim-single-example",
      "description" : "A PhilHealth outpatient consultation claim for Juan Dela Cruz submitted by Dr. Maria Clara Santos for management of Type 2 Diabetes Mellitus.",
      "exampleCanonical" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-claim"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      }],
      "reference" : {
        "reference" : "Condition/condition-single-example"
      },
      "name" : "condition-single-example",
      "description" : "Juan Dela Cruz has an active diagnosis of Type 2 Diabetes Mellitus.",
      "exampleCanonical" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-condition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "NamingSystem"
      }],
      "reference" : {
        "reference" : "NamingSystem/DOHNHFRCodeNS"
      },
      "name" : "DOH National Health Facility Registry Code",
      "description" : "Health Facility Code (HFC) from the National Health Facility Registry.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ph-core-doh-nhfr-code"
      },
      "name" : "DOH NHFR Code",
      "description" : "Health Facility Code (HFC) from the National Health Facility Registry",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "NamingSystem"
      }],
      "reference" : {
        "reference" : "NamingSystem/DOHProcedureIDNS"
      },
      "name" : "DOH Procedure Identifier",
      "description" : "Identifier system for procedures assigned by the Department of Health (DOH) health facilities.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/drugs-vs"
      },
      "name" : "Drugs",
      "description" : "This value set includes all drug or medicament substance codes and all pharmaceutical/biologic products from FDA.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/educational-attainment"
      },
      "name" : "Educational Attainment",
      "description" : "Highest educational attainment of the patient.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/educational-attainments"
      },
      "name" : "Educational Attainments",
      "description" : "All categories of educational programs, courses, and attainment levels in the Philippines, based on the Philippine Standard Classification of Education (PSCED) published by the Philippine Statistics Authority (PSA)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      }],
      "reference" : {
        "reference" : "Encounter/encounter-single-example"
      },
      "name" : "encounter-single-example",
      "description" : "An ambulatory visit for Juan Dela Cruz that has been completed.",
      "exampleCanonical" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-encounter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "HealthcareService"
      }],
      "reference" : {
        "reference" : "HealthcareService/healthcareservice-single-example"
      },
      "name" : "Example PH Core HealthcareService",
      "description" : "Philippine General Hospital Outpatient Department providing General Medicine consultations as a PH Core HealthcareService.",
      "exampleCanonical" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-healthcareservice"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Location"
      }],
      "reference" : {
        "reference" : "Location/location-single-example"
      },
      "name" : "Example PH Core Location",
      "description" : "Philippine General Hospital - A government tertiary hospital located in Manila, Philippines.",
      "exampleCanonical" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-location"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      }],
      "reference" : {
        "reference" : "Organization/organization-single-example"
      },
      "name" : "Example PH Core Organization",
      "description" : "An example instance of a PH Core Organization conforming to the Philippine localization profile. Demonstrates all identifier types (NHFR, PAN, PEN) and Must Support fields.",
      "exampleCanonical" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-organization"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Immunization"
      }],
      "reference" : {
        "reference" : "Immunization/immunization-single-example"
      },
      "name" : "immunization-single-example",
      "description" : "Juan Dela Cruz received a completed intramuscular influenza (H5N1-1203) vaccine at Philippine General Hospital on January 10, 2013.",
      "exampleCanonical" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-immunization"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/indigenous-group"
      },
      "name" : "Indigenous Group",
      "description" : "Indigenous / ethnic group that the patient belongs to.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/indigenous-groups-cs"
      },
      "name" : "Indigenous Groups CodeSystem",
      "description" : "A list of codes representing the recognized indigenous groups in the Philippines to which a person may belong.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/indigenous-groups-vs"
      },
      "name" : "Indigenous Groups ValueSet",
      "description" : "A value set representing the recognized Indigenous groups to which a person may belong.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/indigenous-people"
      },
      "name" : "Indigenous People",
      "description" : "If the patient is a member of an indigenous group.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Medication"
      }],
      "reference" : {
        "reference" : "Medication/medication-single-example"
      },
      "name" : "medication-single-example",
      "description" : "Twinact (Telmisartan + Amlodipine) from PH FDA CPR.",
      "exampleCanonical" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-medication"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationAdministration"
      }],
      "reference" : {
        "reference" : "MedicationAdministration/medicationadministration-single-example"
      },
      "name" : "medicationadministration-single-example",
      "description" : "Juan Dela Cruz takes Twinact (Telmisartan + Amlodipine) tablet as prescribed.",
      "exampleCanonical" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-medicationadministration"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationDispense"
      }],
      "reference" : {
        "reference" : "MedicationDispense/medicationdispense-single-example"
      },
      "name" : "medicationdispense-single-example",
      "description" : "Pharmacy dispenses Twinact (Telmisartan + Amlodipine) to Juan Dela Cruz based on Dr. Santos prescription.",
      "exampleCanonical" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-medicationdispense"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/medicationrequest-single-example"
      },
      "name" : "medicationrequest-single-example",
      "description" : "Dr. Maria Clara Santos prescribes Twinact (Telmisartan + Amlodipine) for Juan Dela Cruz to treat hypertension.",
      "exampleCanonical" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-medicationrequest"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationStatement"
      }],
      "reference" : {
        "reference" : "MedicationStatement/medicationstatement-single-example"
      },
      "name" : "medicationstatement-single-example",
      "description" : "Patient Juan Dela Cruz reports taking Twinact (Telmisartan + Amlodipine) for hypertension.",
      "exampleCanonical" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-medicationstatement"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/PSCED"
      },
      "name" : "Mock PSCED",
      "description" : "Mock of the Philippine Standard Classification of Education.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/PSGC"
      },
      "name" : "Mock PSGC",
      "description" : "Mock of the Philippine Standard Geographic Code.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/PSOC"
      },
      "name" : "Mock PSOC",
      "description" : "Mock of the Philippine Standard Occupational Classification.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/observation-based-on-service-example"
      },
      "name" : "observation-based-on-service-example",
      "description" : "Hemoglobin A1c lab result based on a service request for diabetes monitoring.",
      "exampleCanonical" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/observation-bp-example"
      },
      "name" : "observation-bp-example",
      "description" : "Blood pressure observation for Juan Dela Cruz taken on 17 September 2012. Systolic: 107 mmHg (Normal), Diastolic: 60 mmHg (Below low normal).",
      "exampleCanonical" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/observation-derived-bmi-example"
      },
      "name" : "observation-derived-bmi-example",
      "description" : "BMI calculated from height and weight observations for Juan Dela Cruz.",
      "exampleCanonical" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/observation-environmental-temp-example"
      },
      "name" : "observation-environmental-temp-example",
      "description" : "Environmental temperature observation for a hospital ward (Location as subject).",
      "exampleCanonical" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/observation-glucose-example"
      },
      "name" : "observation-glucose-example",
      "description" : "Fasting blood glucose observation for Juan Dela Cruz.",
      "exampleCanonical" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/observation-height-example"
      },
      "name" : "observation-height-example",
      "description" : "Body height observation for Juan Dela Cruz.",
      "exampleCanonical" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/observation-lab-panel-example"
      },
      "name" : "observation-lab-panel-example",
      "description" : "Basic Metabolic Panel with references to individual electrolyte observations.",
      "exampleCanonical" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/observation-part-of-procedure-example"
      },
      "name" : "observation-part-of-procedure-example",
      "description" : "Intraoperative blood pressure observation during appendectomy procedure.",
      "exampleCanonical" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/observation-performer-role-example"
      },
      "name" : "observation-performer-role-example",
      "description" : "Heart rate observation performed by a practitioner in a specific role.",
      "exampleCanonical" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/observation-potassium-example"
      },
      "name" : "observation-potassium-example",
      "description" : "Serum potassium observation for Juan Dela Cruz.",
      "exampleCanonical" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/observation-sodium-example"
      },
      "name" : "observation-sodium-example",
      "description" : "Serum sodium observation for Juan Dela Cruz.",
      "exampleCanonical" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/observation-vitals-encounter-example"
      },
      "name" : "observation-vitals-encounter-example",
      "description" : "Body temperature observation for Juan Dela Cruz taken during an ambulatory encounter.",
      "exampleCanonical" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/observation-weight-example"
      },
      "name" : "observation-weight-example",
      "description" : "Body weight observation for Juan Dela Cruz.",
      "exampleCanonical" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/occupation"
      },
      "name" : "Occupation",
      "description" : "Patient's occupation.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/occupational-classifications"
      },
      "name" : "Occupation Classifications",
      "description" : "The Occupation codes valueset includes Occupational Classification values from the Philippine Standard Occupational Classification (PSOC) published by the Philippine Statistic Authority (PSA).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "NamingSystem"
      }],
      "reference" : {
        "reference" : "NamingSystem/PhilHealthPANNS"
      },
      "name" : "PAN - PhilHealth Accreditation Number",
      "description" : "The unique number issued by PhilHealth to accredited institutions.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      }],
      "reference" : {
        "reference" : "Patient/patient-single-example"
      },
      "name" : "patient-single-example",
      "description" : "Juan Dela Cruz is a male patient born on 1 January 1980, residing in Manila, NCR, Philippines.",
      "exampleCanonical" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-patient"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "NamingSystem"
      }],
      "reference" : {
        "reference" : "NamingSystem/PhilHealthPENNS"
      },
      "name" : "PEN - PhilHealth Employer Number",
      "description" : "The unique number issued by PhilHealth to employers.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ph-core-address"
      },
      "name" : "PH Core Address",
      "description" : "An address for the individual.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ph-core-allergyintolerance"
      },
      "name" : "PH Core AllergyIntolerance",
      "description" : "This profile sets minimum expectations for an AllergyIntolerance resource to record, search, and fetch basic allergy intolerance information for a patient. It is based on the [FHIR R4 AllergyIntolerance](https://www.hl7.org/fhir/R4/allergyintolerance.html) resource and identifies the *additional* mandatory core elements, extensions, vocabularies and value sets that **SHALL** be present in the AllergyIntolerance when conforming to this profile. It provides the floor for standards development for specific uses cases in a Philippine context.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ph-core-claim"
      },
      "name" : "PH Core Claim",
      "description" : "Captures information about a request for reimbursement or payment for health care products and services within the Philippine health system, including specific benefit packages such as Animal Bites and TB DOTS programs.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ph-core-condition"
      },
      "name" : "PH Core Condition",
      "description" : "Captures Condition.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ActorDefinition"
      }],
      "reference" : {
        "reference" : "ActorDefinition/Consumer"
      },
      "name" : "PH Core Consumer",
      "description" : "A PH Core Consumer is a system that receives and uses PH Core resources.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ActorDefinition"
      }],
      "reference" : {
        "reference" : "ActorDefinition/Creator"
      },
      "name" : "PH Core Creator",
      "description" : "A PH Core Creator is a system which produces/assembles/creates PH Core resources.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/ph-core-disability-type-cs"
      },
      "name" : "PH Core Disability Type Code System",
      "description" : "Code system for types of disability as defined by the Philippine government for PWD registration.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/ph-core-disability-type-vs"
      },
      "name" : "PH Core Disability Type Value Set",
      "description" : "Value set for types of disability as defined by the Philippine government for PWD registration.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ph-core-encounter"
      },
      "name" : "PH Core Encounter",
      "description" : "This profile sets minimum expectations for an Encounter resource to record, search, and fetch basic encounter information for a patient. It is based on the [FHIR R4 Encounter](https://www.hl7.org/fhir/R4/encounter.html) resource and identifies the *additional* mandatory core elements, extensions, vocabularies and value sets that **SHALL** be present in the Encounter when conforming to this profile. It provides the floor for standards development for specific uses cases in a Philippine context.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ph-core-healthcareservice"
      },
      "name" : "PH Core HealthcareService",
      "description" : "This profile sets minimum expectations for a HealthcareService resource to record, search, and fetch information about healthcare services offered by an organization or at a location in the Philippine context. It is based on the [FHIR R4 HealthcareService](https://www.hl7.org/fhir/R4/healthcareservice.html) resource and identifies the *additional* mandatory core elements, extensions, vocabularies and value sets that **SHALL** be present in the HealthcareService when conforming to this profile. It provides the floor for standards development for specific use cases in a Philippine context.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ph-core-immunization"
      },
      "name" : "PH Core Immunization",
      "description" : "Describes the event of a patient being administered a vaccine or a record of an immunization as reported by a patient, a clinician or another party.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ph-core-location"
      },
      "name" : "PH Core Location",
      "description" : "This profile localizes the FHIR R4 Location resource to the Philippine context.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ph-core-medication"
      },
      "name" : "PH Core Medication",
      "description" : "This resource is primarily used for the identification and definition of a medication, including ingredients, for the purposes of prescribing, dispensing, and administering a medication as well as for making statements about medication use.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ph-core-medicationadministration"
      },
      "name" : "PH Core Medication Administration",
      "description" : "Captures key FHIR Medication Administration data for the Philippine context.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ph-core-medicationdispense"
      },
      "name" : "PH Core Medication Dispense",
      "description" : "Captures key FHIR Medication Dispense data for the Philippine context.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ph-core-medicationrequest"
      },
      "name" : "PH Core Medication Request",
      "description" : "Captures key FHIR Medication Request data for the Philippine context.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ph-core-medicationstatement"
      },
      "name" : "PH Core Medication Statement",
      "description" : "Captures key FHIR Medication Statement data for the Philippine context.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ph-core-name"
      },
      "name" : "PH Core Name",
      "description" : "A name of a person in the philippine context.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ph-core-observation"
      },
      "name" : "PH Core Observation",
      "description" : "Measurements and simple assertions made about a patient, device or other subject.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ph-core-organization"
      },
      "name" : "PH Core Organization",
      "description" : "This profile localizes the FHIR R4 Organization resource to the Philippine context.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ph-core-patient"
      },
      "name" : "PH Core Patient",
      "description" : "Captures key demographic and administrative information about individuals receiving care or other health-related services.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ph-core-practitioner"
      },
      "name" : "PH Core Practitioner",
      "description" : "The PH Core Practitioner Profile inherits from the [FHIR R4 Practitioner resource](https://hl7.org/fhir/R4/practitioner.html); refer to it for scope and usage definitions. This profile sets minimum expectations for the Practitioner resource to record, search, and fetch basic demographics and administrative information about an individual practitioner in a Philippine context. It specifies which core elements, extensions, vocabularies, and value sets SHALL be present and constrains how the elements are used. It provides the floor for standards development for Philippine use cases.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ph-core-practitionerrole"
      },
      "name" : "PH Core PractitionerRole",
      "description" : "The PH Core Practitioner Role Profile inherits from the [FHIR R4 PractitionerRole resource](https://hl7.org/fhir/R4/practitionerrole.html); refer to it for scope and usage definitions. This profile sets minimum expectations for the PractitionerRole resource to record, search, and fetch basic demographics and administrative information about an individual practitioner role in a Philippine context. It specifies which core elements, extensions, vocabularies, and value sets SHALL be present and constrains how the elements are used. It provides the floor for standards development for Philippine use cases.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ph-core-procedure"
      },
      "name" : "PH Core Procedure",
      "description" : "An action that is or was performed on or for a patient, practitioner, device, organization, or location.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ph-core-provenance"
      },
      "name" : "PH Core Provenance",
      "description" : "This profile localizes the FHIR R4 Provenance resource to the Philippine context, capturing key information about who, what, when, and where for a set of resources. It is used to track the authorship and history of healthcare data in Philippine health information systems.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ph-core-pwd-disability"
      },
      "name" : "PH Core PWD Disability Registration",
      "description" : "Extension for Person With Disability (PWD) registration information. Captures PWD ID number, type of disability, and ID expiration date as issued by the PDAO (Persons with Disability Affairs Office).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ph-core-relatedperson"
      },
      "name" : "PH Core RelatedPerson",
      "description" : "This profile localizes the FHIR R4 RelatedPerson resource to the Philippine context.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ActorDefinition"
      }],
      "reference" : {
        "reference" : "ActorDefinition/Server"
      },
      "name" : "PH Core Server",
      "description" : "A PH Core Server is a FHIR server that stores and provides access to PH Core resources.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ph-core-serviceRequest"
      },
      "name" : "PH Core ServiceRequest",
      "description" : "The PH Core ServiceRequest Profile is a Philippine-specific FHIR profile that represents a record of a request for services such as diagnostic investigations, treatments, or operations to be performed within the Philippine health system. It constrains the base FHIR ServiceRequest resource by defining minimum expectations on core elements, extensions, vocabularies, and value sets relevant to local clinical and administrative workflows. It serves as a nationally consistent baseline for recording, searching, and fetching service request information to support interoperable health information exchange across Philippine health facilities and programs.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ph-core-task"
      },
      "name" : "PH Core Task",
      "description" : "This profile localizes the FHIR R4 Task resource to the Philippine context.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/PHFDACPRCS"
      },
      "name" : "PH FDA Certificate of Product Registration (CPR) CodeSystem",
      "description" : "Registered drug products from the Philippine Food and Drug Administration (FDA)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ph-core-philhealth-pan"
      },
      "name" : "PhilHealth Accreditation Number",
      "description" : "The unique number issued by PhilHealth to accredited institutions.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ph-core-philhealth-pen"
      },
      "name" : "PhilHealth Employer Number",
      "description" : "The unique number issued by PhilHealth to employers.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "NamingSystem"
      }],
      "reference" : {
        "reference" : "NamingSystem/PhilHealthProcedureIDNS"
      },
      "name" : "PhilHealth Procedure Identifier",
      "description" : "Identifier system for procedures assigned by PhilHealth for claims and reimbursement purposes.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Coverage"
      }],
      "reference" : {
        "reference" : "Coverage/philhealth-coverage-example"
      },
      "name" : "philhealth-coverage-example",
      "description" : "PhilHealth coverage for Juan Dela Cruz with member ID 63-584789845-5.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ph-core-philsys-id"
      },
      "name" : "PhilSys Identification Number (PhilSys ID) Identifier",
      "description" : "The National ID Number PSA issued to all Filipino citizens and resident aliens in the Philippines, as part of the Philippine Identification System (PhilSys) program.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "NamingSystem"
      }],
      "reference" : {
        "reference" : "NamingSystem/PhilSysIDNS"
      },
      "name" : "PhilSys Identification Number (PhilSys ID) NamingSystem",
      "description" : "The National ID Number issued to all Filipino citizens and resident aliens in the Philippines, as part of the Philippine Identification System (PhilSys) program.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ph-core-philhealth-id"
      },
      "name" : "PIN - PhilHealth Identification Number Identifier",
      "description" : "The permanent and unique number issued by PhilHealth to individual members and to each and every dependent.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "NamingSystem"
      }],
      "reference" : {
        "reference" : "NamingSystem/PhilHealthIDNS"
      },
      "name" : "PIN - PhilHealth Identification Number NamingSystem",
      "description" : "The permanent and unique number issued by PhilHealth to individual members and to each and every dependent.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Practitioner"
      }],
      "reference" : {
        "reference" : "Practitioner/practitioner-single-example"
      },
      "name" : "practitioner-single-example",
      "description" : "Dr. Maria Clara Santos, MD, a licensed physician born on 1985-05-15, residing in Manila, Philippines. She can be contacted via mobile at +63-912-345-6789 or by email at maria.santos@example.ph. She speaks Filipino and English.",
      "exampleCanonical" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-practitioner"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "PractitionerRole"
      }],
      "reference" : {
        "reference" : "PractitionerRole/practitionerrole-single-example"
      },
      "name" : "practitionerrole-single-example",
      "description" : "Dr. Maria Clara Santos is a General Practitioner working with the Department of Health. One of her assignments is at the Philippine General Hospital.",
      "exampleCanonical" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-practitionerrole"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      }],
      "reference" : {
        "reference" : "Procedure/procedure-single-example"
      },
      "name" : "procedure-single-example",
      "description" : "A comprehensive example of an appendectomy procedure performed on Juan Dela Cruz, demonstrating extensive use of Procedure resource elements including identifiers, status history, multiple performers, body site, complications, and follow-up care.",
      "exampleCanonical" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-procedure"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Provenance"
      }],
      "reference" : {
        "reference" : "Provenance/provenance-single-example"
      },
      "name" : "provenance-single-example",
      "description" : "Provenance record documenting that Dr. Maria Clara Santos created the blood pressure observation for Juan Dela Cruz on September 17, 2012, on behalf of the Department of Health - Central Office.",
      "exampleCanonical" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-provenance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/province"
      },
      "name" : "Province",
      "description" : "Province from the standard geographic code.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/provinces"
      },
      "name" : "Provinces",
      "description" : "All province values from the Philippine Standard Geographic Codes (PSGC) published by the Philippine Statistic Authority (PSA).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/race"
      },
      "name" : "Race",
      "description" : "race of a patient.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/region"
      },
      "name" : "Region",
      "description" : "Region from the standard geographic code.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/regions"
      },
      "name" : "Regions",
      "description" : "The Region codes valueset includes all region values from the Philippine Standard Geographic Codes (PSGC) published by the Philippine Statistic Authority (PSA).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "RelatedPerson"
      }],
      "reference" : {
        "reference" : "RelatedPerson/relatedperson-single-example"
      },
      "name" : "relatedperson-single-example",
      "description" : "Maria Cruz Santos is a female born on 1 January 1955, mother of the patient.",
      "exampleCanonical" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-relatedperson"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      }],
      "reference" : {
        "reference" : "ServiceRequest/servicerequest-single-example"
      },
      "name" : "servicerequest-single-example",
      "description" : "A laboratory service request for fasting blood glucose test ordered by Dr. Maria Clara Santos for patient Juan Dela Cruz during an ambulatory encounter.",
      "exampleCanonical" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-serviceRequest"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Task"
      }],
      "reference" : {
        "reference" : "Task/task-single-example"
      },
      "name" : "task-single-example",
      "description" : "A laboratory task for Juan Dela Cruz requested by Dr. Maria Clara Santos. The task is to collect a blood sample for a routine CBC test.",
      "exampleCanonical" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-task"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      }],
      "reference" : {
        "reference" : "Bundle/transaction-example"
      },
      "name" : "transaction-example",
      "description" : "Transaction bundle demonstrating a coherent clinical scenario: Juan Dela Cruz has a blood pressure check during an encounter with Dr. Maria Clara Santos, with his known allergies, conditions, and immunization history.",
      "exampleBoolean" : true
    }],
    "page" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
        "valueUrl" : "toc.html"
      }],
      "nameUrl" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "index.html"
        }],
        "nameUrl" : "index.html",
        "title" : "Home",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "otherIds.html"
        }],
        "nameUrl" : "otherIds.html",
        "title" : "Other Ids",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "terminology.html"
        }],
        "nameUrl" : "terminology.html",
        "title" : "Terminology",
        "generation" : "markdown"
      }]
    },
    "parameter" : [{
      "code" : "path-resource",
      "value" : "input/capabilities"
    },
    {
      "code" : "path-resource",
      "value" : "input/examples"
    },
    {
      "code" : "path-resource",
      "value" : "input/extensions"
    },
    {
      "code" : "path-resource",
      "value" : "input/models"
    },
    {
      "code" : "path-resource",
      "value" : "input/operations"
    },
    {
      "code" : "path-resource",
      "value" : "input/profiles"
    },
    {
      "code" : "path-resource",
      "value" : "input/resources"
    },
    {
      "code" : "path-resource",
      "value" : "input/vocabulary"
    },
    {
      "code" : "path-resource",
      "value" : "input/maps"
    },
    {
      "code" : "path-resource",
      "value" : "input/testing"
    },
    {
      "code" : "path-resource",
      "value" : "input/history"
    },
    {
      "code" : "path-resource",
      "value" : "fsh-generated/resources"
    },
    {
      "code" : "path-pages",
      "value" : "template/config"
    },
    {
      "code" : "path-pages",
      "value" : "input/assets"
    },
    {
      "code" : "path-pages",
      "value" : "input/images"
    },
    {
      "code" : "path-tx-cache",
      "value" : "input-cache/txcache"
    }]
  }
}

```
