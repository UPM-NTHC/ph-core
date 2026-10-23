# bundle-acs-case-example - Draft PH Core Implementation Guide v0.2.0

## Example Bundle: bundle-acs-case-example



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "bundle-acs-case-example",
  "type" : "transaction",
  "entry" : [{
    "fullUrl" : "https://fhir.doh.gov.ph/phcore/Patient/patient-acs-example",
    "resource" : {
      "resourceType" : "Patient",
      "id" : "patient-acs-example",
      "meta" : {
        "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-patient"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Patient_patient-acs-example\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Patient patient-acs-example</b></p><a name=\"patient-acs-example\"> </a><a name=\"hcpatient-acs-example\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-ph-core-patient.html\">PH Core Patient</a></p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Juan Carlos Dela Cruz (official) Male, DoB: 1981-03-15 ( http://philhealth.gov.ph/fhir/Identifier/philhealth-id#PhilHealthID#63-584789845-5)</p><hr/><table class=\"grid\"><tr><td style=\"background-color: #f3f5da\" title=\"Record is active\">Active:</td><td colspan=\"3\">true</td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Ways to contact the Patient\">Contact Detail</td><td colspan=\"3\"><ul><li><a href=\"tel:+63-917-123-4567\">+63-917-123-4567</a></li><li>123 Mabini Street Barangay Malinis City of Las Piñas 1740 PH (home)</li></ul></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Patient Links\">Links:</td><td colspan=\"3\"><ul><li>General Practitioner: <a href=\"Practitioner-practitioner-ed-example.html\">Practitioner Maria Clara Santos (official)</a></li><li>Managing Organization: <a href=\"Organization-organization-pgh-example.html\">Organization Philippine General Hospital</a></li></ul></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"race of a patient.\"><a href=\"StructureDefinition-race.html\">Race</a></td><td colspan=\"3\"><span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-Race 2036-2}\">Filipino</span></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"The nationality of the patient.\">Patient Nationality:</td><td colspan=\"3\"><ul><li>code: <span title=\"Codes:{urn:iso:std:iso:3166 PH}\">Philippines</span></li><li>period: 1981-03-15 --&gt; (ongoing)</li></ul></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Highest educational attainment of the patient.\"><a href=\"StructureDefinition-educational-attainment.html\">Educational Attainment</a></td><td colspan=\"3\"><span title=\"Codes:{https://psa.gov.ph/classification/psced/level C201301}\">Elementary Graduate</span></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Patient's occupation.\">Occupation:</td><td colspan=\"3\"><ul><li>occupationClassification: <span title=\"Codes:{https://psa.gov.ph/classification/psoc/unit 911102}\">Street Food Vendor</span></li><li>occupationLength: 2015-01-01 --&gt; (ongoing)</li></ul></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"If the patient is a member of an indigenous group.\"><a href=\"StructureDefinition-indigenous-people.html\">Indigenous People</a></td><td colspan=\"3\">false</td></tr><tr><td style=\"background-color: #f3f5da\" title=\"The patient's professed religious affiliations.\"><a href=\"http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-patient-religion.html\">Patient Religion</a></td><td colspan=\"3\"><span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ReligiousAffiliation 1041}\">Roman Catholic Church</span></td></tr></table></div>"
      },
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "urn:iso:std:iso:3166",
              "code" : "PH",
              "display" : "Philippines"
            }]
          }
        },
        {
          "url" : "period",
          "valuePeriod" : {
            "start" : "1981-03-15"
          }
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/patient-nationality"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/patient-religion",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v3-ReligiousAffiliation",
            "code" : "1041",
            "display" : "Roman Catholic Church"
          }]
        }
      },
      {
        "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/indigenous-people",
        "valueBoolean" : false
      },
      {
        "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/race",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v3-Race",
            "code" : "2036-2",
            "display" : "Filipino"
          }]
        }
      },
      {
        "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/educational-attainment",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://psa.gov.ph/classification/psced/level",
            "code" : "C201301",
            "display" : "Elementary Graduate"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "occupationClassification",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "https://psa.gov.ph/classification/psoc/unit",
              "code" : "911102",
              "display" : "Street Food Vendor"
            }]
          }
        },
        {
          "url" : "occupationLength",
          "valuePeriod" : {
            "start" : "2015-01-01"
          }
        }],
        "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/occupation"
      }],
      "identifier" : [{
        "system" : "http://philhealth.gov.ph/fhir/Identifier/philhealth-id",
        "value" : "63-584789845-5"
      }],
      "active" : true,
      "name" : [{
        "use" : "official",
        "family" : "Dela Cruz",
        "given" : ["Juan", "Carlos"]
      }],
      "telecom" : [{
        "system" : "phone",
        "value" : "+63-917-123-4567",
        "use" : "mobile"
      }],
      "gender" : "male",
      "birthDate" : "1981-03-15",
      "address" : [{
        "extension" : [{
          "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/city-municipality",
          "valueCoding" : {
            "system" : "https://psa.gov.ph/classification/psgc",
            "code" : "1380200000",
            "display" : "City of Las Piñas"
          }
        },
        {
          "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/region",
          "valueCoding" : {
            "system" : "https://psa.gov.ph/classification/psgc",
            "code" : "1300000000",
            "display" : "National Capital Region"
          }
        }],
        "use" : "home",
        "type" : "both",
        "line" : ["123 Mabini Street", "Barangay Malinis"],
        "city" : "City of Las Piñas",
        "district" : "NCR",
        "postalCode" : "1740",
        "country" : "PH"
      }],
      "generalPractitioner" : [{
        "reference" : "Practitioner/practitioner-ed-example"
      }],
      "managingOrganization" : {
        "reference" : "Organization/organization-pgh-example"
      }
    },
    "request" : {
      "method" : "POST",
      "url" : "Patient"
    }
  },
  {
    "fullUrl" : "https://fhir.doh.gov.ph/phcore/Organization/organization-pgh-example",
    "resource" : {
      "resourceType" : "Organization",
      "id" : "organization-pgh-example",
      "meta" : {
        "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-organization"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Organization_organization-pgh-example\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Organization organization-pgh-example</b></p><a name=\"organization-pgh-example\"> </a><a name=\"hcorganization-pgh-example\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-ph-core-organization.html\">PH Core Organization</a></p></div><p><b>identifier</b>: <a href=\"NamingSystem-DOHNHFRCodeNS.html\" title=\"Health Facility Code (HFC) from the National Health Facility Registry.\">DOHNHFRCode</a>/1234567890, <a href=\"NamingSystem-PhilHealthPANNS.html\" title=\"The unique number issued by PhilHealth to accredited institutions.\">PhilHealthPAN</a>/PAN-2024-56789, <a href=\"NamingSystem-PhilHealthPENNS.html\" title=\"The unique number issued by PhilHealth to employers.\">PhilHealthPEN</a>/PEN-987654321</p><p><b>active</b>: true</p><p><b>type</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/organization-type prov}\">Healthcare Provider</span></p><p><b>name</b>: Philippine General Hospital</p><p><b>telecom</b>: <a href=\"tel:+63-2-8651-7800\">+63-2-8651-7800</a>, <a href=\"mailto:contact@pgh.gov.ph\">contact@pgh.gov.ph</a></p><p><b>address</b>: Taft Avenue Manila 1000 PH (work)</p><h3>Contacts</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Name</b></td><td><b>Telecom</b></td><td><b>Address</b></td></tr><tr><td style=\"display: none\">*</td><td>Hospital Administrator</td><td><a href=\"tel:+63-2-8651-7801\">+63-2-8651-7801</a></td><td>Taft Avenue Manila 1000 PH (work)</td></tr></table></div>"
      },
      "identifier" : [{
        "system" : "https://fhir.doh.gov.ph/phcore/Identifier/doh-nhfr-code",
        "value" : "1234567890"
      },
      {
        "system" : "http://nhdr.gov.ph/fhir/Identifier/philhealthaccreditationnumber",
        "value" : "PAN-2024-56789"
      },
      {
        "system" : "http://nhdr.gov.ph/fhir/Identifier/philhealthemployernumber",
        "value" : "PEN-987654321"
      }],
      "active" : true,
      "type" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/organization-type",
          "code" : "prov",
          "display" : "Healthcare Provider"
        }]
      }],
      "name" : "Philippine General Hospital",
      "telecom" : [{
        "system" : "phone",
        "value" : "+63-2-8651-7800",
        "use" : "work"
      },
      {
        "system" : "email",
        "value" : "contact@pgh.gov.ph",
        "use" : "work"
      }],
      "address" : [{
        "extension" : [{
          "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/region",
          "valueCoding" : {
            "system" : "https://psa.gov.ph/classification/psgc",
            "code" : "1300000000",
            "display" : "National Capital Region"
          }
        },
        {
          "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/city-municipality",
          "valueCoding" : {
            "system" : "https://psa.gov.ph/classification/psgc",
            "code" : "1380600000",
            "display" : "City of Manila"
          }
        },
        {
          "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/barangay",
          "valueCoding" : {
            "system" : "https://psa.gov.ph/classification/psgc",
            "code" : "1339000003",
            "display" : "Ermita"
          }
        }],
        "use" : "work",
        "type" : "both",
        "line" : ["Taft Avenue"],
        "city" : "Manila",
        "district" : "NCR",
        "postalCode" : "1000",
        "country" : "PH"
      }],
      "contact" : [{
        "name" : {
          "text" : "Hospital Administrator"
        },
        "telecom" : [{
          "system" : "phone",
          "value" : "+63-2-8651-7801"
        }],
        "address" : {
          "extension" : [{
            "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/region",
            "valueCoding" : {
              "system" : "https://psa.gov.ph/classification/psgc",
              "code" : "1300000000",
              "display" : "National Capital Region"
            }
          },
          {
            "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/city-municipality",
            "valueCoding" : {
              "system" : "https://psa.gov.ph/classification/psgc",
              "code" : "1380600000",
              "display" : "City of Manila"
            }
          },
          {
            "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/barangay",
            "valueCoding" : {
              "system" : "https://psa.gov.ph/classification/psgc",
              "code" : "1339000003",
              "display" : "Ermita"
            }
          }],
          "use" : "work",
          "line" : ["Taft Avenue"],
          "city" : "Manila",
          "postalCode" : "1000",
          "country" : "PH"
        }
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "Organization"
    }
  },
  {
    "fullUrl" : "https://fhir.doh.gov.ph/phcore/Practitioner/practitioner-ed-example",
    "resource" : {
      "resourceType" : "Practitioner",
      "id" : "practitioner-ed-example",
      "meta" : {
        "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-practitioner"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Practitioner_practitioner-ed-example\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Practitioner practitioner-ed-example</b></p><a name=\"practitioner-ed-example\"> </a><a name=\"hcpractitioner-ed-example\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-ph-core-practitioner.html\">PH Core Practitioner</a></p></div><blockquote><p><b>Person Recorded Sex Or Gender</b></p><ul><li>value: <span title=\"Codes:{http://snomed.info/sct 248152002}\">Female (finding)</span></li><li>type: <span title=\"Codes:{http://loinc.org 76689-9}\">Sex Assigned at Birth</span></li></ul></blockquote><blockquote><p><b>Individual Gender Identity</b></p><ul><li>value: <span title=\"Codes:{http://loinc.org LA22879-3}\">Identifies as female</span></li></ul></blockquote><blockquote><p><b>Individual Pronouns</b></p><ul><li>value: <span title=\"Codes:{http://loinc.org LA29519-8}\">she/her/her/hers/herself</span></li></ul></blockquote><p><b>name</b>: Maria Clara Santos (Official)</p><p><b>telecom</b>: <a href=\"tel:+63-912-345-6789\">+63-912-345-6789</a>, <a href=\"mailto:maria.santos@pgh.gov.ph\">maria.santos@pgh.gov.ph</a></p><p><b>address</b>: 1234 Mabini Street Manila 1000 PH (home)</p><p><b>gender</b>: Female</p><p><b>birthDate</b>: 1985-05-15</p><h3>Qualifications</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Identifier</b></td><td><b>Code</b></td><td><b>Period</b></td><td><b>Issuer</b></td></tr><tr><td style=\"display: none\">*</td><td><code>http://prc.gov.ph/fhir/Identifier/prc-license</code>/0123456</td><td><span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0360 MD}\">Doctor of Medicine</span></td><td>2010-07-15 --&gt; (ongoing)</td><td><a href=\"Organization-organization-pgh-example.html\">Organization Philippine General Hospital</a></td></tr></table><p><b>communication</b>: <span title=\"Codes:{urn:ietf:bcp:47 fil}\">Filipino</span>, <span title=\"Codes:{urn:ietf:bcp:47 en}\">English</span></p></div>"
      },
      "extension" : [{
        "extension" : [{
          "url" : "value",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "http://snomed.info/sct",
              "code" : "248152002",
              "display" : "Female (finding)"
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
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender"
      },
      {
        "extension" : [{
          "url" : "value",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "http://loinc.org",
              "code" : "LA22879-3",
              "display" : "Identifies as female"
            }]
          }
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
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/individual-pronouns"
      }],
      "name" : [{
        "use" : "official",
        "family" : "Santos",
        "given" : ["Maria", "Clara"],
        "suffix" : ["MD"]
      }],
      "telecom" : [{
        "system" : "phone",
        "value" : "+63-912-345-6789",
        "use" : "mobile"
      },
      {
        "system" : "email",
        "value" : "maria.santos@pgh.gov.ph",
        "use" : "work"
      }],
      "address" : [{
        "extension" : [{
          "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/barangay",
          "valueCoding" : {
            "system" : "https://psa.gov.ph/classification/psgc",
            "code" : "1339000003",
            "display" : "Ermita"
          }
        },
        {
          "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/city-municipality",
          "valueCoding" : {
            "system" : "https://psa.gov.ph/classification/psgc",
            "code" : "1380600000",
            "display" : "City of Manila"
          }
        },
        {
          "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/region",
          "valueCoding" : {
            "system" : "https://psa.gov.ph/classification/psgc",
            "code" : "1300000000",
            "display" : "National Capital Region"
          }
        }],
        "use" : "home",
        "type" : "both",
        "line" : ["1234 Mabini Street"],
        "city" : "Manila",
        "district" : "NCR",
        "postalCode" : "1000",
        "country" : "PH"
      }],
      "gender" : "female",
      "birthDate" : "1985-05-15",
      "qualification" : [{
        "identifier" : [{
          "system" : "http://prc.gov.ph/fhir/Identifier/prc-license",
          "value" : "0123456"
        }],
        "code" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0360",
            "code" : "MD",
            "display" : "Doctor of Medicine"
          }]
        },
        "period" : {
          "start" : "2010-07-15"
        },
        "issuer" : {
          "reference" : "Organization/organization-pgh-example"
        }
      }],
      "communication" : [{
        "coding" : [{
          "system" : "urn:ietf:bcp:47",
          "code" : "fil",
          "display" : "Filipino"
        }]
      },
      {
        "coding" : [{
          "system" : "urn:ietf:bcp:47",
          "code" : "en",
          "display" : "English"
        }]
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "Practitioner"
    }
  },
  {
    "fullUrl" : "https://fhir.doh.gov.ph/phcore/PractitionerRole/practitionerrole-ed-example",
    "resource" : {
      "resourceType" : "PractitionerRole",
      "id" : "practitionerrole-ed-example",
      "meta" : {
        "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-practitionerrole"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"PractitionerRole_practitionerrole-ed-example\"> </a><p class=\"res-header-id\"><b>Generated Narrative: PractitionerRole practitionerrole-ed-example</b></p><a name=\"practitionerrole-ed-example\"> </a><a name=\"hcpractitionerrole-ed-example\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-ph-core-practitionerrole.html\">PH Core PractitionerRole</a></p></div><p><b>identifier</b>: <code>http://doh.gov.ph/fhir/Identifier/practitioner-role-id</code>/PR-ED-001</p><p><b>active</b>: true</p><p><b>practitioner</b>: <a href=\"Practitioner-practitioner-ed-example.html\">Practitioner Maria Clara Santos (official)</a></p><p><b>organization</b>: <a href=\"Organization-organization-pgh-example.html\">Organization Philippine General Hospital</a></p><p><b>code</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/practitioner-role doctor}\">Doctor</span></p><p><b>specialty</b>: <span title=\"Codes:{http://snomed.info/sct 773568002}\">Emergency medicine</span></p><p><b>telecom</b>: <a href=\"tel:+63-2-8651-7802\">+63-2-8651-7802</a>, <a href=\"mailto:ed.attending@pgh.gov.ph\">ed.attending@pgh.gov.ph</a></p></div>"
      },
      "identifier" : [{
        "system" : "http://doh.gov.ph/fhir/Identifier/practitioner-role-id",
        "value" : "PR-ED-001"
      }],
      "active" : true,
      "practitioner" : {
        "reference" : "Practitioner/practitioner-ed-example"
      },
      "organization" : {
        "reference" : "Organization/organization-pgh-example"
      },
      "code" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/practitioner-role",
          "code" : "doctor",
          "display" : "Doctor"
        }]
      }],
      "specialty" : [{
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "773568002",
          "display" : "Emergency medicine"
        }]
      }],
      "telecom" : [{
        "system" : "phone",
        "value" : "+63-2-8651-7802",
        "use" : "work"
      },
      {
        "system" : "email",
        "value" : "ed.attending@pgh.gov.ph",
        "use" : "work"
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "PractitionerRole"
    }
  },
  {
    "fullUrl" : "https://fhir.doh.gov.ph/phcore/Condition/condition-t2dm-example",
    "resource" : {
      "resourceType" : "Condition",
      "id" : "condition-t2dm-example",
      "meta" : {
        "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-condition"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_condition-t2dm-example\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition condition-t2dm-example</b></p><a name=\"condition-t2dm-example\"> </a><a name=\"hccondition-t2dm-example\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-ph-core-condition.html\">PH Core Condition</a></p></div><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmed</span></p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-category problem-list-item}\">Chronic Condition</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 44054006}\">Type 2 Diabetes Mellitus</span></p><p><b>subject</b>: <a href=\"Patient-patient-acs-example.html\">Juan Carlos Dela Cruz (official) Male, DoB: 1981-03-15 ( http://philhealth.gov.ph/fhir/Identifier/philhealth-id#PhilHealthID#63-584789845-5)</a></p><p><b>onset</b>: 2020-03-15</p><p><b>recordedDate</b>: 2020-03-15 10:30:00+0800</p><p><b>note</b>: </p><blockquote><div><p>Patient diagnosed with T2DM during routine health screening. Currently on Metformin 500mg twice daily. Last HbA1c: 8.2% (poor control). Advised on diet and exercise management.</p>\n</div></blockquote></div>"
      },
      "clinicalStatus" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
          "code" : "active",
          "display" : "Active"
        }]
      },
      "verificationStatus" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
          "code" : "confirmed",
          "display" : "Confirmed"
        }]
      },
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
          "code" : "problem-list-item",
          "display" : "Problem List Item"
        }],
        "text" : "Chronic Condition"
      }],
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "44054006",
          "display" : "Diabetes mellitus type 2"
        }],
        "text" : "Type 2 Diabetes Mellitus"
      },
      "subject" : {
        "reference" : "Patient/patient-acs-example"
      },
      "onsetDateTime" : "2020-03-15",
      "recordedDate" : "2020-03-15T10:30:00+08:00",
      "note" : [{
        "text" : "Patient diagnosed with T2DM during routine health screening. Currently on Metformin 500mg twice daily. Last HbA1c: 8.2% (poor control). Advised on diet and exercise management."
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "Condition"
    }
  },
  {
    "fullUrl" : "https://fhir.doh.gov.ph/phcore/Condition/condition-acs-example",
    "resource" : {
      "resourceType" : "Condition",
      "id" : "condition-acs-example",
      "meta" : {
        "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-condition"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_condition-acs-example\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition condition-acs-example</b></p><a name=\"condition-acs-example\"> </a><a name=\"hccondition-acs-example\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-ph-core-condition.html\">PH Core Condition</a></p></div><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmed</span></p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-category encounter-diagnosis}\">Acute Diagnosis</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 401303003}\">Acute Coronary Syndrome - STEMI</span></p><p><b>subject</b>: <a href=\"Patient-patient-acs-example.html\">Juan Carlos Dela Cruz (official) Male, DoB: 1981-03-15 ( http://philhealth.gov.ph/fhir/Identifier/philhealth-id#PhilHealthID#63-584789845-5)</a></p><p><b>encounter</b>: <a href=\"Encounter-encounter-ed-example.html\">Encounter: identifier = http://pgh.gov.ph/fhir/Identifier/encounter-id#ENC-2026-0612-001; status = finished; class = emergency (ActCode#EMER); type = emergency; priority = emergency; period = 2026-06-12 08:30:00+0800 --&gt; 2026-06-12 10:30:00+0800</a></p><p><b>onset</b>: 2026-06-12 08:30:00+0800</p><p><b>recordedDate</b>: 2026-06-12 08:45:00+0800</p><p><b>recorder</b>: <a href=\"Practitioner-practitioner-ed-example.html\">Practitioner Maria Clara Santos (official)</a></p><p><b>note</b>: </p><blockquote><div><p>45-year-old male with 2-hour history of crushing substernal chest pain radiating to left arm. 12-lead ECG shows ST-elevation in leads V1-V4 consistent with anterior STEMI. Troponin I elevated at 2.5 ng/mL.</p>\n</div></blockquote></div>"
      },
      "clinicalStatus" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
          "code" : "active",
          "display" : "Active"
        }]
      },
      "verificationStatus" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
          "code" : "confirmed",
          "display" : "Confirmed"
        }]
      },
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
          "code" : "encounter-diagnosis",
          "display" : "Encounter Diagnosis"
        }],
        "text" : "Acute Diagnosis"
      }],
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "401303003",
          "display" : "Acute ST segment elevation myocardial infarction"
        }],
        "text" : "Acute Coronary Syndrome - STEMI"
      },
      "subject" : {
        "reference" : "Patient/patient-acs-example"
      },
      "encounter" : {
        "reference" : "Encounter/encounter-ed-example"
      },
      "onsetDateTime" : "2026-06-12T08:30:00+08:00",
      "recordedDate" : "2026-06-12T08:45:00+08:00",
      "recorder" : {
        "reference" : "Practitioner/practitioner-ed-example"
      },
      "note" : [{
        "text" : "45-year-old male with 2-hour history of crushing substernal chest pain radiating to left arm. 12-lead ECG shows ST-elevation in leads V1-V4 consistent with anterior STEMI. Troponin I elevated at 2.5 ng/mL."
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "Condition"
    }
  },
  {
    "fullUrl" : "https://fhir.doh.gov.ph/phcore/Encounter/encounter-ed-example",
    "resource" : {
      "resourceType" : "Encounter",
      "id" : "encounter-ed-example",
      "meta" : {
        "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-encounter"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Encounter_encounter-ed-example\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Encounter encounter-ed-example</b></p><a name=\"encounter-ed-example\"> </a><a name=\"hcencounter-ed-example\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-ph-core-encounter.html\">PH Core Encounter</a></p></div><p><b>identifier</b>: <code>http://pgh.gov.ph/fhir/Identifier/encounter-id</code>/ENC-2026-0612-001</p><p><b>status</b>: Finished</p><p><b>class</b>: <a href=\"http://terminology.hl7.org/7.1.0/CodeSystem-v3-ActCode.html#v3-ActCode-EMER\">ActCode: EMER</a> (emergency)</p><p><b>type</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ActCode EMER}\">Emergency Department Visit</span></p><p><b>priority</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ActPriority EM}\">emergency</span></p><p><b>subject</b>: <a href=\"Patient-patient-acs-example.html\">Juan Carlos Dela Cruz (official) Male, DoB: 1981-03-15 ( http://philhealth.gov.ph/fhir/Identifier/philhealth-id#PhilHealthID#63-584789845-5)</a></p><blockquote><p><b>participant</b></p><p><b>type</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ParticipationType ATND}\">attender</span></p><p><b>individual</b>: <a href=\"Practitioner-practitioner-ed-example.html\">Practitioner Maria Clara Santos (official)</a></p></blockquote><blockquote><p><b>participant</b></p><p><b>type</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ParticipationType ADM}\">admitter</span></p><p><b>individual</b>: <a href=\"PractitionerRole-practitionerrole-ed-example.html\">PractitionerRole Doctor</a></p></blockquote><p><b>period</b>: 2026-06-12 08:30:00+0800 --&gt; 2026-06-12 10:30:00+0800</p><p><b>reasonReference</b>: <a href=\"Condition-condition-acs-example.html\">Condition Acute ST segment elevation myocardial infarction</a></p><blockquote><p><b>diagnosis</b></p><p><b>condition</b>: <a href=\"Condition-condition-acs-example.html\">Condition Acute ST segment elevation myocardial infarction</a></p><p><b>use</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/diagnosis-role AD}\">Admission diagnosis</span></p><p><b>rank</b>: 1</p></blockquote><blockquote><p><b>diagnosis</b></p><p><b>condition</b>: <a href=\"Condition-condition-t2dm-example.html\">Condition Diabetes mellitus type 2</a></p><p><b>use</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/diagnosis-role CC}\">Chief complaint</span></p><p><b>rank</b>: 2</p></blockquote><h3>Hospitalizations</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>AdmitSource</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://terminology.hl7.org/CodeSystem/admit-source emd}\">From accident/emergency department</span></td></tr></table><p><b>serviceProvider</b>: <a href=\"Organization-organization-pgh-example.html\">Organization Philippine General Hospital</a></p></div>"
      },
      "identifier" : [{
        "system" : "http://pgh.gov.ph/fhir/Identifier/encounter-id",
        "value" : "ENC-2026-0612-001"
      }],
      "status" : "finished",
      "class" : {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
        "code" : "EMER",
        "display" : "emergency"
      },
      "type" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
          "code" : "EMER",
          "display" : "emergency"
        }],
        "text" : "Emergency Department Visit"
      }],
      "priority" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActPriority",
          "code" : "EM",
          "display" : "emergency"
        }]
      },
      "subject" : {
        "reference" : "Patient/patient-acs-example"
      },
      "participant" : [{
        "type" : [{
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
            "code" : "ATND",
            "display" : "attender"
          }]
        }],
        "individual" : {
          "reference" : "Practitioner/practitioner-ed-example"
        }
      },
      {
        "type" : [{
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
            "code" : "ADM",
            "display" : "admitter"
          }]
        }],
        "individual" : {
          "reference" : "PractitionerRole/practitionerrole-ed-example"
        }
      }],
      "period" : {
        "start" : "2026-06-12T08:30:00+08:00",
        "end" : "2026-06-12T10:30:00+08:00"
      },
      "reasonReference" : [{
        "reference" : "Condition/condition-acs-example"
      }],
      "diagnosis" : [{
        "condition" : {
          "reference" : "Condition/condition-acs-example"
        },
        "use" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/diagnosis-role",
            "code" : "AD",
            "display" : "Admission diagnosis"
          }]
        },
        "rank" : 1
      },
      {
        "condition" : {
          "reference" : "Condition/condition-t2dm-example"
        },
        "use" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/diagnosis-role",
            "code" : "CC",
            "display" : "Chief complaint"
          }]
        },
        "rank" : 2
      }],
      "hospitalization" : {
        "admitSource" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/admit-source",
            "code" : "emd",
            "display" : "From accident/emergency department"
          }]
        }
      },
      "serviceProvider" : {
        "reference" : "Organization/organization-pgh-example"
      }
    },
    "request" : {
      "method" : "POST",
      "url" : "Encounter"
    }
  },
  {
    "fullUrl" : "https://fhir.doh.gov.ph/phcore/Observation/observation-bp-acs",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "observation-bp-acs",
      "meta" : {
        "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_observation-bp-acs\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation observation-bp-acs</b></p><a name=\"observation-bp-acs\"> </a><a name=\"hcobservation-bp-acs\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-ph-core-observation.html\">PH Core Observation</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category vital-signs}\">Vital Signs</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 85354-9}\">Blood pressure panel with all children optional</span></p><p><b>subject</b>: <a href=\"Patient-patient-acs-example.html\">Juan Carlos Dela Cruz (official) Male, DoB: 1981-03-15 ( http://philhealth.gov.ph/fhir/Identifier/philhealth-id#PhilHealthID#63-584789845-5)</a></p><p><b>encounter</b>: <a href=\"Encounter-encounter-ed-example.html\">Encounter: identifier = http://pgh.gov.ph/fhir/Identifier/encounter-id#ENC-2026-0612-001; status = finished; class = emergency (ActCode#EMER); type = emergency; priority = emergency; period = 2026-06-12 08:30:00+0800 --&gt; 2026-06-12 10:30:00+0800</a></p><p><b>effective</b>: 2026-06-12 08:30:00+0800</p><p><b>performer</b>: <a href=\"Practitioner-practitioner-ed-example.html\">Practitioner Maria Clara Santos (official)</a></p><p><b>bodySite</b>: <span title=\"Codes:{http://snomed.info/sct 368209003}\">Right arm</span></p><blockquote><p><b>component</b></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 8480-6}\">Systolic blood pressure</span></p><p><b>value</b>: 160 mmHg<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemm[Hg] = 'mm[Hg]')</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation H}\">High</span></p></blockquote><blockquote><p><b>component</b></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 8462-4}\">Diastolic blood pressure</span></p><p><b>value</b>: 95 mmHg<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemm[Hg] = 'mm[Hg]')</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation H}\">High</span></p></blockquote></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "vital-signs",
          "display" : "Vital Signs"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "85354-9",
          "display" : "Blood pressure panel with all children optional"
        }]
      },
      "subject" : {
        "reference" : "Patient/patient-acs-example"
      },
      "encounter" : {
        "reference" : "Encounter/encounter-ed-example"
      },
      "effectiveDateTime" : "2026-06-12T08:30:00+08:00",
      "performer" : [{
        "reference" : "Practitioner/practitioner-ed-example"
      }],
      "bodySite" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "368209003",
          "display" : "Right arm"
        }]
      },
      "component" : [{
        "code" : {
          "coding" : [{
            "system" : "http://loinc.org",
            "code" : "8480-6",
            "display" : "Systolic blood pressure"
          }]
        },
        "valueQuantity" : {
          "value" : 160,
          "unit" : "mmHg",
          "system" : "http://unitsofmeasure.org",
          "code" : "mm[Hg]"
        },
        "interpretation" : [{
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
            "code" : "H",
            "display" : "High"
          }]
        }]
      },
      {
        "code" : {
          "coding" : [{
            "system" : "http://loinc.org",
            "code" : "8462-4",
            "display" : "Diastolic blood pressure"
          }]
        },
        "valueQuantity" : {
          "value" : 95,
          "unit" : "mmHg",
          "system" : "http://unitsofmeasure.org",
          "code" : "mm[Hg]"
        },
        "interpretation" : [{
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
            "code" : "H",
            "display" : "High"
          }]
        }]
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "Observation"
    }
  },
  {
    "fullUrl" : "https://fhir.doh.gov.ph/phcore/Observation/observation-hr-acs",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "observation-hr-acs",
      "meta" : {
        "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_observation-hr-acs\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation observation-hr-acs</b></p><a name=\"observation-hr-acs\"> </a><a name=\"hcobservation-hr-acs\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-ph-core-observation.html\">PH Core Observation</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category vital-signs}\">Vital Signs</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 8867-4}\">Heart rate</span></p><p><b>subject</b>: <a href=\"Patient-patient-acs-example.html\">Juan Carlos Dela Cruz (official) Male, DoB: 1981-03-15 ( http://philhealth.gov.ph/fhir/Identifier/philhealth-id#PhilHealthID#63-584789845-5)</a></p><p><b>encounter</b>: <a href=\"Encounter-encounter-ed-example.html\">Encounter: identifier = http://pgh.gov.ph/fhir/Identifier/encounter-id#ENC-2026-0612-001; status = finished; class = emergency (ActCode#EMER); type = emergency; priority = emergency; period = 2026-06-12 08:30:00+0800 --&gt; 2026-06-12 10:30:00+0800</a></p><p><b>effective</b>: 2026-06-12 08:30:00+0800</p><p><b>performer</b>: <a href=\"Practitioner-practitioner-ed-example.html\">Practitioner Maria Clara Santos (official)</a></p><p><b>value</b>: 110 beats/minute<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code/min = '/min')</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation H}\">High</span></p></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "vital-signs",
          "display" : "Vital Signs"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "8867-4",
          "display" : "Heart rate"
        }]
      },
      "subject" : {
        "reference" : "Patient/patient-acs-example"
      },
      "encounter" : {
        "reference" : "Encounter/encounter-ed-example"
      },
      "effectiveDateTime" : "2026-06-12T08:30:00+08:00",
      "performer" : [{
        "reference" : "Practitioner/practitioner-ed-example"
      }],
      "valueQuantity" : {
        "value" : 110,
        "unit" : "beats/minute",
        "system" : "http://unitsofmeasure.org",
        "code" : "/min"
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "H",
          "display" : "High"
        }]
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "Observation"
    }
  },
  {
    "fullUrl" : "https://fhir.doh.gov.ph/phcore/Observation/observation-rr-acs",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "observation-rr-acs",
      "meta" : {
        "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_observation-rr-acs\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation observation-rr-acs</b></p><a name=\"observation-rr-acs\"> </a><a name=\"hcobservation-rr-acs\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-ph-core-observation.html\">PH Core Observation</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category vital-signs}\">Vital Signs</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 9279-1}\">Respiratory rate</span></p><p><b>subject</b>: <a href=\"Patient-patient-acs-example.html\">Juan Carlos Dela Cruz (official) Male, DoB: 1981-03-15 ( http://philhealth.gov.ph/fhir/Identifier/philhealth-id#PhilHealthID#63-584789845-5)</a></p><p><b>encounter</b>: <a href=\"Encounter-encounter-ed-example.html\">Encounter: identifier = http://pgh.gov.ph/fhir/Identifier/encounter-id#ENC-2026-0612-001; status = finished; class = emergency (ActCode#EMER); type = emergency; priority = emergency; period = 2026-06-12 08:30:00+0800 --&gt; 2026-06-12 10:30:00+0800</a></p><p><b>effective</b>: 2026-06-12 08:30:00+0800</p><p><b>performer</b>: <a href=\"Practitioner-practitioner-ed-example.html\">Practitioner Maria Clara Santos (official)</a></p><p><b>value</b>: 24 breaths/minute<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code/min = '/min')</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation H}\">High</span></p></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "vital-signs",
          "display" : "Vital Signs"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "9279-1",
          "display" : "Respiratory rate"
        }]
      },
      "subject" : {
        "reference" : "Patient/patient-acs-example"
      },
      "encounter" : {
        "reference" : "Encounter/encounter-ed-example"
      },
      "effectiveDateTime" : "2026-06-12T08:30:00+08:00",
      "performer" : [{
        "reference" : "Practitioner/practitioner-ed-example"
      }],
      "valueQuantity" : {
        "value" : 24,
        "unit" : "breaths/minute",
        "system" : "http://unitsofmeasure.org",
        "code" : "/min"
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "H",
          "display" : "High"
        }]
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "Observation"
    }
  },
  {
    "fullUrl" : "https://fhir.doh.gov.ph/phcore/Observation/observation-spo2-acs",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "observation-spo2-acs",
      "meta" : {
        "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_observation-spo2-acs\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation observation-spo2-acs</b></p><a name=\"observation-spo2-acs\"> </a><a name=\"hcobservation-spo2-acs\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-ph-core-observation.html\">PH Core Observation</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category vital-signs}\">Vital Signs</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 2708-6}\">Oxygen saturation in Arterial blood</span></p><p><b>subject</b>: <a href=\"Patient-patient-acs-example.html\">Juan Carlos Dela Cruz (official) Male, DoB: 1981-03-15 ( http://philhealth.gov.ph/fhir/Identifier/philhealth-id#PhilHealthID#63-584789845-5)</a></p><p><b>encounter</b>: <a href=\"Encounter-encounter-ed-example.html\">Encounter: identifier = http://pgh.gov.ph/fhir/Identifier/encounter-id#ENC-2026-0612-001; status = finished; class = emergency (ActCode#EMER); type = emergency; priority = emergency; period = 2026-06-12 08:30:00+0800 --&gt; 2026-06-12 10:30:00+0800</a></p><p><b>effective</b>: 2026-06-12 08:30:00+0800</p><p><b>performer</b>: <a href=\"Practitioner-practitioner-ed-example.html\">Practitioner Maria Clara Santos (official)</a></p><p><b>value</b>: 92 %<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code% = '%')</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation L}\">Low</span></p><h3>ReferenceRanges</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Low</b></td><td><b>High</b></td></tr><tr><td style=\"display: none\">*</td><td>95 %<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code% = '%')</span></td><td>100 %<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code% = '%')</span></td></tr></table></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "vital-signs",
          "display" : "Vital Signs"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "2708-6",
          "display" : "Oxygen saturation in Arterial blood"
        }]
      },
      "subject" : {
        "reference" : "Patient/patient-acs-example"
      },
      "encounter" : {
        "reference" : "Encounter/encounter-ed-example"
      },
      "effectiveDateTime" : "2026-06-12T08:30:00+08:00",
      "performer" : [{
        "reference" : "Practitioner/practitioner-ed-example"
      }],
      "valueQuantity" : {
        "value" : 92,
        "unit" : "%",
        "system" : "http://unitsofmeasure.org",
        "code" : "%"
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "L",
          "display" : "Low"
        }]
      }],
      "referenceRange" : [{
        "low" : {
          "value" : 95,
          "unit" : "%",
          "system" : "http://unitsofmeasure.org",
          "code" : "%"
        },
        "high" : {
          "value" : 100,
          "unit" : "%",
          "system" : "http://unitsofmeasure.org",
          "code" : "%"
        }
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "Observation"
    }
  },
  {
    "fullUrl" : "https://fhir.doh.gov.ph/phcore/Observation/observation-temp-acs",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "observation-temp-acs",
      "meta" : {
        "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_observation-temp-acs\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation observation-temp-acs</b></p><a name=\"observation-temp-acs\"> </a><a name=\"hcobservation-temp-acs\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-ph-core-observation.html\">PH Core Observation</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category vital-signs}\">Vital Signs</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 8310-5}\">Body temperature</span></p><p><b>subject</b>: <a href=\"Patient-patient-acs-example.html\">Juan Carlos Dela Cruz (official) Male, DoB: 1981-03-15 ( http://philhealth.gov.ph/fhir/Identifier/philhealth-id#PhilHealthID#63-584789845-5)</a></p><p><b>encounter</b>: <a href=\"Encounter-encounter-ed-example.html\">Encounter: identifier = http://pgh.gov.ph/fhir/Identifier/encounter-id#ENC-2026-0612-001; status = finished; class = emergency (ActCode#EMER); type = emergency; priority = emergency; period = 2026-06-12 08:30:00+0800 --&gt; 2026-06-12 10:30:00+0800</a></p><p><b>effective</b>: 2026-06-12 08:30:00+0800</p><p><b>performer</b>: <a href=\"Practitioner-practitioner-ed-example.html\">Practitioner Maria Clara Santos (official)</a></p><p><b>value</b>: 37.2 degrees Celsius<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codeCel = 'Cel')</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation N}\">Normal</span></p></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "vital-signs",
          "display" : "Vital Signs"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "8310-5",
          "display" : "Body temperature"
        }]
      },
      "subject" : {
        "reference" : "Patient/patient-acs-example"
      },
      "encounter" : {
        "reference" : "Encounter/encounter-ed-example"
      },
      "effectiveDateTime" : "2026-06-12T08:30:00+08:00",
      "performer" : [{
        "reference" : "Practitioner/practitioner-ed-example"
      }],
      "valueQuantity" : {
        "value" : 37.2,
        "unit" : "degrees Celsius",
        "system" : "http://unitsofmeasure.org",
        "code" : "Cel"
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "N",
          "display" : "Normal"
        }]
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "Observation"
    }
  },
  {
    "fullUrl" : "https://fhir.doh.gov.ph/phcore/Observation/observation-pain-acs",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "observation-pain-acs",
      "meta" : {
        "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_observation-pain-acs\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation observation-pain-acs</b></p><a name=\"observation-pain-acs\"> </a><a name=\"hcobservation-pain-acs\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-ph-core-observation.html\">PH Core Observation</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category survey}\">Survey</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 72514-3}\">Pain severity - 0-10 verbal numeric rating [Score] - Reported</span></p><p><b>subject</b>: <a href=\"Patient-patient-acs-example.html\">Juan Carlos Dela Cruz (official) Male, DoB: 1981-03-15 ( http://philhealth.gov.ph/fhir/Identifier/philhealth-id#PhilHealthID#63-584789845-5)</a></p><p><b>encounter</b>: <a href=\"Encounter-encounter-ed-example.html\">Encounter: identifier = http://pgh.gov.ph/fhir/Identifier/encounter-id#ENC-2026-0612-001; status = finished; class = emergency (ActCode#EMER); type = emergency; priority = emergency; period = 2026-06-12 08:30:00+0800 --&gt; 2026-06-12 10:30:00+0800</a></p><p><b>effective</b>: 2026-06-12 08:30:00+0800</p><p><b>performer</b>: <a href=\"Practitioner-practitioner-ed-example.html\">Practitioner Maria Clara Santos (official)</a></p><p><b>value</b>: 8 score<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code{score} = '{score}')</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation HH}\">Critical high</span></p><p><b>note</b>: </p><blockquote><div><p>Patient reports crushing substernal chest pain radiating to left arm.</p>\n</div></blockquote></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "survey",
          "display" : "Survey"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "72514-3",
          "display" : "Pain severity - 0-10 verbal numeric rating [Score] - Reported"
        }]
      },
      "subject" : {
        "reference" : "Patient/patient-acs-example"
      },
      "encounter" : {
        "reference" : "Encounter/encounter-ed-example"
      },
      "effectiveDateTime" : "2026-06-12T08:30:00+08:00",
      "performer" : [{
        "reference" : "Practitioner/practitioner-ed-example"
      }],
      "valueQuantity" : {
        "value" : 8,
        "unit" : "score",
        "system" : "http://unitsofmeasure.org",
        "code" : "{score}"
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "HH",
          "display" : "Critical high"
        }]
      }],
      "note" : [{
        "text" : "Patient reports crushing substernal chest pain radiating to left arm."
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "Observation"
    }
  },
  {
    "fullUrl" : "https://fhir.doh.gov.ph/phcore/Observation/observation-troponin-acs",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "observation-troponin-acs",
      "meta" : {
        "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_observation-troponin-acs\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation observation-troponin-acs</b></p><a name=\"observation-troponin-acs\"> </a><a name=\"hcobservation-troponin-acs\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-ph-core-observation.html\">PH Core Observation</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 10839-9}\">Troponin I.cardiac [Mass/volume] in Serum or Plasma</span></p><p><b>subject</b>: <a href=\"Patient-patient-acs-example.html\">Juan Carlos Dela Cruz (official) Male, DoB: 1981-03-15 ( http://philhealth.gov.ph/fhir/Identifier/philhealth-id#PhilHealthID#63-584789845-5)</a></p><p><b>encounter</b>: <a href=\"Encounter-encounter-ed-example.html\">Encounter: identifier = http://pgh.gov.ph/fhir/Identifier/encounter-id#ENC-2026-0612-001; status = finished; class = emergency (ActCode#EMER); type = emergency; priority = emergency; period = 2026-06-12 08:30:00+0800 --&gt; 2026-06-12 10:30:00+0800</a></p><p><b>effective</b>: 2026-06-12 08:45:00+0800</p><p><b>performer</b>: <a href=\"Organization-organization-pgh-example.html\">Organization Philippine General Hospital</a></p><p><b>value</b>: 2.5 ng/mL<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codeng/mL = 'ng/mL')</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation H}\">High</span></p><p><b>note</b>: </p><blockquote><div><p>Elevated troponin consistent with acute myocardial infarction.</p>\n</div></blockquote><h3>ReferenceRanges</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Low</b></td><td><b>High</b></td></tr><tr><td style=\"display: none\">*</td><td>0 ng/mL<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codeng/mL = 'ng/mL')</span></td><td>0.04 ng/mL<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codeng/mL = 'ng/mL')</span></td></tr></table></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory",
          "display" : "Laboratory"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "10839-9",
          "display" : "Troponin I.cardiac [Mass/volume] in Serum or Plasma"
        }]
      },
      "subject" : {
        "reference" : "Patient/patient-acs-example"
      },
      "encounter" : {
        "reference" : "Encounter/encounter-ed-example"
      },
      "effectiveDateTime" : "2026-06-12T08:45:00+08:00",
      "performer" : [{
        "reference" : "Organization/organization-pgh-example"
      }],
      "valueQuantity" : {
        "value" : 2.5,
        "unit" : "ng/mL",
        "system" : "http://unitsofmeasure.org",
        "code" : "ng/mL"
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "H",
          "display" : "High"
        }]
      }],
      "note" : [{
        "text" : "Elevated troponin consistent with acute myocardial infarction."
      }],
      "referenceRange" : [{
        "low" : {
          "value" : 0,
          "unit" : "ng/mL",
          "system" : "http://unitsofmeasure.org",
          "code" : "ng/mL"
        },
        "high" : {
          "value" : 0.04,
          "unit" : "ng/mL",
          "system" : "http://unitsofmeasure.org",
          "code" : "ng/mL"
        }
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "Observation"
    }
  },
  {
    "fullUrl" : "https://fhir.doh.gov.ph/phcore/Observation/observation-glucose-acs",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "observation-glucose-acs",
      "meta" : {
        "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_observation-glucose-acs\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation observation-glucose-acs</b></p><a name=\"observation-glucose-acs\"> </a><a name=\"hcobservation-glucose-acs\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-ph-core-observation.html\">PH Core Observation</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 2345-7}\">Glucose [Mass/volume] in Serum or Plasma</span></p><p><b>subject</b>: <a href=\"Patient-patient-acs-example.html\">Juan Carlos Dela Cruz (official) Male, DoB: 1981-03-15 ( http://philhealth.gov.ph/fhir/Identifier/philhealth-id#PhilHealthID#63-584789845-5)</a></p><p><b>encounter</b>: <a href=\"Encounter-encounter-ed-example.html\">Encounter: identifier = http://pgh.gov.ph/fhir/Identifier/encounter-id#ENC-2026-0612-001; status = finished; class = emergency (ActCode#EMER); type = emergency; priority = emergency; period = 2026-06-12 08:30:00+0800 --&gt; 2026-06-12 10:30:00+0800</a></p><p><b>effective</b>: 2026-06-12 08:45:00+0800</p><p><b>performer</b>: <a href=\"Organization-organization-pgh-example.html\">Organization Philippine General Hospital</a></p><p><b>value</b>: 180 mg/dL<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg/dL = 'mg/dL')</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation H}\">High</span></p><p><b>note</b>: </p><blockquote><div><p>Elevated glucose consistent with stress hyperglycemia and known T2DM.</p>\n</div></blockquote><h3>ReferenceRanges</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Low</b></td><td><b>High</b></td></tr><tr><td style=\"display: none\">*</td><td>70 mg/dL<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg/dL = 'mg/dL')</span></td><td>140 mg/dL<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg/dL = 'mg/dL')</span></td></tr></table></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory",
          "display" : "Laboratory"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "2345-7",
          "display" : "Glucose [Mass/volume] in Serum or Plasma"
        }]
      },
      "subject" : {
        "reference" : "Patient/patient-acs-example"
      },
      "encounter" : {
        "reference" : "Encounter/encounter-ed-example"
      },
      "effectiveDateTime" : "2026-06-12T08:45:00+08:00",
      "performer" : [{
        "reference" : "Organization/organization-pgh-example"
      }],
      "valueQuantity" : {
        "value" : 180,
        "unit" : "mg/dL",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg/dL"
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "H",
          "display" : "High"
        }]
      }],
      "note" : [{
        "text" : "Elevated glucose consistent with stress hyperglycemia and known T2DM."
      }],
      "referenceRange" : [{
        "low" : {
          "value" : 70,
          "unit" : "mg/dL",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg/dL"
        },
        "high" : {
          "value" : 140,
          "unit" : "mg/dL",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg/dL"
        }
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "Observation"
    }
  },
  {
    "fullUrl" : "https://fhir.doh.gov.ph/phcore/Observation/observation-hba1c-acs",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "observation-hba1c-acs",
      "meta" : {
        "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_observation-hba1c-acs\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation observation-hba1c-acs</b></p><a name=\"observation-hba1c-acs\"> </a><a name=\"hcobservation-hba1c-acs\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-ph-core-observation.html\">PH Core Observation</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 4548-4}\">Hemoglobin A1c/Hemoglobin.total in Blood</span></p><p><b>subject</b>: <a href=\"Patient-patient-acs-example.html\">Juan Carlos Dela Cruz (official) Male, DoB: 1981-03-15 ( http://philhealth.gov.ph/fhir/Identifier/philhealth-id#PhilHealthID#63-584789845-5)</a></p><p><b>encounter</b>: <a href=\"Encounter-encounter-ed-example.html\">Encounter: identifier = http://pgh.gov.ph/fhir/Identifier/encounter-id#ENC-2026-0612-001; status = finished; class = emergency (ActCode#EMER); type = emergency; priority = emergency; period = 2026-06-12 08:30:00+0800 --&gt; 2026-06-12 10:30:00+0800</a></p><p><b>effective</b>: 2026-06-12 08:45:00+0800</p><p><b>performer</b>: <a href=\"Organization-organization-pgh-example.html\">Organization Philippine General Hospital</a></p><p><b>value</b>: 8.2 %<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code% = '%')</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation H}\">High</span></p><p><b>note</b>: </p><blockquote><div><p>HbA1c indicates poor glycemic control over past 3 months.</p>\n</div></blockquote><h3>ReferenceRanges</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Low</b></td><td><b>High</b></td></tr><tr><td style=\"display: none\">*</td><td>4 %<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code% = '%')</span></td><td>5.7 %<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code% = '%')</span></td></tr></table></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory",
          "display" : "Laboratory"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "4548-4",
          "display" : "Hemoglobin A1c/Hemoglobin.total in Blood"
        }]
      },
      "subject" : {
        "reference" : "Patient/patient-acs-example"
      },
      "encounter" : {
        "reference" : "Encounter/encounter-ed-example"
      },
      "effectiveDateTime" : "2026-06-12T08:45:00+08:00",
      "performer" : [{
        "reference" : "Organization/organization-pgh-example"
      }],
      "valueQuantity" : {
        "value" : 8.2,
        "unit" : "%",
        "system" : "http://unitsofmeasure.org",
        "code" : "%"
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "H",
          "display" : "High"
        }]
      }],
      "note" : [{
        "text" : "HbA1c indicates poor glycemic control over past 3 months."
      }],
      "referenceRange" : [{
        "low" : {
          "value" : 4,
          "unit" : "%",
          "system" : "http://unitsofmeasure.org",
          "code" : "%"
        },
        "high" : {
          "value" : 5.7,
          "unit" : "%",
          "system" : "http://unitsofmeasure.org",
          "code" : "%"
        }
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "Observation"
    }
  },
  {
    "fullUrl" : "https://fhir.doh.gov.ph/phcore/Observation/observation-cholesterol-total-acs",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "observation-cholesterol-total-acs",
      "meta" : {
        "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_observation-cholesterol-total-acs\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation observation-cholesterol-total-acs</b></p><a name=\"observation-cholesterol-total-acs\"> </a><a name=\"hcobservation-cholesterol-total-acs\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-ph-core-observation.html\">PH Core Observation</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 2093-3}\">Cholesterol [Mass/volume] in Serum or Plasma</span></p><p><b>subject</b>: <a href=\"Patient-patient-acs-example.html\">Juan Carlos Dela Cruz (official) Male, DoB: 1981-03-15 ( http://philhealth.gov.ph/fhir/Identifier/philhealth-id#PhilHealthID#63-584789845-5)</a></p><p><b>encounter</b>: <a href=\"Encounter-encounter-ed-example.html\">Encounter: identifier = http://pgh.gov.ph/fhir/Identifier/encounter-id#ENC-2026-0612-001; status = finished; class = emergency (ActCode#EMER); type = emergency; priority = emergency; period = 2026-06-12 08:30:00+0800 --&gt; 2026-06-12 10:30:00+0800</a></p><p><b>effective</b>: 2026-06-12 08:45:00+0800</p><p><b>performer</b>: <a href=\"Organization-organization-pgh-example.html\">Organization Philippine General Hospital</a></p><p><b>value</b>: 240 mg/dL<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg/dL = 'mg/dL')</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation H}\">High</span></p><h3>ReferenceRanges</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Low</b></td><td><b>High</b></td></tr><tr><td style=\"display: none\">*</td><td>0 mg/dL<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg/dL = 'mg/dL')</span></td><td>200 mg/dL<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg/dL = 'mg/dL')</span></td></tr></table></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory",
          "display" : "Laboratory"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "2093-3",
          "display" : "Cholesterol [Mass/volume] in Serum or Plasma"
        }]
      },
      "subject" : {
        "reference" : "Patient/patient-acs-example"
      },
      "encounter" : {
        "reference" : "Encounter/encounter-ed-example"
      },
      "effectiveDateTime" : "2026-06-12T08:45:00+08:00",
      "performer" : [{
        "reference" : "Organization/organization-pgh-example"
      }],
      "valueQuantity" : {
        "value" : 240,
        "unit" : "mg/dL",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg/dL"
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "H",
          "display" : "High"
        }]
      }],
      "referenceRange" : [{
        "low" : {
          "value" : 0,
          "unit" : "mg/dL",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg/dL"
        },
        "high" : {
          "value" : 200,
          "unit" : "mg/dL",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg/dL"
        }
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "Observation"
    }
  },
  {
    "fullUrl" : "https://fhir.doh.gov.ph/phcore/Observation/observation-cholesterol-ldl-acs",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "observation-cholesterol-ldl-acs",
      "meta" : {
        "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_observation-cholesterol-ldl-acs\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation observation-cholesterol-ldl-acs</b></p><a name=\"observation-cholesterol-ldl-acs\"> </a><a name=\"hcobservation-cholesterol-ldl-acs\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-ph-core-observation.html\">PH Core Observation</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 2089-1}\">Cholesterol in LDL [Mass/volume] in Serum or Plasma</span></p><p><b>subject</b>: <a href=\"Patient-patient-acs-example.html\">Juan Carlos Dela Cruz (official) Male, DoB: 1981-03-15 ( http://philhealth.gov.ph/fhir/Identifier/philhealth-id#PhilHealthID#63-584789845-5)</a></p><p><b>encounter</b>: <a href=\"Encounter-encounter-ed-example.html\">Encounter: identifier = http://pgh.gov.ph/fhir/Identifier/encounter-id#ENC-2026-0612-001; status = finished; class = emergency (ActCode#EMER); type = emergency; priority = emergency; period = 2026-06-12 08:30:00+0800 --&gt; 2026-06-12 10:30:00+0800</a></p><p><b>effective</b>: 2026-06-12 08:45:00+0800</p><p><b>performer</b>: <a href=\"Organization-organization-pgh-example.html\">Organization Philippine General Hospital</a></p><p><b>value</b>: 160 mg/dL<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg/dL = 'mg/dL')</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation H}\">High</span></p><h3>ReferenceRanges</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Low</b></td><td><b>High</b></td></tr><tr><td style=\"display: none\">*</td><td>0 mg/dL<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg/dL = 'mg/dL')</span></td><td>100 mg/dL<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg/dL = 'mg/dL')</span></td></tr></table></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory",
          "display" : "Laboratory"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "2089-1",
          "display" : "Cholesterol in LDL [Mass/volume] in Serum or Plasma"
        }]
      },
      "subject" : {
        "reference" : "Patient/patient-acs-example"
      },
      "encounter" : {
        "reference" : "Encounter/encounter-ed-example"
      },
      "effectiveDateTime" : "2026-06-12T08:45:00+08:00",
      "performer" : [{
        "reference" : "Organization/organization-pgh-example"
      }],
      "valueQuantity" : {
        "value" : 160,
        "unit" : "mg/dL",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg/dL"
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "H",
          "display" : "High"
        }]
      }],
      "referenceRange" : [{
        "low" : {
          "value" : 0,
          "unit" : "mg/dL",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg/dL"
        },
        "high" : {
          "value" : 100,
          "unit" : "mg/dL",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg/dL"
        }
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "Observation"
    }
  },
  {
    "fullUrl" : "https://fhir.doh.gov.ph/phcore/Observation/observation-ecg-acs",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "observation-ecg-acs",
      "meta" : {
        "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_observation-ecg-acs\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation observation-ecg-acs</b></p><a name=\"observation-ecg-acs\"> </a><a name=\"hcobservation-ecg-acs\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-ph-core-observation.html\">PH Core Observation</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category procedure}\">Procedure</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 11524-6}\">EKG study</span></p><p><b>subject</b>: <a href=\"Patient-patient-acs-example.html\">Juan Carlos Dela Cruz (official) Male, DoB: 1981-03-15 ( http://philhealth.gov.ph/fhir/Identifier/philhealth-id#PhilHealthID#63-584789845-5)</a></p><p><b>encounter</b>: <a href=\"Encounter-encounter-ed-example.html\">Encounter: identifier = http://pgh.gov.ph/fhir/Identifier/encounter-id#ENC-2026-0612-001; status = finished; class = emergency (ActCode#EMER); type = emergency; priority = emergency; period = 2026-06-12 08:30:00+0800 --&gt; 2026-06-12 10:30:00+0800</a></p><p><b>effective</b>: 2026-06-12 08:35:00+0800</p><p><b>performer</b>: <a href=\"Practitioner-practitioner-ed-example.html\">Practitioner Maria Clara Santos (official)</a></p><p><b>value</b>: ST-elevation in leads V1-V4, reciprocal ST-depression in leads II, III, aVF. Rhythm: sinus tachycardia at 110 bpm.</p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation HH}\">Critical high</span></p><p><b>note</b>: </p><blockquote><div><p>ECG findings consistent with acute anterior ST-elevation myocardial infarction.</p>\n</div></blockquote></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "procedure",
          "display" : "Procedure"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "11524-6",
          "display" : "EKG study"
        }]
      },
      "subject" : {
        "reference" : "Patient/patient-acs-example"
      },
      "encounter" : {
        "reference" : "Encounter/encounter-ed-example"
      },
      "effectiveDateTime" : "2026-06-12T08:35:00+08:00",
      "performer" : [{
        "reference" : "Practitioner/practitioner-ed-example"
      }],
      "valueString" : "ST-elevation in leads V1-V4, reciprocal ST-depression in leads II, III, aVF. Rhythm: sinus tachycardia at 110 bpm.",
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "HH",
          "display" : "Critical high"
        }]
      }],
      "note" : [{
        "text" : "ECG findings consistent with acute anterior ST-elevation myocardial infarction."
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "Observation"
    }
  },
  {
    "fullUrl" : "https://fhir.doh.gov.ph/phcore/Composition/composition-ed-note-example",
    "resource" : {
      "resourceType" : "Composition",
      "id" : "composition-ed-note-example",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Composition_composition-ed-note-example\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Composition composition-ed-note-example</b></p><a name=\"composition-ed-note-example\"> </a><a name=\"hccomposition-ed-note-example\"> </a><p><b>status</b>: Final</p><p><b>type</b>: <span title=\"Codes:{http://loinc.org 18842-5}\">ED Clinical Note</span></p><p><b>encounter</b>: <a href=\"Encounter-encounter-ed-example.html\">Encounter: identifier = http://pgh.gov.ph/fhir/Identifier/encounter-id#ENC-2026-0612-001; status = finished; class = emergency (ActCode#EMER); type = emergency; priority = emergency; period = 2026-06-12 08:30:00+0800 --&gt; 2026-06-12 10:30:00+0800</a></p><p><b>date</b>: 2026-06-12 10:30:00+0800</p><p><b>author</b>: <a href=\"Practitioner-practitioner-ed-example.html\">Practitioner Maria Clara Santos (official)</a></p><p><b>title</b>: Emergency Department Clinical Note — Acute Coronary Syndrome</p><p><b>confidentiality</b>: normal</p><h3>Attesters</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Mode</b></td><td><b>Time</b></td><td><b>Party</b></td></tr><tr><td style=\"display: none\">*</td><td>Legal</td><td>2026-06-12 10:30:00+0800</td><td><a href=\"Practitioner-practitioner-ed-example.html\">Practitioner Maria Clara Santos (official)</a></td></tr></table><p><b>custodian</b>: <a href=\"Organization-organization-pgh-example.html\">Organization Philippine General Hospital</a></p></div>"
      },
      "status" : "final",
      "type" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "18842-5",
          "display" : "Discharge summary"
        }],
        "text" : "ED Clinical Note"
      },
      "subject" : {
        "reference" : "Patient/patient-acs-example"
      },
      "encounter" : {
        "reference" : "Encounter/encounter-ed-example"
      },
      "date" : "2026-06-12T10:30:00+08:00",
      "author" : [{
        "reference" : "Practitioner/practitioner-ed-example"
      }],
      "title" : "Emergency Department Clinical Note — Acute Coronary Syndrome",
      "confidentiality" : "N",
      "attester" : [{
        "mode" : "legal",
        "time" : "2026-06-12T10:30:00+08:00",
        "party" : {
          "reference" : "Practitioner/practitioner-ed-example"
        }
      }],
      "custodian" : {
        "reference" : "Organization/organization-pgh-example"
      },
      "section" : [{
        "title" : "Chief Complaint",
        "code" : {
          "coding" : [{
            "system" : "http://loinc.org",
            "code" : "10154-3",
            "display" : "Chief complaint Reported"
          }]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>45-year-old male with 2-hour history of crushing substernal chest pain radiating to left arm, associated with dyspnea and diaphoresis.</p></div>"
        },
        "entry" : [{
          "reference" : "Condition/condition-acs-example"
        }]
      },
      {
        "title" : "History of Present Illness",
        "code" : {
          "coding" : [{
            "system" : "http://loinc.org",
            "code" : "10164-2",
            "display" : "History of present illness Narrative"
          }]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Patient Juan Dela Cruz, 45M, Filipino, presented to PGH ED at 08:30 with acute chest pain. Pain described as crushing, 8/10 severity, substernal with radiation to left arm. Associated with shortness of breath and sweating. No relief with rest. Known T2DM since 2020. Current smoker (1 pack/day x 20 years).</p></div>"
        }
      },
      {
        "title" : "Vital Signs",
        "code" : {
          "coding" : [{
            "system" : "http://loinc.org",
            "code" : "8716-3",
            "display" : "Vital signs note"
          }]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li>BP: 160/95 mmHg (elevated)</li><li>HR: 110 bpm (tachycardic)</li><li>RR: 24/min (tachypneic)</li><li>SpO2: 92% RA (hypoxemic)</li><li>Temp: 37.2°C</li><li>Pain: 8/10</li></ul></div>"
        },
        "entry" : [{
          "reference" : "Observation/observation-bp-acs"
        },
        {
          "reference" : "Observation/observation-hr-acs"
        },
        {
          "reference" : "Observation/observation-rr-acs"
        },
        {
          "reference" : "Observation/observation-spo2-acs"
        },
        {
          "reference" : "Observation/observation-temp-acs"
        },
        {
          "reference" : "Observation/observation-pain-acs"
        }]
      },
      {
        "title" : "Assessment and Plan",
        "code" : {
          "coding" : [{
            "system" : "http://loinc.org",
            "code" : "18776-5",
            "display" : "Plan of care note"
          }]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><strong>Assessment:</strong> Acute Coronary Syndrome — Anterior STEMI (ST-elevation V1-V4 on ECG, elevated troponin 2.5 ng/mL).</p><p><strong>Plan:</strong> 1) Aspirin 325mg chewed, Clopidogrel 600mg loading, Metoprolol 25mg PO. 2) Cardiology consult for emergent PCI. 3) Admit to CCU post-PCI.</p></div>"
        },
        "entry" : [{
          "reference" : "Condition/condition-acs-example"
        }]
      },
      {
        "title" : "Active Conditions",
        "code" : {
          "coding" : [{
            "system" : "http://loinc.org",
            "code" : "11493-4",
            "display" : "Hospital discharge studies summary Narrative"
          }]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li>Type 2 Diabetes Mellitus (diagnosed 2020, on Metformin)</li><li>Acute Coronary Syndrome — Anterior STEMI (diagnosed today)</li></ul></div>"
        },
        "entry" : [{
          "reference" : "Condition/condition-t2dm-example"
        },
        {
          "reference" : "Condition/condition-acs-example"
        }]
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "Composition"
    }
  }]
}

```
