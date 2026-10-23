# allergy-single-example - Draft PH Core Implementation Guide v0.2.0

## Example AllergyIntolerance: allergy-single-example

Profile: [PH Core AllergyIntolerance](StructureDefinition-ph-core-allergyintolerance.md)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**criticality**: High Risk

**code**: Benethamine penicillin allergy

**patient**: [Juan Jane Dela Fuente Dela Cruz Male, DoB: 1980-01-01 ( http://philhealth.gov.ph/fhir/Identifier/philhealth-id#PhilHealthID#63-584789845-5)](Patient-patient-single-example.md)

**onset**: 2023-01-15

**note**: 

> 

Patient reported rash and swelling after penicillin administration.


### Reactions

| | | |
| :--- | :--- | :--- |
| - | **Manifestation** | **Severity** |
| * | Skin rash | Severe |



## Resource Content

```json
{
  "resourceType" : "AllergyIntolerance",
  "id" : "allergy-single-example",
  "meta" : {
    "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-allergyintolerance"]
  },
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
      "code" : "active",
      "display" : "Active"
    }],
    "text" : "Active"
  },
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification",
      "code" : "confirmed",
      "display" : "Confirmed"
    }],
    "text" : "Confirmed"
  },
  "criticality" : "high",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "294494002",
      "display" : "Benethamine penicillin allergy"
    }],
    "text" : "Benethamine penicillin allergy"
  },
  "patient" : {
    "reference" : "Patient/patient-single-example"
  },
  "onsetDateTime" : "2023-01-15",
  "note" : [{
    "text" : "Patient reported rash and swelling after penicillin administration."
  }],
  "reaction" : [{
    "manifestation" : [{
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "271807003",
        "display" : "Eruption of skin"
      }],
      "text" : "Skin rash"
    }],
    "severity" : "severe"
  }]
}

```
