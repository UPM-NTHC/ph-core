# patient-sex-and-gender-example - Draft PH Core Implementation Guide v0.2.1

## Example Patient: patient-sex-and-gender-example

Profile: [PH Core Patient](StructureDefinition-ph-core-patient.md)

Patrick Roth (official) Male, DoB: 1974-12-25

-------

| | |
| :--- | :--- |
| Individual Pronouns: | * value: she/her/her/hers/herself
* period: 2001-05-06 --> (ongoing)
* comment: Patient transitioned from male to female in 2001.
 |
| Person Recorded Sex Or Gender: | * value: Male
* type: Sex Assigned at Birth
* effectivePeriod: 1974-12-25 --> (ongoing)
* comment: Patient transitioned from male to female in 2001, but their birth certificate still indicates male.
 |
| Person Recorded Sex Or Gender: | * value: Male
* type: Insurance Card
* effectivePeriod: 2021-05-25 --> (ongoing)
* acquisitionDate: 2021-06-06
* sourceField: SEX
* comment: Patient transitioned from male to female in 2001, but their insurance card still indicates male.
 |
| Person Recorded Sex Or Gender: | * value: Male
* type: Driver's License
* effectivePeriod: 1974-12-25 --> (ongoing)
* acquisitionDate: 2005-12-06
* comment: Patient transitioned from male to female in 2001, but their driver's license still indicates male.
 |
| Individual Gender Identity: | * value: Identifies as female gender (finding)
* period: 2001-05-06 --> (ongoing)
* comment: Patient transitioned from male to female in 2001.
 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "patient-sex-and-gender-example",
  "meta" : {
    "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-patient"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "value",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "446141000124107",
          "display" : "Identifies as female gender (finding)"
        }]
      }
    },
    {
      "url" : "period",
      "valuePeriod" : {
        "start" : "2001-05-06"
      }
    },
    {
      "url" : "comment",
      "valueString" : "Patient transitioned from male to female in 2001."
    }],
    "url" : "http://hl7.org/fhir/StructureDefinition/individual-genderIdentity"
  },
  {
    "extension" : [{
      "url" : "value",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "LA29519-8",
          "display" : "she/her/her/hers/herself"
        }]
      }
    },
    {
      "url" : "period",
      "valuePeriod" : {
        "start" : "2001-05-06"
      }
    },
    {
      "url" : "comment",
      "valueString" : "Patient transitioned from male to female in 2001."
    }],
    "url" : "http://hl7.org/fhir/StructureDefinition/individual-pronouns"
  },
  {
    "extension" : [{
      "url" : "value",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://hl7.org/fhir/administrative-gender",
          "code" : "male",
          "display" : "Male"
        }]
      }
    },
    {
      "url" : "type",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "76689-9",
          "display" : "Sex Assigned at Birth"
        }]
      }
    },
    {
      "url" : "effectivePeriod",
      "valuePeriod" : {
        "start" : "1974-12-25"
      }
    },
    {
      "url" : "comment",
      "valueString" : "Patient transitioned from male to female in 2001, but their birth certificate still indicates male."
    }],
    "url" : "http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender"
  },
  {
    "extension" : [{
      "url" : "value",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://hl7.org/fhir/administrative-gender",
          "code" : "male",
          "display" : "Male"
        }]
      }
    },
    {
      "url" : "type",
      "valueCodeableConcept" : {
        "text" : "Insurance Card"
      }
    },
    {
      "url" : "effectivePeriod",
      "valuePeriod" : {
        "start" : "2021-05-25"
      }
    },
    {
      "url" : "acquisitionDate",
      "valueDateTime" : "2021-06-06"
    },
    {
      "url" : "sourceField",
      "valueString" : "SEX"
    },
    {
      "url" : "comment",
      "valueString" : "Patient transitioned from male to female in 2001, but their insurance card still indicates male."
    }],
    "url" : "http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender"
  },
  {
    "extension" : [{
      "url" : "value",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://hl7.org/fhir/administrative-gender",
          "code" : "male",
          "display" : "Male"
        }]
      }
    },
    {
      "url" : "type",
      "valueCodeableConcept" : {
        "text" : "Driver's License"
      }
    },
    {
      "url" : "effectivePeriod",
      "valuePeriod" : {
        "start" : "1974-12-25"
      }
    },
    {
      "url" : "acquisitionDate",
      "valueDateTime" : "2005-12-06"
    },
    {
      "url" : "comment",
      "valueString" : "Patient transitioned from male to female in 2001, but their driver's license still indicates male."
    }],
    "url" : "http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender"
  }],
  "name" : [{
    "use" : "official",
    "family" : "Roth",
    "given" : ["Patrick"]
  }],
  "gender" : "male",
  "birthDate" : "1974-12-25"
}

```
