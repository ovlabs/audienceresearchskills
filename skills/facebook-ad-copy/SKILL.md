---
name: facebook-ad-copy
version: 2.0.0
description: "Use this skill to generate Facebook and Instagram ad copy grounded in real audience insight. Triggers include: requests to create Facebook or Meta ad campaigns, write primary text and headlines for Facebook ads, refresh stale social ad creative, build ad sets for different audience segments, or generate audience-tested ad variations. Uses OriginalVoices Digital Twins (ask_twins) to deeply research the target audience's language, preferences, concerns, and experiences, then generates 10-15 audience-informed ad variations rooted in what real people actually said — not AI guesswork."
---

# Facebook Ad Copy Skill

## Overview

Generate Facebook and Instagram ad copy informed by real audience insight. Instead of relying on AI guesswork to write ads, this workflow first talks to your target audience to understand their language, preferences, concerns, and experiences — then uses those insights to create ads that speak to what real people actually care about.

## Workflow Steps

### Step 1: Gather Inputs

Only two things are required:

- **Target audience**: Who are these ads for? (e.g. "Women aged 25-40 in the US interested in skincare and wellness")
- **Product/concept**: Either a description in their own words, or a link to a product page / landing page / pitch deck

Optional:
- **Number of ad variations**: How many do they want? Default to 10-15 if not specified
- **Tone or brand voice preferences**: Any specific tone to match?

### Step 2: Audience Research

This is the most important step. Use `ask_twins` to understand the audience's world — their language, what they care about, what gets in their way, what grabs their attention, and how they relate to the problem space. Ask broad questions about the general topic area, not just about the specific product.

**Question quality — apply every rule to every question before sending.** The goal is the widest possible range of honest answers. A weak question is narrow, leading, or closed, so respondents converge on the same obvious reply and you learn nothing. Run each question through these rules:

1. **Anchor in a specific moment or behaviour, not an abstract definition.** Ask "Walk me through the last time…" or "Tell me about a time…", never "How do you define / think about [concept]?".
2. **Keep the valence open — never lead.** Don't presuppose the experience was good or bad. Banned phrasings: "what frustrates you most about…", "the time [X] annoyed you", "what do you love about this". Ask "how did it go?" or make it two-sided: "what worked well, and what didn't?".
3. **One idea per question.** Split anything double-barrelled into separate questions.
4. **Open-ended only — no yes/no, no multiple choice.** Every question invites How / What / Why / Walk me through / Tell me about. Never hand respondents a menu of options to pick from — let them supply their own.
5. **No socially-correct answers.** If almost everyone would answer the same way ("Is quality important?" → yes), reframe with a trade-off ("when is quality *not* worth it?").
6. **Ground intent in real behaviour.** Don't ask hypotheticals like "would you buy / click / switch?" — they inflate. Anchor in what they last actually did ("the last time you bought something like this, what tipped the decision?").
7. **Build in room to diverge.** Prefer a fork, trade-off, or spectrum ("what would make you — and what would hold you back?") over a flat single-answer prompt.

Before sending, check each question passes both gates — **Range:** could most people answer it the same way, or is there an obvious "right" answer? **Neutrality:** does it assume how they feel, or hand them the answer? If it fails either, rewrite it.

**Capturing the audience's own words.** This skill generates copy from what real people say, so the research must surface their *own language*, not abstract opinions — generic questions produce generic copy. Include at least two moment-anchored questions built to elicit verbatim phrasing (e.g. "The last time you looked for [X], what did you actually type or say?", "How would you describe [problem] in your own words, to a friend?"). When you later test copy, replace "would you click / stop scrolling?" (demand effect + inflated intent) with "what would you do next, if anything?" — and ask "what do you take this to be offering?" (comprehension) before whether they like it.

```
ask_twins(
  audience: "[detailed target audience description]",
  questions: [
    "Walk me through the last time [general topic area, e.g. skincare, fitness, cooking, managing finances] came up for you — what did you actually do, and how did it go?",
    "How would you describe [the problem/topic] in your own words — the way you'd explain it to a friend who was dealing with it too?",
    "Tell me about your most recent experience with a [product/solution in this space] — what worked well, and what didn't?",
    "When you think about trying a new [product in this category], what pulls you toward it — and what holds you back?",
    "Has a brand in this space ever earned or lost your trust? What did they do, and what would it take to earn it?",
    "Think about the last time you discovered a [product in this category] you decided to try — how did you come across it, and what made you give it a go?"
  ]
)
```

**Why this matters:** These questions surface the real language people use, the emotions they feel, the objections they hold, and the experiences that shape their decisions. This is what makes the ads resonate — not generic marketing copy.

### Step 3: Analyse Audience Insights

Read every individual twin answer to every question, including the neutral and negative ones, before extracting anything. Apply the shared reporting standard at the end of this skill: the ads are the deliverable, so the research shows up in the choices you make and in a short rationale, not in a long report.

Review all responses and extract:

- **Pain points in their own words**: The exact language they use to describe frustrations
- **Preferences and priorities**: What they look for and value in this category
- **Experiences and context**: What they've tried before and how it went
- **Concerns and objections**: What would hold them back from trying something new
- **Trust signals**: What builds or breaks confidence
- **Emotional drivers**: The feelings that motivate action (relief, excitement, validation, fear of missing out)

### Step 4: Generate Ad Variations

Using the audience insights, generate 10-15 ad variations (or the number requested — a single ad if that's what the user asked for). Every ad should be directly traceable to something the audience actually said — a pain point, a preference, a phrase, an emotion. Use only the offers, claims and proof the user supplied: don't invent promotions, guarantees, statistics or testimonials.

**Facebook Ad Copy Structure:**
- **Primary text**: Main body copy (125 chars visible before "See more"; full text up to 1,000+)
- **Headline**: Appears below the image/video (up to 40 chars recommended)
- **Description**: Below the headline (up to 30 chars recommended)
- **CTA button**: Shop Now, Learn More, Sign Up, Get Offer, etc.

**Spread variations across different angles, drawing from the research:**
- **Pain point ads**: Open with a frustration the audience described, in their words
- **Benefit-first ads**: Lead with the outcome or feeling they said they want most
- **Social proof / trust ads**: Built around the trust signals and credibility markers they mentioned
- **Experience-based ads**: Reference the common experiences they shared (what they've tried, what failed)
- **Objection-handling ads**: Directly address a concern or hesitation from the research

For each ad, note which audience insight it's built on.

### Step 5: Validate with Audience (Optional but Recommended)

Test 3-5 of the strongest ads back with the audience.

```
ask_twins(
  audience: "[same target audience]",
  questions: [
    "You're scrolling Facebook and this ad goes past: '[primary text + headline]'. In your own words, what do you take it to be offering — and what would you do next, if anything?",
    "Here are three ways an ad could open. A: '[opening A]' B: '[opening B]' C: '[opening C]'. Which one sounds most like it's meant for you, and what makes the other two miss?",
    "Is there anything in these ads that doesn't ring true or feels off to you? What is it, and why?"
  ]
)
```

### Step 6: Deliver Final Ad Set

Present it in clear sections, with Digital Twin quotes verbatim and attributed.

Present the full set of ad variations with:
- Each ad in full (primary text, headline, description, CTA)
- The audience insight driving each ad clearly labelled
- Ads grouped by angle (pain point, benefit, trust, experience, objection)
- Validation results (if done)
- Top 3-5 recommended ads to test first (with a smaller set, the ones to start with)
- A/B testing suggestions (which ads to test against each other)

Then a short audience rationale: the motivations, objections and language from the research that shaped the set, including any finding that matters to the campaign but didn't become an ad. Recommendations say which ads fit what the audience said, not how they will perform: only the copy was tested, not creative, placements or results.

## Facebook Ad Copy Guidelines

| Element | Recommended | Max |
|---------|-------------|-----|
| Primary text | 125 chars (before truncation) | ~1,000+ chars |
| Headline | 27-40 chars | 255 chars |
| Description | 27-30 chars | 255 chars |

## Tips for Best Results

- **The research makes the ads**: The audience research step is what separates these ads from generic AI output. Don't rush it
- **Write how people talk**: If the audience says "I just want something that actually works", put that in the ad — not "Experience seamless efficacy"
- **Front-load the hook**: First 125 characters are all that shows before "See more"
- **One insight per ad**: Each ad should be built on one clear audience insight, not five crammed together
- **Include the "why" for each ad**: Labelling which insight drives each ad helps the user understand why it should work and makes it easier to iterate
- **Variety matters**: 15 ads that all say the same thing in different words aren't useful. Spread across genuinely different angles and motivations from the research

## Related Skills

- **google-ad-copy**: For Google Search RSA assets
- **creative-testing**: To test ad concepts before writing full copy
- **icp-discovery**: To find the right audience before writing ads
- **landing-page-optimization**: To optimise the page ads drive traffic to

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
