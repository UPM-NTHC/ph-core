// Structure: published US Core 9.0.0; PH scope and strengths follow the reviewed PH policy.
// Resource searches use R4 definitions with the R5 Practitioner identifier backport; conditional ingestion follows R4 REST.
Instance: PHCoreServerCapabilityStatement
InstanceOf: CapabilityStatement
Usage: #definition
// * name = "PHCoreServerCapabilityStatement"
// * title = "PH Core Server CapabilityStatement"
// * version = "0.2.1"
* status = #draft
* date = "2026-10-17"
// * language = #en
// * publisher = "UP Manila National TeleHealth Center"
// * contact[0].name = "UP Manila National TeleHealth Center"
// * contact[=].telecom[0].system = #url
// * contact[=].telecom[=].value = "https://github.com/UP-NTHC"
// * jurisdiction = urn:iso:std:iso:3166#PH "Philippines"
// FMM 0: draft, not yet balloted for implementation maturity.
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* extension[=].valueInteger = 0
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #json
* format[=].extension[$capabilityExpectation].valueCode = #SHALL
* format[+] = #xml
* format[=].extension[$capabilityExpectation].valueCode = #MAY
* rest.mode = #server
* description = "Requirements and selectable capability catalog for systems responding to PH Core FHIR API requests, including standard retrieval and conditional atomic ingestion."
* rest.documentation = "The PH Core Server SHALL support at least one relevant PH Core resource profile. Resource selection is optional; once selected for REST access, its listed profile, read, search and SHALL filters/combinations apply. Patient-centric exchange SHALL support PH Core Patient for the exchanged patient context; provider/facility directories need not implement Patient solely for Server conformance. Create and update remain optional. A Server declaring create SHALL support conditional create; a Server declaring update SHALL support conditional update and version-aware updates. The catalog's conditionalCreate, conditionalUpdate, versioning and transaction SHALL expectations have this documented applicability and do not require read-only Servers to implement writes. The minimum version policy is versioned; versioned-update also satisfies the requirement. Write-enabled ingestion means create or update is supported for at least one selected PH Core resource; such Servers SHALL support atomic transaction Bundles for their supported resources. Servers SHALL support GET and POST search, paging, _count and the search semantics and combinations specified in [Client and Server conformance](client-server-conformance.html). Servers SHALL return conformant JSON, enforce authorization, and fulfill profile constraints and applicable actor obligations. They SHALL publish an implementation-specific kind=instance CapabilityStatement at GET [base]/metadata, use instantiates for this requirements statement, and declare their actual selected PH profiles, supported interactions, conditional/versioning policies, searches, joins, operations, formats and security arrangements. They SHOULD identify conforming profiles in meta.profile. A dual-role implementation MAY instantiate both PH requirements statements with client and server REST blocks. Profile-only conformance does not require the REST contract. Supporting a profile or search does not mandate a program workflow or new data capture."
* rest.security.description = "The Server SHALL use HTTPS for production exchange, apply deployment authorization/consent policies and reject unauthorized requests using appropriate FHIR responses. Invalid requests, unknown resources and insufficient authorization SHALL produce appropriate 400, 404 and 401/403 responses, subject to FHIR security behavior. OperationOutcome content SHALL follow FHIR rules. Deployment or downstream guides SHALL define authentication, authorization, consent, trust and audit arrangements."

// AllergyIntolerance: selected profile remains optional; declared REST access requires read/search.
* insert PHCoreCatalogResource(#AllergyIntolerance, PHCoreAllergyIntolerance, #SHOULD)
* insert PHCoreCatalogSearch(patient, http://hl7.org/fhir/SearchParameter/clinical-patient, #reference, #SHALL)
* insert PHCoreCatalogSearch(identifier, http://hl7.org/fhir/SearchParameter/clinical-identifier, #token, #SHALL)
* insert PHCoreCatalogSearch(clinical-status, http://hl7.org/fhir/SearchParameter/AllergyIntolerance-clinical-status, #token, #SHALL)
* insert PHCoreCatalogSearch(verification-status, http://hl7.org/fhir/SearchParameter/AllergyIntolerance-verification-status, #token, #SHALL)
* insert PHCoreCatalogSearch(code, http://hl7.org/fhir/SearchParameter/clinical-code, #token, #SHALL)
* insert PHCoreCatalogSearch(date, http://hl7.org/fhir/SearchParameter/clinical-date, #date, #SHOULD)
* insert PHCoreCatalogSearch(category, http://hl7.org/fhir/SearchParameter/AllergyIntolerance-category, #token, #SHOULD)
* insert PHCoreCatalogInclude(AllergyIntolerance:patient)
* insert PHCoreSearchCombination2(patient, clinical-status, #SHALL)

// Claim: selected profile remains optional; declared REST access requires read/search.
* insert PHCoreCatalogResource(#Claim, PHCoreClaim, #SHOULD)
* insert PHCoreCatalogSearch(patient, http://hl7.org/fhir/SearchParameter/Claim-patient, #reference, #SHALL)
* insert PHCoreCatalogSearch(identifier, http://hl7.org/fhir/SearchParameter/Claim-identifier, #token, #SHALL)
* insert PHCoreCatalogSearch(status, http://hl7.org/fhir/SearchParameter/Claim-status, #token, #SHALL)
* insert PHCoreCatalogSearch(created, http://hl7.org/fhir/SearchParameter/Claim-created, #date, #SHOULD)
* insert PHCoreCatalogSearch(use, http://hl7.org/fhir/SearchParameter/Claim-use, #token, #SHOULD)
* insert PHCoreCatalogSearch(provider, http://hl7.org/fhir/SearchParameter/Claim-provider, #reference, #SHOULD)
* insert PHCoreCatalogSearch(insurer, http://hl7.org/fhir/SearchParameter/Claim-insurer, #reference, #SHOULD)
* insert PHCoreCatalogSearch(encounter, http://hl7.org/fhir/SearchParameter/Claim-encounter, #reference, #SHOULD)
* insert PHCoreCatalogInclude(Claim:patient)
* insert PHCoreCatalogInclude(Claim:provider)
* insert PHCoreCatalogInclude(Claim:insurer)
* insert PHCoreCatalogInclude(Claim:encounter)
* insert PHCoreSearchCombination2(patient, status, #SHALL)

// Condition: selected profile remains optional; declared REST access requires read/search.
* insert PHCoreCatalogResource(#Condition, PHCoreCondition, #SHOULD)
* insert PHCoreCatalogSearch(patient, http://hl7.org/fhir/SearchParameter/clinical-patient, #reference, #SHALL)
* insert PHCoreCatalogSearch(identifier, http://hl7.org/fhir/SearchParameter/clinical-identifier, #token, #SHALL)
* insert PHCoreCatalogSearch(code, http://hl7.org/fhir/SearchParameter/clinical-code, #token, #SHALL)
* insert PHCoreCatalogSearch(clinical-status, http://hl7.org/fhir/SearchParameter/Condition-clinical-status, #token, #SHALL)
* insert PHCoreCatalogSearch(verification-status, http://hl7.org/fhir/SearchParameter/Condition-verification-status, #token, #SHALL)
* insert PHCoreCatalogSearch(onset-date, http://hl7.org/fhir/SearchParameter/Condition-onset-date, #date, #SHOULD)
* insert PHCoreCatalogSearch(recorded-date, http://hl7.org/fhir/SearchParameter/Condition-recorded-date, #date, #SHOULD)
* insert PHCoreCatalogSearch(encounter, http://hl7.org/fhir/SearchParameter/Condition-encounter, #reference, #SHOULD)
* insert PHCoreCatalogSearch(category, http://hl7.org/fhir/SearchParameter/Condition-category, #token, #SHOULD)
* insert PHCoreCatalogInclude(Condition:patient)
* insert PHCoreCatalogInclude(Condition:encounter)
* insert PHCoreSearchCombination2(patient, clinical-status, #SHALL)
* insert PHCoreSearchCombination2(patient, code, #SHALL)

// Encounter: selected profile remains optional; declared REST access requires read/search.
* insert PHCoreCatalogResource(#Encounter, PHCoreEncounter, #SHOULD)
* insert PHCoreCatalogSearch(patient, http://hl7.org/fhir/SearchParameter/clinical-patient, #reference, #SHALL)
* insert PHCoreCatalogSearch(identifier, http://hl7.org/fhir/SearchParameter/clinical-identifier, #token, #SHALL)
* insert PHCoreCatalogSearch(status, http://hl7.org/fhir/SearchParameter/Encounter-status, #token, #SHALL)
* insert PHCoreCatalogSearch(class, http://hl7.org/fhir/SearchParameter/Encounter-class, #token, #SHALL)
* insert PHCoreCatalogSearch(date, http://hl7.org/fhir/SearchParameter/clinical-date, #date, #SHALL)
* insert PHCoreCatalogSearch(service-provider, http://hl7.org/fhir/SearchParameter/Encounter-service-provider, #reference, #SHOULD)
* insert PHCoreCatalogSearch(location, http://hl7.org/fhir/SearchParameter/Encounter-location, #reference, #SHOULD)
* insert PHCoreCatalogSearch(diagnosis, http://hl7.org/fhir/SearchParameter/Encounter-diagnosis, #reference, #SHOULD)
* insert PHCoreCatalogInclude(Encounter:patient)
* insert PHCoreCatalogInclude(Encounter:location)
* insert PHCoreCatalogInclude(Encounter:service-provider)
* insert PHCoreCatalogInclude(Encounter:diagnosis)
* insert PHCoreSearchCombination2(patient, date, #SHALL)
* insert PHCoreSearchCombination2(patient, status, #SHALL)

// HealthcareService: selected profile remains optional; declared REST access requires read/search.
* insert PHCoreCatalogResource(#HealthcareService, PHCoreHealthcareService, #MAY)
* insert PHCoreCatalogSearch(identifier, http://hl7.org/fhir/SearchParameter/HealthcareService-identifier, #token, #SHALL)
* insert PHCoreCatalogSearch(name, http://hl7.org/fhir/SearchParameter/HealthcareService-name, #string, #SHOULD)
* insert PHCoreCatalogSearch(active, http://hl7.org/fhir/SearchParameter/HealthcareService-active, #token, #SHOULD)
* insert PHCoreCatalogSearch(organization, http://hl7.org/fhir/SearchParameter/HealthcareService-organization, #reference, #SHALL)
* insert PHCoreCatalogSearch(location, http://hl7.org/fhir/SearchParameter/HealthcareService-location, #reference, #SHOULD)
* insert PHCoreCatalogSearch(service-type, http://hl7.org/fhir/SearchParameter/HealthcareService-service-type, #token, #SHOULD)
* insert PHCoreCatalogSearch(specialty, http://hl7.org/fhir/SearchParameter/HealthcareService-specialty, #token, #SHOULD)
* insert PHCoreCatalogInclude(HealthcareService:organization)
* insert PHCoreCatalogInclude(HealthcareService:location)
* insert PHCoreSearchCombination2(organization, service-type, #SHOULD)

// Immunization: selected profile remains optional; declared REST access requires read/search.
* insert PHCoreCatalogResource(#Immunization, PHCoreImmunization, #SHOULD)
* insert PHCoreCatalogSearch(patient, http://hl7.org/fhir/SearchParameter/clinical-patient, #reference, #SHALL)
* insert PHCoreCatalogSearch(identifier, http://hl7.org/fhir/SearchParameter/clinical-identifier, #token, #SHALL)
* insert PHCoreCatalogSearch(status, http://hl7.org/fhir/SearchParameter/Immunization-status, #token, #SHALL)
* insert PHCoreCatalogSearch(date, http://hl7.org/fhir/SearchParameter/clinical-date, #date, #SHALL)
* insert PHCoreCatalogSearch(vaccine-code, http://hl7.org/fhir/SearchParameter/Immunization-vaccine-code, #token, #SHALL)
* insert PHCoreCatalogSearch(lot-number, http://hl7.org/fhir/SearchParameter/Immunization-lot-number, #string, #SHOULD)
* insert PHCoreCatalogInclude(Immunization:patient)
* insert PHCoreSearchCombination2(patient, date, #SHALL)

// Location: selected profile remains optional; declared REST access requires read/search.
* insert PHCoreCatalogResource(#Location, PHCoreLocation, #MAY)
* insert PHCoreCatalogSearch(identifier, http://hl7.org/fhir/SearchParameter/Location-identifier, #token, #SHALL)
* insert PHCoreCatalogSearch(name, http://hl7.org/fhir/SearchParameter/Location-name, #string, #SHOULD)
* insert PHCoreCatalogSearch(status, http://hl7.org/fhir/SearchParameter/Location-status, #token, #SHOULD)
* insert PHCoreCatalogSearch(type, http://hl7.org/fhir/SearchParameter/Location-type, #token, #SHOULD)
* insert PHCoreCatalogSearch(organization, http://hl7.org/fhir/SearchParameter/Location-organization, #reference, #SHALL)
* insert PHCoreCatalogSearch(partof, http://hl7.org/fhir/SearchParameter/Location-partof, #reference, #SHOULD)
* insert PHCoreCatalogSearch(address, http://hl7.org/fhir/SearchParameter/Location-address, #string, #SHOULD)
* insert PHCoreCatalogInclude(Location:organization)
* insert PHCoreCatalogInclude(Location:partof)
* insert PHCoreSearchCombination2(organization, type, #SHOULD)

// Medication: selected profile remains optional; declared REST access requires read/search.
* insert PHCoreCatalogResource(#Medication, PHCoreMedication, #SHOULD)
* insert PHCoreCatalogSearch(code, http://hl7.org/fhir/SearchParameter/clinical-code, #token, #SHALL)
* insert PHCoreCatalogSearch(identifier, http://hl7.org/fhir/SearchParameter/Medication-identifier, #token, #SHALL)
* insert PHCoreCatalogSearch(status, http://hl7.org/fhir/SearchParameter/Medication-status, #token, #SHALL)
* insert PHCoreCatalogSearch(form, http://hl7.org/fhir/SearchParameter/Medication-form, #token, #SHOULD)
* insert PHCoreCatalogSearch(manufacturer, http://hl7.org/fhir/SearchParameter/Medication-manufacturer, #reference, #SHOULD)
* insert PHCoreCatalogInclude(Medication:manufacturer)
* insert PHCoreSearchCombination2(code, status, #SHALL)

// MedicationAdministration: selected profile remains optional; declared REST access requires read/search.
* insert PHCoreCatalogResource(#MedicationAdministration, PHCoreMedicationAdministration, #SHOULD)
* insert PHCoreCatalogSearch(patient, http://hl7.org/fhir/SearchParameter/clinical-patient, #reference, #SHALL)
* insert PHCoreCatalogSearch(identifier, http://hl7.org/fhir/SearchParameter/clinical-identifier, #token, #SHALL)
* insert PHCoreCatalogSearch(code, http://hl7.org/fhir/SearchParameter/clinical-code, #token, #SHALL)
* insert PHCoreCatalogSearch(status, http://hl7.org/fhir/SearchParameter/medications-status, #token, #SHALL)
* insert PHCoreCatalogSearch(effective-time, http://hl7.org/fhir/SearchParameter/MedicationAdministration-effective-time, #date, #SHALL)
* insert PHCoreCatalogSearch(context, http://hl7.org/fhir/SearchParameter/MedicationAdministration-context, #reference, #SHALL)
* insert PHCoreCatalogSearch(medication, http://hl7.org/fhir/SearchParameter/medications-medication, #reference, #SHOULD)
* insert PHCoreCatalogInclude(MedicationAdministration:patient)
* insert PHCoreCatalogInclude(MedicationAdministration:context)
* insert PHCoreCatalogInclude(MedicationAdministration:medication)
* insert PHCoreSearchCombination2(patient, effective-time, #SHALL)

// MedicationDispense: selected profile remains optional; declared REST access requires read/search.
* insert PHCoreCatalogResource(#MedicationDispense, PHCoreMedicationDispense, #SHOULD)
* insert PHCoreCatalogSearch(patient, http://hl7.org/fhir/SearchParameter/clinical-patient, #reference, #SHALL)
* insert PHCoreCatalogSearch(identifier, http://hl7.org/fhir/SearchParameter/clinical-identifier, #token, #SHALL)
* insert PHCoreCatalogSearch(status, http://hl7.org/fhir/SearchParameter/medications-status, #token, #SHALL)
* insert PHCoreCatalogSearch(whenhandedover, http://hl7.org/fhir/SearchParameter/MedicationDispense-whenhandedover, #date, #SHALL)
* insert PHCoreCatalogSearch(whenprepared, http://hl7.org/fhir/SearchParameter/MedicationDispense-whenprepared, #date, #SHOULD)
* insert PHCoreCatalogSearch(type, http://hl7.org/fhir/SearchParameter/MedicationDispense-type, #token, #SHOULD)
* insert PHCoreCatalogSearch(medication, http://hl7.org/fhir/SearchParameter/medications-medication, #reference, #SHOULD)
* insert PHCoreCatalogSearch(prescription, http://hl7.org/fhir/SearchParameter/medications-prescription, #reference, #SHOULD)
* insert PHCoreCatalogInclude(MedicationDispense:patient)
* insert PHCoreCatalogInclude(MedicationDispense:medication)
* insert PHCoreCatalogInclude(MedicationDispense:prescription)
* insert PHCoreSearchCombination2(patient, whenhandedover, #SHALL)

// MedicationRequest: selected profile remains optional; declared REST access requires read/search.
* insert PHCoreCatalogResource(#MedicationRequest, PHCoreMedicationRequest, #SHOULD)
* insert PHCoreCatalogSearch(patient, http://hl7.org/fhir/SearchParameter/clinical-patient, #reference, #SHALL)
* insert PHCoreCatalogSearch(identifier, http://hl7.org/fhir/SearchParameter/clinical-identifier, #token, #SHALL)
* insert PHCoreCatalogSearch(status, http://hl7.org/fhir/SearchParameter/medications-status, #token, #SHALL)
* insert PHCoreCatalogSearch(intent, http://hl7.org/fhir/SearchParameter/MedicationRequest-intent, #token, #SHALL)
* insert PHCoreCatalogSearch(authoredon, http://hl7.org/fhir/SearchParameter/MedicationRequest-authoredon, #date, #SHALL)
* insert PHCoreCatalogSearch(encounter, http://hl7.org/fhir/SearchParameter/medications-encounter, #reference, #SHOULD)
* insert PHCoreCatalogSearch(medication, http://hl7.org/fhir/SearchParameter/medications-medication, #reference, #SHOULD)
* insert PHCoreCatalogInclude(MedicationRequest:patient)
* insert PHCoreCatalogInclude(MedicationRequest:encounter)
* insert PHCoreCatalogInclude(MedicationRequest:medication)
* insert PHCoreSearchCombination3(patient, status, intent, #SHALL)
* insert PHCoreSearchCombination2(patient, authoredon, #SHALL)

// MedicationStatement: selected profile remains optional; declared REST access requires read/search.
* insert PHCoreCatalogResource(#MedicationStatement, PHCoreMedicationStatement, #SHOULD)
* insert PHCoreCatalogSearch(patient, http://hl7.org/fhir/SearchParameter/clinical-patient, #reference, #SHALL)
* insert PHCoreCatalogSearch(identifier, http://hl7.org/fhir/SearchParameter/clinical-identifier, #token, #SHALL)
* insert PHCoreCatalogSearch(status, http://hl7.org/fhir/SearchParameter/medications-status, #token, #SHALL)
* insert PHCoreCatalogSearch(effective, http://hl7.org/fhir/SearchParameter/MedicationStatement-effective, #date, #SHALL)
* insert PHCoreCatalogSearch(medication, http://hl7.org/fhir/SearchParameter/medications-medication, #reference, #SHOULD)
* insert PHCoreCatalogSearch(category, http://hl7.org/fhir/SearchParameter/MedicationStatement-category, #token, #SHOULD)
* insert PHCoreCatalogInclude(MedicationStatement:patient)
* insert PHCoreCatalogInclude(MedicationStatement:medication)
* insert PHCoreSearchCombination2(patient, effective, #SHALL)

// Observation: selected profile remains optional; declared REST access requires read/search.
* insert PHCoreCatalogResource(#Observation, PHCoreObservation, #SHOULD)
* insert PHCoreCatalogSearch(patient, http://hl7.org/fhir/SearchParameter/clinical-patient, #reference, #SHALL)
* insert PHCoreCatalogSearch(identifier, http://hl7.org/fhir/SearchParameter/clinical-identifier, #token, #SHALL)
* insert PHCoreCatalogSearch(code, http://hl7.org/fhir/SearchParameter/clinical-code, #token, #SHALL)
* insert PHCoreCatalogSearch(date, http://hl7.org/fhir/SearchParameter/clinical-date, #date, #SHALL)
* insert PHCoreCatalogSearch(status, http://hl7.org/fhir/SearchParameter/Observation-status, #token, #SHALL)
* insert PHCoreCatalogSearch(category, http://hl7.org/fhir/SearchParameter/Observation-category, #token, #SHALL)
* insert PHCoreCatalogSearch(encounter, http://hl7.org/fhir/SearchParameter/clinical-encounter, #reference, #SHOULD)
* insert PHCoreCatalogInclude(Observation:patient)
* insert PHCoreCatalogInclude(Observation:encounter)
* insert PHCoreSearchCombination3(patient, code, date, #SHALL)
* insert PHCoreSearchCombination2(patient, category, #SHALL)

// Organization: selected profile remains optional; declared REST access requires read/search.
* insert PHCoreCatalogResource(#Organization, PHCoreOrganization, #MAY)
* insert PHCoreCatalogSearch(identifier, http://hl7.org/fhir/SearchParameter/Organization-identifier, #token, #SHALL)
* insert PHCoreCatalogSearch(name, http://hl7.org/fhir/SearchParameter/Organization-name, #string, #SHOULD)
* insert PHCoreCatalogSearch(active, http://hl7.org/fhir/SearchParameter/Organization-active, #token, #SHOULD)
* insert PHCoreCatalogSearch(type, http://hl7.org/fhir/SearchParameter/Organization-type, #token, #SHOULD)
* insert PHCoreCatalogSearch(address, http://hl7.org/fhir/SearchParameter/Organization-address, #string, #SHOULD)
* insert PHCoreCatalogSearch(partof, http://hl7.org/fhir/SearchParameter/Organization-partof, #reference, #SHOULD)
* insert PHCoreCatalogInclude(Organization:partof)
* insert PHCoreSearchCombination2(name, address, #SHOULD)

// Patient: selected profile remains optional; declared REST access requires read/search.
* insert PHCoreCatalogResource(#Patient, PHCorePatient, #SHOULD)
* insert PHCoreCatalogSearch(identifier, http://hl7.org/fhir/SearchParameter/Patient-identifier, #token, #SHALL)
* insert PHCoreCatalogSearch(name, http://hl7.org/fhir/SearchParameter/Patient-name, #string, #SHOULD)
* insert PHCoreCatalogSearch(family, http://hl7.org/fhir/SearchParameter/individual-family, #string, #SHOULD)
* insert PHCoreCatalogSearch(given, http://hl7.org/fhir/SearchParameter/individual-given, #string, #SHOULD)
* insert PHCoreCatalogSearch(birthdate, http://hl7.org/fhir/SearchParameter/individual-birthdate, #date, #SHOULD)
* insert PHCoreCatalogSearch(gender, http://hl7.org/fhir/SearchParameter/individual-gender, #token, #SHOULD)
* insert PHCoreCatalogSearch(mothersMaidenName, http://hl7.org/fhir/SearchParameter/patient-extensions-Patient-mothersMaidenName|5.3.0, #string, #SHOULD)
* insert PHCoreCatalogSearch(active, http://hl7.org/fhir/SearchParameter/Patient-active, #token, #SHOULD)
* insert PHCoreSearchCombination2(name, birthdate, #SHOULD)

// Practitioner: selected profile remains optional; declared REST access requires read/search.
* insert PHCoreCatalogResource(#Practitioner, PHCorePractitioner, #MAY)
* insert PHCoreCatalogSearch(identifier, https://fhir.doh.gov.ph/phcore/SearchParameter/practitioner-identifier, #token, #SHALL)
* insert PHCoreCatalogSearch(name, http://hl7.org/fhir/SearchParameter/Practitioner-name, #string, #SHOULD)
* insert PHCoreCatalogSearch(family, http://hl7.org/fhir/SearchParameter/individual-family, #string, #SHOULD)
* insert PHCoreCatalogSearch(given, http://hl7.org/fhir/SearchParameter/individual-given, #string, #SHOULD)
* insert PHCoreCatalogSearch(active, http://hl7.org/fhir/SearchParameter/Practitioner-active, #token, #SHOULD)
* insert PHCoreCatalogSearch(communication, http://hl7.org/fhir/SearchParameter/Practitioner-communication, #token, #SHOULD)
* insert PHCoreSearchCombination2(family, given, #SHOULD)

// PractitionerRole: selected profile remains optional; declared REST access requires read/search.
* insert PHCoreCatalogResource(#PractitionerRole, PHCorePractitionerRole, #MAY)
* insert PHCoreCatalogSearch(practitioner, http://hl7.org/fhir/SearchParameter/PractitionerRole-practitioner, #reference, #SHALL)
* insert PHCoreCatalogSearch(organization, http://hl7.org/fhir/SearchParameter/PractitionerRole-organization, #reference, #SHALL)
* insert PHCoreCatalogSearch(identifier, http://hl7.org/fhir/SearchParameter/PractitionerRole-identifier, #token, #SHALL)
* insert PHCoreCatalogSearch(active, http://hl7.org/fhir/SearchParameter/PractitionerRole-active, #token, #SHOULD)
* insert PHCoreCatalogSearch(role, http://hl7.org/fhir/SearchParameter/PractitionerRole-role, #token, #SHOULD)
* insert PHCoreCatalogSearch(specialty, http://hl7.org/fhir/SearchParameter/PractitionerRole-specialty, #token, #SHOULD)
* insert PHCoreCatalogSearch(location, http://hl7.org/fhir/SearchParameter/PractitionerRole-location, #reference, #SHOULD)
* insert PHCoreCatalogSearch(service, http://hl7.org/fhir/SearchParameter/PractitionerRole-service, #reference, #SHOULD)
* insert PHCoreCatalogInclude(PractitionerRole:practitioner)
* insert PHCoreCatalogInclude(PractitionerRole:organization)
* insert PHCoreCatalogInclude(PractitionerRole:location)
* insert PHCoreCatalogInclude(PractitionerRole:service)
* insert PHCoreSearchCombination2(organization, specialty, #SHOULD)

// Procedure: selected profile remains optional; declared REST access requires read/search.
* insert PHCoreCatalogResource(#Procedure, PHCoreProcedure, #SHOULD)
* insert PHCoreCatalogSearch(patient, http://hl7.org/fhir/SearchParameter/clinical-patient, #reference, #SHALL)
* insert PHCoreCatalogSearch(identifier, http://hl7.org/fhir/SearchParameter/clinical-identifier, #token, #SHALL)
* insert PHCoreCatalogSearch(code, http://hl7.org/fhir/SearchParameter/clinical-code, #token, #SHALL)
* insert PHCoreCatalogSearch(status, http://hl7.org/fhir/SearchParameter/Procedure-status, #token, #SHALL)
* insert PHCoreCatalogSearch(date, http://hl7.org/fhir/SearchParameter/clinical-date, #date, #SHALL)
* insert PHCoreCatalogSearch(encounter, http://hl7.org/fhir/SearchParameter/clinical-encounter, #reference, #SHOULD)
* insert PHCoreCatalogSearch(performer, http://hl7.org/fhir/SearchParameter/Procedure-performer, #reference, #SHOULD)
* insert PHCoreCatalogInclude(Procedure:patient)
* insert PHCoreCatalogInclude(Procedure:encounter)
* insert PHCoreCatalogInclude(Procedure:performer)
* insert PHCoreSearchCombination2(patient, date, #SHALL)

// Provenance: selected profile remains optional; declared REST access requires read/search.
* insert PHCoreCatalogResource(#Provenance, PHCoreProvenance, #SHOULD)
* insert PHCoreCatalogSearch(target, http://hl7.org/fhir/SearchParameter/Provenance-target, #reference, #SHALL)
* insert PHCoreCatalogSearch(recorded, http://hl7.org/fhir/SearchParameter/Provenance-recorded, #date, #SHALL)
* insert PHCoreCatalogSearch(when, http://hl7.org/fhir/SearchParameter/Provenance-when, #date, #SHOULD)
* insert PHCoreCatalogSearch(agent, http://hl7.org/fhir/SearchParameter/Provenance-agent, #reference, #SHOULD)
* insert PHCoreCatalogSearch(agent-type, http://hl7.org/fhir/SearchParameter/Provenance-agent-type, #token, #SHOULD)
* insert PHCoreCatalogSearch(agent-role, http://hl7.org/fhir/SearchParameter/Provenance-agent-role, #token, #SHOULD)
* insert PHCoreCatalogInclude(Provenance:target)
* insert PHCoreCatalogInclude(Provenance:agent)
* insert PHCoreSearchCombination2(target, recorded, #SHALL)

// RelatedPerson: selected profile remains optional; declared REST access requires read/search.
* insert PHCoreCatalogResource(#RelatedPerson, PHCoreRelatedPerson, #SHOULD)
* insert PHCoreCatalogSearch(patient, http://hl7.org/fhir/SearchParameter/RelatedPerson-patient, #reference, #SHALL)
* insert PHCoreCatalogSearch(identifier, http://hl7.org/fhir/SearchParameter/RelatedPerson-identifier, #token, #SHALL)
* insert PHCoreCatalogSearch(name, http://hl7.org/fhir/SearchParameter/RelatedPerson-name, #string, #SHOULD)
* insert PHCoreCatalogSearch(relationship, http://hl7.org/fhir/SearchParameter/RelatedPerson-relationship, #token, #SHOULD)
* insert PHCoreCatalogSearch(active, http://hl7.org/fhir/SearchParameter/RelatedPerson-active, #token, #SHOULD)
* insert PHCoreCatalogInclude(RelatedPerson:patient)
* insert PHCoreSearchCombination2(patient, relationship, #SHOULD)

// ServiceRequest: selected profile remains optional; declared REST access requires read/search.
* insert PHCoreCatalogResource(#ServiceRequest, PHCoreServiceRequest, #SHOULD)
* insert PHCoreCatalogSearch(patient, http://hl7.org/fhir/SearchParameter/clinical-patient, #reference, #SHALL)
* insert PHCoreCatalogSearch(identifier, http://hl7.org/fhir/SearchParameter/clinical-identifier, #token, #SHALL)
* insert PHCoreCatalogSearch(status, http://hl7.org/fhir/SearchParameter/ServiceRequest-status, #token, #SHALL)
* insert PHCoreCatalogSearch(intent, http://hl7.org/fhir/SearchParameter/ServiceRequest-intent, #token, #SHALL)
* insert PHCoreCatalogSearch(code, http://hl7.org/fhir/SearchParameter/clinical-code, #token, #SHALL)
* insert PHCoreCatalogSearch(authored, http://hl7.org/fhir/SearchParameter/ServiceRequest-authored, #date, #SHALL)
* insert PHCoreCatalogSearch(occurrence, http://hl7.org/fhir/SearchParameter/ServiceRequest-occurrence, #date, #SHOULD)
* insert PHCoreCatalogSearch(encounter, http://hl7.org/fhir/SearchParameter/clinical-encounter, #reference, #SHOULD)
* insert PHCoreCatalogSearch(requester, http://hl7.org/fhir/SearchParameter/ServiceRequest-requester, #reference, #SHOULD)
* insert PHCoreCatalogSearch(performer, http://hl7.org/fhir/SearchParameter/ServiceRequest-performer, #reference, #SHOULD)
* insert PHCoreCatalogInclude(ServiceRequest:patient)
* insert PHCoreCatalogInclude(ServiceRequest:encounter)
* insert PHCoreCatalogInclude(ServiceRequest:requester)
* insert PHCoreCatalogInclude(ServiceRequest:performer)
* insert PHCoreSearchCombination2(patient, status, #SHALL)
* insert PHCoreSearchCombination2(patient, authored, #SHALL)

// Task: selected profile remains optional; declared REST access requires read/search.
* insert PHCoreCatalogResource(#Task, PHCoreTask, #SHOULD)
* insert PHCoreCatalogSearch(patient, http://hl7.org/fhir/SearchParameter/Task-patient, #reference, #SHALL)
* insert PHCoreCatalogSearch(identifier, http://hl7.org/fhir/SearchParameter/Task-identifier, #token, #SHALL)
* insert PHCoreCatalogSearch(status, http://hl7.org/fhir/SearchParameter/Task-status, #token, #SHALL)
* insert PHCoreCatalogSearch(business-status, http://hl7.org/fhir/SearchParameter/Task-business-status, #token, #SHOULD)
* insert PHCoreCatalogSearch(code, http://hl7.org/fhir/SearchParameter/Task-code, #token, #SHALL)
* insert PHCoreCatalogSearch(authored-on, http://hl7.org/fhir/SearchParameter/Task-authored-on, #date, #SHOULD)
* insert PHCoreCatalogSearch(modified, http://hl7.org/fhir/SearchParameter/Task-modified, #date, #SHOULD)
* insert PHCoreCatalogSearch(owner, http://hl7.org/fhir/SearchParameter/Task-owner, #reference, #SHOULD)
* insert PHCoreCatalogSearch(requester, http://hl7.org/fhir/SearchParameter/Task-requester, #reference, #SHOULD)
* insert PHCoreCatalogSearch(focus, http://hl7.org/fhir/SearchParameter/Task-focus, #reference, #SHOULD)
* insert PHCoreCatalogSearch(encounter, http://hl7.org/fhir/SearchParameter/Task-encounter, #reference, #SHOULD)
* insert PHCoreCatalogInclude(Task:patient)
* insert PHCoreCatalogInclude(Task:owner)
* insert PHCoreCatalogInclude(Task:requester)
* insert PHCoreCatalogInclude(Task:focus)
* insert PHCoreCatalogInclude(Task:encounter)
* insert PHCoreSearchCombination2(patient, status, #SHALL)

* rest.interaction[+].code = #batch
* rest.interaction[=].extension[$capabilityExpectation].valueCode = #MAY
* rest.interaction[=].documentation = "Batch support is optional and does not provide the atomicity of a transaction."

* rest.interaction[+].code = #transaction
* rest.interaction[=].extension[$capabilityExpectation].valueCode = #SHALL
* rest.interaction[=].documentation = "Required only for write-enabled ingestion Servers, meaning create or update is supported for a selected PH Core resource. Read-only Servers may omit transaction. Supported resource entries SHALL be processed atomically with conditional-create/update semantics, temporary fullUrl reference resolution and a transaction-response. Unsupported or failing entries SHALL fail the transaction without partial persistence."

* rest.interaction[+].code = #history-system
* rest.interaction[=].extension[$capabilityExpectation].valueCode = #MAY
* rest.interaction[=].documentation = "System history is optional; deployments needing deletion-aware synchronization SHALL define an appropriate history/tombstone or equivalent contract."

* rest.interaction[+].code = #search-system
* rest.interaction[=].extension[$capabilityExpectation].valueCode = #MAY
* rest.interaction[=].documentation = "Cross-resource system search is optional; the baseline requires resource-type search for selected resources."
