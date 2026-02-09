---
name: deep-customer-research
version: 1.0.0
description: "Use this skill to conduct deep qualitative customer research on any topic. Triggers include: requests to understand customer pain points, unmet needs, motivations, or emotions around a product, category, brand, or market. Also use when validating product-market fit, exploring how an audience feels about a trend, or gathering insights to inform product strategy, positioning, or roadmap decisions. Uses OriginalVoices Digital Twins (ask_twins) to ask 10-12 comprehensive questions in a single pass covering behaviour, pain points, emotions, priorities, decision-making, unmet needs, trust signals, and willingness to pay."
---

# Deep Customer Research Agent

## Overview

Deeply understand what your customers really think and feel about any topic. This workflow uses OriginalVoices Digital Twins to conduct comprehensive qualitative research in a single pass — asking 10-12 carefully designed questions that cover the full landscape of motivations, emotions, behaviours, and unmet needs.

## Workflow Steps

### Step 1: Define the Research Topic & Audience

Gather from the user:
- **Research topic or question**: What do they want to understand? (e.g. "How do parents feel about screen time management apps?")
- **Target audience**: Who should we hear from? Be as specific as possible — age, location, interests, lifestyle, values. (e.g. "Parents aged 28-45 in the US with children under 12 who are concerned about their kids' screen time")

### Step 2: Design the Question Set

Craft 10-12 open-ended questions that cover the full research landscape in a single round. The questions should progress from broad context through to specific opinions and forward-looking needs.

**Question design framework — cover all of these areas:**

| Area | Purpose | Example |
|------|---------|---------|
| Current behaviour | How they deal with the problem today | "How do you currently handle [problem]?" |
| Pain points | What frustrates them | "What frustrates you most about [topic]?" |
| Emotional drivers | What feelings are at play | "How does [problem/topic] make you feel day-to-day?" |
| Priorities | What matters most | "When it comes to [category], what matters most to you and why?" |
| Decision-making | How they choose | "When choosing a [product/solution], what do you look for first?" |
| Current solutions | What they use now and why | "What tools/products/approaches do you currently use for [problem]? What works and what doesn't?" |
| Unmet needs | Gaps in what's available | "What's missing from the [products/solutions] you've tried?" |
| Ideal outcome | What great looks like | "What would an ideal solution to [problem] look like for you?" |
| Triggers | What would make them act | "What would make you switch from your current approach to something new?" |
| Trust & credibility | What builds confidence | "What would a [product/brand] need to do to earn your trust in this space?" |
| Social influence | Role of others | "How do recommendations from friends, reviews, or social media influence your decisions about [category]?" |
| Willingness to pay / trade-offs | Value perception | "What would you be willing to pay or give up for a [product] that truly solved [problem]?" |

### Step 3: Ask All Questions in a Single Call

Send all 10-12 questions to the Digital Twins in one `ask_twins` call.

```
ask_twins(
  audience: "[detailed audience description]",
  questions: [
    "How do you currently handle [problem]? Walk me through what a typical experience looks like.",
    "What frustrates you most about [topic/problem]?",
    "How does dealing with [problem] make you feel on a day-to-day basis?",
    "When it comes to [category], what matters most to you and why?",
    "When choosing a [product/solution] in this space, what do you look for first?",
    "What tools, products, or approaches do you currently use for [problem]? What works and what doesn't?",
    "What's missing from the [products/solutions] you've tried so far?",
    "If you could design the perfect solution to [problem], what would it look like?",
    "What would make you switch from your current approach to something completely new?",
    "What would a brand or product need to do to earn your trust in this space?",
    "How do recommendations from friends, reviews, or social media influence your decisions about [category]?",
    "What would you be willing to pay or give up for something that truly solved [problem] for you?"
  ]
)
```

### Step 4: Analyse & Synthesise

Review all Digital Twin responses and compile findings:

- **Key themes**: Patterns across respondents and across questions
- **Emotional landscape**: Dominant feelings (frustration, anxiety, hope, guilt, indifference)
- **Current behaviour map**: How the audience navigates this space today
- **Pain point ranking**: Most intense and most common frustrations
- **Unmet needs**: Clearest gaps between what's available and what's wanted
- **Decision drivers**: What influences choice and action
- **Trust signals**: What builds or breaks confidence
- **Surprising insights**: Anything unexpected or counterintuitive

### Step 5: Deliver the Research Report

1. **Executive Summary** — Top-line findings in 2-3 sentences
2. **Key Themes** — 3-5 most significant patterns, with supporting quotes from Digital Twins
3. **Emotional Landscape** — What emotions drive behaviour in this space
4. **Current Behaviour & Pain Points** — How the audience deals with the problem today and what's broken
5. **Unmet Needs & Ideal Outcomes** — Gaps and what "great" looks like to the audience
6. **Decision Drivers & Trust Signals** — What influences choice and earns confidence
7. **Opportunities** — Actionable insights for product, marketing, or strategy
8. **Recommendations** — Specific next steps based on the research

## Tips for Best Results

- **Be specific with audiences**: "Women aged 25-35 in the UK interested in fitness who have tried meal planning apps" yields far better results than "women interested in health"
- **Ask open-ended questions**: Start with "How", "What", "Why", "Walk me through..."
- **Adapt the question template**: The 12 questions above are a framework — tailor them to the specific topic
- **Let the Twins speak**: Include direct quotes from Digital Twins in findings — they carry authenticity and emotional weight
- **Don't lead**: Ask "What matters to you about X?" not "Don't you think X is important?"
- **Look for tension**: The most valuable insights often sit in contradictions

## Related Skills

- **icp-discovery**: If you need to find the right audience before researching them
- **feature-concept-testing**: If you want to validate a specific feature idea
- **brand-messaging-validation**: If you want to test how your brand resonates
- **creative-testing**: If you want to test specific creative concepts
