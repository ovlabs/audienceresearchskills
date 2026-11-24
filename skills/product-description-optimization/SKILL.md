---
name: product-description-optimization
version: 2.0.0
description: "Use this skill to optimize existing product descriptions for ecommerce using real audience insight. Triggers include: requests to improve product descriptions, optimize ecommerce copy, increase conversion rates, refine product pages, make product descriptions resonate with target audiences, or test product messaging. Uses OriginalVoices Digital Twins (ask_twins) to understand what matters to buyers, what information they need, what language resonates, and what drives purchase decisions — then optimizes existing descriptions to convert better."
---

# Product Description Optimization Skill

## Overview

Optimize existing product descriptions for ecommerce using real audience insight. This workflow researches your target audience to understand what matters when they're buying, what information they need to make a decision, what language resonates, and what builds trust — then uses those insights to refine and improve your existing product descriptions for better conversion.

## Workflow Steps

### Step 1: Gather Product & Description

Collect from the user:
- **Product name**: What is being sold
- **Product category**: Type of product (e.g. "skincare", "home decor", "tech accessories", "fitness equipment")
- **Target audience**: Who is this product for? (e.g. "Women 25-40 interested in clean beauty", "Remote workers setting up home offices")
- **Current product description**: The existing description to optimize (copy the full text)
- **Product price point** (optional): Budget, mid-range, premium
- **Key product features**: Main features or benefits (if not clear from description)
- **Optimization goal**: What should improve? (conversion rate, clarity, trust, differentiation, SEO, etc.)

### Step 2: Test Existing Description with Audience

One comprehensive research call to get specific feedback on the existing product description and understand how to optimize it.

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
  audience: "[detailed target audience]",
  questions: [
    "Here's a product description for [product name]: '[paste full current description]'. Read it once — what's your first, gut reaction?",
    "In your own words, what do you take this product to be, and who do you think it's for? Where did you have to guess or reread?",
    "What in that description landed for you, and what fell flat or left you cold?",
    "Think about the last time you bought a [product category] product — what did you need to know before you were comfortable buying, and how much of that is here?",
    "After reading this, what would you still be wondering about [product name]?",
    "What, if anything, would give you pause about this product based on this description?",
    "How would you describe the tone of this writing, and how does that sit with you for a [product category] product?",
    "If you were skimming this on your phone, what would you want more of, and what would you skip past?",
    "The last time a product description made you trust it enough to buy, what did it include? How does this one compare?",
    "If you saw this next to two other [product category] options, what — if anything — would pull you toward this one or push you to the others?",
    "Think back to the last time you added something like this to your cart — what was the final nudge, and is that nudge anywhere in this description?",
    "How would you describe this product in your own words to a friend who was thinking about buying it?"
  ]
)
```

### Step 3: Analyse Description Feedback

Read every individual twin answer to every question, including the neutral and negative ones, before extracting anything. Apply the shared reporting standard at the end of this skill: the optimized description is the deliverable, so the research shows up in the changes you make and in a short rationale, not in a long report. With several products, analyse the feedback on each description separately; don't compare products that weren't shown side by side.

Review audience responses and extract specific insights about the existing description:

**What's Working:**
- What they liked or found compelling
- What stood out as good
- What's clear and effective

**What's Missing:**
- Information they need that isn't there
- Questions that aren't answered
- Details that would build confidence

**What's Unclear:**
- Confusing or ambiguous parts
- What they didn't understand
- Where clarity is needed

**Concerns & Objections:**
- Hesitations they have after reading it
- What makes them unsure about buying
- Red flags or turnoffs in the current description

**Tone & Style Feedback:**
- Whether current tone feels right or off
- If it's too long, too short, or about right
- If it feels too casual, formal, or salesy

**Differentiation:**
- Whether it stands out or blends in with competitors
- What would make it more distinctive

**Optimization Priorities:**
- What needs to change to make them more likely to buy
- What would make them click "Add to Cart"
- What would build trust and credibility

### Step 4: Optimize the Product Description

**IMPORTANT**: Using the insights from Step 3, now optimize the existing product description with light tweaks and additions. Keep what's working, add what's missing, adjust what needs improvement.

**Optimization approach - LIGHT TOUCH:**

**Keep what's working:**
- Preserve elements they liked or found compelling
- Maintain the original structure if it's effective
- Keep tone/style if it resonated

**Add what's missing:**
- Insert key information they said they need (1-2 sentences or bullets)
- Add answers to questions they have
- Include trust signals or details they want (materials, care instructions, sizing, etc.)

**Tweak what's off:**
- Adjust language that felt too technical, salesy, or unclear
- Rephrase confusing parts for clarity
- Soften or strengthen tone if needed

**Address concerns:**
- Add 1-2 lines that proactively handle objections or hesitations
- Include reassurances about quality, durability, or fit if those were concerns

**Optimization guidelines:**
- Make minimal changes to preserve what's working
- Add missing information naturally (don't force it)
- Keep the original format unless feedback suggests changing it
- Focus on filling gaps, not complete rewrites
- Maintain the brand voice while improving clarity
- Use only the product facts supplied: never add features, materials, prices, availability, guarantees or reviews. Where twins asked for a detail you don't have, list it as something for the user to supply

**Output the optimized description now** - with changes clearly integrated into the original structure.

### Step 5: Deliver Optimization Package

Present it in clear sections, with Digital Twin quotes verbatim and attributed.

**PRIMARY DELIVERABLE - Optimized Product Description:**

Output the complete, optimized product description ready to use, including:
- Product title (if optimization improves it)
- Full optimized description
- Formatted and ready to publish

**THEN provide supporting materials:**

**1. Optimization Summary:**
- **What changed**: Key changes made and why
- **Key insights applied**: The audience insights that shaped the optimization
- **What it should improve**: Clarity, trust, answered questions — as the audience described them, not a predicted sales lift

**2. Before vs. After Comparison:**
- **Original**: [excerpt of key changes from original]
- **Optimized**: [how it was improved]
- **Why it's better**: Based on audience insight

**3. Description Feedback Summary:**
- **What worked**: What they liked about the original
- **What was missing**: Information gaps they identified
- **What was unclear**: Confusing or ambiguous parts
- **Concerns raised**: Hesitations or objections from the description
- **Tone feedback**: Whether style felt right or needed adjustment
- **Purchase drivers**: What would make them click "Add to Cart"

**4. Additional Recommendations:**
- Other elements to optimize (product images, reviews display, guarantees, FAQs)
- A/B test suggestions (if applicable)
- Related products or upsell opportunities based on what matters to audience

## Product Description Optimization Framework

| Element | Audience Insight Source | Optimization Approach |
|---------|------------------------|----------------------|
| **Opening hook** | What drives purchase decision | Lead with most compelling benefit/value |
| **Information hierarchy** | What they need to see to buy | Prioritize essential info first |
| **Tone** | Casual vs. professional preference | Match their preferred style |
| **Features vs. benefits** | What they care about most | Balance based on preference |
| **Trust signals** | What builds credibility | Include certifications, materials, guarantees they value |
| **Length** | Short/bullets vs. storytelling | Match preferred format |
| **Language** | Words that attract or repel | Use resonant language, avoid turnoffs |
| **Objection handling** | Concerns and hesitations | Address red flags proactively |
| **CTA** | What makes them click "Add to Cart" | Create urgency or clear next step |

## Tips for Best Results

- **Light touch wins**: Keep what's working, add what's missing - don't rewrite everything
- **Add, don't replace**: Insert missing information naturally into the existing structure
- **Preserve the voice**: Maintain the brand's tone while improving clarity and completeness
- **Fill specific gaps**: Add the exact information they said was missing (care instructions, sizing, durability)
- **Be specific**: "Machine washable" beats "easy care"; "True to size" beats "great fit"
- **Answer unasked questions**: Include info they said descriptions often miss
- **Tweak, don't transform**: Adjust unclear language rather than rewriting entire sections
- **Test minimal changes**: Sometimes adding one bullet point converts better than rewriting paragraphs

## Common Product Description Pitfalls

- **Feature dumping**: Listing features without explaining why they matter
- **Generic language**: "Premium quality", "best in class" without proof
- **Missing key information**: Not answering questions buyers have
- **Wrong tone**: Too casual for premium products, too formal for lifestyle brands
- **No trust signals**: Missing certifications, materials, guarantees buyers need
- **Ignoring objections**: Not addressing common concerns or hesitations
- **Too long or too short**: Not matching audience preference for description length
- **Overly salesy**: Hype and superlatives that reduce credibility

## Red Flags (Original Description Issues)

- Missing information buyers said they need
- Tone doesn't match audience preference
- Leads with features when audience cares about benefits (or vice versa)
- No trust signals included (materials, certifications, guarantees)
- Doesn't address common objections or concerns
- Uses language that turns off the target audience
- Too vague or generic

## Green Lights (Strong Optimization)

- Leads with what matters most to the audience
- Includes all information they need to buy confidently
- Tone and style match their preferences
- Addresses their objections and concerns proactively
- Includes trust signals they care about
- Answers questions descriptions typically miss
- Feels authentic and credible, not oversold
- Clear next step (CTA) aligned with purchase drivers

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
