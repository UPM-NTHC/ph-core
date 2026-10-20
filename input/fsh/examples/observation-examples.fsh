// ============================================================================
// PH Core Observation Examples
// ============================================================================
// This file contains multiple Observation examples demonstrating various
// reference constraints and use cases for the PHCoreObservation profile.
// ============================================================================

// ----------------------------------------------------------------------------
// Basic Blood Pressure (existing pattern, modified for consistency)
// ----------------------------------------------------------------------------
Instance: observation-bp-example
InstanceOf: PHCoreObservation
Usage: #example
Description: "Blood pressure observation for Juan Dela Cruz taken on 17 September 2012. Systolic: 107 mmHg (Normal), Diastolic: 60 mmHg (Below low normal)."
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:187e0c12-8dd2-67e2-99b2-bf273c878281"
* basedOn.identifier.system = "https://acme.org/identifiers"
* basedOn.identifier.value = "1234"
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#85354-9 "Blood pressure panel with all children optional"
* code.text = "Blood pressure systolic & diastolic"
* subject = Reference(Patient/patient-single-example)
* effectiveDateTime = "2012-09-17"
* performer = Reference(Practitioner/practitioner-single-example)
* interpretation = $v3-ObservationInterpretation#L "Low"
* interpretation.text = "Below low normal"
* bodySite = $sct#368209003 "Right arm"
* component[0].code = $loinc#8480-6 "Systolic blood pressure"
* component[=].valueQuantity = 107 'mm[Hg]' "mmHg"
* component[=].interpretation = $v3-ObservationInterpretation#N "Normal"
* component[=].interpretation.text = "Normal"
* component[+].code = $loinc#8462-4 "Diastolic blood pressure"
* component[=].valueQuantity = 60 'mm[Hg]' "mmHg"
* component[=].interpretation = $v3-ObservationInterpretation#L "Low"
* component[=].interpretation.text = "Below low normal"

// ----------------------------------------------------------------------------
// Vitals with Encounter Reference
// ----------------------------------------------------------------------------
Instance: observation-vitals-encounter-example
InstanceOf: PHCoreObservation
Usage: #example
Description: "Body temperature observation for Juan Dela Cruz taken during an ambulatory encounter."
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#8310-5 "Body temperature"
* subject = Reference(Patient/patient-single-example)
* encounter = Reference(Encounter/encounter-single-example)
* effectiveDateTime = "2025-03-15T09:15:00+08:00"
* valueQuantity = 37.0 'Cel' "degrees Celsius"
* performer = Reference(Practitioner/practitioner-single-example)

// ----------------------------------------------------------------------------
// Lab Panel with hasMember References
// ----------------------------------------------------------------------------
Instance: observation-lab-panel-example
InstanceOf: PHCoreObservation
Usage: #example
Description: "Preoperative electrolyte panel with references to its sodium and potassium observations."
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#24326-1 "Electrolytes 1998 panel - Serum or Plasma"
* subject = Reference(Patient/patient-single-example)
* encounter = Reference(Encounter/encounter-surgery-example)
* effectiveDateTime = "2024-01-15T08:00:00+08:00"
* hasMember[0] = Reference(Observation/observation-sodium-example)
* hasMember[+] = Reference(Observation/observation-potassium-example)
* performer = Reference(Practitioner/practitioner-single-example)

// ----------------------------------------------------------------------------
// Individual Lab Result - Glucose
// ----------------------------------------------------------------------------
Instance: observation-glucose-example
InstanceOf: PHCoreObservation
Usage: #example
Description: "Fasting blood glucose observation for Juan Dela Cruz."
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#1558-6 "Fasting glucose [Mass/volume] in Serum or Plasma"
* subject = Reference(Patient/patient-single-example)
* encounter = Reference(Encounter/encounter-single-example)
* basedOn = Reference(ServiceRequest/servicerequest-single-example)
* effectiveDateTime = "2025-03-15T10:30:00+08:00"
* valueQuantity = 95 'mg/dL' "mg/dL"
* performer = Reference(Organization/organization-pgh-example)
* interpretation = $v3-ObservationInterpretation#N "Normal"
* referenceRange.low = 70 'mg/dL' "mg/dL"
* referenceRange.high = 100 'mg/dL' "mg/dL"

// ----------------------------------------------------------------------------
// Individual Lab Result - Sodium
// ----------------------------------------------------------------------------
Instance: observation-sodium-example
InstanceOf: PHCoreObservation
Usage: #example
Description: "Serum sodium observation for Juan Dela Cruz."
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#2951-2 "Sodium [Moles/volume] in Serum or Plasma"
* subject = Reference(Patient/patient-single-example)
* effectiveDateTime = "2024-01-15T08:00:00+08:00"
* valueQuantity = 140 'mmol/L' "mmol/L"
* performer = Reference(Organization/organization-pgh-example)
* interpretation = $v3-ObservationInterpretation#N "Normal"
* referenceRange.low = 135 'mmol/L' "mmol/L"
* referenceRange.high = 145 'mmol/L' "mmol/L"

// ----------------------------------------------------------------------------
// Individual Lab Result - Potassium
// ----------------------------------------------------------------------------
Instance: observation-potassium-example
InstanceOf: PHCoreObservation
Usage: #example
Description: "Serum potassium observation for Juan Dela Cruz."
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#2823-3 "Potassium [Moles/volume] in Serum or Plasma"
* subject = Reference(Patient/patient-single-example)
* effectiveDateTime = "2024-01-15T08:00:00+08:00"
* valueQuantity = 4.0 'mmol/L' "mmol/L"
* performer = Reference(Organization/organization-pgh-example)
* interpretation = $v3-ObservationInterpretation#N "Normal"
* referenceRange.low = 3.5 'mmol/L' "mmol/L"
* referenceRange.high = 5.0 'mmol/L' "mmol/L"

// ----------------------------------------------------------------------------
// BMI with derivedFrom References
// ----------------------------------------------------------------------------
Instance: observation-derived-bmi-example
InstanceOf: PHCoreObservation
Usage: #example
Description: "BMI calculated from height and weight observations for Juan Dela Cruz."
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#39156-5 "Body mass index (BMI) [Ratio]"
* subject = Reference(Patient/patient-single-example)
* effectiveDateTime = "2023-06-15T09:00:00Z"
* valueQuantity = 23.4 'kg/m2' "kg/m2"
* performer = Reference(PractitionerRole/practitionerrole-single-example)
* interpretation = $v3-ObservationInterpretation#N "Normal"
* derivedFrom[0] = Reference(Observation/observation-weight-example)
* derivedFrom[+] = Reference(Observation/observation-height-example)

// ----------------------------------------------------------------------------
// Weight (for BMI calculation)
// ----------------------------------------------------------------------------
Instance: observation-weight-example
InstanceOf: PHCoreObservation
Usage: #example
Description: "Body weight observation for Juan Dela Cruz."
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#29463-7 "Body weight"
* subject = Reference(Patient/patient-single-example)
* effectiveDateTime = "2023-06-15T09:00:00Z"
* valueQuantity = 70 'kg' "kg"
* performer = Reference(Practitioner/practitioner-single-example)

// ----------------------------------------------------------------------------
// Height (for BMI calculation)
// ----------------------------------------------------------------------------
Instance: observation-height-example
InstanceOf: PHCoreObservation
Usage: #example
Description: "Body height observation for Juan Dela Cruz."
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#8302-2 "Body height"
* subject = Reference(Patient/patient-single-example)
* effectiveDateTime = "2023-06-15T09:00:00Z"
* valueQuantity = 173 'cm' "cm"
* performer = Reference(Practitioner/practitioner-single-example)

// ----------------------------------------------------------------------------
// Intra-procedure Vitals (partOf reference)
// ----------------------------------------------------------------------------
Instance: observation-part-of-procedure-example
InstanceOf: PHCoreObservation
Usage: #example
Description: "Intraoperative blood pressure observation during appendectomy procedure."
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(Patient/patient-single-example)
* partOf = Reference(Procedure/procedure-single-example)
* effectiveDateTime = "2024-01-15T09:00:00+08:00"
* performer = Reference(Practitioner/practitioner-single-example)
* component[0].code = $loinc#8480-6 "Systolic blood pressure"
* component[=].valueQuantity = 120 'mm[Hg]' "mmHg"
* component[+].code = $loinc#8462-4 "Diastolic blood pressure"
* component[=].valueQuantity = 80 'mm[Hg]' "mmHg"

// ----------------------------------------------------------------------------
// Observation with PractitionerRole as performer
// ----------------------------------------------------------------------------
Instance: observation-performer-role-example
InstanceOf: PHCoreObservation
Usage: #example
Description: "Heart rate observation performed by a practitioner in a specific role."
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#8867-4 "Heart rate"
* subject = Reference(Patient/patient-single-example)
* effectiveDateTime = "2024-01-20T08:30:00Z"
* valueQuantity = 72 '/min' "beats/minute"
* performer = Reference(PractitionerRole/practitionerrole-single-example)
* interpretation = $v3-ObservationInterpretation#N "Normal"

// ----------------------------------------------------------------------------
// Environmental Observation (Location as subject)
// ----------------------------------------------------------------------------
Instance: observation-environmental-temp-example
InstanceOf: PHCoreObservation
Usage: #example
Description: "Environmental temperature observation for a hospital ward (Location as subject)."
* status = #final
* category = $observation-category#survey "Survey"
* code = $loinc#60832-3 "Room temperature"
* code.text = "Environmental temperature"
* subject = Reference(Location/location-single-example)
* effectiveDateTime = "2024-03-15T14:00:00Z"
* valueQuantity = 22 'Cel' "degrees Celsius"
* performer = Reference(Organization/organization-pgh-example)
