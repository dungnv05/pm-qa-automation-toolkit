# PM + QA Workspace — Database Schema

Use this schema to reproduce the template manually or via API.

## 1. Sprint Stories

Database title: `Sprint Stories`

Properties:
- `Name` — Title
- `Story ID` — Text
- `Acceptance Criteria` — Text
- `Status` — Select
  - Values: Backlog, In Progress, Ready for QA, Done, Cancelled
- `Priority` — Select
  - Values: High, Medium, Low
- `Assignees` — People
- `Module` — Select
  - Values: Checkout, Login, API
- `Sprint` — Select
  - Values: Sprint 1, Sprint 2

Relations:
- `Linked TC` — Relation -> Test Cases (single_property)

## 2. Test Cases

Database title: `Test Cases`

Properties:
- `Name` — Title
- `Test ID` — Text
- `Module` — Select
  - Values: Checkout, Login, API
- `Type` — Select
  - Values: Functional, Regression, Smoke, Exploratory, Edge case
- `Automation` — Checkbox
- `Status` — Select
  - Values: Draft, Approved, Executed, Passed, Failed, Blocked
- `Priority` — Select
  - Values: High, Medium, Low
- `Severity` — Select
  - Values: Blocker, Critical, Major, Minor
- `Assigned To` — People
- `Steps` — Text

Relations:
- `Linked Story` — Relation -> Sprint Stories (single_property)

## 3. Bugs

Database title: `Bugs`

Properties:
- `Name` — Title
- `Bug ID` — Text
- `Description` — Text
- `Severity` — Select
  - Values: Blocker, Critical, Major, Minor
- `Priority` — Select
  - Values: High, Medium, Low
- `Status` — Status
  - Values: Open, In Progress, Resolved, Closed, Won't Fix
- `Assignees` — People
- `Module` — Select
  - Values: Checkout, Login, API
- `Linked Story` — Relation -> Sprint Stories (single_property)
- `Environment` — Select
  - Values: Staging, Production, Dev
- `Linked TC` — Relation -> Test Cases (single_property)
- `Reporter` — People
- `Due Date` — Date

## Suggested Views

### Sprint Stories
- Board grouped by Status
- Table sorted by Priority + Sprint
- Gallery grouped by Module

### Test Cases
- Board grouped by Status
- Table with filter: Automation = true
- Gallery grouped by Module + Type

### Bugs
- Board grouped by Status
- Table with filter: Severity = Blocker / Critical
- Calendar by Due Date
