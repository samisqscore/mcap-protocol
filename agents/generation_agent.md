# 🛠️ Generation Agent

The **Generation Agent** is responsible for converting interpreted business logic into clean, modular Java code (or another modern language), aligned with enterprise architecture and development standards.

---

## 🎯 Responsibilities

- Transform validated business logic into modern code (e.g., Java, Spring Boot)
- Generate helper methods, interfaces, and unit test stubs
- Ensure naming conventions and modular design
- Maintain traceability from COBOL logic to generated code

---

## 🧠 Input

- Annotated logic from Domain Agent
- Optional context like schema structures and function libraries
- Java code generation prompt template

---

## 📤 Output

- Java classes with domain annotations
- Clean code following design patterns (Strategy, Service Layer)
- Unit test scaffolds and validation hooks

---

## 🔄 Protocol Integration

| Layer     | Description                              |
|-----------|------------------------------------------|
| MCP       | Pulls required schemas, test templates   |
| A2A       | Sends code to Review Agent               |

---

## 🧪 Example Output

### Input:
```json
{
  "rule": "Auto claims > 25000 require high risk review if policy tenure < 3 years",
  "entities": ["Claim", "Policy"]
}

### Output Java Code:
@Component
public class ClaimRiskAssessment {

    public ReviewDecision assessAutoClaimRisk(Claim claim, Policy policy) {
        if (claim.getType() == ClaimType.AUTO && claim.getDamageAmount() > 25000) {
            if (policy.getYearsActive() < 3) {
                return ReviewDecision.HIGH_RISK_REVIEW;
            }
        }
        return ReviewDecision.STANDARD_PROCESSING;
    }
}


### 📌 Notes
May use LLM fine-tuned for enterprise Java standards

Prompt chaining ensures context is preserved across logic units