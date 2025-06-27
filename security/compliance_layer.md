

### ✅ 6. `security/compliance_layer.md`

```markdown
# 🔐 Compliance Layer in MCAP

MCAP is designed with **security and compliance by design**. This document outlines the compliance features embedded in the protocol.

---

## 🧱 Components

### 1. **Read-Only Mainframe Mirror**
- Prevents write or mutation access to source systems
- Snapshots ensure version consistency for reproducibility

### 2. **Field-Level Redaction**
- Masking of sensitive fields (e.g., SSN, customer names)
- Custom redaction patterns per compliance region (e.g., GDPR, HIPAA)

### 3. **Access Tokens and Role Control**
- Agent-level permission tokens
- Validation hooks before any file/tool access

### 4. **Prompt and Response Logging**
- Every LLM prompt is logged with metadata
- Reversible chain of logic transformations

### 5. **Audit Trails**
- Maintains traceability: COBOL Line → Agent → Java Method
- Useful for regulators and SMEs to verify transformations

---

## 🧪 Sample Audit Log Schema

```json
{
  "session_id": "abc-123",
  "source_file": "claims01.cbl",
  "transformation": "IF → if()",
  "agent": "domain_agent",
  "timestamp": "2025-06-26T12:30:00Z"
}
