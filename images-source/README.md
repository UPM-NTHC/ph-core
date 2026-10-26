# PH Core Visual Documentation

This directory contains Mermaid diagram source files for PH Core documentation.

## Diagrams

1. **ig-structure.mmd** - IG Structure Overview
2. **profile-inheritance.mmd** - Profile Inheritance Chain
3. **reference-hierarchy.mmd** - Profile Reference Hierarchy
4. **inclusion-flow.mmd** - Profile Inclusion Flow (≥2 IG use and ≥2 IG MS)
5. **identifier-systems.mmd** - Identifier Systems Map
6. **terminology-flow.mmd** - Terminology Publication Flow
7. **contribution-workflow.mmd** - Contribution Workflow

## Generating Images

To generate PNG/SVG from these Mermaid files:

1. Use [Mermaid Live Editor](https://mermaid.live/)
2. Use Mermaid CLI: `mmdc -i input.mmd -o output.png`
3. Use VS Code with Mermaid extension
4. Export from draw.io (if converted to that format)

## Export to images/

Generated images should be saved to `/images/` directory with the following naming:
- `ig-structure-diagram.png`
- `profile-inheritance-diagram.png`
- `reference-hierarchy-diagram.png`
- `inclusion-flow-diagram.png`
- `identifier-systems-diagram.png`
- `terminology-flow-diagram.png`
- `contribution-workflow-diagram.png`
