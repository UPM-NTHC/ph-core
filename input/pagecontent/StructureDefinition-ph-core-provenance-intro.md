### Purpose

Use PH Core Provenance to identify the resources described by an activity, when it was recorded, and who created, updated, or transmitted the information.

### Required content

Every conforming record **MUST** contain:

- At least one `target`, identifying the resource described by this record.
- `recorded`, the date and time the activity was recorded, including a timezone.
- At least one `agent`, with `agent.who` identifying who participated.

### Agent roles and organizations

Use author and transmitter agents to distinguish responsibility for the information from its transmission:

- **Author:** the individual, organization, or device responsible for creating or updating the information described by the activity.
- **Transmitter:** the entity that provided the copy to the receiving system.

Each author or transmitter slice is optional. When present, its `type` **MUST** include the corresponding `author` or `transmitter` coding. Other agent types are allowed.

When `agent.who` is a Practitioner or Device, `agent.onBehalfOf` **SHALL** identify the represented PH Core Organization.
