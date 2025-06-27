# 🕵️ Analysis Agent

The **Analysis Agent** is the first step in the MCAP modernization pipeline. It parses COBOL programs to extract structural elements such as control flow, data dependencies, and file access logic.

---

## 🎯 Responsibilities

- Parse COBOL/JCL programs
- Identify PERFORM chains and IF/ELSE branches
- Extract subroutine call hierarchies
- Annotate programs with logic boundaries

---

## 🧠 Input

- Raw or sanitized COBOL file
- Context from MCP (e.g., metadata, program relationships)

---

## 📤 Output

- Structured summary (JSON or tree)
- Context graph nodes for MCP orchestration

---

## 🔄 Protocol Integration

| Layer        | Description                             |
|--------------|-----------------------------------------|
| MCP          | Accesses COBOL resources securely       |
| Internal     | Performs parsing and flow mapping       |
| A2A (Optional)| Sends output to Domain Agent            |

---

## 🧪 Example Output

```json
{
  "program": "CLAIMS01",
  "perform_blocks": ["VALIDATE", "CALCULATE", "REVIEW"],
  "conditions": [
    "IF CLAIM-TYPE = 'AUTO'",
    "IF DAMAGE-AMOUNT > 25000"
  ],
  "calls": ["CHECK-POLICY", "CHECK-HISTORY"]
}
