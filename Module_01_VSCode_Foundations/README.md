# 📘 Module 01 — VS Code Foundations

VS CODE MASTER PROGRAM – Pilot Edition V1.0
📌 Module Status: COMPLETED ✅
🧭 Module Objective

Module 01 establishes a rock-solid professional foundation for using Visual Studio Code as a full-fledged development environment.
The focus is not just on editing code, but on building a production-ready workspace with correct environment setup, debugging capability, and reproducible configuration.
This module prepares the learner to confidently move into advanced productivity, Git workflows, automation, and cloud-integrated development in later modules.

🗂️ Workspace & Environment Setup
📁 Workspace Root
project_template/
📁 Standard Folder Structure
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

✔ Purpose of Structure
Ensures scalable project organization
Separates notes, code, research, and projects
Supports long-term multi-module learning
Mirrors professional industry workflows

🧪 Python Environment Configuration
🔹 Virtual Environment
Python Virtual Environment (venv) created inside workspace
Prevents dependency conflicts
Enables reproducible execution

🔹 Interpreter Configuration
VS Code interpreter set to:
venv/Scripts/python.exe

🔹 Verified Using:
python --version
where python

📓 Jupyter Notebook Integration
✔ Achievements
Jupyter installed inside venv
Kernel linked to VS Code
Notebook execution inside workspace
Markdown + LaTeX rendering enabled
✔ Skills Covered
Code cells vs Markdown cells
Kernel selection
Notebook execution flow
Data inspection inside VS Code

🧩 VS Code Extensions Installed
Core extensions used throughout Module 01:
Python (Microsoft)
Jupyter
GitLens
Prettier
JSON (with Comments)
SQL / Database tools (pre-installed for later modules)
All extensions verified and tested inside the workspace.

🛠️ Debugging Configuration (Key Highlight of Module 01)
📄 .vscode/launch.json
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

✔ Debug Features Mastered
Normal breakpoints
Conditional breakpoints
Logpoints
Step Over / Step Into / Step Out
Watch variables
Call Stack inspection
Exception handling (intentional error testing)
Debug Console evaluation

🧪 Mini Debug Project
A consolidated Python mini-project was used to practice all debugging concepts in one place.
✔ Project Covered:
Loops
Functions
Conditional logic
Exception handling
Debug flow analysis
✔ Outcome:
Ability to debug real-world Python logic confidently inside VS Code.

📅 Module Coverage Summary
Day Topic Status
Day 1 VS Code Setup & Workspace ✅ Completed
Day 2 Editor Skills & File Handling ✅ Completed
Day 3 Jupyter + venv Integration ✅ Completed
Day 4 Debugging (Beginner → Intermediate) ✅ Completed

🎯 Skills Achieved After Module 01
After completing this module, the learner can:
Configure VS Code like a professional developer
Maintain clean project structures
Use virtual environments correctly
Run Python and Jupyter workflows inside VS Code
Debug Python applications step-by-step
Understand and fix runtime errors confidently
Use launch.json for repeatable debugging
Work with VS Code as a long-term professional tool

🚀 Next Module
▶ Module 02 — VS Code Navigation & Productivity Boost
Focus areas:
Command Palette mastery
Fast file navigation
Multi-cursor editing
Search & refactor workflows
Snippets & productivity tricks
🏁 Final Note
Module 01 is intentionally environment-heavy because a weak foundation leads to problems later.  
With this module completed, all future learning becomes faster, cleaner, and more efficient.
With this module completed, all future learning becomes faster, cleaner, and more efficient.
