# Data dictionary

**Framework:** GRC Compliance Framework Mapping  
**Schema version:** 1.0.0

---

## StandardControl

| Field | Type | Required | Description |
|---|---|---|---|
| `id` | string | ✓ | Unique ID, format: `{STANDARD}-{CLAUSE}` |
| `standard` | enum | ✓ | Source standard identifier |
| `clause_id` | string | ✓ | Official clause/control number |
| `label` | string | ✓ | Short title (author's words) |
| `source_link` | string | — | URL to original standard |
| `summary` | string | — | Author-written summary only |
| `source_license` | string | — | License note for the source |

---

## TechnicalControl

| Field | Type | Required | Description |
|---|---|---|---|
| `id` | string | ✓ | Unique ID, format: `{TOOL}-{CATEGORY}-{SEQ}` |
| `tool` | enum | ✓ | Source tool identifier |
| `control_ref` | string | ✓ | Control name as it appears in the tool |
| `description` | string | — | What this control does |
| `implementation_notes` | string | — | How to configure or verify |
| `evidence_type` | enum | — | Default evidence type for this control |

---

## Mapping

| Field | Type | Required | Description |
|---|---|---|---|
| `id` | string | ✓ | Unique mapping ID |
| `standard_control_id` | string | ✓ | FK → StandardControl |
| `technical_control_id` | string | ✓ | FK → TechnicalControl |
| `mapping_type` | enum | ✓ | `full`, `partial`, `compensating` |
| `rationale` | string | — | Why this mapping exists |
| `confidence` | enum | — | `high`, `medium`, `low` |
| `version` | string | — | Framework version at time of mapping |
| `doi` | string | — | Zenodo DOI for this version |
| `zenodo_record_id` | string | — | Zenodo record ID |
| `orcid_maintainer` | string | — | ORCID of the person who created this mapping |
| `owner_type` | enum | — | `personal` or `org` |
| `owner_id` | string | — | ORCID (personal) or org slug |

---

## Evidence

| Field | Type | Required | Description |
|---|---|---|---|
| `id` | string | ✓ | Unique evidence ID |
| `technical_control_id` | string | ✓ | FK → TechnicalControl |
| `evidence_type` | enum | ✓ | Type of evidence |
| `source` | string | ✓ | Tool, file name, or URL |
| `collected_at` | datetime | — | ISO 8601 timestamp |
| `collected_by` | string | — | Name or ORCID of collector |
| `notes` | string | — | Additional context |

---

## RawPostureData

| Field | Type | Required | Description |
|---|---|---|---|
| `id` | string | ✓ | Unique ingest record ID |
| `ingest_type` | enum | ✓ | `csv_upload`, `api_sync`, `manual_entry` |
| `source_tool` | string | ✓ | Tool name |
| `source_tenant` | string | — | Tenant/org identifier |
| `raw_field_key` | string | ✓ | Column name or API field name |
| `raw_field_value` | string | — | Raw value from source |
| `normalized_control_id` | string | — | Resolved TechnicalControl.id |
| `ingested_at` | datetime | — | ISO 8601 timestamp |
