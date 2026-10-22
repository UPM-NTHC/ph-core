Instance: patient-explicit-absence-example
InstanceOf: PHCorePatient
Usage: #example
Title: "Patient with an unknown name"
Description: "The whole name is unknown. DAR is attached to HumanName, matching the US Core missing-name pattern."
* name.extension[dataAbsentReason].valueCode = #unknown

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

Instance: procedure-unknown-date-example
InstanceOf: PHCoreProcedure
Usage: #example
Title: "Patient-reported appendectomy with unknown date"
Description: "The patient reports a completed past appendectomy but cannot recall its date. The standard DAR extension on performedDateTime records that the date is unknown."
* status = #completed
* code = $sct#80146002 "Appendectomy"
* subject = Reference(Patient/patient-explicit-absence-example)
* asserter = Reference(Patient/patient-explicit-absence-example)
* performedDateTime.extension[0].url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* performedDateTime.extension[=].valueCode = #unknown
