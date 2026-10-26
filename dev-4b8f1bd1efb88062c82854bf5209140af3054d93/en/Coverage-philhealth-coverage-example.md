# philhealth-coverage-example - Draft PH Core Implementation Guide v0.2.1

## Example Coverage: philhealth-coverage-example

**status**: Active

**subscriber**: [Juan Dela Fuente Dela Cruz Male, DoB: 1980-01-01 ( http://philhealth.gov.ph/fhir/Identifier/philhealth-id#PhilHealthID#63-584789845-5)](Patient-patient-single-example.md)

**subscriberId**: 63-584789845-5

**beneficiary**: [Juan Dela Fuente Dela Cruz Male, DoB: 1980-01-01 ( http://philhealth.gov.ph/fhir/Identifier/philhealth-id#PhilHealthID#63-584789845-5)](Patient-patient-single-example.md)

**payor**: [Philippine Health Insurance Corporation (illustrative) (Insurance Company)](Organization-organization-philhealth-example.md)



## Resource Content

```json
{
  "resourceType" : "Coverage",
  "id" : "philhealth-coverage-example",
  "status" : "active",
  "subscriber" : {
    "reference" : "Patient/patient-single-example"
  },
  "subscriberId" : "63-584789845-5",
  "beneficiary" : {
    "reference" : "Patient/patient-single-example"
  },
  "payor" : [{
    "reference" : "Organization/organization-philhealth-example"
  }]
}

```
