Instance: bundle-acs-case-example
InstanceOf: Bundle
Usage: #example
Description: "Synthetic ED presentation for Miguel Reyes on 12 June 2026; linked patient, clinicians, diagnosis, observations and ED note. No treatment protocol or production server capability is asserted."
* type = #transaction

* entry[0].fullUrl = "https://example.org/fhir/Patient/patient-acs-example"
* entry[=].resource = patient-acs-example
* entry[=].request.method = #POST
* entry[=].request.url = "Patient"

* entry[+].fullUrl = "https://example.org/fhir/Organization/organization-pgh-example"
* entry[=].resource = organization-pgh-example
* entry[=].request.method = #POST
* entry[=].request.url = "Organization"

* entry[+].fullUrl = "https://example.org/fhir/Organization/organization-prc-example"
* entry[=].resource = organization-prc-example
* entry[=].request.method = #POST
* entry[=].request.url = "Organization"

* entry[+].fullUrl = "https://example.org/fhir/Practitioner/practitioner-ed-example"
* entry[=].resource = practitioner-ed-example
* entry[=].request.method = #POST
* entry[=].request.url = "Practitioner"

* entry[+].fullUrl = "https://example.org/fhir/PractitionerRole/practitionerrole-ed-example"
* entry[=].resource = practitionerrole-ed-example
* entry[=].request.method = #POST
* entry[=].request.url = "PractitionerRole"

* entry[+].fullUrl = "https://example.org/fhir/Condition/condition-t2dm-example"
* entry[=].resource = condition-t2dm-example
* entry[=].request.method = #POST
* entry[=].request.url = "Condition"

* entry[+].fullUrl = "https://example.org/fhir/Condition/condition-acs-example"
* entry[=].resource = condition-acs-example
* entry[=].request.method = #POST
* entry[=].request.url = "Condition"

* entry[+].fullUrl = "https://example.org/fhir/Encounter/encounter-ed-example"
* entry[=].resource = encounter-ed-example
* entry[=].request.method = #POST
* entry[=].request.url = "Encounter"

* entry[+].fullUrl = "https://example.org/fhir/Observation/observation-bp-acs"
* entry[=].resource = observation-bp-acs
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "https://example.org/fhir/Observation/observation-hr-acs"
* entry[=].resource = observation-hr-acs
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "https://example.org/fhir/Observation/observation-rr-acs"
* entry[=].resource = observation-rr-acs
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "https://example.org/fhir/Observation/observation-spo2-acs"
* entry[=].resource = observation-spo2-acs
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "https://example.org/fhir/Observation/observation-temp-acs"
* entry[=].resource = observation-temp-acs
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "https://example.org/fhir/Observation/observation-pain-acs"
* entry[=].resource = observation-pain-acs
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "https://example.org/fhir/Observation/observation-troponin-acs"
* entry[=].resource = observation-troponin-acs
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "https://example.org/fhir/Observation/observation-glucose-acs"
* entry[=].resource = observation-glucose-acs
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "https://example.org/fhir/Observation/observation-hba1c-acs"
* entry[=].resource = observation-hba1c-acs
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "https://example.org/fhir/Observation/observation-cholesterol-total-acs"
* entry[=].resource = observation-cholesterol-total-acs
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "https://example.org/fhir/Observation/observation-cholesterol-ldl-acs"
* entry[=].resource = observation-cholesterol-ldl-acs
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "https://example.org/fhir/Observation/observation-ecg-acs"
* entry[=].resource = observation-ecg-acs
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "https://example.org/fhir/Composition/composition-ed-note-example"
* entry[=].resource = composition-ed-note-example
* entry[=].request.method = #POST
* entry[=].request.url = "Composition"

// Bundle-private resources. Keep PH Core InstanceOf declarations and explicit
// IDs/profile metadata so these resources remain referenceable within entries.
// Usage #inline controls publication; these are not DomainResource.contained.

Instance: patient-acs-example
InstanceOf: PHCorePatient
Usage: #inline
Description: "Miguel Reyes, 45-year-old Filipino male, residing in City of Las Piñas, NCR. Patient presents with acute chest pain. History of Type 2 Diabetes Mellitus. PhilHealth ID: 12-345678901-2."

* id = "patient-acs-example"
* meta.profile[0] = "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-patient"
* name.use = #official
* name.family = "Reyes"
* name.given[0] = "Miguel"
* name.given[+] = "Carlos"

* gender = #male
* birthDate = "1981-03-15"
* active = true

* extension[nationality].extension[code].valueCodeableConcept = urn:iso:std:iso:3166#PH "Philippines"
* extension[nationality].extension[period].valuePeriod.start = "1981-03-15"

* extension[religion].url = "http://hl7.org/fhir/StructureDefinition/patient-religion"
* extension[religion].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ReligiousAffiliation#1041 "Roman Catholic Church"

* extension[race].url = "https://fhir.doh.gov.ph/phcore/StructureDefinition/race"
* extension[race].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-Race#2036-2 "Filipino"

* extension[educationalAttainment].url = "https://fhir.doh.gov.ph/phcore/StructureDefinition/educational-attainment"
* extension[educationalAttainment].valueCodeableConcept = $PSCED#C201301 "Elementary Graduate"

* extension[occupation].extension[occupationClassification].valueCodeableConcept.text = "Street food vendor"
// Text is used because this occupation is outside the PSOC fragment included in PH Core.
* extension[occupation].extension[occupationLength].valuePeriod.start = "2015-01-01"

* identifier[PHCorePhilHealthID].system = "http://philhealth.gov.ph/fhir/Identifier/philhealth-id"
* identifier[PHCorePhilHealthID].value = "12-345678901-2"

* telecom[0].system = #phone
* telecom[=].value = "+63-917-123-4567"
* telecom[=].use = #mobile

* address.use = #home
* address.type = #both
* address.line = "123 Mabini Street"
* address.line[+] = "Barangay Malinis"
* address.city = "City of Las Piñas"
* address.district = "NCR"
* address.postalCode = "1740"
* address.country = "PH"

* address.extension[cityMunicipality].valueCoding = $PSGC#1380200000 "City of Las Piñas"
* address.extension[region].valueCoding = $PSGC#1300000000 "National Capital Region (NCR)"

* generalPractitioner = Reference(Practitioner/practitioner-ed-example)
* managingOrganization = Reference(Organization/organization-pgh-example)

Instance: practitioner-ed-example
InstanceOf: PHCorePractitioner
Usage: #inline
Description: "Dr. Maria Clara Santos, MD — Emergency Medicine Attending Physician at Philippine General Hospital. PRC License: 0123456."

* id = "practitioner-ed-example"
* meta.profile[0] = "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-practitioner"
* name.use = #official
* name.family = "Santos"
* name.given[0] = "Maria"
* name.given[+] = "Clara"
* name.suffix = "MD"

* telecom[0].system = #phone
* telecom[=].value = "+63-912-345-6789"
* telecom[=].use = #mobile

* telecom[+].system = #email
* telecom[=].value = "maria.santos@pgh.gov.ph"
* telecom[=].use = #work

* address.use = #home
* address.type = #both
* address.line = "1234 Mabini Street"
* address.city = "Manila"
* address.district = "NCR"
* address.postalCode = "1000"
* address.country = "PH"

* address.extension[cityMunicipality].valueCoding = $PSGC#1380600000 "City of Manila"
* address.extension[region].valueCoding = $PSGC#1300000000 "National Capital Region (NCR)"

* gender = #female
* birthDate = "1985-05-15"

* extension[sex].extension[value].valueCodeableConcept = $sct#248152002 "Female (finding)"
* extension[sex].extension[type].valueCodeableConcept = http://loinc.org#76689-9 "Sex Assigned at Birth"

* extension[genderIdentity].extension[value].valueCodeableConcept = $sct#446141000124107 "Identifies as female gender"

* extension[individualPronouns].extension[value].valueCodeableConcept = http://loinc.org#LA29519-8 "she/her/her/hers/herself"

* qualification[0].code = http://terminology.hl7.org/CodeSystem/v2-0360#MD "Doctor of Medicine"
* qualification[=].identifier.system = "http://prc.gov.ph/fhir/Identifier/prc-license"
* qualification[=].identifier.value = "0123456"
* qualification[=].period.start = "2010-07-15"
* qualification[=].issuer = Reference(Organization/organization-prc-example)

* communication[0].text = "Filipino"
* communication[+] = urn:ietf:bcp:47#en "English"

Instance: practitionerrole-ed-example
InstanceOf: PHCorePractitionerRole
Usage: #inline
Description: "Dr. Maria Clara Santos — Emergency Medicine Attending Physician at Philippine General Hospital, assigned to Emergency Department."

* id = "practitionerrole-ed-example"
* meta.profile[0] = "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-practitionerrole"
* active = true

* identifier.system = "http://doh.gov.ph/fhir/Identifier/practitioner-role-id"
* identifier.value = "PR-ED-001"

* practitioner = Reference(Practitioner/practitioner-ed-example)
* organization = Reference(Organization/organization-pgh-example)
* code = $practitioner-role#doctor "Doctor"
// Keep the specific active SNOMED term as text: the R4 Practice Setting ValueSet
// only offers the inactive "Accident & emergency" concept for this setting.
* specialty.text = "Emergency medicine"

* telecom[0].system = #phone
* telecom[=].value = "+63-2-8651-7802"
* telecom[=].use = #work

* telecom[+].system = #email
* telecom[=].value = "ed.attending@pgh.gov.ph"
* telecom[=].use = #work

Instance: condition-t2dm-example
InstanceOf: PHCoreCondition
Usage: #inline
Description: "Type 2 Diabetes Mellitus — Chronic condition of Miguel Reyes, diagnosed March 2020. Managed with Metformin 500mg BID."

* id = "condition-t2dm-example"
* meta.profile[0] = "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-condition"
* clinicalStatus = $condition-clinical#active "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* category = $condition-category#problem-list-item "Problem List Item"
* category.text = "Chronic Condition"

* code = $sct#44054006 "Diabetes mellitus type 2"
* code.text = "Type 2 Diabetes Mellitus"

* subject = Reference(Patient/patient-acs-example)

* onsetDateTime = "2020-03-15"
* recordedDate = "2020-03-15T10:30:00+08:00"

* note.text = "Patient diagnosed with T2DM during routine health screening. Currently on Metformin 500mg twice daily. Last HbA1c: 8.2% (poor control). Advised on diet and exercise management."

Instance: condition-acs-example
InstanceOf: PHCoreCondition
Usage: #inline
Description: "Acute Coronary Syndrome — ST-Elevation Myocardial Infarction (STEMI) diagnosed in ED on June 12, 2026."

* id = "condition-acs-example"
* meta.profile[0] = "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-condition"
* clinicalStatus = $condition-clinical#active "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* category = $condition-category#encounter-diagnosis "Encounter Diagnosis"
* category.text = "Acute Diagnosis"

* code = $sct#401303003 "Acute ST segment elevation myocardial infarction"
* code.text = "Acute Coronary Syndrome - STEMI"

* subject = Reference(Patient/patient-acs-example)
* encounter = Reference(Encounter/encounter-ed-example)

* onsetDateTime = "2026-06-12T06:30:00+08:00"
* recordedDate = "2026-06-12T08:45:00+08:00"
* recorder = Reference(Practitioner/practitioner-ed-example)

* note.text = "45-year-old male with 2-hour history of crushing substernal chest pain radiating to left arm. 12-lead ECG shows ST-elevation in leads V1-V4 consistent with anterior STEMI. Troponin I elevated at 2.5 ng/mL."

Instance: encounter-ed-example
InstanceOf: PHCoreEncounter
Usage: #inline
Description: "Emergency Department encounter for Miguel Reyes — Acute Coronary Syndrome presentation. Triage at 08:30, evaluation and management, transferred to CCU at 10:30."

* id = "encounter-ed-example"
* meta.profile[0] = "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-encounter"
* status = #finished
* class = $v3-ActCode#EMER "emergency"

* subject = Reference(Patient/patient-acs-example)
* serviceProvider = Reference(Organization/organization-pgh-example)

* identifier.system = "http://pgh.gov.ph/fhir/Identifier/encounter-id"
* identifier.value = "ENC-2026-0612-001"

* period.start = "2026-06-12T08:30:00+08:00"
* period.end = "2026-06-12T10:30:00+08:00"

* type = $v3-ActCode#EMER "emergency"
* type.text = "Emergency Department Visit"

* priority = http://terminology.hl7.org/CodeSystem/v3-ActPriority#EM "emergency"

* participant[0].individual = Reference(Practitioner/practitioner-ed-example)
* participant[=].type = $v3-ParticipationType#ATND "attender"

* participant[+].individual = Reference(PractitionerRole/practitionerrole-ed-example)
* participant[=].type = $v3-ParticipationType#ADM "admitter"

* diagnosis[0].condition = Reference(Condition/condition-acs-example)
* diagnosis[=].use = $diagnosis-role#AD "Admission diagnosis"
* diagnosis[=].rank = 1

* diagnosis[+].condition = Reference(Condition/condition-t2dm-example)
* diagnosis[=].use = $diagnosis-role#CM "Comorbidity diagnosis"
* diagnosis[=].rank = 2

* reasonReference = Reference(Condition/condition-acs-example)

* hospitalization.admitSource = $admit-source#emd "From accident/emergency department"

// ============================================================================
// Vital Signs Observations — Acute Coronary Syndrome Case
// Miguel Reyes, 45M, presenting to PGH ED with chest pain
// ============================================================================

Instance: observation-bp-acs
InstanceOf: PHCoreObservation
Usage: #inline
Description: "Blood pressure — 160/95 mmHg (elevated) on arrival."

* id = "observation-bp-acs"
* meta.profile[0] = "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation"
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(Patient/patient-acs-example)
* encounter = Reference(Encounter/encounter-ed-example)
* effectiveDateTime = "2026-06-12T08:30:00+08:00"
* performer = Reference(Practitioner/practitioner-ed-example)
* bodySite = $sct#368209003 "Right arm"

* component[0].code = $loinc#8480-6 "Systolic blood pressure"
* component[=].valueQuantity = 160 'mm[Hg]' "mmHg"
* component[=].interpretation = $v3-ObservationInterpretation#H "High"

* component[+].code = $loinc#8462-4 "Diastolic blood pressure"
* component[=].valueQuantity = 95 'mm[Hg]' "mmHg"
* component[=].interpretation = $v3-ObservationInterpretation#H "High"

// ---

Instance: observation-hr-acs
InstanceOf: PHCoreObservation
Usage: #inline
Description: "Heart rate — 110 beats/min (tachycardia) on arrival."

* id = "observation-hr-acs"
* meta.profile[0] = "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation"
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#8867-4 "Heart rate"
* subject = Reference(Patient/patient-acs-example)
* encounter = Reference(Encounter/encounter-ed-example)
* effectiveDateTime = "2026-06-12T08:30:00+08:00"
* performer = Reference(Practitioner/practitioner-ed-example)
* valueQuantity = 110 '/min' "beats/minute"
* interpretation = $v3-ObservationInterpretation#H "High"

// ---

Instance: observation-rr-acs
InstanceOf: PHCoreObservation
Usage: #inline
Description: "Respiratory rate — 24 breaths/min (tachypnea) on arrival."

* id = "observation-rr-acs"
* meta.profile[0] = "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation"
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#9279-1 "Respiratory rate"
* subject = Reference(Patient/patient-acs-example)
* encounter = Reference(Encounter/encounter-ed-example)
* effectiveDateTime = "2026-06-12T08:30:00+08:00"
* performer = Reference(Practitioner/practitioner-ed-example)
* valueQuantity = 24 '/min' "breaths/minute"
* interpretation = $v3-ObservationInterpretation#H "High"

// ---

Instance: observation-spo2-acs
InstanceOf: PHCoreObservation
Usage: #inline
Description: "Oxygen saturation — 92% on room air (hypoxemia) on arrival."

* id = "observation-spo2-acs"
* meta.profile[0] = "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation"
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* subject = Reference(Patient/patient-acs-example)
* encounter = Reference(Encounter/encounter-ed-example)
* effectiveDateTime = "2026-06-12T08:30:00+08:00"
* performer = Reference(Practitioner/practitioner-ed-example)
* valueQuantity = 92 '%' "%"
* interpretation = $v3-ObservationInterpretation#L "Low"
* referenceRange.low = 95 '%' "%"
* referenceRange.high = 100 '%' "%"

// ---

Instance: observation-temp-acs
InstanceOf: PHCoreObservation
Usage: #inline
Description: "Body temperature — 37.2°C (low-grade fever) on arrival."

* id = "observation-temp-acs"
* meta.profile[0] = "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation"
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#8310-5 "Body temperature"
* subject = Reference(Patient/patient-acs-example)
* encounter = Reference(Encounter/encounter-ed-example)
* effectiveDateTime = "2026-06-12T08:30:00+08:00"
* performer = Reference(Practitioner/practitioner-ed-example)
* valueQuantity = 37.2 'Cel' "degrees Celsius"
* interpretation = $v3-ObservationInterpretation#N "Normal"

// ---

Instance: observation-pain-acs
InstanceOf: PHCoreObservation
Usage: #inline
Description: "Pain severity — 8/10 (severe) on arrival."

* id = "observation-pain-acs"
* meta.profile[0] = "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation"
* status = #final
* category = $observation-category#survey "Survey"
* code = $loinc#72514-3 "Pain severity - 0-10 verbal numeric rating [Score] - Reported"
* subject = Reference(Patient/patient-acs-example)
* encounter = Reference(Encounter/encounter-ed-example)
* effectiveDateTime = "2026-06-12T08:30:00+08:00"
* performer = Reference(Practitioner/practitioner-ed-example)
* valueInteger = 8
* interpretation = $v3-ObservationInterpretation#HH "Critical high"
* note.text = "Patient reports crushing substernal chest pain radiating to left arm."

// ============================================================================
// Laboratory & Diagnostic Observations — Acute Coronary Syndrome Case
// ============================================================================

Instance: observation-troponin-acs
InstanceOf: PHCoreObservation
Usage: #inline
Description: "Troponin I — 2.5 ng/mL (elevated, indicating acute myocardial injury)."

* id = "observation-troponin-acs"
* meta.profile[0] = "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation"
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#10839-9 "Troponin I.cardiac [Mass/volume] in Serum or Plasma"
* subject = Reference(Patient/patient-acs-example)
* encounter = Reference(Encounter/encounter-ed-example)
* effectiveDateTime = "2026-06-12T08:45:00+08:00"
* performer = Reference(Organization/organization-pgh-example)
* valueQuantity = 2.5 'ng/mL' "ng/mL"
* interpretation = $v3-ObservationInterpretation#H "High"
* referenceRange.low = 0 'ng/mL' "ng/mL"
* referenceRange.high = 0.04 'ng/mL' "ng/mL"
* note.text = "Elevated troponin consistent with acute myocardial infarction."

// ---

Instance: observation-glucose-acs
InstanceOf: PHCoreObservation
Usage: #inline
Description: "Random blood glucose — 180 mg/dL (hyperglycemia) on arrival."

* id = "observation-glucose-acs"
* meta.profile[0] = "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation"
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#2345-7 "Glucose [Mass/volume] in Serum or Plasma"
* subject = Reference(Patient/patient-acs-example)
* encounter = Reference(Encounter/encounter-ed-example)
* effectiveDateTime = "2026-06-12T08:45:00+08:00"
* performer = Reference(Organization/organization-pgh-example)
* valueQuantity = 180 'mg/dL' "mg/dL"
* interpretation = $v3-ObservationInterpretation#H "High"
* referenceRange.low = 70 'mg/dL' "mg/dL"
* referenceRange.high = 140 'mg/dL' "mg/dL"
* note.text = "Elevated glucose consistent with stress hyperglycemia and known T2DM."

// ---

Instance: observation-hba1c-acs
InstanceOf: PHCoreObservation
Usage: #inline
Description: "Hemoglobin A1c — 8.2% (poor glycemic control)."

* id = "observation-hba1c-acs"
* meta.profile[0] = "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation"
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#4548-4 "Hemoglobin A1c/Hemoglobin.total in Blood"
* subject = Reference(Patient/patient-acs-example)
* encounter = Reference(Encounter/encounter-ed-example)
* effectiveDateTime = "2026-06-12T08:45:00+08:00"
* performer = Reference(Organization/organization-pgh-example)
* valueQuantity = 8.2 '%' "%"
* interpretation = $v3-ObservationInterpretation#H "High"
* referenceRange.low = 4 '%' "%"
* referenceRange.high = 5.7 '%' "%"
* note.text = "HbA1c indicates poor glycemic control over past 3 months."

// ---

Instance: observation-cholesterol-total-acs
InstanceOf: PHCoreObservation
Usage: #inline
Description: "Total cholesterol — 240 mg/dL (elevated)."

* id = "observation-cholesterol-total-acs"
* meta.profile[0] = "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation"
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#2093-3 "Cholesterol [Mass/volume] in Serum or Plasma"
* subject = Reference(Patient/patient-acs-example)
* encounter = Reference(Encounter/encounter-ed-example)
* effectiveDateTime = "2026-06-12T08:45:00+08:00"
* performer = Reference(Organization/organization-pgh-example)
* valueQuantity = 240 'mg/dL' "mg/dL"
* interpretation = $v3-ObservationInterpretation#H "High"
* referenceRange.low = 0 'mg/dL' "mg/dL"
* referenceRange.high = 200 'mg/dL' "mg/dL"

// ---

Instance: observation-cholesterol-ldl-acs
InstanceOf: PHCoreObservation
Usage: #inline
Description: "LDL cholesterol — 160 mg/dL (high)."

* id = "observation-cholesterol-ldl-acs"
* meta.profile[0] = "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation"
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#2089-1 "Cholesterol in LDL [Mass/volume] in Serum or Plasma"
* subject = Reference(Patient/patient-acs-example)
* encounter = Reference(Encounter/encounter-ed-example)
* effectiveDateTime = "2026-06-12T08:45:00+08:00"
* performer = Reference(Organization/organization-pgh-example)
* valueQuantity = 160 'mg/dL' "mg/dL"
* interpretation = $v3-ObservationInterpretation#H "High"
* referenceRange.low = 0 'mg/dL' "mg/dL"
* referenceRange.high = 100 'mg/dL' "mg/dL"

// ---

Instance: observation-ecg-acs
InstanceOf: PHCoreObservation
Usage: #inline
Description: "12-lead ECG — ST-elevation in leads V1-V4 consistent with anterior STEMI."

* id = "observation-ecg-acs"
* meta.profile[0] = "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation"
* status = #final
* category = $observation-category#procedure "Procedure"
* code = $loinc#11524-6 "EKG study"
* subject = Reference(Patient/patient-acs-example)
* encounter = Reference(Encounter/encounter-ed-example)
* effectiveDateTime = "2026-06-12T08:35:00+08:00"
* performer = Reference(Practitioner/practitioner-ed-example)
* valueString = "ST-elevation in leads V1-V4, reciprocal ST-depression in leads II, III, aVF. Rhythm: sinus tachycardia at 110 bpm."
* interpretation = $v3-ObservationInterpretation#HH "Critical high"
* note.text = "ECG findings consistent with acute anterior ST-elevation myocardial infarction."

Instance: composition-ed-note-example
InstanceOf: Composition
Usage: #inline
Description: "Illustrative ED note connecting Miguel Reyes's ACS encounter, diagnosis and observations on 12 June 2026."
* id = "composition-ed-note-example"
* status = #final
* type = $loinc#34111-5 "Emergency Department Note"
* subject = Reference(Patient/patient-acs-example)
* encounter = Reference(Encounter/encounter-ed-example)
* date = "2026-06-12T10:30:00+08:00"
* author = Reference(Practitioner/practitioner-ed-example)
* title = "ED assessment of acute chest pain"
* section[0].title = "Assessment"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Miguel Reyes, 45, presented with acute chest pain. The linked ECG and troponin observations support the recorded STEMI assessment. Type 2 diabetes is a pre-existing comorbidity. This illustrative note demonstrates linked information, not a treatment protocol.</p></div>"
* section[=].entry[0] = Reference(Condition/condition-acs-example)
* section[=].entry[+] = Reference(Condition/condition-t2dm-example)
* section[=].entry[+] = Reference(Observation/observation-ecg-acs)
* section[=].entry[+] = Reference(Observation/observation-troponin-acs)
