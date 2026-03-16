# pm-skills-gemini

![License](https://img.shields.io/badge/license-MIT-blue)
![Gemini CLI](https://img.shields.io/badge/Gemini-CLI-green)
![PM Skills](https://img.shields.io/badge/PM%20Skills-65-orange)

**AI-powered Product Management workflows for Gemini CLI**

`pm-skills-gemini` brings the powerful frameworks from
[pm-skills](https://github.com/phuryn/pm-skills) into **Gemini CLI workflows**.

Instead of writing prompts manually, you can run structured **Product Management workflows** directly from the command line.

---

# Why pm-skills-gemini?

Most AI tools generate text.

Product managers need **structured thinking**.

This project transforms AI into a **PM workflow engine**.

Example workflows include:

* Product discovery
* Product strategy
* PRD writing
* Launch planning
* North star metric design

Instead of crafting prompts manually, you can run a structured workflow like this:

```
/discover idea
→ assumptions
→ experiments
→ insights
```

---

# Features

* 65 Product Management skills
* 36 workflow commands
* Gemini CLI integration
* Project-local installation
* Open-source workflow system

---

# Prerequisites

Before using this project you need:

* **Node.js 18+**
* **Gemini CLI**

If you already have Gemini CLI installed, you can skip the next section.

---

# Install Gemini CLI

Install Gemini CLI globally using npm:

```bash
npm install -g @google/gemini-cli
```

Start the CLI:

```bash
gemini
```

Follow the login instructions in your browser to authenticate with your Google account.

Once authenticated you can exit the CLI.

---

# Installation

Clone the repository:

```bash
git clone https://github.com/runchr-com/pm-skills-gemini
cd pm-skills-gemini
```

Install the PM workflows:

```bash
./install.sh
```

This installs the skills and commands inside the project directory:

```
.gemini/
 ├ commands
 └ skills
```

Unlike many CLI tools, this project intentionally avoids global installation.

---

# Quick Start

Start Gemini CLI inside the project directory:

```bash
gemini
```

Then run one of the workflow commands.

Example:

```bash
/discover AI meeting summarizer
```

---

# Example Workflows

## Product Discovery

```bash
/discover AI meeting summarizer
```

Workflow:

* brainstorm ideas
* identify assumptions
* prioritize risks
* design experiments

---

## Product Strategy

```bash
/strategy B2B collaboration platform
```

Workflow:

* product vision
* product strategy
* business model
* monetization strategy

---

## Write PRD

```bash
/write-prd AI customer support automation
```

Workflow:

* problem framing
* user stories
* PRD draft
* success metrics

---

## Launch Planning

```bash
/plan-launch AI code review tool
```

Workflow:

* ICP definition
* positioning
* messaging
* GTM strategy
* launch plan

---

## North Star Metric

```bash
/north-star creator marketplace
```

This workflow helps define the key metric that drives product growth.

---

# Project Structure

```
pm-skills-gemini
│
├ .gemini
│   ├ commands
│   └ skills
│
├ scripts
│   └ sync-upstream.sh
│
├ install.sh
├ pm-skills-manifest.json
└ README.md
```

---

# Why project-local installation?

Many CLI tools install commands globally.

We intentionally keep everything inside the repository.

Benefits:

* reproducible workflows
* version control
* team collaboration
* no global configuration conflicts

---

# Upstream Project

This project builds on the excellent **pm-skills** framework.

Original project:

https://github.com/phuryn/pm-skills

Credits to the original authors and contributors.

---

# FAQ

### Do I need Gemini CLI?

Yes. This project extends Gemini CLI with product management workflows.

### Does this modify my global Gemini settings?

No. Everything is installed locally inside the repository.

### Can teams use this together?

Yes. Because workflows are stored in the repository, teams can share the same setup.

---

# Roadmap

Future plans include:

* workflow visualization
* PM workflow API
* runchr integration
* VSCode extension
* workflow chaining

---

# About runchr

This project is part of the broader **runchr ecosystem**.

runchr explores tools for builders, product managers, and AI-native workflows.

More projects coming soon.

---

# License

MIT
