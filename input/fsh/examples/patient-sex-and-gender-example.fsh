Instance: patient-sex-and-gender-example
InstanceOf: PHCorePatient
Usage: #example
Description: "A synthetic patient with male administrative gender and separate recorded sex entries from a birth certificate, insurance card and driver's license, alongside a female gender identity and she/her pronouns."

* name.use = #official
* name.family = "Roth"
* name.given = "Patrick"
* gender = #male
* birthDate = "1974-12-25"

* extension[genderIdentity].extension[value].valueCodeableConcept = $sct#446141000124107 "Identifies as female gender (finding)"
* extension[genderIdentity].extension[period].valuePeriod.start = "2001-05-06"
* extension[genderIdentity].extension[comment].valueString = "Patient transitioned from male to female in 2001."

* extension[individualPronouns].extension[value].valueCodeableConcept = $loinc#LA29519-8 "she/her/her/hers/herself"
* extension[individualPronouns].extension[period].valuePeriod.start = "2001-05-06"
* extension[individualPronouns].extension[comment].valueString = "Patient transitioned from male to female in 2001."

* extension[sex].extension[value].valueCodeableConcept = $administrative-gender#male "Male"
* extension[sex].extension[type].valueCodeableConcept = $loinc#76689-9 "Sex Assigned at Birth"
* extension[sex].extension[effectivePeriod].valuePeriod.start = "1974-12-25"
* extension[sex].extension[comment].valueString = "Patient transitioned from male to female in 2001, but their birth certificate still indicates male."

* extension[sex][+].extension[value].valueCodeableConcept = $administrative-gender#male "Male"
* extension[sex][=].extension[type].valueCodeableConcept.text = "Insurance Card"
* extension[sex][=].extension[effectivePeriod].valuePeriod.start = "2021-05-25"
* extension[sex][=].extension[acquisitionDate].valueDateTime = "2021-06-06"
* extension[sex][=].extension[sourceField].valueString = "SEX"
* extension[sex][=].extension[comment].valueString = "Patient transitioned from male to female in 2001, but their insurance card still indicates male."

* extension[sex][+].extension[value].valueCodeableConcept = $administrative-gender#male "Male"
* extension[sex][=].extension[type].valueCodeableConcept.text = "Driver's License"
* extension[sex][=].extension[effectivePeriod].valuePeriod.start = "1974-12-25"
* extension[sex][=].extension[acquisitionDate].valueDateTime = "2005-12-06"
* extension[sex][=].extension[comment].valueString = "Patient transitioned from male to female in 2001, but their driver's license still indicates male."
