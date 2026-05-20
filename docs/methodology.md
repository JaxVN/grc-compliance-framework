# Methodology

**Framework:** GRC Compliance Framework Mapping  
**Author:** Hong Bao Ngan (JaxVN) · [ORCID 0009-0000-9340-8520](https://orcid.org/0009-0000-9340-8520)  
**Version:** 1.0.0

---

## Mapping approach

This framework uses a structured M:N mapping model where each standard clause (StandardControl) can map to multiple technical controls (TechnicalControl), and each technical control can satisfy multiple standard clauses.

### Mapping types

| Type | Definition |
|---|---|
| `full` | The technical control fully satisfies the standard clause requirement |
| `partial` | The technical control addresses part of the requirement; additional controls needed |
| `compensating` | An alternative control used when the primary technical control is not applicable |

### Confidence levels

| Level | Definition |
|---|---|
| `high` | Direct, well-documented mapping supported by vendor documentation |
| `medium` | Reasonable interpretation; may require auditor judgment |
| `low` | Tentative mapping; needs review by qualified assessor |

---

## Data sources

### Standards
Standard clause IDs, labels, and brief summaries are used for reference and mapping purposes only. Full standard texts are not reproduced. Users should consult original sources directly.

### Technical controls
Technical control definitions are based on the author's practical implementation experience with:
- Microsoft 365 Secure Score (tenant API / CSV export)
- Wazuh 4.7.x (Security Configuration Assessment, Vulnerability Detection)
- Action1 (endpoint patching, policy management)

---

## Ingest model

The framework supports two ingest modes for posture data:

1. **CSV upload** — User exports data from source tool (e.g., M365 Secure Score CSV) and uploads to the platform. Fields are mapped manually to TechnicalControl IDs.
2. **API sync** — Platform fetches posture data directly from tool API on a scheduled basis (planned for future versions).

Both modes normalize into the `RawPostureData` schema before mapping engine processing.

---

## Versioning policy

- Each GitHub Release tag (e.g., `v1.0.0`) triggers a Zenodo snapshot
- Each snapshot receives a unique DOI
- Mapping records include `version`, `doi`, and `zenodo_record_id` fields to track lineage
- Breaking schema changes increment the major version number
