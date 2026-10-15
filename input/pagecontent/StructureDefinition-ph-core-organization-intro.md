### Identifier namespaces

The following system URIs identify the Organization identifier slices used by PH Core. Their use in this guide does not imply that the issuing organizations have approved these URIs as FHIR identifier namespaces. Pending confirmation with the relevant authorities, treat them as provisional namespace choices for PH Core exchange.

| Slice | Identifier scheme | System URI used by PH Core |
| --- | --- | --- |
| NhfrCode | DOH National Health Facility Registry code | `https://nhfr.doh.gov.ph/` |
| HcpnCode | Health Care Provider Network code | `https://fhir.doh.gov.ph/phcore/Identifier/hcpn-code` |
| PAN | PhilHealth Accreditation Number | `http://nhdr.gov.ph/fhir/Identifier/philhealthaccreditationnumber` |
| PEN | PhilHealth Employer Number | `http://nhdr.gov.ph/fhir/Identifier/philhealthemployernumber` |

Each named slice has a distinct system pattern. Additional identifier systems are permitted by the open slicing rule. Identifier values are scoped by their system URI; retain the exact URI, including its scheme and trailing slash, when exchanging identifiers. Any future namespace replacement requires a documented migration.
