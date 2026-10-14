Extension: Race
Id: race
Context: Patient
Title: "Race"
Description: "Draft representation of a person-reported race classification. The inherited terminology choice requires Philippine use-case appraisal."
// The v3-Race terminology describes US federal classifications. Retained pending
// human appraisal; do not interpret it as the Philippine indigenous-status taxonomy.
* value[x] only CodeableConcept
* value[x] from $v3-Race (required)
