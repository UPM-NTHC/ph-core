Instance: patient-explicit-absence-example
InstanceOf: PHCorePatient
Usage: #example
Title: "Patient with an unknown name"
Description: "The whole name is unknown. DAR is attached to HumanName, matching the US Core missing-name pattern."
* name.extension[dataAbsentReason].valueCode = #unknown

Instance: patient-anonymous-mothers-maiden-name-example
InstanceOf: PHCorePatient
Usage: #example
Title: "Anonymous Patient with Mother's Maiden Name"
Description: "The patient's own name is unknown, but the mother's full name is known from a reliable source and recorded as supplementary patient-matching information."
* name.extension[dataAbsentReason].valueCode = #unknown
* extension[mothersMaidenName].valueString = "Maria Cruz Santos"
* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>The patient's own name is recorded as unknown. The mother's full maiden name, Maria Cruz Santos, is available from the source record and is included only as supplementary matching information; it does not identify the patient by itself.</p></div>"

Instance: observation-result-unavailable
InstanceOf: PHCoreObservationClinicalResult
Usage: #example
Title: "Glucose result unavailable after specimen error"
Description: "A requested glucose observation has no result because the specimen could not be processed. The reason is carried by the native result absence element."
* status = #final
* category = $observation-category#laboratory
* code = $loinc#1558-6 "Fasting glucose [Mass/volume] in Serum or Plasma"
* subject = Reference(Patient/patient-single-example)
* dataAbsentReason = $data-absent-reason#error
* effectiveDateTime = "2025-03-15T10:30:00+08:00"
* performer = Reference(Organization/organization-pgh-example)
* note.text = "Specimen could not be processed; no glucose result was obtained."

Instance: observation-component-unavailable
InstanceOf: PHCoreObservation
Usage: #example
Title: "Blood pressure with an unavailable diastolic result"
Description: "The systolic result is known. The diastolic result was not obtained and has its own native absence reason."
* status = #final
* category = $observation-category#vital-signs
* code = $loinc#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(Patient/patient-single-example)
* effectiveDateTime = "2025-03-15T09:15:00+08:00"
* performer = Reference(Practitioner/practitioner-single-example)
* component[0].code = $loinc#8480-6 "Systolic blood pressure"
* component[=].valueQuantity = 120 'mm[Hg]' "mmHg"
* component[+].code = $loinc#8462-4 "Diastolic blood pressure"
* component[=].dataAbsentReason = $data-absent-reason#unknown
