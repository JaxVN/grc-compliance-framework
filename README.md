# GRC Compliance Framework Mapping

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.20311847.svg)](https://doi.org/10.5281/zenodo.20311847)
[![License: CC BY 4.0](https://img.shields.io/badge/License-CC_BY_4.0-lightgrey.svg)](https://creativecommons.org/licenses/by/4.0/)
[![ORCID](https://img.shields.io/badge/ORCID-0009--0000--9340--8520-green)](https://orcid.org/0009-0000-9340-8520)

A structured mapping framework that links international GRC standards (ISO 27001, NIST CSF, ACSC Essential Eight) to technical controls in real-world enterprise IT environments — including Microsoft 365, Wazuh, and Action1.

> **Author:** Hong Bao Ngan (JaxVN) · [ORCID 0009-0000-9340-8520](https://orcid.org/0009-0000-9340-8520)  
> **Affiliation:** KIEN A GROUP (independent researcher) · Ho Chi Minh City, Vietnam  
> **Portfolio:** [jaxvn.github.io](https://jaxvn.github.io)

---

## What this framework covers

- **Standard controls** — clause-level references from ISO 27001:2022, NIST CSF 2.0, and ACSC Essential Eight
- **Technical controls** — concrete settings, rules, and policies in Microsoft 365 Secure Score, Wazuh 4.x, and Action1
- **Mapping logic** — M:N relationships between standard clauses and technical implementations, with rationale
- **Evidence schema** — structure for linking configuration evidence, screenshots, and audit logs to controls
- **Scoring model** — lightweight compliance posture scoring per standard

## Repository structure

```
grc-compliance-framework/
├── framework/
│   ├── standards/          # Standard control definitions (JSON)
│   │   ├── iso27001/
│   │   ├── nist-csf/
│   │   └── cyber-gov-au/
│   ├── mappings/           # Cross-standard mapping tables
│   └── schema/             # Database schema & data dictionary
├── datasets/               # Versioned mapping datasets (CSV/JSON)
├── reports/                # Technical reports & whitepapers (PDF/MD)
└── docs/                   # Methodology, data dictionary, usage guide
```

## Versioning & citation

Each GitHub release maps to a Zenodo snapshot with a unique DOI. Use the DOI badge above to cite a specific version. For the latest version, cite as:

> Hong Bao Ngan. (2026). *GRC Compliance Framework Mapping* (v1.0.0). Zenodo. https://doi.org/10.5281/zenodo.20311847

## Standards covered

| Standard | Version | Source |
|---|---|---|
| ISO/IEC 27001 | 2022 | [iso.org](https://www.iso.org/standard/27001) |
| NIST Cybersecurity Framework | 2.0 | [nist.gov](https://www.nist.gov/cyberframework) |
| ACSC Essential Eight | Oct 2023 | [cyber.gov.au](https://www.cyber.gov.au/resources-business-and-government/essential-cyber-security/essential-eight) |

> **Note:** Standard clause IDs and labels are referenced for mapping purposes only. Full standard texts are not reproduced. Refer to the original sources above.

## Tools mapped

| Tool | Type | Version tested |
|---|---|---|
| Microsoft 365 Secure Score | Cloud posture | Tenant API / CSV export |
| Wazuh | SIEM / HIDS | 4.7.x |
| Action1 | Endpoint management | Cloud |

## License

This framework (schema, mappings, documentation, datasets) is licensed under **Creative Commons Attribution 4.0 International (CC BY 4.0)**.  
You are free to share and adapt this work for any purpose, provided you give appropriate credit.

See [LICENSE](./LICENSE) for full terms.

## Contributing

This is currently a solo research project maintained by [JaxVN](https://github.com/JaxVN). Issues and suggestions welcome via GitHub Issues.
