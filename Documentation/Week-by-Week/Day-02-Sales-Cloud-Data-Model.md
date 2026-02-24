# Day 02 — Sales Cloud Data Model Design

## Goal
Design and implement the core CRM data model using custom Salesforce objects and relationships.

---

## What I Built

Created 5 custom objects:

- Lead_Master__c
- Opportunity_Pipeline__c
- Activity_Log__c
- Revenue_Tracking__c
- API_Sync_Log__c

Added essential fields:

- Lead Score
- Status
- Assigned Rep
- Opportunity Stage
- Revenue fields

Established relationships between objects.

---

## Data Model
-Lead Master
     |
     ↓
- Opportunity Pipeline
     |
     ↓
- Revenue Tracking

- Activity Log (Lookup to Lead + Opportunity)
- API Sync Log (Integration Audit)


---

## Key Activities

- Built custom objects in Salesforce UI
- Added picklists, lookups, master-detail fields
- Created formula fields (ARR)
- Retrieved metadata using SFDX:
```bash
-sf project retrieve start

---

---

## Technical Skills

- Salesforce custom object architecture  
- Lookup and relationship modeling  
- Formula field implementation  
- CRM data design  
- Metadata retrieval using Salesforce CLI  
- Git-based source tracking  
- Sales Cloud data structuring  

---

## Deliverables

- 5 custom CRM objects  
- Core pipeline fields (status, score, ownership, revenue)  
- Object relationships for lead → opportunity → revenue flow  
- Metadata stored in GitHub  
- Initial data architecture committed  

---

## Outcome

Created a scalable CRM foundation that mirrors real enterprise sales processes, enabling automation, reporting, and analytics in subsequent development phases.