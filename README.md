# pm-skills-gemini

![License](https://img.shields.io/badge/license-MIT-blue)
![Gemini CLI](https://img.shields.io/badge/Gemini-CLI-green)
![PM Skills](https://img.shields.io/badge/PM%20Skills-65-orange)
![Workflows](https://img.shields.io/badge/Commands-36-purple)

AI-powered Product Management workflows for Gemini CLI.

`pm-skills-gemini` brings the structured frameworks from PM skills into Gemini CLI so you can run product workflows with simple slash commands instead of writing long prompts by hand.

🌐 **Languages**

- English (default)
- [한국어](./README_KO.md)

---

## What this project is

Most AI tools are good at generating text.
Product work usually needs more than text:

- clearer framing
- repeatable workflows
- structured outputs
- better decision support

`pm-skills-gemini` turns Gemini CLI into a reusable PM workflow system. After installation, you can call commands like `/discover`, `/write-prd`, or `/plan-launch` from anywhere.

---

## Who this is for

This project is especially useful for:

- product managers
- founders and indie hackers
- operators and strategy teams
- builders validating new ideas
- anyone who wants structured PM thinking inside Gemini CLI

---

## What you can do

With `pm-skills-gemini`, you can:

- discover and validate product ideas
- create PRDs, user stories, and test scenarios
- analyze markets, competition, pricing, and positioning
- prepare interviews, launch plans, and OKRs
- summarize meetings and structure messy inputs
- draft PM-adjacent operational documents such as NDAs or privacy policies

---

## Prerequisites

Before installing this project, make sure you have:

- Node.js 18+
- Gemini CLI
- a Google account for Gemini CLI sign-in

---

## Install Gemini CLI

Install Gemini CLI globally:

```bash
npm install -g @google/gemini-cli
```

Start Gemini CLI once:

```bash
gemini
```

A browser window will open so you can sign in with your Google account.
After the authentication is complete, you can exit the CLI.

---

## Install pm-skills-gemini

Clone the repository:

```bash
git clone https://github.com/runchr-com/pm-skills-gemini
cd pm-skills-gemini
```

Run the installer:

```bash
chmod +x install.sh
./install.sh
```

This installs commands and skills into your global Gemini directory so you can use them from any folder.

Typical global structure:

```text
~/.gemini/
├── commands/
└── skills/
```

---

## Quick start

Open Gemini CLI:

```bash
gemini
```

Then try one of these:

```bash
/discover AI meeting summarizer
```

```bash
/write-prd AI customer support automation
```

```bash
/plan-launch creator analytics tool
```

---

## How to use commands

Each command is designed to trigger a more structured workflow than a normal freeform prompt.

General pattern:

```bash
/<command> <topic>
```

Examples:

```bash
/discover AI bookmark manager
```

```bash
/strategy B2B collaboration platform
```

```bash
/pricing API-first analytics product
```

Tips:

- keep the topic short and clear
- start with a product, feature, market, or problem statement
- add context in a second message if needed
- use commands in sequence when moving from idea to execution

---

## Recommended workflow for new users

A simple end-to-end flow:

### 1. Explore the idea

```bash
/discover AI bookmark manager
```

### 2. Define positioning and strategy

```bash
/strategy AI bookmark manager
/value-proposition AI bookmark manager
/business-model AI bookmark manager
```

### 3. Write the product plan

```bash
/write-prd AI bookmark manager
/write-stories AI bookmark manager
/plan-okrs AI bookmark manager
```

### 4. Prepare execution and launch

```bash
/test-scenarios AI bookmark manager
/plan-launch AI bookmark manager
/setup-metrics AI bookmark manager
```

---

## Complete command guide

Below is a complete guide to every command currently provided by the repository.

---

### `/analyze-cohorts`

Analyze cohort behavior over time.

**Use it for:** retention review, activation patterns, repeat usage trends, customer lifecycle analysis.

**Typical output:** cohort breakdowns, trend interpretation, possible causes, suggested follow-up questions.

**Example:**

```bash
/analyze-cohorts signup and 30-day retention data for a B2B SaaS product
```

---

### `/analyze-feedback`

Structure and summarize user feedback.

**Use it for:** support tickets, interview notes, app reviews, survey responses, feature complaints.

**Typical output:** themes, pain points, feature requests, sentiment signals, prioritization suggestions.

**Example:**

```bash
/analyze-feedback user feedback for a note-taking app
```

---

### `/analyze-test`

Analyze an experiment or test result.

**Use it for:** A/B tests, pilots, launch experiments, messaging tests, funnel experiments.

**Typical output:** hypothesis review, result interpretation, risks, caveats, recommended next steps.

**Example:**

```bash
/analyze-test pricing experiment results for a freemium SaaS
```

---

### `/battlecard`

Create a competitive battlecard.

**Use it for:** sales enablement, competitor comparison, objection handling, market positioning.

**Typical output:** competitor strengths, weaknesses, likely objections, response angles, positioning guidance.

**Example:**

```bash
/battlecard compare our AI search product against Perplexity
```

---

### `/brainstorm`

Generate and structure ideas quickly.

**Use it for:** new features, startup ideas, problem framing, angle exploration, growth ideas.

**Typical output:** idea clusters, directions, opportunities, constraints, follow-up questions.

**Example:**

```bash
/brainstorm AI products for small retail stores
```

---

### `/business-model`

Explore business model options.

**Use it for:** monetization design, marketplace economics, SaaS packaging, services-to-software transitions.

**Typical output:** revenue model options, pricing logic, cost assumptions, risks, recommended model direction.

**Example:**

```bash
/business-model workflow automation product for legal teams
```

---

### `/competitive-analysis`

Analyze competitors in a structured format.

**Use it for:** category mapping, market entry, differentiation, alternatives review.

**Typical output:** competitor landscape, positioning map, strengths, weaknesses, whitespace opportunities.

**Example:**

```bash
/competitive-analysis AI meeting assistant market
```

---

### `/discover`

Run a product discovery workflow from idea to assumptions and experiments.

**Use it for:** early-stage ideas, concept validation, opportunity framing, deciding what to test first.

**Typical output:** problem framing, target users, assumptions, risks, possible experiments, opportunity areas.

**Example:**

```bash
/discover AI meeting summarizer
```

---

### `/draft-nda`

Draft a basic NDA-style document.

**Use it for:** early partnership conversations, contractor discussions, light pre-legal document prep.

**Typical output:** draft NDA sections, confidentiality clauses, exclusions, term structure, review notes.

**Example:**

```bash
/draft-nda mutual NDA for a product design contractor
```

**Note:** always have legal counsel review important legal documents before use.

---

### `/generate-data`

Generate sample or mock data.

**Use it for:** demos, test environments, analytics examples, UI prototypes, SQL testing.

**Typical output:** synthetic tables, record examples, field suggestions, edge cases.

**Example:**

```bash
/generate-data sample subscription events for a SaaS billing dashboard
```

---

### `/growth-strategy`

Develop a growth strategy.

**Use it for:** acquisition planning, activation, retention, loops, channel prioritization.

**Typical output:** growth levers, channel options, funnel ideas, experiments, measurement suggestions.

**Example:**

```bash
/growth-strategy growth plan for a creator analytics tool
```

---

### `/interview`

Prepare a user interview plan or script.

**Use it for:** discovery interviews, validation calls, JTBD interviews, usability sessions.

**Typical output:** interview goals, question flows, probes, anti-bias notes, synthesis suggestions.

**Example:**

```bash
/interview interview script for power users of a team wiki product
```

---

### `/market-product`

Connect a market need to a product concept.

**Use it for:** market-to-product mapping, identifying fit, clarifying what to build for whom.

**Typical output:** target segment, pain point, product angle, fit logic, assumptions.

**Example:**

```bash
/market-product AI workflow tool for accountants
```

---

### `/market-scan`

Run a broad market scan.

**Use it for:** market understanding, adjacent category review, trend scanning, opportunity assessment.

**Typical output:** category overview, trends, competitors, demand signals, opportunity notes.

**Example:**

```bash
/market-scan tools for restaurant operations automation
```

---

### `/meeting-notes`

Turn rough discussion points into clean notes.

**Use it for:** stakeholder meetings, discovery sessions, internal reviews, syncs.

**Typical output:** summary, decisions, open questions, action items, next steps.

**Example:**

```bash
/meeting-notes product planning meeting about onboarding friction
```

---

### `/north-star`

Define a North Star Metric.

**Use it for:** growth alignment, product focus, executive reporting, team decision-making.

**Typical output:** candidate north star metrics, rationale, guardrail metrics, measurement notes.

**Example:**

```bash
/north-star creator marketplace
```

---

### `/plan-launch`

Create a launch plan.

**Use it for:** new feature launches, product launches, public beta planning, GTM sequencing.

**Typical output:** audience, positioning, messaging, channels, timeline, launch checklist.

**Example:**

```bash
/plan-launch AI code review tool
```

---

### `/plan-okrs`

Draft product or team OKRs.

**Use it for:** quarterly planning, team alignment, feature initiative goals, roadmap focus.

**Typical output:** objectives, key results, ownership ideas, success logic, review cadence notes.

**Example:**

```bash
/plan-okrs onboarding improvement initiative
```

---

### `/pre-mortem`

Run a pre-mortem before launch or execution.

**Use it for:** risk planning, failure-mode thinking, launch readiness, strategic caution.

**Typical output:** possible failure scenarios, causes, warning signs, mitigations, owner suggestions.

**Example:**

```bash
/pre-mortem launch of a new self-serve pricing plan
```

---

### `/pricing`

Explore pricing options and pricing logic.

**Use it for:** package design, monetization, willingness-to-pay thinking, SaaS tier design.

**Typical output:** pricing models, packaging options, value metrics, risks, testing suggestions.

**Example:**

```bash
/pricing AI document workflow product for SMBs
```

---

### `/privacy-policy`

Draft a privacy policy starter.

**Use it for:** early-stage product documentation, internal review drafts, website policy scaffolding.

**Typical output:** privacy policy sections, data collection wording, processing categories, review notes.

**Example:**

```bash
/privacy-policy SaaS product that stores user documents and analytics events
```

**Note:** always review with legal counsel before publishing.

---

### `/proofread`

Proofread and improve written content.

**Use it for:** docs, emails, product copy, launch posts, resumes, reports.

**Typical output:** corrected grammar, clearer wording, tone improvements, rewrite suggestions.

**Example:**

```bash
/proofread launch email for a beta waitlist
```

---

### `/research-users`

Structure user research or user segment investigation.

**Use it for:** personas, segment understanding, JTBD, user pain points, need validation.

**Typical output:** research angles, segment hypotheses, questions, patterns to investigate.

**Example:**

```bash
/research-users independent designers using async collaboration tools
```

---

### `/review-resume`

Review a resume and suggest improvements.

**Use it for:** resume feedback, clarity improvements, positioning stronger achievements.

**Typical output:** strengths, weaknesses, rewriting advice, structure suggestions, hiring-signal feedback.

**Example:**

```bash
/review-resume product manager resume for growth roles
```

---

### `/setup-metrics`

Define a product metrics framework.

**Use it for:** KPI setup, dashboard planning, launch measurement, health metric design.

**Typical output:** primary metrics, supporting metrics, guardrails, definitions, measurement guidance.

**Example:**

```bash
/setup-metrics new user onboarding funnel for a SaaS product
```

---

### `/sprint`

Plan or structure sprint work.

**Use it for:** sprint scope, prioritization, planning rituals, execution focus.

**Typical output:** sprint goals, task framing, risks, sequencing, planning suggestions.

**Example:**

```bash
/sprint next sprint for onboarding redesign work
```

---

### `/stakeholder-map`

Map stakeholders and influence relationships.

**Use it for:** alignment planning, executive communication, change management, internal politics.

**Typical output:** stakeholder groups, influence/interest map, concerns, engagement tactics.

**Example:**

```bash
/stakeholder-map enterprise feature rollout affecting sales, support, and security teams
```

---

### `/strategy`

Develop a product strategy.

**Use it for:** vision setting, strategic choices, market direction, longer-term planning.

**Typical output:** product vision, strategic pillars, market focus, trade-offs, decision principles.

**Example:**

```bash
/strategy B2B collaboration platform
```

---

### `/tailor-resume`

Tailor a resume for a specific role.

**Use it for:** job applications, targeted rewrites, relevance improvement.

**Typical output:** adjusted summary, achievement rewrites, keyword alignment, fit recommendations.

**Example:**

```bash
/tailor-resume product manager resume for an AI startup role
```

---

### `/test-scenarios`

Create product or feature test scenarios.

**Use it for:** QA planning, release readiness, acceptance checks, edge-case thinking.

**Typical output:** test cases, happy path, edge cases, failure modes, validation checklist.

**Example:**

```bash
/test-scenarios team invitation flow for a B2B SaaS app
```

---

### `/transform-roadmap`

Restructure or improve a roadmap.

**Use it for:** roadmap cleanup, executive presentation, initiative grouping, prioritization reframing.

**Typical output:** roadmap themes, sequencing suggestions, narrative improvements, clearer structure.

**Example:**

```bash
/transform-roadmap roadmap with mixed platform, growth, and infrastructure items
```

---

### `/triage-requests`

Triage incoming requests in a structured way.

**Use it for:** feature requests, stakeholder asks, support escalations, internal demand management.

**Typical output:** categorization, urgency, impact, trade-offs, recommendation by request type.

**Example:**

```bash
/triage-requests incoming requests from sales and customer success
```

---

### `/value-proposition`

Craft or sharpen a value proposition.

**Use it for:** homepage copy, positioning, product messaging, investor narrative, GTM prep.

**Typical output:** target user, problem, promise, proof, differentiation, messaging variations.

**Example:**

```bash
/value-proposition AI documentation assistant for engineering teams
```

---

### `/write-prd`

Generate a structured Product Requirements Document.

**Use it for:** turning ideas into execution documents, feature planning, stakeholder alignment.

**Typical output:** overview, problem statement, goals, requirements, flows, metrics, scope notes.

**Example:**

```bash
/write-prd AI customer support automation
```

---

### `/write-query`

Generate or improve a query, typically for analytics or data work.

**Use it for:** SQL drafting, data exploration, report setup, event analysis.

**Typical output:** query draft, assumptions, logic explanation, possible modifications.

**Example:**

```bash
/write-query SQL to calculate weekly active teams and retention by signup month
```

---

### `/write-stories`

Generate user stories.

**Use it for:** backlog creation, PRD follow-up, feature scoping, acceptance-oriented thinking.

**Typical output:** user stories, job framing, acceptance criteria ideas, edge cases.

**Example:**

```bash
/write-stories AI note-taking app
```

---

## Which commands should I use first?

If you are new, start with these:

- `/discover` for idea discovery
- `/strategy` for strategic framing
- `/write-prd` for turning ideas into a plan
- `/write-stories` for execution detail
- `/plan-launch` for launch prep
- `/north-star` and `/setup-metrics` for measurement

---

## Updating

To update after pulling the latest repository changes:

```bash
git pull
./install.sh
```

Reinstalling overwrites previously installed commands and skills with the latest version from the repository.

---

## Uninstall

```bash
chmod +x uninstall.sh
./uninstall.sh
```

This removes the commands and skills that were installed by this project.

---

## Project structure

```text
pm-skills-gemini/
├── commands/
├── scripts/
│   └── sync-upstream.sh
├── install.sh
├── uninstall.sh
├── pm-skills-manifest.json
└── README.md
```

---

## Why global installation?

Global installation is optimized for speed and convenience.

Benefits:

- use commands from any directory
- avoid repeated per-project setup
- keep your PM workflows available everywhere
- ideal for solo builders and fast-moving workflows

Trade-offs:

- less version isolation
- possible command conflicts if you install other global command sets

---

## FAQ

### Do I need Gemini CLI?

Yes. This project extends Gemini CLI.

### Do I need an API key?

No, not if you use Gemini CLI sign-in with Google.

### Does this change my global Gemini setup?

Yes. It installs commands and skills into `~/.gemini`.

### Can I use these commands from any folder?

Yes. The project is designed for global installation.

### Should I trust NDA or privacy policy output as final legal text?

No. Treat those commands as drafting aids and have a qualified legal professional review the final text.

---

## Upstream project

This project builds on the original `pm-skills` framework.

Upstream project:

- https://github.com/phuryn/pm-skills

---

## License

MIT
