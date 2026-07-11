# PM + QA Automation Toolkit

![GitHub release](https://img.shields.io/github/v/release/dungnv05/pm-qa-automation-toolkit)  
![License](https://img.shields.io/badge/license-MIT-blue)  
![Notion](https://img.shields.io/badge/Notion-Template-black)  
![Robot Framework](https://img.shields.io/badge/Robot%20Framework-6%2B-green)  

All-in-one starter kit for **product managers who also run QA**: a sellable Notion workspace scaffold, ready-to-run Robot Framework + Playwright test examples, and LLM prompt templates for acceptance criteria.

---

## What You Get

| Path | Purpose |
|---|---|
| `notion-template/` | Docs + schema to build the PM + QA Notion workspace |
| `robot-playwright/` | Hybrid automation starter using Robot Framework + Playwright |
| `acceptance-prompts/` | Copy-paste prompts for Notion AI / ChatGPT to generate acceptance criteria |

---

## Who This Is For

- **PMs wearing a QA hat** who want one place for stories, tests, and bugs
- **QA leads** tracking manual + automation coverage in one workspace
- **Indie hackers / micro-sellers** building and selling Notion templates

---

## Quick Start

### 1) Notion Template Setup
1. Open `notion-template/SETUP.md`.
2. Create the databases: **Sprint Stories**, **Test Cases**, and **Bugs**.
3. Follow `notion-template/schema.md` to add properties and relations.
4. Use the sample data in this README to validate your setup.

### 2) Run Automation Starter
```bash
git clone https://github.com/dungnv05/pm-qa-automation-toolkit.git
cd pm-qa-automation-toolkit/robot-playwright
python -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
playwright install chromium
robot src/
```

### 3) Use Acceptance Criteria Prompts
1. Open `acceptance-prompts/acceptance-criteria-prompts.md`.
2. Copy a prompt into Notion AI or any LLM.
3. Replace bracketed placeholders with your story details.

---

## Notion Workspace at a Glance

### Databases

#### 1) Sprint Stories
User stories with acceptance criteria, sprint, module, status, and priority.

Suggested views:
- **Board** grouped by Status
- **Table** sorted by Priority + Sprint
- **Gallery** grouped by Module

#### 2) Test Cases
Test repository linked to stories. Tracks type, automation status, priority, severity, steps, and owner.

Suggested views:
- **Board** grouped by Status
- **Table** filtered by Automation = true for coverage view
- **Gallery** grouped by Module + Type

#### 3) Bugs
Bug tracker linked to test cases and stories with severity, priority, status, environment, due date, and reporter.

Suggested views:
- **Board** grouped by Status
- **Table** filtered by Severity = Blocker / Critical
- **Calendar** by Due Date

### Relations
- `Sprint Stories` `Linked TC` → `Test Cases`
- `Test Cases` `Linked Story` → `Sprint Stories`
- `Bugs` `Linked Story` → `Sprint Stories`
- `Bugs` `Linked TC` → `Test Cases`

### Sample Notion Template
https://nickel-cloak-317.notion.site/PM-QA-Workspace-39a57f7f53fe8106af32f98aa3bafb37?source=copy_link
---

## Robot Framework + Playwright Starter

See `robot-playwright/README.md` for install, setup, and how to add tests.

Example test: `robot-playwright/src/login.robot`

---

## Acceptance Criteria Prompt Pack

See `acceptance-prompts/README.md` for prompt templates and how to use them with an LLM.

---

## Selling This Template

1. Build the Notion workspace using this repo and SETUP.md.
2. Publish the template or create a landing page with your price and delivery instructions.
3. Sell via Gumroad, LemonSqueezy, or Notion Template Gallery.
4. Bundle this GitHub repo as a buyer bonus.

## Feedback & Issues

Open an issue at:  
https://github.com/dungnv05/pm-qa-automation-toolkit/issues

## License

MIT - feel free to reuse and modify.
