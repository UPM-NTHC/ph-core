# PH Core IG - Vibe Engineering Guide

## Build Commands

### Quick Build (SUSHI only)
- **Compile FSH to JSON**: `sushi .`
  - Converts FSH files to FHIR JSON resources in `fsh-generated/`
  - Fast - use for quick validation of FSH syntax

### Full IG Build (SUSHI + IG Publisher)

**macOS/Linux:**
- **One-time build**: `./_genonce.sh` (auto-detects online/offline)
- **Interactive menu**: `./_build.sh` then select:
  - **Option 2**: Full build (with terminology server)
  - **Option 4**: Build without TX server (offline, faster for large codesystems)

**Windows:**
- **One-time build**: `_genonce.bat` (auto-detects online/offline)
- **Interactive menu**: `_build.bat` then select Option 2 or 4

**Direct commands (all platforms):**
- With terminology: `sushi . && java -jar input-cache/publisher.jar -ig .`
- Offline (no TX): `sushi . && java -jar input-cache/publisher.jar -ig . -tx n/a`

### Other Commands

**Update publisher:**
- macOS/Linux: `./_updatePublisher.sh`
- Windows: `_updatePublisher.bat`

**Clean temp directories:**
- macOS/Linux: `./_build.sh clean`
- Windows: `_build.bat clean`

## Architecture

- **Type**: FHIR R4 Implementation Guide using SUSHI/FSH
- **Main config**: `sushi-config.yaml` (IG metadata, dependencies)
- **IG config**: `ig.ini` (publisher settings)
- **Source**: FSH definitions, narrative content, and configuration in `input/`
- **Generated**: SUSHI output, final IG documentation, and temporary build products
- **Publisher**: HL7 FHIR IG Publisher (Java-based)
- **Canonical base**: `https://fhir.doh.gov.ph/phcore`

## Code Style & Conventions

- **FSH files**: Profiles, extensions, code systems, value sets defined in FHIR Shorthand
- **Vocabulary**: Large codesystems tracked in Git
- **Content**: Markdown pages and images for IG documentation
- **ID pattern**: Use lowercase with hyphens (e.g., `ph-core-patient`)
- **Branch naming**: Use hyphens, never slashes (e.g., `feat-name` not `feat/name`)


## Contribution Workflow

1. Check for existing issue or create one using templates
2. Branch from `main` with descriptive name (no `/` characters)
3. Reference issue in commits: `git commit -m "Description (#247)"`
4. Open PR linking to issue: `Fixes #247`
5. Merge only when CI is green, use squash merge, delete branch after

> 📚 **For detailed contribution guidelines** (Issue labels, Development Setup, Code Review Process, etc.), see [CONTRIBUTING.md](.github/contributing.md).

## Debugging Tips

- **SUSHI errors**: Check console output; common issues include unresolved aliases or incomplete slicing rules
- **Build hangs**: Use offline mode (`-tx n/a`) for faster builds when working with large codesystems
- **Memory issues**: Increase Java heap with `export JAVA_TOOL_OPTIONS="-Xmx4g"`
- **Validation**: Review `output/qa.html` for errors, warnings, and broken links
- **`Refusing to fetch from non-public address 64:ff9b::...`**: your network uses
  DNS64/NAT64 and occasionally hands Java a synthesized IPv6 address, which the
  Publisher's SSRF guard rejects. Force IPv4 and retry:
  `JAVA_OPTS="-Djava.net.preferIPv4Stack=true" ./_build.sh` (or add the flag to
  `JAVA_OPTS` before a direct `java -jar ...` invocation).
