# pm-skills-gemini

**AI-powered Product Management workflows for Gemini CLI**

`pm-skills-gemini` brings the powerful frameworks from
[pm-skills](https://github.com/phuryn/pm-skills) into **Gemini CLI workflows**.

Instead of writing prompts manually, you can run structured **Product Management workflows** directly from the command line.

---

# Why pm-skills-gemini?

Most AI tools generate text.

Product managers need **structured thinking**.

This project transforms AI into a **PM workflow engine**.

Example workflows:

* Product discovery
* Product strategy
* PRD writing
* Launch planning
* North star metric design

---

# Features

* 65 Product Management skills
* 36 workflow commands
* Gemini CLI integration
* Project-local installation
* Open-source workflow system

---

# Installation

Clone the repository:

```bash
git clone https://github.com/YOURNAME/pm-skills-gemini
cd pm-skills-gemini
```

Install the skills:

```bash
./install.sh
```

This will install all pm-skills frameworks into:

```
.gemini/
 ├ commands
 └ skills
```

---

# Usage

Run Gemini CLI inside the project:

```bash
gemini
```

Then execute commands.

---

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
* monetization

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
* no global config pollution

---

# Upstream Project

This project builds on:

https://github.com/phuryn/pm-skills

Credits to the original authors.

---

# Roadmap

Future plans:

* workflow visualization
* PM workflow API
* runchr integration
* VSCode extension

---

# License

MIT
