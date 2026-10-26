### Clinical examples

- [Blood pressure with authorship](Bundle-bundle-observation-provenance-example.html): an Observation returned with its author Provenance.
- [Allergy with authorship and transmission](Bundle-bundle-allergy-provenance-example.html): an AllergyIntolerance returned with author and transmitter Provenance records.

The clinical resource and its Provenance appear together in each search response. Use `_revinclude=Provenance:target` on a server that supports the requested search and reverse inclusion.

### References and time

| Element | Guidance |
|---------|----------|
| `target` | Use a literal reference when available; identify the resource version when known and relevant to the activity. |
| `agent.who` | Use PH Core Practitioner, PractitionerRole, Organization, Patient, or RelatedPerson; use base FHIR Device for a device. |
| `location` | Reference PH Core Location when a location is supplied. |
| `recorded` | The instant the activity was recorded, with a timezone. It can differ from both the activity time and the target resource's update time. |
| `occurred[x]` | Optional activity time, expressed as a dateTime or Period. Use it when that time is known and useful. |

To validate `provenance-1`, provide access to the resource referenced by `agent.who` so that `resolve()` can determine its type. If the reference cannot be resolved, check the participant type and required `onBehalfOf` separately; an unresolved reference does not establish conformance.

### Actor responsibilities

| Selected paths | Client and Server when producing resources | Client and Server when receiving resources |
|----------------|---------|---------------------|
| `target`, `recorded`, `agent`, `agent.who`, and `type` in each named agent slice | **SHALL** be able to populate these elements. | **SHALL** handle these elements. |
| `target.reference`, general `agent.type`, each named agent slice, and `agent.onBehalfOf` | **SHALL** populate these elements when their values are known and permitted to be shared. | **SHALL** handle these elements. |

Population capability and population when known are distinct from element cardinality. Handling applies when processing received resources; it is not a substitute for a missing value. Apply the required-content and `onBehalfOf` conditions above when populating an instance.

### Draft attribution scope

The current `provenance-1` condition requires an Organization when the agent is a Practitioner or Device. The examples show institutional attribution. Independent practitioners and patient-held devices may not represent an Organization; those use cases require further appraisal of this draft condition. Do not invent an organization solely to satisfy the example pattern.
