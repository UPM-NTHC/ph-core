// ValueSet: OrganizationOwnershipVS
// Description: Nature of ownership of a health facility (DOH-PhilHealth JAO 2021-0002 Annex B.1 Hospital Statistics #9).

ValueSet: OrganizationOwnershipVS
Id: organization-ownership-vs
Title: "Organization Ownership Value Set"
Description: "Nature of ownership of a health facility, as used in DOH-PhilHealth JAO 2021-0002 Annex B.1 (Hospital Statistics)."
* insert ShareableValueSet
// Not experimental: bound (required) by PHCoreOrganization.type[ownership]
* ^experimental = false
* include codes from system OrganizationOwnershipCS
