# Lead-to-Revenue Pipeline Automation (Salesforce Sales Cloud)

## 💼 Project Overview

Lead-to-Revenue Pipeline Automation is a Salesforce Sales Cloud mini-project that simulates a real enterprise sales workflow by automating lead scoring, MQL qualification, and round-robin owner assignment.

The project focuses on eliminating manual lead handling and ensuring balanced sales workload distribution using Apex, custom objects, and Salesforce automation.

**Built by:** Rahul Akula  
**Timeline:** 10 Days (Feb 2026)  
**Status:** Day 4 Complete ✅  

---

## 🚀 Key Features

- **Automated Lead Scoring** – Apex-based scoring logic with MQL promotion  
- **Round Robin Assignment** – Persistent owner rotation for qualified leads  
- **Custom Sales Data Model** – 5 custom objects representing CRM pipeline  
- **Bulk-Safe Apex Architecture** – Trigger + handler design pattern  
- **Automated Testing** – Apex test classes executed via Salesforce CLI  
- **GitHub Version Control** – Daily commits with SFDX deployment  

---

## 🛠️ Technology Stack

**Salesforce Products:**
- Sales Cloud (Custom CRM Data Model)

**Development:**
- Apex (Triggers, Classes, Tests)
- Salesforce Flow (upcoming)
- VS Code + Salesforce CLI (SFDX)
- Git + GitHub

---

## 📅 Project Progress

- **Day 1** ✅ Project Setup & Environment Configuration  
- **Day 2** ✅ CRM Data Model Design  
- **Day 3** ✅ Lead Scoring Automation (Apex)  
- **Day 4** ✅ Round Robin Assignment (Owner on MQL)  

---

## 📘 Day 1 — Foundation & Setup ✅

### Achievements:
- ✅ Salesforce Developer Edition org setup  
- ✅ VS Code + Salesforce Extension Pack configured  
- ✅ GitHub repository initialized  
- ✅ SFDX authentication completed  
- ✅ Project roadmap created  

### Skills Gained:
- Salesforce DX project structure
- Org authorization using CLI
- GitHub integration
- Project documentation

---

## 📘 Day 2 — Sales Cloud Data Model ✅

### What I Built:
- ✅ **5 Custom Objects**
  - Lead_Master__c  
  - Opportunity_Pipeline__c  
  - Activity_Log__c  
  - Revenue_Tracking__c  
  - API_Sync_Log__c  

- ✅ Core fields (Lead Score, Status, Assigned Rep, Stage, Revenue)
- ✅ Lookup + Master-Detail relationships
- ✅ Metadata retrieval into VS Code
- ✅ Git commit of full data model

### Data Model:
-Lead Master
-    |
     ↓
- Opportunity Pipeline
     |
     ↓
- Revenue Tracking

- Activity Log (Lookup to Lead + Opportunity)
- API Sync Log (Integration Audit)


### Technical Skills Demonstrated:
- Custom object architecture
- Lookup vs Master-Detail modeling
- Formula fields
- Metadata deployment with SFDX

---

## 📘 Day 3 — Lead Scoring Automation (Apex) ✅

### What I Built:
- ✅ Apex Trigger + Handler pattern
- ✅ Lead scoring logic using:
  - Lead Source
  - Company length
  - Email presence
- ✅ Score capped at 100
- ✅ Auto-promotion to MQL at score ≥ 70
- ✅ Apex Test Class
- ✅ CLI-based test execution

### Business Logic:
- Leads automatically move to **MQL**
- Qualified/Disqualified status preserved
- Fully bulk-safe implementation

### Technical Skills Demonstrated:
- Trigger handler pattern
- SOQL queries
- Apex testing
- CLI test execution

---

## 📘 Day 4 — Round Robin Owner Assignment ✅

### What I Built:
- ✅ Persistent round-robin assignment using Apex
- ✅ Assignment state stored in `Assignment_Control__c`
- ✅ Owner automatically rotates when Status changes to MQL
- ✅ Apex Test Class for deployment safety
- ✅ Screenshots + GitHub documentation

### Behavior:

Lead 1 → Sales Rep A  
Lead 2 → Sales Rep B  
Lead 3 → Sales Rep A  
Lead 4 → Sales Rep B  

### Technical Highlights:
- Trigger executes in `before update`
- State persistence using custom object
- Dynamic User querying
- CLI-based test validation

---

## ✅ Implemented Features (So Far)

- Salesforce DX Project Setup  
- Custom CRM Data Model  
- Apex Lead Scoring  
- MQL Qualification Logic  
- Persistent Round Robin Assignment  
- Apex Test Coverage  
- GitHub Version Control  

---

## 🧪 How to Test (UI)

1. App Launcher → Lead Masters → New  
2. Create Lead (Status = New)  
3. Save  
4. Edit → Status = MQL → Save  
5. Owner auto-assigns to sales rep  
6. Repeat to observe rotation  

---

## 🧪 How to Test (CLI)

```bash
sf apex run test -n LeadScoringHandlerTest -r human --synchronous
sf apex run test -n RoundRobinAssignmentTest -r human --synchronous

---

---

## 🎓 Day 5: Qualification → Opportunity Automation ✅

**Duration:** February 28, 2026  
**Status:** Completed  

### What I Built:

- ✅ Record-triggered Flow for Lead Qualification
- ✅ Duplicate-safe Opportunity creation logic
- ✅ Conditional Get Records + Decision pattern
- ✅ Automated pipeline initialization (Stage, Amount, Close Date)
- ✅ Lead ↔ Opportunity relationship mapping

---

### Business Impact:

When a Lead becomes Qualified:

- System verifies if pipeline record already exists
- Creates Opportunity only once
- Prevents duplicate records
- Ensures clean revenue forecasting data

This reflects real-world Sales Cloud best practices where pipeline integrity is critical.

---

### Technical Skills Demonstrated:

- Salesforce Flow (Record-Triggered)
- Conditional automation
- Data integrity enforcement
- CRM lifecycle modeling
- Enterprise duplicate prevention pattern

---

### Resulting CRM Flow:

Lead → Scoring → MQL → Round Robin Assignment → Qualified → Opportunity Created (Once)

---

📸 Screenshots available in:
```
ScreenShots/Day-05/
```

---

## 🎓 Day 6: Revenue Tracking Automation ✅

**Duration:** March 6, 2026  
**Status:** Completed  

### What I Built

Implemented revenue lifecycle automation that creates a **Revenue Tracking record** whenever an Opportunity Pipeline record is marked **Closed Won**.

### Features

- Record-Triggered Flow on Opportunity Pipeline
- Automatic Revenue Tracking record creation
- Recurring revenue calculations (MRR & ARR)
- Opportunity ↔ Revenue relationship mapping
- Revenue lifecycle modeling

---

### Business Impact

This automation connects **sales pipeline data to financial reporting** by ensuring revenue records are created immediately after a deal is won.

Benefits include:

- Improved revenue visibility
- Automated financial tracking
- Accurate pipeline-to-revenue transition
- Scalable CRM automation architecture

---

### Technologies Used

- Salesforce Sales Cloud
- Record-Triggered Flows
- Custom Objects
- CRM Revenue Modeling
- Data Relationships

---

### Resulting CRM Lifecycle

```
Lead → MQL → Assigned → Qualified → Opportunity → Closed Won → Revenue Tracking
```

---

📸 Screenshots available in:

```
ScreenShots/Day-06/
```

---
