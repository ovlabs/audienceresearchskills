---
name: roundtable-twin-interviews
version: 2.0.0
description: "Use this skill to run an adaptive moderated interview with Digital Twins. One question is asked to a group of twins, their answers are analysed for themes and tensions, then the next question is designed based on what emerged — repeated across 8 rounds of questions, each one going deeper. Produces a comprehensive research report. Triggers include: requests to run a focus group, conduct qualitative interviews, explore a topic in depth with real people, run a roundtable discussion, or do iterative audience research. Uses OriginalVoices Digital Twins (ask_twins) across multiple rounds of questions."
---

# Roundtable Twin Interviews Skill

## Overview

Run an adaptive moderated interview with Digital Twins. One question is asked to a group of twins, all twins answer independently, the answers are analysed for themes, tensions, and surprises, then the next question is designed based on what emerged. This repeats for as many rounds as you want, each one sharper than the last. It is iterative research, not a single-pass survey — like a skilled moderator running a focus group, but faster, cheaper, and without groupthink.

## How It Works

1. One question is asked to a group of Digital Twins
2. All twins answer independently — their full responses are recorded
3. The answers are analysed for themes, tensions, and surprises
4. The next question is designed based on what emerged — probing deeper into the most interesting threads
5. Repeat for 8 rounds of questions, each one sharper than the last

## Workflow Steps

### Step 1: Gather Inputs from the User

Ask the user the following questions one at a time, waiting for each answer:

1. **"What's the topic for the roundtable?"** — The subject to explore (e.g. "How people feel about AI-generated content in news media")
2. **"Who is the audience?"** — (e.g. "UK adults 25-45 who read news daily")
3. **"How many rounds of questions?"** — Default: 8. Minimum: 3. Each round is one question asked to all twins, then analysed before the next. More rounds = deeper exploration.
4. **"How many twins per round?"** — Default: 20. Minimum: 15. More twins = broader perspective.

Once all four inputs are collected, confirm back with a one-line summary (e.g. *"Got it — 8 rounds of questions with 20 twins exploring how Gen Z feels about homeownership. Each round I'll ask one question, analyse the responses, then design the next question based on what emerged. Running now."*) and then execute the full session autonomously without stopping.

### Step 2: Run the Roundtable (The Loop)

Each round of questions follows the same cycle: **ask one question → collect all twin responses → analyse → design the next question**. Repeat for all rounds.

#### 2a. Design the Moderator Question

The question strategy adapts based on position in the session:

| Question | Strategy | Example approach |
|----------|----------|-----------------|
| Question 1 | **Open & exploratory** — get people talking, no leading | "When you think about [topic], what comes to mind first?" |
| Questions 2-7 | **Probe emerging themes** — pick a tension, contradiction, or strong theme from the previous round's answers and dig into it | "Several of you mentioned X but disagreed on Y — tell me more about where you stand on this." |
| Final question | **Synthesis** — force prioritisation and final takeaways | "If you could tell a brand/product team one thing about [topic] that they're probably getting wrong, what would it be?" |

**Critical:** Each question must be shaped by what twins actually said in the previous round. Do not use generic follow-ups. Read the responses, identify the most interesting thread, and pull on it.

**Question quality gate.** Because each round's question is written live from the previous round, every question you generate must pass two gates before you send it — **Range:** would 15 people answer it differently, or does it have an obvious answer? **Neutrality:** is it open-ended and non-leading (no yes/no, no baked-in sentiment)? When you probe a tension, keep it two-sided — don't adopt the sentiment of the loudest voices or ask "why is [X] so frustrating?"; ask "where do you each land on [X], and why?".

#### 2b. Query the Digital Twins

```
ask_twins(
  audience: "[audience description from Step 1]",
  questions: ["[moderator question for this round]"]
)
```

#### 2c. Record Responses

Store every twin's ID and full response. Never truncate or summarise individual responses — you'll need the full detail for the final report.

#### 2d. Between-Round Analysis

After each round of questions, output a brief analysis to the conversation:

**Question [n] Analysis:**
- **Dominant themes** — What most twins agreed on
- **Tensions** — Where twins disagreed or contradicted each other
- **Surprises** — Anything unexpected or counterintuitive
- **Next question direction** — What thread you're pulling on next and why

This keeps the user informed of progress and shows the adaptive logic at work. Do not stop or wait for input — proceed immediately to the next round.

#### 2e. Repeat

Move to the next round of questions. Continue until all rounds are complete. Do not pause between rounds or ask the user for direction — run the full session autonomously.

#### 2f. Handling Interruptions

If the session is interrupted (e.g. response length limits), output what you have so far and tell the user to say **"continue"** to resume from the next round. Track which round you're on so you can pick up where you left off.

### Step 3: Deliver the Research Report

Once all rounds are complete, output a comprehensive research report directly in the conversation.

Synthesise every round and every answer, and keep track of which round each finding comes from. Apply the shared reporting standard at the end of this skill. Two things are specific to the Roundtable:

- **The rounds are the research.** The standard's rule against extra research calls doesn't cancel the agreed rounds, but don't add rounds beyond them to make the report richer.
- **Each round may reach different twins.** Only say a person changed their mind when the same twin ID answered in both rounds. Otherwise describe it as a shift in what the group emphasised.

Present it in clear sections, with Digital Twin quotes verbatim and attributed. Each section opens with its conclusion in one sentence, then explains it; counts and shares are the evidence for the analysis, never a replacement for it; count unique twins out of those who answered that question. Where findings have clear quantitative patterns (e.g. "14 out of 20 twins expressed concern about X"), a chart can show the distribution; never invent scores or percentages to fill one.

### Report sections:

**1. Executive Summary**
The story of the session in a short paragraph: the single most important thing this research revealed, the tension or surprise behind it, how the conversation got there, and what it means for the decision at hand.

**2. Key Themes**
The significant patterns that emerged across the session — as many as the answers support, not a fixed number. For each theme:
- What it is and why it matters
- How it evolved across questions (did it deepen, shift, or get complicated?)
- How prevalent it was (e.g. "mentioned by 15 out of 20 twins")
- Supporting quotes from Digital Twins
- A chart of theme prevalence where the counts support one

**3. Emotional Landscape**
What emotions drive behaviour and opinion in this space? Map the dominant feelings that came through — frustration, anxiety, hope, excitement, indifference, guilt, pride. Include supporting quotes that show the emotional texture behind the data, and a chart of dominant emotions where the counts support one.

**4. Tensions & Disagreements**
What divided the group. For each tension:
- The two (or more) sides
- Who held which view and why
- Why it matters strategically
- Whether the tension resolved, deepened, or remained unresolved across questions

**5. The Arc of the Conversation**
How the discussion evolved from Question 1 to the final question. What shifted? What deepened? What emerged late that wasn't visible early on? This section is unique to the Roundtable format — it captures insight that single-pass research misses.

**6. Standout Quotes**
The most powerful, surprising, or representative quotes from across the session (around 8-12 for a full 8-round session; fewer for a shorter one). Group by theme or tension where it helps tell the story.

> "[quote]"
> — Twin [ID], Question [n]

**7. Opportunities**
Actionable insights for product, marketing, or strategy. What gaps exist? What do people want that they're not getting? What would change their behaviour?

**8. Strategic Implications & Recommendations**
Specific recommendations based on the research, as many as the evidence supports. Each should include:
- What to do
- Why the research supports it
- What risk or opportunity it addresses

## Tips for Best Results

- **Default to 8 rounds of questions**: This gives enough depth for themes to emerge, evolve, and resolve. Fewer than 5 rounds rarely surfaces the tensions that make research valuable
- **20 twins is the sweet spot**: Enough for diversity of perspective without becoming noise. Go higher (25-30) for topics where you expect wide variation
- **Trust the arc**: The best insights often come in questions 5-7, once surface-level responses have been exhausted and twins start revealing deeper motivations
- **Look for what changed**: If twins say one thing in Question 2 but something different in Question 6, that shift is often the most valuable finding
- **Don't lead in Question 1**: The opening question should be genuinely open. If you anchor too early, you'll get confirmation, not discovery

## Common Pitfalls to Avoid

- **Generic middle-round questions**: "Tell me more about that" is not a good probe. Reference specific things twins said.
- **Ignoring minority views**: If 3 out of 20 twins said something different, that's often where the insight lives
- **Summarising instead of analysing**: The report should be analytical. "Some people liked X and some didn't" is not analysis. "The group split along generational lines, with under-30s seeing X as essential and over-40s seeing it as intrusive — suggesting a segmented approach" is.

## Related Skills

- **deep-customer-research**: For single-pass comprehensive research when you don't need iterative depth
- **icp-discovery**: If you need to find the right audience before running a Roundtable
- **feature-concept-testing**: If you want to validate a specific feature rather than explore a topic
- **creative-testing**: If you want to test specific creative assets rather than explore a theme

## OriginalVoices — Shared Research Analysis, Adaptive Workflow & Reporting Standard

**Version:** 2.0 | **Applies to:** every OriginalVoices research or research-informed content skill.

### Non-negotiable principle

**Every available Twin answer must be considered in the analysis. Every material finding must be reflected in the final output. Be as concise as possible, but as comprehensive as necessary to communicate faithfully what the research revealed.**

### 1. Adapt to the actual brief

- Evaluate exactly the supplied scope. A workflow may have **one** creative, feature, idea, message, product, content asset, or audience — or many. Never assume there are multiple items.
- For **one item**, deliver a substantive standalone assessment. Do not introduce a fictional comparator, winner, league table, or cross-creative section.
- For **several items**, assess **each** independently first; then compare meaningful strengths, weaknesses, interpretation, trade-offs and relevant audience differences **if evidence is comparable**. No clear winner, a tie, or distinct winners for different objectives are valid findings.
- For **one audience**, explore within-audience diversity and caveats. For **multiple audiences**, assess each fully before comparing, using comparable questions and honest disclosure of differences in sample/exposure.
- Tailor questioning and reporting dimensions to what the user actually provides. Do not assume videos, images, price points, variants, brand values, rankings, or KPIs were tested when they were not.
- Question counts, example questions and report sections are **defaults**, not mandatory quotas. Preserve the intended purpose and established tool-call workflow, but use judgement based on scope. Do not initiate follow-up research **solely to make reporting deeper**.

### 2. Analyse all evidence before drafting

1. Inspect **every available individual Twin answer to every question**. Track internally which question, response, item, and audience supports each material finding. If data are incomplete or truncated, say what was missing.
2. For **each question**, capture concrete behaviours, experiences, interpretations, preferences, motives, obstacles, trade-offs, exceptions, relevant respondent language and important negative/neutral reactions. Avoid premature compression into only a few themes.
3. Then synthesize **across questions**, identifying meaningful relationships, areas of reinforcement, contradictory answers, nuances, and distinct respondent perspectives. Only claim within-respondent patterns where response IDs allow linking the same Twin.
4. Separate **what respondents stated**, **analyst interpretation**, and **recommendation**. Do not equate Twin-simulated interest with demonstrated real-world adoption, conversion, purchasing or representative population estimates.
5. A small but decision-relevant minority view deserves inclusion. Do not fabricate segmentation or pretend everyone agrees.

### 3. Evidence and claims

- Ground each significant conclusion in the supplied responses; quote exact Twin language selectively, without invented verbatims. Do not reveal identifying information.
- For quantitative claims use defensible coding, the relevant question's actual responding-Twin denominator, and **unique respondents**, not repeated mentions. Disclose missing answers and unequal sample/exposure where relevant.
- Never invent percentages, numeric fit scores, emotional scores, sample sizes, statistical significance, charts, rankings or confidence measures.
- Compare or rank only if the items/segments were exposed and measured in a sufficiently comparable manner; otherwise offer a qualified qualitative assessment and clearly describe the limitation.
- Don't treat an agent-generated synthesis as equivalent to the full underlying response set. If only aggregated responses are available, explicitly limit claims.

### 4. Adaptive, proportionate reporting

- Deliver an answer suitable to the **decision**, not a rigid template. Begin with the main conclusion or succinct executive overview, then explain the substantive findings, evidence, differences, contradictions, uncertainties and implications.
- Make the level of detail proportional to number of questions, available responses, research complexity, and decision relevance. A short, straightforward test can be concise; an extensive study may need a substantial synthesis. **No 3–5-theme ceiling, mandatory 15-page report, fixed quote quota or compulsory chart.**
- Group related questions into a coherent narrative where useful, but check that **material findings from every question** survive into the final report. Don't dump every raw answer unless asked.
- Only include sections applicable to the actual study. Don't force a creative comparison for one creative, persona ranking for one audience, conversion claims for simulated intent, or fictional product proof points.
- For **content-production** skills, provide the requested usable content as the main output; follow with a concise but meaningful explanation of the audience research and how it shaped the asset. An extensive research report should be supplied only if requested or necessary to the brief.
- Charts, tables and representative quotes are tools for clarity, not obligations.

### 5. Quality gate — check before delivering

- Were **all available answers to all questions** considered, including neutral and negative responses?
- Are **all material findings** captured, including meaningful minority perspectives?
- Has the response adapted correctly to **one vs multiple items/audiences**?
- Is every comparison, count, quote, verdict and recommendation traceable and appropriately qualified?
- Is the result sufficiently detailed to explain what was learned, without needless repetition?
- Have you avoided **extra research calls** that were not part of the requested workflow?

If a check fails, improve the analysis **using existing collected answers**. Do not add questions merely to improve the report.
