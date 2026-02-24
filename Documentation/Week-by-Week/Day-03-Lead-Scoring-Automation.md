# Day 03 — Lead Scoring Automation (Apex)

## Goal
Automatically calculate lead scores and promote qualified leads to MQL using Apex.

---

## What I Built

- Apex Trigger + Handler pattern
- Lead scoring logic based on:
  - Lead Source
  - Company name length
  - Email presence
- Score capped at 100
- Auto-update Status to MQL when score ≥ 70
- Apex Test Class
- CLI-based test execution

---

## Lead Scoring Logic

- Referral / LinkedIn / Website sources weighted
- Company size approximated using string length
- Email presence adds score
- Qualified / Disqualified statuses preserved

---

## Key Activities

- Created LeadScoringHandler Apex class
- Created LeadMasterTrigger
- Built LeadScoringHandlerTest

---

---

## Technical Skills

- Apex Trigger + Handler architecture  
- Bulk-safe Apex logic  
- Conditional scoring algorithms  
- Salesforce deployment via CLI  
- Apex unit testing  
- SOQL queries  
- MQL automation logic  

---

## Deliverables

- LeadScoringHandler Apex class  
- LeadMasterTrigger  
- Apex test class with passing results  
- Automatic MQL promotion logic  
- GitHub commit with scoring automation  

---

## Outcome

Implemented automated lead qualification, removing manual scoring and ensuring consistent MQL promotion — creating the first intelligent decision layer in the Lead-to-Revenue pipeline.