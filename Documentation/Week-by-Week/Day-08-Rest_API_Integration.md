## 🚀 Project Goal

Built a Salesforce Apex REST API to allow external systems to create Lead Master records automatically using JSON requests.

This simulates real-world CRM integrations such as:
- Website lead forms
- Marketing automation tools
- External applications
- Third-party SaaS integrations

---

# 🧠 Architecture

External System / Postman
        ↓
Salesforce REST API
        ↓
Lead Master Creation
        ↓
Lead Scoring Automation
        ↓
Lead Qualification Pipeline

---

# ⚙️ Features Implemented

## ✅ Apex REST API
Created custom REST endpoint using Apex:

/services/apexrest/LeadAPI

---

## ✅ JSON Request Handling

API accepts JSON payloads such as:

```json
{
  "email": "api@test.com",
  "company": "OpenAI"
}