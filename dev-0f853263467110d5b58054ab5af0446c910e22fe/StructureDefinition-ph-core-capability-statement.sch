<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile CapabilityStatement
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:CapabilityStatement/f:rest</sch:title>
    <sch:rule context="f:CapabilityStatement/f:rest">
      <sch:assert test="count(f:security) &gt;= 1">security: minimum cardinality of 'security' is 1</sch:assert>
      <sch:assert test="count(f:resource) &gt;= 1">resource: minimum cardinality of 'resource' is 1</sch:assert>
      <sch:assert test="count(f:interaction) &gt;= 1">interaction: minimum cardinality of 'interaction' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:CapabilityStatement/f:rest/f:resource</sch:title>
    <sch:rule context="f:CapabilityStatement/f:rest/f:resource">
      <sch:assert test="count(f:profile) &gt;= 1">profile: minimum cardinality of 'profile' is 1</sch:assert>
      <sch:assert test="count(f:interaction) &gt;= 1">interaction: minimum cardinality of 'interaction' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
