# Module 01 – VS Code Foundations

**VS Code Master Program – Pilot Edition V1.0**
**Module Status:** Completed ✅  
**Program Track:** VS Code – Zero to Hero

## Module Objective

Module 01 establishes a **rock-solid professional foundation** for using Visual Studio Code as a full-fledged development environment.
The focus is not limited to code editing. Instead, this module builds a **production-ready workspace** with correct environment setup, debugging capability, and reproducible configuration.
This foundation enables the learner to confidently progress into advanced productivity workflows, Git integration, automation, analytics engineering, and cloud-integrated development in later modules.
This module forms the **base layer** of the entire _VS Code – Zero to Hero_ program.

## Workspace & Environment Setup

### Workspace Root

### Standard Folder Structure

project_template/
│
├── .vscode/
│ └── launch.json
│
├── 01_notes/
├── 02_code/
├── 03_research/
├── 04_projects/
├── 05_assets/
├── 06_Debugging/
│
├── venv/
└── README.md

### Purpose of the Structure

- Ensures scalable and maintainable project organization
- Separates notes, code, research, and projects clearly
- Supports long-term, multi-module learning
- Mirrors real-world industry workflows

---

## Python Environment Configuration

### Virtual Environment (venv)

- Python virtual environment created inside the workspace
- Prevents dependency conflicts
- Enables reproducible execution across systems

### Interpreter Configuration

VS Code interpreter explicitly set to:
venv/Scripts/python.exe

### Verification Commands

python --version
where python

---

## Jupyter Notebook Integration

### Achievements

- Jupyter installed inside the virtual environment
- Kernel linked correctly with VS Code
- Notebook execution inside the workspace
- Markdown and LaTeX rendering enabled

### Skills Covered

- Code cells vs Markdown cells
- Kernel selection and switching
- Notebook execution flow
- Data inspection inside VS Code

---

## Core VS Code Extensions Installed

The following extensions were installed, verified, and tested:

- Python (Microsoft)
- Jupyter
- GitLens
- Prettier
- JSON (with Comments)
- SQL / Database tools (installed early for later modules)

Only **essential extensions** were added to avoid unnecessary complexity at the foundation stage.

---

## Debugging Configuration (Key Highlight of Module 01)

### Debug Configuration File

**`.vscode/launch.json`**

```json
{
  "version": "0.2.0",
  "configurations": [
    {
      "name": "Debug Mini Project",
      "type": "debugpy",
      "request": "launch",
      "program": "${workspaceFolder}/02_code/mini_debug_project.py",
      "console": "integratedTerminal",
      "justMyCode": true,
      "redirectOutput": true
    }
  ]
}

### Debug Features Mastered
Normal breakpoints
Conditional breakpoints
Logpoints
Step Over / Step Into / Step Out
Watch variables
Call Stack inspection
Exception handling through intentional error testing
Debug Console evaluation

## Mini Debug Project
A consolidated Python mini-project was used to practice all debugging concepts in a single workflow.

### Concepts Covered
Loops
Functions
Conditional logic
Exception handling
Debug flow analysis

### Outcome
Ability to debug real-world Python logic confidently inside Visual Studio Code.

## Module Coverage Summary

| Day | Topic                                    | Status       |
|----:|------------------------------------------|--------------|
| 1   | VS Code Setup & Workspace                | ✅ Completed |
| 2   | Editor Skills & File Handling            | ✅ Completed |
| 3   | Jupyter + Virtual Environment Integration| ✅ Completed |
| 4   | Debugging (Beginner → Intermediate)      | ✅ Completed |

## Skills Achieved After Module 01
After completing this module, the learner can:
- Configure VS Code like a professional developer
- Maintain clean and scalable project structures
- Use Python virtual environments correctly
- Run Python scripts and Jupyter notebooks inside VS Code
- Debug Python applications step-by-step
- Identify and fix runtime errors confidently
- Use `launch.json` for repeatable debugging workflows
- Treat VS Code as a long-term professional development platform

## Final Note
Module 01 is intentionally environment-heavy, because weak foundations create problems in later stages.
With this module completed, all future learning becomes faster, cleaner, and more efficient.
This module completes the foundational layer of the *VS Code – Zero to Hero* journey.

```
