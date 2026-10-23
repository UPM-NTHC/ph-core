# philhealth-coverage-example - Draft PH Core Implementation Guide v0.2.0

## Example Coverage: philhealth-coverage-example

PhilHealth coverage for Juan Dela Cruz with member ID 63-584789845-5.



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
    "reference" : "Organization/organization-single-example"
  }]
}

```
