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
  "date" : "2026-09-09T08:40:24+00:00",
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
    "version" : "7.3.0"
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
        "valueString" : "path-liquid-template"
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
        "valueString" : "path-liquid-template"
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
        "valueCode" : "path-liquid-template"
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
        "valueCode" : "path-liquid-template"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-administered-product.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "AllergyIntolerance-allergy-single-example.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-barangay.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-barangays.html"
      }],
      "reference" : {
        "reference" : "ValueSet/barangays"
      },
      "name" : "Barangays",
      "description" : "The Barangay codes valueset includes all barangay values from the Philippine Standard Geographic Codes (PSGC) published by the Philippine Statistics Authority (PSA).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-batch-number.html"
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
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-bundle-acs-case-example.html"
      }],
      "reference" : {
        "reference" : "Bundle/bundle-acs-case-example"
      },
      "name" : "bundle-acs-case-example",
      "description" : "Transaction bundle for Acute Coronary Syndrome case — Juan Dela Cruz. Contains core PH Core resources for ED presentation and evaluation.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-cities.html"
      }],
      "reference" : {
        "reference" : "ValueSet/cities"
      },
      "name" : "Cities",
      "description" : "All city, municipality, and sub-municipality values from the Philippine Standard Geographic Codes (PSGC) published by the Philippine Statistics Authority (PSA).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-city-municipality.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Claim-claim-single-example.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-condition-acs-example.html"
      }],
      "reference" : {
        "reference" : "Condition/condition-acs-example"
      },
      "name" : "condition-acs-example",
      "description" : "Acute Coronary Syndrome — ST-Elevation Myocardial Infarction (STEMI) diagnosed in ED on June 12, 2026.",
      "exampleCanonical" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-condition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-condition-single-example.html"
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
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-condition-t2dm-example.html"
      }],
      "reference" : {
        "reference" : "Condition/condition-t2dm-example"
      },
      "name" : "condition-t2dm-example",
      "description" : "Type 2 Diabetes Mellitus — Chronic condition of Juan Dela Cruz, diagnosed March 2020. Managed with Metformin 500mg BID.",
      "exampleCanonical" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-condition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "NamingSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "NamingSystem-DOHNHFRCodeNS.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ph-core-doh-nhfr-code.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "NamingSystem-DOHProcedureIDNS.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-drugs-vs.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-educational-attainment.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-educational-attainments.html"
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
        "valueString" : "Composition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Composition-composition-ed-note-example.html"
      }],
      "reference" : {
        "reference" : "Composition/composition-ed-note-example"
      },
      "name" : "Emergency Department Clinical Note — Acute Coronary Syndrome",
      "description" : "Emergency Department Clinical Note — Acute Coronary Syndrome case for Juan Dela Cruz, June 12, 2026.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Encounter-encounter-ed-example.html"
      }],
      "reference" : {
        "reference" : "Encounter/encounter-ed-example"
      },
      "name" : "encounter-ed-example",
      "description" : "Emergency Department encounter for Juan Dela Cruz — Acute Coronary Syndrome presentation. Triage at 08:30, evaluation and management, transferred to CCU at 10:30.",
      "exampleCanonical" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-encounter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Encounter-encounter-single-example.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "HealthcareService-healthcareservice-single-example.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Location-location-single-example.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-organization-single-example.html"
      }],
      "reference" : {
        "reference" : "Organization/organization-single-example"
      },
      "name" : "Example PH Core Organization",
      "description" : "An example instance of a PH Core Organization conforming to the Philippine localization profile. Demonstrates all identifier types (NHFR, HCPN, PAN, PEN) and Must Support fields.",
      "exampleCanonical" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-organization"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-example-condition.html"
      }],
      "reference" : {
        "reference" : "Condition/example-condition"
      },
      "name" : "example-condition",
      "description" : "Juan Dela Cruz has an active diagnosis of Type 2 Diabetes Mellitus.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Encounter-example-encounter.html"
      }],
      "reference" : {
        "reference" : "Encounter/example-encounter"
      },
      "name" : "example-encounter",
      "description" : "An ambulatory encounter for Juan Dela Cruz that has been completed.",
      "exampleCanonical" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-encounter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-example-patient.html"
      }],
      "reference" : {
        "reference" : "Patient/example-patient"
      },
      "name" : "example-patient",
      "description" : "Juan Dela Cruz is a male patient born on 1 January 1980, residing in Manila, NCR, Philippines.",
      "exampleCanonical" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-patient"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Practitioner"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Practitioner-example-practitioner.html"
      }],
      "reference" : {
        "reference" : "Practitioner/example-practitioner"
      },
      "name" : "example-practitioner",
      "description" : "Dr. Maria Clara Santos, a female practitioner born on 1985-05-15, resides at 1234 Mabini Street, Manila, NCR, 1000, Philippines. She can be contacted via mobile at +63-912-345-6789 or by email at maria.santos@example.ph.",
      "exampleCanonical" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-practitioner"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ph-core-hcpn-code.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ph-core-hcpn-code"
      },
      "name" : "HCPN Code",
      "description" : "Health Care Provider Network (HCPN) code uniquely identifying an organization within its Health Care Provider Network in the Philippines.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "NamingSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "NamingSystem-HCPNCodeNS.html"
      }],
      "reference" : {
        "reference" : "NamingSystem/HCPNCodeNS"
      },
      "name" : "Health Care Provider Network Code",
      "description" : "Health Care Provider Network (HCPN) code uniquely identifying an organization within its Health Care Provider Network in the Philippines.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Immunization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Immunization-immunization-single-example.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-indigenous-group.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-indigenous-groups-cs.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-indigenous-groups-vs.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-indigenous-people.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Medication-medication-single-example.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationAdministration-medicationadministration-single-example.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationDispense-medicationdispense-single-example.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationRequest-medicationrequest-single-example.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationStatement-medicationstatement-single-example.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-PSCED.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-PSOC.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-observation-based-on-service-example.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-observation-bp-acs.html"
      }],
      "reference" : {
        "reference" : "Observation/observation-bp-acs"
      },
      "name" : "observation-bp-acs",
      "description" : "Blood pressure — 160/95 mmHg (elevated) on arrival.",
      "exampleCanonical" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-observation-bp-example.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-observation-cholesterol-ldl-acs.html"
      }],
      "reference" : {
        "reference" : "Observation/observation-cholesterol-ldl-acs"
      },
      "name" : "observation-cholesterol-ldl-acs",
      "description" : "LDL cholesterol — 160 mg/dL (high).",
      "exampleCanonical" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-observation-cholesterol-total-acs.html"
      }],
      "reference" : {
        "reference" : "Observation/observation-cholesterol-total-acs"
      },
      "name" : "observation-cholesterol-total-acs",
      "description" : "Total cholesterol — 240 mg/dL (elevated).",
      "exampleCanonical" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-observation-derived-bmi-example.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-observation-ecg-acs.html"
      }],
      "reference" : {
        "reference" : "Observation/observation-ecg-acs"
      },
      "name" : "observation-ecg-acs",
      "description" : "12-lead ECG — ST-elevation in leads V1-V4 consistent with anterior STEMI.",
      "exampleCanonical" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-observation-environmental-temp-example.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-observation-glucose-acs.html"
      }],
      "reference" : {
        "reference" : "Observation/observation-glucose-acs"
      },
      "name" : "observation-glucose-acs",
      "description" : "Random blood glucose — 180 mg/dL (hyperglycemia) on arrival.",
      "exampleCanonical" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-observation-glucose-example.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-observation-hba1c-acs.html"
      }],
      "reference" : {
        "reference" : "Observation/observation-hba1c-acs"
      },
      "name" : "observation-hba1c-acs",
      "description" : "Hemoglobin A1c — 8.2% (poor glycemic control).",
      "exampleCanonical" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-observation-height-example.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-observation-hr-acs.html"
      }],
      "reference" : {
        "reference" : "Observation/observation-hr-acs"
      },
      "name" : "observation-hr-acs",
      "description" : "Heart rate — 110 beats/min (tachycardia) on arrival.",
      "exampleCanonical" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-observation-lab-panel-example.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-observation-pain-acs.html"
      }],
      "reference" : {
        "reference" : "Observation/observation-pain-acs"
      },
      "name" : "observation-pain-acs",
      "description" : "Pain severity — 8/10 (severe) on arrival.",
      "exampleCanonical" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-observation-part-of-procedure-example.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-observation-performer-role-example.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-observation-potassium-example.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-observation-rr-acs.html"
      }],
      "reference" : {
        "reference" : "Observation/observation-rr-acs"
      },
      "name" : "observation-rr-acs",
      "description" : "Respiratory rate — 24 breaths/min (tachypnea) on arrival.",
      "exampleCanonical" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-observation-sodium-example.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-observation-spo2-acs.html"
      }],
      "reference" : {
        "reference" : "Observation/observation-spo2-acs"
      },
      "name" : "observation-spo2-acs",
      "description" : "Oxygen saturation — 92% on room air (hypoxemia) on arrival.",
      "exampleCanonical" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-observation-temp-acs.html"
      }],
      "reference" : {
        "reference" : "Observation/observation-temp-acs"
      },
      "name" : "observation-temp-acs",
      "description" : "Body temperature — 37.2°C (low-grade fever) on arrival.",
      "exampleCanonical" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-observation-troponin-acs.html"
      }],
      "reference" : {
        "reference" : "Observation/observation-troponin-acs"
      },
      "name" : "observation-troponin-acs",
      "description" : "Troponin I — 2.5 ng/mL (elevated, indicating acute myocardial injury).",
      "exampleCanonical" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-observation-vitals-encounter-example.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-observation-weight-example.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-occupation.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-occupational-classifications.html"
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
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-organization-pgh-example.html"
      }],
      "reference" : {
        "reference" : "Organization/organization-pgh-example"
      },
      "name" : "organization-pgh-example",
      "description" : "Philippine General Hospital (PGH) — A government tertiary hospital located in Ermita, Manila, NCR. NHFR: 1234567890, PAN: PAN-2024-56789, PEN: PEN-987654321.",
      "exampleCanonical" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-organization"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "NamingSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "NamingSystem-PhilHealthPANNS.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-patient-acs-example.html"
      }],
      "reference" : {
        "reference" : "Patient/patient-acs-example"
      },
      "name" : "patient-acs-example",
      "description" : "Juan Dela Cruz, 45-year-old Filipino male, residing in City of Las Piñas, NCR. Patient presents with acute chest pain. History of Type 2 Diabetes Mellitus. PhilHealth ID: 63-584789845-5.",
      "exampleCanonical" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-patient"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-patient-single-example.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "NamingSystem-PhilHealthPENNS.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ph-core-address.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ph-core-allergyintolerance.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ph-core-claim.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ph-core-condition.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ActorDefinition-Consumer.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ActorDefinition-Creator.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-ph-core-disability-type-cs.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-ph-core-disability-type-vs.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ph-core-encounter.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ph-core-healthcareservice.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ph-core-immunization.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ph-core-location.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ph-core-medication.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ph-core-medicationadministration.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ph-core-medicationdispense.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ph-core-medicationrequest.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ph-core-medicationstatement.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ph-core-name.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ph-core-observation.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ph-core-organization.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ph-core-patient.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ph-core-practitioner.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ph-core-practitionerrole.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ph-core-procedure.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ph-core-provenance.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ph-core-pwd-disability.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ph-core-relatedperson.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ActorDefinition-Server.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ph-core-serviceRequest.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ph-core-task.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-PHFDACPRCS.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ph-core-philhealth-pan.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ph-core-philhealth-pen.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "NamingSystem-PhilHealthProcedureIDNS.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Coverage-philhealth-coverage-example.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ph-core-philsys-id.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "NamingSystem-PhilSysIDNS.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ph-core-philhealth-id.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "NamingSystem-PhilHealthIDNS.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Practitioner-practitioner-ed-example.html"
      }],
      "reference" : {
        "reference" : "Practitioner/practitioner-ed-example"
      },
      "name" : "practitioner-ed-example",
      "description" : "Dr. Maria Clara Santos, MD — Emergency Medicine Attending Physician at Philippine General Hospital. PRC License: 0123456.",
      "exampleCanonical" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-practitioner"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Practitioner"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Practitioner-practitioner-single-example.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "PractitionerRole-practitionerrole-ed-example.html"
      }],
      "reference" : {
        "reference" : "PractitionerRole/practitionerrole-ed-example"
      },
      "name" : "practitionerrole-ed-example",
      "description" : "Dr. Maria Clara Santos — Emergency Medicine Attending Physician at Philippine General Hospital, assigned to Emergency Department.",
      "exampleCanonical" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-practitionerrole"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "PractitionerRole"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "PractitionerRole-practitionerrole-single-example.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-procedure-single-example.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Provenance-provenance-single-example.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-province.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-provinces.html"
      }],
      "reference" : {
        "reference" : "ValueSet/provinces"
      },
      "name" : "Provinces",
      "description" : "All province values from the Philippine Standard Geographic Codes (PSGC) published by the Philippine Statistics Authority (PSA).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-PSGC.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/PSGC"
      },
      "name" : "PSGC",
      "description" : "Fragment declaration of the official Philippine Standard Geographic Code (published quarterly by the Philippine Statistics Authority).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-race.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-region.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-regions.html"
      }],
      "reference" : {
        "reference" : "ValueSet/regions"
      },
      "name" : "Regions",
      "description" : "The Region codes valueset includes all region values from the Philippine Standard Geographic Codes (PSGC) published by the Philippine Statistics Authority (PSA).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "RelatedPerson"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "RelatedPerson-relatedperson-single-example.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-servicerequest-single-example.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Task-task-single-example.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-transaction-example.html"
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
          "valueUrl" : "sample-case.html"
        }],
        "nameUrl" : "sample-case.html",
        "title" : "Sample Case",
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
