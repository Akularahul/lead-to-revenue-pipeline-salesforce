# Salesforce DX Project: Next Steps

Now that you’ve created a Salesforce DX project, what’s next? Here are some documentation resources to get you started.

## How Do You Plan to Deploy Your Changes?

Do you want to deploy a set of changes, or create a self-contained application? Choose a [development model](https://developer.salesforce.com/tools/vscode/en/user-guide/development-models).

## Configure Your Salesforce DX Project

The `sfdx-project.json` file contains useful configuration information for your project. See [Salesforce DX Project Configuration](https://developer.salesforce.com/docs/atlas.en-us.sfdx_dev.meta/sfdx_dev/sfdx_dev_ws_config.htm) in the _Salesforce DX Developer Guide_ for details about this file.

## Read All About It

- [Salesforce Extensions Documentation](https://developer.salesforce.com/tools/vscode/)
- [Salesforce CLI Setup Guide](https://developer.salesforce.com/docs/atlas.en-us.sfdx_setup.meta/sfdx_setup/sfdx_setup_intro.htm)
- [Salesforce DX Developer Guide](https://developer.salesforce.com/docs/atlas.en-us.sfdx_dev.meta/sfdx_dev/sfdx_dev_intro.htm)
- [Salesforce CLI Command Reference](https://developer.salesforce.com/docs/atlas.en-us.sfdx_cli_reference.meta/sfdx_cli_reference/cli_reference.htm)



# Lead-to-Revenue Pipeline Automation (Salesforce)

## Overview
This project is a Salesforce Sales Cloud mini-implementation that automates the full lead-to-revenue journey:
Lead Scoring → Round-Robin Assignment → Qualification → Opportunity Pipeline → Stale Pipeline Alerts → REST Lead Sync → Revenue Tracking → Dashboards.

## Tech Stack
- Salesforce (Sales Cloud)
- Apex (Triggers, REST, Batch)
- Flows (Record-triggered automation)
- Reports & Dashboards
- VS Code + Salesforce CLI

## Planned Features (10-Day Build)
- Custom objects: Lead Master, Opportunity Pipeline, Activity Log, Revenue Tracking, API Sync Log
- Lead scoring automation (Apex)
- Round-robin assignment
- Lead qualification → pipeline creation
- Stale pipeline batch job alerts
- REST endpoint for external lead sync + API logging
- KPI dashboard (lead funnel, pipeline health, revenue)

## How to Run (later)
Setup steps and demo instructions will be added as the project is built.
