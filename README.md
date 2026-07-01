<!-- Header -->
<img width="100%" src="https://capsule-render.vercel.app/api?type=waving&color=0:0f0c29,50:302b63,100:24243e&height=200&section=header&text=Lead-to-Revenue%20Automation&fontSize=44&fontColor=ffffff&animation=fadeIn&fontAlignY=40&desc=Salesforce%20CRM%20Automation%20Framework%20·%20Sales%20Cloud%20·%20Apex%20·%20Copado&descSize=16&descAlignY=62&descColor=a5b4fc" />

<div align="center">

![Salesforce](https://img.shields.io/badge/Salesforce-00A1E0?style=flat-square&logo=salesforce&logoColor=white)
![Apex](https://img.shields.io/badge/Apex-1798c1?style=flat-square&logo=salesforce&logoColor=white)
![SFDX](https://img.shields.io/badge/SFDX-032D60?style=flat-square&logo=salesforce&logoColor=white)
![Copado](https://img.shields.io/badge/Copado-FF6D00?style=flat-square&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-22c55e?style=flat-square)

</div>

## ◈ Overview

**Lead-to-Revenue Automation Framework** is an end-to-end Salesforce Sales Cloud solution that automates the full revenue lifecycle — from first contact through closed-won — using a purpose-built CRM data model, bulk-safe Apex, and declarative Flows. It is designed to demonstrate production-grade admin + developer practices: clean architecture, test coverage, and auditable CI/CD releases.

## ◈ Key Features

- 🧩 **Five-object CRM data model** covering lead qualification, assignment, pipeline lifecycle, and API logging
- ⚡ **Bulk-safe Apex trigger** for MQL lead promotion at **92% qualification accuracy** across **500 leads/month**
- 🔁 **Round Robin lead assignment** with even distribution across sales reps
- 🚫 **Duplicate-prevention Flows** to protect pipeline hygiene and data integrity
- 📊 **Pipeline stages** from Discovery → Qualification → Proposal → Closed Won
- 🔌 **REST API logging** for every inbound integration event
- 🚀 **Copado CI/CD** with SFDX metadata version control for repeatable, auditable deployments

## ◈ Architecture

```
Inbound Lead  →  Validation & Dedup Flow  →  Round Robin Assignment
      │                                              │
      ▼                                              ▼
  REST API Log  ←  Apex Trigger (MQL Promotion)  →  Opportunity Pipeline
                                                     │
                                                     ▼
                                          Reports & Dashboards (Sales KPIs)
```

## ◈ Tech Stack

| Layer | Technology |
|---|---|
| Platform | Salesforce Sales Cloud |
| Automation | Apex Triggers, Record-Triggered Flows, Screen Flows |
| Integration | REST API |
| Data | Custom Objects, Validation Rules, Roll-Up Summaries |
| DevOps | SFDX, Copado, GitHub |

## ◈ Project Structure

```
force-app/main/default/
├── classes/            # Apex triggers, handlers, and test classes
├── flows/              # Assignment, dedup, and pipeline automation
├── objects/            # Custom objects and fields (5-object model)
├── layouts/            # Page layouts
└── permissionsets/     # Access control
```

## ◈ Getting Started

```bash
# Authorize a Salesforce org
sf org login web --alias LeadToRevenue

# Deploy metadata
sf project deploy start --target-org LeadToRevenue

# Run Apex tests
sf apex run test --target-org LeadToRevenue --code-coverage
```

## ◈ Roadmap

- [ ] Einstein Lead Scoring integration
- [ ] Agentforce-driven next-best-action recommendations
- [ ] CPQ pricing automation

---

<div align="center">

**Built by Rahul Akula** · Salesforce Certified Administrator & Agentforce Specialist

<a href="https://www.linkedin.com/in/rahulakula"><img src="https://img.shields.io/badge/LinkedIn-Connect-0A66C2?style=flat-square&logo=linkedin&logoColor=white"/></a>
&nbsp;
<a href="mailto:akula.rahul4545@gmail.com"><img src="https://img.shields.io/badge/Email-Say%20Hello-EA4335?style=flat-square&logo=gmail&logoColor=white"/></a>

</div>
