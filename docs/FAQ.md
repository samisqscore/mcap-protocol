# ❓ MCAP - Frequently Asked Questions

---

### 💬 What is MCAP?

**MCAP (Mainframe Context Aware Protocol)** is a proposed orchestration layer for using LLMs and multi-agent systems to securely modernize legacy COBOL systems into modern cloud-native platforms like Java.

---

### 🤖 How is MCAP different from MCP?

- **MCP (Model Context Protocol)** allows models to access tools and external resources contextually.
- **MCAP** extends MCP specifically for mainframe code, adding multi-agent collaboration (via A2A), secure access, and human-in-the-loop validation.

---

### 🛡️ How does MCAP ensure security and compliance?

- Operates on sanitized, read-only mirrors of mainframe systems.
- Includes redaction, audit trails, SME checkpoints.
- Designed to comply with GDPR, PCI-DSS, and legacy governance frameworks.

---

### ⚙️ What roles do agents play?

| Agent              | Responsibility                                      |
|--------------------|-----------------------------------------------------|
| Analysis Agent     | Extracts structure from COBOL programs              |
| Domain Agent       | Maps business logic and domain rules                |
| Security Agent     | Identifies compliance risks                         |
| Generation Agent   | Produces modern Java or API code                    |
| Review Agent       | Submits for SME feedback and validation             |

---

### 🧪 Is MCAP implemented?

No. MCAP is a **research hypothesis** under development. We welcome collaborators to explore proof-of-concept implementations.

---

### 🧭 Can MCAP be used for languages other than COBOL?

Yes — in theory, MCAP can extend to other legacy systems like RPG, VB6, or PL/I by adapting its parsing and agent pipeline.

---

### 💡 Where can I contribute or stay updated?

- GitHub repo: [github.com/YOUR_USERNAME/mcap-protocol](#)
- LinkedIn Research Article: [MCAP on LinkedIn](#)
- Submit issues, ideas, and use cases
