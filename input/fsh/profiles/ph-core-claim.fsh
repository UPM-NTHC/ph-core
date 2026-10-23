Profile: PHCoreClaim
Parent: Claim
Id: ph-core-claim
Title: "PH Core Claim"
Description: "Captures information about a request for reimbursement or payment for health care products and services within the Philippine health system."
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 0

* patient only Reference(PHCorePatient)


* insurer only Reference(PHCoreOrganization)


* provider only Reference(PHCorePractitioner or PHCorePractitionerRole or PHCoreOrganization)


* payee.party only Reference(PHCorePractitioner or PHCorePractitionerRole or PHCoreOrganization or PHCorePatient or PHCoreRelatedPerson)

* careTeam.provider only Reference(PHCorePractitioner or PHCorePractitionerRole or PHCoreOrganization)

