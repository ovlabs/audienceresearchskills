---
name: product-description-optimization
version: 1.1.0
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

**Output the optimized description now** - with changes clearly integrated into the original structure.

### Step 5: Deliver Optimization Package

Format the output using proper markdown headers: use `##` for the report title, `###` for major sections, `####` for subsections, `>` blockquotes for Digital Twin quotes, and `---` horizontal rules between major sections. Never use plain text or bold-only text as section headers — always use proper markdown headers.

**PRIMARY DELIVERABLE - Optimized Product Description:**

Output the complete, optimized product description ready to use, including:
- Product title (if optimization improves it)
- Full optimized description
- Formatted and ready to publish

**THEN provide supporting materials:**

**1. Optimization Summary:**
- **What changed**: Key changes made and why
- **Key insights applied**: Top 3-5 audience insights that shaped the optimization
- **Expected impact**: What should improve (clarity, trust, conversion, etc.)

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
