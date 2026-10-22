// Synthetic supporting resources: familiar authority names illustrate role separation.
// These instances are not operational registry entries or issuer endorsements.
Instance: organization-philhealth-example
InstanceOf: PHCoreOrganization
Usage: #example
Title: "Illustrative PhilHealth insurer"
Description: "Synthetic insurer/payor supporting the primary-care Claim and Coverage examples."
* active = true
* name = "Philippine Health Insurance Corporation (illustrative)"
* type = http://terminology.hl7.org/CodeSystem/organization-type#ins "Insurance Company"

Instance: organization-prc-example
InstanceOf: PHCoreOrganization
Usage: #example
Title: "Illustrative practitioner credential issuer"
Description: "Synthetic Professional Regulation Commission resource used as the issuer of the physician's example qualification."
* active = true
* name = "Professional Regulation Commission (illustrative)"
* type = http://terminology.hl7.org/CodeSystem/organization-type#govt "Government"
