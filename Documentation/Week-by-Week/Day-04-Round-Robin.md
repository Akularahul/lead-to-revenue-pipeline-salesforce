# Day 04 — Round Robin Owner Assignment (MQL)

## Goal
Automatically assign Lead Master record Owner in a round-robin pattern when Status changes from **New → MQL**.

## What I Built
- Apex class `RoundRobinAssignment` to assign record Owner to sales reps in rotation.
- Apex Trigger `RoundRobinTrigger` to execute assignment when lead becomes MQL.
- Apex test class `RoundRobinAssignmentTest` to validate behavior and ensure deploy safety.

## How It Works
1. User creates a Lead Master with Status = New.
2. When Status changes to MQL, the trigger calls the assignment class.
3. Owner is assigned to the next active sales rep user (rotation).
4. Repeating this alternates Owner across reps.

## How to Test (UI)
1. App Launcher → Lead Masters → New  
2. Create lead with Status = New → Save  
3. Edit lead → Status = MQL → Save  
4. Verify Owner changes to Rep1/Rep2 alternately.

## How to Test (CLI)
```bash
sf apex run test -n RoundRobinAssignmentTest -r human --synchronous

---

## Technical Skills

- Apex Trigger development (before update event)
- Persistent state management using custom object (`Assignment_Control__c`)
- Round Robin assignment algorithm design
- Dynamic User querying in Apex
- Bulk-safe processing patterns
- Apex test class creation
- Salesforce CLI test execution
- Git-based version control

---

## Deliverables

- `RoundRobinAssignment.cls` (Owner rotation logic)
- `RoundRobinTrigger.trigger`
- `RoundRobinAssignmentTest.cls`
- Persistent assignment control object
- Successful test execution (100% pass rate)
- GitHub commit with documented automation
- Functional UI demonstration (Owner auto-rotation)

---

## Outcome

Implemented automated and persistent round-robin owner assignment when Lead status transitions to **MQL**, ensuring:

- Balanced sales workload distribution  
- Faster response times for qualified leads  
- Elimination of manual lead ownership assignment  
- Scalable architecture for future sales team expansion  

This completes the automation of lead qualification and intelligent distribution within the Lead-to-Revenue pipeline.