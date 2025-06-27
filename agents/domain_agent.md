# 📚 Domain Agent

The **Domain Agent** bridges the gap between technical COBOL logic and business domain understanding. It identifies implicit business rules, domain-specific conditions, and aligns logic with schemas or enterprise policies.

---

## 🎯 Responsibilities

- Interpret extracted logic in business context
- Match COBOL variables to domain concepts (e.g., CLAIM-TYPE → ClaimCategory)
- Annotate logic with business meaning
- Identify regulatory or policy-driven rules

---

## 🧠 Input

- Control and data flow summary from Analysis Agent
- Schema definitions (from MCP or enterprise metadata)
- COBOL code with semantic tags

---

## 📤 Output

- LLM-readable prompts: “This block checks for fraud risk.”
- Structured rule interpretations
- Labeled business rule clusters

---

## 🔄 Protocol Integration

| Layer     | Description                                   |
|-----------|-----------------------------------------------|
| MCP       | Accesses schemas or data dictionaries         |
| Internal  | Maps COBOL logic to domain understanding      |
| A2A       | Collaborates with Security Agent, Review Agent|

---

## 🧪 Example

### COBOL Input:
```cobol
IF CLAIM-TYPE = 'AUTO' AND DAMAGE-AMOUNT > 25000
    PERFORM HIGH-RISK-REVIEW

### Interpretation Output:
{
  "rule_type": "risk_assessment",
  "description": "Auto claims above 25,000 require additional review.",
  "linked_entity": "Claim",
  "decision_trigger": "Damage threshold + claim type"
}


###📌 Notes
 1. Relies heavily on schema resolution via MCP
 2.Enhances prompt quality for downstream LLM processing


