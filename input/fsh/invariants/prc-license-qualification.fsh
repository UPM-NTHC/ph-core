Invariant: ph-prc-001
Description: "A PRC license qualification SHALL contain exactly one PRC profession code from PRCProfessionCodesVS."
Severity: #error
Expression: "code.memberOf('https://fhir.doh.gov.ph/phcore/ValueSet/prc-profession-codes') and code.coding.where(system = 'https://fhir.doh.gov.ph/phcore/CodeSystem/prc').count() = 1"
