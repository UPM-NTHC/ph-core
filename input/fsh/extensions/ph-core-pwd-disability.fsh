// Extension: PHCorePWDDisability
// Description: Extension for Person With Disability (PWD) registration information.
// Captures PWD ID number, disability type, ID expiration date, and issuing LGU.

Extension: PHCorePWDDisability
Id: ph-core-pwd-disability
Title: "PH Core PWD Disability Registration"
Context: Patient
Description: "Extension for Person With Disability (PWD) registration information. Captures PWD ID number, type of disability, and ID expiration date as issued by the PDAO (Persons with Disability Affairs Office)."
* insert ExperimentalStructureDefinition

* extension contains
    pwdId 0..1 and
    disabilityType 0..* and
    idExpirationDate 0..1 and
    issuingLGU 0..1

* extension[pwdId] ^short = "PWD ID Number"
* extension[pwdId] ^definition = "The unique identification number from the PWD ID card issued by the PDAO (Persons with Disability Affairs Office)."
* extension[pwdId].value[x] only string

* extension[disabilityType] ^short = "Type of Disability"
* extension[disabilityType] ^definition = "The type/category of disability as classified by the Philippine government. Multiple types may be specified."
* extension[disabilityType].value[x] only CodeableConcept
* extension[disabilityType].valueCodeableConcept from PHCoreDisabilityTypeVS (extensible)

* extension[idExpirationDate] ^short = "PWD ID Expiration Date"
* extension[idExpirationDate] ^definition = "The expiration date of the PWD ID card. Record an expiration date only when supplied by the issuing source; do not infer one from age or disability category. Validity rules depend on the applicable dated policy."
* extension[idExpirationDate].value[x] only date

* extension[issuingLGU] ^short = "Issuing LGU (Barangay)"
* extension[issuingLGU] ^definition = "Draft barangay-coded issuer-location representation. It does not identify a PDAO or establish that the barangay is the legal issuing authority. National issuer semantics and a suitable representation require human appraisal before this field is used for authority verification."
* extension[issuingLGU].value[x] only CodeableConcept
* extension[issuingLGU].valueCodeableConcept from Barangays (extensible)
