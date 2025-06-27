# 🏗️ MCAP Architecture

This document outlines the architectural design of the Mainframe Context Aware Protocol (MCAP), built to enable secure AI-led legacy modernization for COBOL systems.

---

## 🧱 Layered Overview

### 1. **Secure Legacy Interface**
- Read-only mirror of COBOL code, copybooks, JCL, DB2 schemas
- Sanitized for compliance (PII/GDPR-safe)
- Versioned snapshots for reproducibility

### 2. **MCAP Core Engine**
- Built on Anthropic's Model Context Protocol (MCP) for tool integration
- Agent communication via Google’s Agent2Agent (A2A) protocol
- Maintains context, logs transformations, coordinates task handoffs

### 3. **Multi-Agent Collaboration**
- **Analysis Agent**: Extracts control/data flow
- **Domain Agent**: Maps business logic
- **Security Agent**: Flags compliance risks
- **Generation Agent**: Produces Java code
- **Review Agent**: Validates and coordinates SME input

### 4. **Human-AI Validation Layer**
- SME dashboards
- Business rule visualizations
- Test generation and review feedback loop

---

## 🔍 Diagram Reference

See the visual:  
📁 [`MCAP_Architecture_Diagram.jpg`](./MCAP_Architecture_Diagram.jpg)

---

## 🧭 Principles

| Principle              | Description                                            |
|------------------------|--------------------------------------------------------|
| Context Fidelity       | Preserve semantic structure of legacy code             |
| Compliance by Design   | Secure access boundaries and audit trail logging       |
| Collaborative AI       | Agents work together using A2A                         |
| Human Oversight        | SME reviews embedded in each transformation step       |
