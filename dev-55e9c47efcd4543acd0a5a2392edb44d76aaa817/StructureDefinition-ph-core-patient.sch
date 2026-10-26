<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Patient
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Patient</sch:title>
    <sch:rule context="f:Patient">
      <sch:assert test="count(f:extension[@url = 'https://fhir.doh.gov.ph/phcore/StructureDefinition/indigenous-people']) &lt;= 1">extension with URL = 'https://fhir.doh.gov.ph/phcore/StructureDefinition/indigenous-people': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://fhir.doh.gov.ph/phcore/StructureDefinition/race']) &lt;= 1">extension with URL = 'https://fhir.doh.gov.ph/phcore/StructureDefinition/race': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://fhir.doh.gov.ph/phcore/StructureDefinition/educational-attainment']) &lt;= 1">extension with URL = 'https://fhir.doh.gov.ph/phcore/StructureDefinition/educational-attainment': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-pwd-disability']) &lt;= 1">extension with URL = 'https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-pwd-disability': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Patient/f:maritalStatus</sch:title>
    <sch:rule context="f:Patient/f:maritalStatus">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Patient/f:contact/f:relationship</sch:title>
    <sch:rule context="f:Patient/f:contact/f:relationship">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Patient/f:communication/f:language</sch:title>
    <sch:rule context="f:Patient/f:communication/f:language">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
