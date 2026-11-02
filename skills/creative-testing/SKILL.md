---
name: creative-testing
version: 1.1.1
description: "Use this skill to test and validate creative concepts — ads, copy, taglines, scripts, packaging — with real audience feedback before spending budget. Triggers include: requests to test ad concepts, validate marketing copy or taglines, compare creative directions, get audience reactions to campaign ideas, or pre-test scripts or email copy. Supports testing up to 10-12 concepts in a single session. Uses OriginalVoices Digital Twins (ask_twins) to gather honest gut reactions from target audiences."
---

# Creative Testing Skill

## Overview

Test and validate creative concepts — ads, marketing copy, taglines, scripts, packaging, or any creative output — using real audience feedback from OriginalVoices Digital Twins before committing budget. This workflow gathers honest gut reactions, identifies which concepts resonate and why, and provides actionable recommendations for optimisation.

## Workflow Steps

### Step 1: Gather Creative Concepts & Audience

Collect from the user:
- **Creative concepts**: The ads, copy, taglines, scripts, or other creative to test (up to 10-12)
- **Target audience**: Who are these for? Be specific — age, location, interests, lifestyle
- **Context** (optional): Where will these run? What's the campaign goal?

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

### Step 3: Analyse Results

For each concept, evaluate:

| Dimension | What to Assess |
|-----------|---------------|
| **Overall preference** | How it ranked relative to others |
| **Strengths** | What specifically resonated — words, feelings, associations |
| **Weaknesses** | What fell flat, confused, or turned people off |
| **Emotional impact** | What feelings it triggered (excitement, curiosity, trust, indifference) |
| **Relevance** | How connected it felt to the audience's real life |
| **Improvement suggestions** | What the audience would change |

**Look for patterns across respondents:**
- Consistent praise or criticism across multiple Twins
- Emotional language (strong signals) vs. polite but flat responses (weak signals)
- Specific use cases or scenarios people mention unprompted

### Step 4: Deliver the Creative Testing Report

Present it in clear sections, with Digital Twin quotes verbatim and attributed. Where findings have clear quantitative patterns, include a chart to visualize the distribution.

### Report sections:

**1. Winner & Rationale**
- The top-performing concept and why
- Key audience quote that captures why it wins

**2. Concept-by-Concept Breakdown**

Include a chart ranking concepts by overall audience preference.

For each concept tested:
- **Verdict**: Winner / Strong / Moderate / Weak
- **Strengths**: What worked (with audience quotes)
- **Weaknesses**: What didn't land
- **Emotional response**: What feelings it triggered
- **Audience quote**: One representative reaction

**3. Key Insight**
- The primary insight about what this audience responds to
- What this reveals about their preferences, values, or communication style

**4. Recommendations**
- Which concept(s) to move forward with
- Specific refinements based on audience feedback
- What to test next (if applicable)

**5. Improvement Suggestions**
- For the winning concept: audience-suggested improvements
- For runner-up concepts: what would need to change to make them competitive

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
