---
name: creative-testing
version: 1.0.0
description: "Use this skill to test and validate creative concepts — ads, copy, taglines, scripts, packaging — with real audience feedback before spending budget. Triggers include: requests to test ad concepts, validate marketing copy or taglines, compare creative directions, get audience reactions to campaign ideas, or pre-test scripts or email copy. Supports testing up to 10-12 concepts in a single session. Uses OriginalVoices Digital Twins (ask_twins) to gather honest gut reactions from target audiences."
---

# Creative Testing Agent

## Overview

Test and validate creative concepts — ads, marketing copy, taglines, scripts, packaging, or any creative output — using real audience feedback from OriginalVoices Digital Twins before committing budget. This workflow gathers honest gut reactions, identifies which concepts resonate and why, and provides actionable recommendations for optimisation.

## Workflow Steps

### Step 1: Gather Creative Concepts & Audience

Collect from the user:
- **Creative concepts**: The ads, copy, taglines, scripts, or other creative to test (up to 10-12)
- **Target audience**: Who are these for? Be specific — age, location, interests, lifestyle
- **Context** (optional): Where will these run? What's the campaign goal?

### Step 2: Design the Testing Approach

Choose the right approach based on the number of concepts:

**Small batch (2-4 concepts)** — Direct comparison:
Present all concepts together and ask for direct comparison.

```
ask_twins(
  audience: "[detailed target audience]",
  questions: [
    "I'm going to show you [number] [ad concepts / taglines / etc.]. Give me your honest gut reaction to each one.",
    "Concept A: '[full text of concept A]'. What's your immediate reaction? What do you think and feel?",
    "Concept B: '[full text of concept B]'. What's your immediate reaction? What do you think and feel?",
    "Concept C: '[full text of concept C]'. What's your immediate reaction? What do you think and feel?",
    "Of all the concepts, which one grabs you most? Why? Which one would make you stop scrolling or take action?",
    "Which concept feels most relevant to your life? Which one 'gets you'?",
    "Is there anything in any of these that feels off, confusing, or would make you tune out?",
    "If you could improve the winning concept, what would you change?"
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
    "Concept A: '[full text]'. What's your immediate gut reaction? Would this grab your attention?",
    "Concept B: '[full text]'. What's your immediate gut reaction? Would this grab your attention?",
    "Concept C: '[full text]'. What's your immediate gut reaction? Would this grab your attention?",
    "Of A, B, and C — which one resonates most and why?"
  ]
)

# Group 2
ask_twins(
  audience: "[same audience]",
  questions: [
    "Concept D: '[full text]'. What's your immediate gut reaction? Would this grab your attention?",
    "Concept E: '[full text]'. What's your immediate gut reaction? Would this grab your attention?",
    "Concept F: '[full text]'. What's your immediate gut reaction? Would this grab your attention?",
    "Of D, E, and F — which one resonates most and why?"
  ]
)

# Final ranking
ask_twins(
  audience: "[same audience]",
  questions: [
    "Here are the top concepts from our testing: [list finalists]. Which one would make you most likely to [desired action]? Why?",
    "Which concept feels most authentic and relevant to someone like you?",
    "What would make the winning concept even stronger?"
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

**1. Winner & Rationale**
- The top-performing concept and why
- Key audience quote that captures why it wins

**2. Concept-by-Concept Breakdown**

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
