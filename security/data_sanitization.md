# 🧼 Data Sanitization Strategy for MCAP

MCAP operates on **sanitized read-only mirrors** of mainframe systems to ensure security, privacy, and compliance before any data is accessed by LLMs or agents.

---

## 🎯 Purpose of Sanitization

- Remove or mask sensitive personally identifiable information (PII)
- Prevent unauthorized data exposure to AI systems
- Ensure compliance with enterprise and regulatory policies (e.g., GDPR, HIPAA, PCI-DSS)

---

## 🔐 Sanitization Techniques

### 1. **Field Redaction**
Replace sensitive fields with placeholders or masked values.

```cobol
MOVE 'XXX-XX-XXXX' TO CUSTOMER-SSN

2. Field Hashing or Tokenization
Use reversible hashing for validation scenarios (when reversibility is needed).

{
  "original_value": "John Doe",
  "hashed_value": "a7d3c18b27..."
}

3. Regex-Based Scrubbing
Patterns used to detect and redact:

Type	        Pattern Example
SSN	            \d{3}-\d{2}-\d{4}
Credit Card	    \d{4}-\d{4}-\d{4}-\d{4}
Names	        [Enterprise-defined rules]

📂 Sanitization Profiles
    -MCAP supports custom sanitization profiles based on:
    -Department (Finance, HR, Claims)
    -Region (EU, US, APAC)
    -Regulatory framework (HIPAA, GDPR, etc.)

🛠️ Integration Points
Stage	                        Action
Before Analysis Agent	   |     Apply redaction rules to all input sources
Before Domain Agent	       |     Confirm that semantic variables are anonymized
Logging Layer (MCP Proxy)  |    Sanitize logs before storage or export

✅ Compliance Logging
Each sanitized session should be accompanied by:
    -Session ID
    -Sanitization profile used
    -Timestamp
    -Agent Access Summary


{
  "session_id": "mcap-session-4784",
  "profile": "gdpr-finance-eu",
  "sanitized_fields": ["CUSTOMER-NAME", "ACCOUNT-NO", "CLAIM-ID"],
  "timestamp": "2025-06-27T10:45:00Z"
}


### 📌 Best Practices
    Use deterministic redaction when SME review is required.
    Log every transformation for traceability.
    Do not allow access to raw production environments under any circumstances.
    Periodically review sanitization rules with compliance teams.








