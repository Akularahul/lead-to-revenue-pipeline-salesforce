# Day 7 — Opportunity Activity Logging Automation

## 🎓 Project Overview

Built an automated Opportunity Activity Logging system in Salesforce that tracks every important opportunity stage movement automatically using Record-Triggered Flows.

This automation creates Activity Log records whenever an Opportunity Pipeline stage changes, helping sales teams maintain pipeline visibility and historical tracking.

---

# 🚀 Objective

Automate CRM activity tracking by logging:
- Opportunity stage changes
- Assigned sales reps
- Pipeline progression
- Activity timestamps

without requiring manual updates from sales users.

---

# ⚙️ Automation Workflow

Opportunity Stage Updated
        ↓
Record-Triggered Flow Executes
        ↓
Activity Log Record Created
        ↓
Pipeline Activity History Stored

---

# 🧠 Business Problem

Sales teams often struggle with:
- Missing pipeline history
- Lack of stage transition visibility
- Inconsistent CRM activity tracking
- Manual audit logging

This results in:
- Poor sales forecasting
- Reduced pipeline transparency
- Incomplete CRM reporting

---

# ✅ Solution Implemented

Created a Salesforce automation that:

- Detects Opportunity Pipeline stage changes
- Automatically creates Activity Log records
- Tracks Assigned Rep
- Stores Opportunity stage history
- Maintains CRM audit visibility

---

# 🛠️ Features

## ✅ Record-Triggered Flow
Built automation using Salesforce Flow Builder.

---

## ✅ Automatic Activity Logging
Creates Activity Log records instantly when stage changes occur.

---

## ✅ Stage Progress Tracking
Tracks:
- Discovery
- Proposal
- Negotiation
- Closed Won
- Closed Lost

---

## ✅ Assigned Rep Tracking
Stores responsible sales rep automatically.

---

## ✅ Historical Pipeline Visibility
Maintains complete opportunity activity history.

---

# 📋 Fields Captured

| Field | Purpose |
|---|---|
| Opportunity | Related opportunity |
| Activity Type | Type of activity |
| Activity Date | Timestamp |
| Assigned Rep | Opportunity owner |
| Stage | Current pipeline stage |

---

# 🧪 Test Scenario

## Example

### Before Update
```text
Stage = Discovery