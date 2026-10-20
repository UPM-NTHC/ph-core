// CodeSystem: OrganizationOwnershipCS
// Source: DOH-PhilHealth JAO 2021-0002 Annex B.1 Hospital Statistics #9 "Nature of Ownership";
// DOH A.O. No. 2012-0012 (classification of hospitals and other health facilities by ownership).
// JAO Annex B.2 publishes no code set for this element.

CodeSystem: OrganizationOwnershipCS
Id: organization-ownership-cs
Title: "Organization Ownership Code System"
Description: "Nature of ownership of a health facility, as used in DOH-PhilHealth JAO 2021-0002 Annex B.1 (Hospital Statistics) and DOH A.O. No. 2012-0012."
* insert ShareableCodeSystem
// Not experimental: bound (required) by PHCoreOrganization.type[ownership]
* ^experimental = false
* ^content = #complete

* #government "Government" "The facility is operated and maintained, partially or wholly, by the national, provincial, city or municipal government or another political unit, or by any of its departments, divisions, boards or agencies."
* #private "Private" "The facility is privately owned, established and operated, with funds through donation, principal, investment or other means, by an individual, corporation, association or organization."
