---
name: creative-testing
version: 2.0.0
description: "Use this skill to test and validate creative concepts — ads, copy, taglines, scripts, packaging — with real audience feedback before spending budget. Triggers include: requests to test ad concepts, validate marketing copy or taglines, compare creative directions, get audience reactions to campaign ideas, or pre-test scripts or email copy. Tests one concept on its own or compares up to 10-12 in a single session. Uses OriginalVoices Digital Twins (ask_twins) to gather honest gut reactions from target audiences."
---

# Creative Testing Skill

## Overview

Test and validate creative concepts — ads, marketing copy, taglines, scripts, packaging, or any creative output — using real audience feedback from OriginalVoices Digital Twins before committing budget. This workflow gathers honest gut reactions, identifies what resonates and why, and provides actionable recommendations for optimisation. It works for a single concept as well as for several: one concept gets a full assessment of its own, several get assessed one by one and then compared.

## Workflow Steps

### Step 1: Gather Creative Concepts & Audience

Collect from the user:
- **Creative concepts**: The ads, copy, taglines, scripts, or other creative to test (one, or up to 10-12)
- **Target audience**: Who are these for? Be specific — age, location, interests, lifestyle
- **Context** (optional): Where will these run? What's the campaign goal?

Test exactly what was supplied. Show each concept in full, as given, and never add a concept of your own to have something to compare against.

### Step 2: Design the Testing Approach

**Question quality — apply every rule to every question before sending.** The goal is the widest possible range of honest answers. A weak question is narrow, leading, or closed, so respondents converge on the same obvious reply and you learn nothing. Run each question through these rules:

1. **Anchor in a specific moment or behaviour, not an abstract definition.** Ask "Walk me through the last time…" or "Tell me about a time…", never "How do you define / think about [concept]?".
2. **Keep the valence open — never lead.** Don't presuppose the experience was good or bad. Banned phrasings: "what frustrates you most about…", "the time [X] annoyed you", "what do you love about this". Ask "how did it go?" or make it two-sided: "what worked well, and what didn't?".
3. **One idea per question.** Split anything double-barrelled into separate questions.
4. **Open-ended only — no yes/no, no multiple choice.** Every question invites How / What / Why / Walk me through / Tell me about. Never hand respondents a menu of options to pick from — let them supply their own.
5. **No socially-correct answers.** If almost everyone would answer the same way ("Is quality important?" → yes), reframe with a trade-off ("when is quality *not* worth it?").
6. **Ground intent in real behaviour.** Don't ask hypotheticals like "would you buy / click / switch?" — they inflate. Anchor in what they last actually did ("the last time you bought something like this, what tipped the decision?").
7. **Build in room to diverge.** Prefer a fork, trade-off, or spectrum ("what would make you — and what would hold you back?") over a flat single-answer prompt.

Before sending, check each question passes both gates — **Range:** could most people answer it the same way, or is there an obvious "right" answer? **Neutrality:** does it assume how they feel, or hand them the answer? If it fails either, rewrite it.

**Testing stimuli without bias.** When showing concepts, ads, taglines, or messaging options:
- Capture the **unaided gut reaction first** ("what's your first impression?") before asking for reasons.
- **Don't signal the hoped-for winner** — never reveal which option is the client's, and never ask "isn't this great?".
- When comparing options, **counterbalance the order** (don't always show A first) and always allow "neither / none of them".
- **Keep three questions separate:** comprehension ("what message do you take from this? who is it for?") → preference ("which do you prefer, and why?") → persuasion ("does it make you more or less likely to act?"). Never fuse them into one.

Choose the right approach based on the number of concepts:

**Single concept (1)** — Standalone assessment:
Ask about this concept alone. Don't ask which one wins, and don't invent alternatives to compare it with.

```
ask_twins(
  audience: "[detailed target audience]",
  questions: [
    "Here's [a concept]: '[full text of the concept]'. Reading it cold, give me your gut first impression in a few words — before you think about why.",
    "What's the main message you take from it, and who do you think it's meant for?",
    "Which parts of it connect with your own life, and which don't? What makes the difference?",
    "Which specific words, images, or ideas in it stand out to you — for better or worse — and why?",
    "What in it do you take at face value, and what would you need convincing of?",
    "Thinking about the last time an ad actually got you to do something, how does this one compare — what would you do next, if anything?",
    "Is there anything in it that feels off, confusing, or that you'd scroll past — and what exactly triggers that?",
    "What would you change to make it hit harder, and what should stay exactly as it is?"
  ]
)
```

**Small batch (2-4 concepts)** — Direct comparison:
Present all concepts together and ask for direct comparison.

```
ask_twins(
  audience: "[detailed target audience]",
  questions: [
    "Here are [number] [concepts]. Reading each one cold, give me your gut first impression of each in a few words — before you think about why.",
    "Concept A: '[full text of concept A]'. What's the main message you take from this, and who do you think it's meant for?",
    "Concept B: '[full text of concept B]'. What's the main message you take from this, and who do you think it's meant for?",
    "Concept C: '[full text of concept C]'. What's the main message you take from this, and who do you think it's meant for?",
    "Which of these pulls you in most, and which leaves you cold? Walk me through why — and if none of them grab you, say so.",
    "Thinking about the last time an ad actually got you to do something, does any of these come close — and does any make you less likely to bother? Which, and why?",
    "Is there anything in any of these that feels off, confusing, or that you'd scroll past — and what exactly triggers that?",
    "Take the one that landed best for you: what would you change to make it hit harder, and what should stay exactly as it is?"
  ]
)
```

**Large batch (5-12 concepts)** — Split into groups:
Break concepts into groups of 3-4, test each group with individual reaction prompts, then run a final ranking question across all.

```
# Group 1
ask_twins(
  audience: "[detailed target audience]",
  questions: [
    "Concept A: '[full text]'. Reading it cold, what message do you take from it, and how does it land with you?",
    "Concept B: '[full text]'. Reading it cold, what message do you take from it, and how does it land with you?",
    "Concept C: '[full text]'. Reading it cold, what message do you take from it, and how does it land with you?",
    "Of A, B, and C, which pulls you in most and which leaves you flat? Walk me through why — and if none land, say so."
  ]
)

# Group 2
ask_twins(
  audience: "[same audience]",
  questions: [
    "Concept D: '[full text]'. Reading it cold, what message do you take from it, and how does it land with you?",
    "Concept E: '[full text]'. Reading it cold, what message do you take from it, and how does it land with you?",
    "Concept F: '[full text]'. Reading it cold, what message do you take from it, and how does it land with you?",
    "Of D, E, and F, which pulls you in most and which leaves you flat? Walk me through why — and if none land, say so."
  ]
)

# Final ranking
ask_twins(
  audience: "[same audience]",
  questions: [
    "Here are the top concepts from our testing: [list finalists]. Thinking about how you've actually acted on ads like this before, which comes closest to getting you to [desired action], and which wouldn't move you at all? Why?",
    "Which of these feels like it actually gets someone like you — and which feels off or like it's trying too hard? What's the tell?",
    "Take whichever one landed best for you: what would you change to make it stronger, and what should stay untouched?"
  ]
)
```

**The final round is a new ask.** Its answers may come from different twins than the group rounds, so read it as a fresh reaction to the finalists, not as the same people ranking everything they saw. Leave it out when the group rounds already answer the question, and never add it only to have a ranking to report.

### Step 3: Analyse Results

Read every individual twin answer to every question before drawing conclusions, and keep track of which question and concept each finding comes from. Apply the shared reporting standard at the end of this skill throughout this step and the next.

For each concept, evaluate:

| Dimension | What to Assess |
|-----------|---------------|
| **Overall reaction** | How it landed on its own — and, with several concepts, how it compared with the others |
| **Message understood** | What twins took it to say and who for, against what was intended |
| **Strengths** | What specifically resonated — words, feelings, associations |
| **Weaknesses** | What fell flat, confused, or turned people off |
| **Emotional impact** | What feelings it triggered (excitement, curiosity, trust, indifference) |
| **Relevance** | How connected it felt to the audience's real life |
| **Credibility** | What they believed, and what they doubted |
| **Improvement suggestions** | What the audience would change |

**Look for patterns across respondents:**
- Consistent praise or criticism across multiple Twins
- Emotional language (strong signals) vs. polite but flat responses (weak signals)
- Specific use cases or scenarios people mention unprompted
- Minority reactions that would change the decision, even when few twins hold them

**One concept or several:**
- **One concept** is a complete test in itself. There is no winner to name: assess how it landed, what it communicated, and what to change.
- **Several concepts**: assess each on its own first, then compare. Compare only what was shown and asked in a comparable way. No clear winner, a tie, or different winners for different goals or audiences are all valid findings.
- Don't present a ranking pooled across separate groups as one contest unless the same twins saw the whole set. Don't say the order was counterbalanced unless it was.
- What twins say they would do is a signal to weigh, not proof of how the creative will perform.

### Step 4: Deliver the Creative Testing Report

Present it in clear sections, with Digital Twin quotes verbatim and attributed. Report on the concepts actually tested: the sections below are the default structure, and the parts marked "several concepts" are left out when only one was tested. Keep it proportionate — a single short tagline needs a shorter report than twelve scripts — but every material finding must make it in. Charts are optional: include one only where the answers show a clear quantitative pattern.

### Report sections:

**1. Overall Assessment**
- **One concept**: how it landed and why, in a short paragraph, with the audience quote that captures it
- **Several concepts**: the top-performing concept and why, with the audience quote that captures why it wins. If the evidence shows no clear winner, a tie, or different winners for different goals, say that instead of forcing one

**2. Concept-by-Concept Breakdown**

For each concept tested (with one concept, this is the full assessment):
- **How it landed**: Strong / Moderate / Weak, with the reason. With several concepts, mark a Winner only when one clearly led
- **Message understood**: What twins took it to say, and who they thought it was for
- **Strengths**: What worked (with audience quotes)
- **Weaknesses**: What didn't land
- **Emotional response**: What feelings it triggered
- **Audience quote**: A representative reaction, plus a dissenting one where views split

With several concepts, add a chart ranking them by audience preference when the counts support one.

**3. Key Insight**
- The primary insight about what this audience responds to, opened in one sentence and explained in a paragraph: why this concept lands or doesn't — or, with several, why the strongest works for them and the others don't
- What this reveals about their preferences, values, or communication style, with supporting quotes

**4. Recommendations**
- Whether to move forward with the concept — or, with several, which concept(s) to move forward with
- Specific refinements based on audience feedback
- What to test next (if applicable)

**5. Improvement Suggestions**
- For the concept (or the strongest one): audience-suggested improvements
- Several concepts: what the others would need to change to be competitive

## Tips for Best Results

- **Present concepts at equivalent polish levels**: Don't compare a rough draft against a polished version
- **Prioritise initial gut reactions**: First impressions are the most honest signals
- **Don't reveal which concept you prefer**: Let the audience react without bias
- **Include direct Digital Twin quotes**: They carry more weight than summaries
- **Test genuinely different angles**: 10 variations of the same idea isn't useful — test distinct creative directions
- **Watch for "polite" feedback**: "That's nice" isn't a win. Look for strong emotional language and specific reasons

## Related Skills

- **facebook-ad-copy**: Generate audience-informed Facebook/Instagram ad variations
- **google-ad-copy**: Generate audience-informed Google RSA assets
- **brand-messaging-validation**: Test brand positioning and taglines specifically
- **landing-page-optimization**: Test landing page messaging and structure

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
