---
name: google-ad-copy
version: 1.0.0
description: "Use this skill to generate Google ad copy grounded in real audience insight. Triggers include: requests to create Google Search or Display ad campaigns, write Responsive Search Ad (RSA) headlines and descriptions, refresh underperforming Google ad copy, or generate audience-informed ad variations for A/B testing. Uses OriginalVoices Digital Twins (ask_twins) to deeply research the target audience's language, preferences, concerns, and experiences, then generates audience-informed RSA assets rooted in what real people actually said — not AI guesswork."
---

# Google Ad Copy Skill

## Overview

Generate Google Responsive Search Ad (RSA) assets informed by real audience insight. This workflow researches your target audience first, then creates RSA-ready headlines and descriptions that speak to what real people actually care about — ensuring higher relevance scores and better performance.

## Workflow Steps

### Step 1: Gather Inputs

Required:
- **Target audience**: Who are these ads for? (e.g. "Small business owners aged 30-50 in the US looking for accounting software")
- **Product/offer**: Description or link to product page / landing page
- **Primary keywords**: 2-3 main search terms you're targeting (for relevance and Quality Score)

Optional:
- **Landing page URL**: To ensure message match
- **Unique value prop**: What makes this different from competitors

### Step 2: Audience Research

Use `ask_twins` to understand the audience's world — their language, pain points, and search behavior. This informs ad copy that resonates.

```
ask_twins(
  audience: "[detailed target audience description]",
  questions: [
    "What's your biggest frustration when it comes to [problem/category]?",
    "What matters most to you when choosing a [product category]?",
    "If you were searching on Google for [solution], what exact words would you type?",
    "What would make you click on an ad for [product type]? What would make you scroll past?",
    "What concerns or doubts would you have before trying a new [product/solution]?",
    "What would a headline need to say to grab your attention and feel relevant to you?"
  ]
)
```

### Step 3: Extract Key Insights

Analyze responses and identify:
- **Search language**: Exact phrases they'd type into Google (use these in headlines)
- **Pain points**: Their top frustrations (lead with these)
- **Value drivers**: What matters most (benefits to emphasize)
- **Trust factors**: What builds confidence (use in descriptions)
- **Attention triggers**: What makes them click vs scroll past

### Step 4: Generate RSA Assets

Create **15 headlines** and **4 descriptions** using the audience insights. Follow Google RSA format strictly.

**Headlines (30 characters max each):**
- Include primary keyword in at least 3 headlines (for relevance)
- Vary approaches: pain point, benefit, question, social proof, urgency
- Mix short (15-20 chars) and long (25-30 chars) for better combinations
- Use audience's exact language where possible
- Every headline must be unique and work independently

**Descriptions (90 characters max each):**
- Description 1: Lead benefit + CTA
- Description 2: Address objection + unique value
- Description 3: Social proof + CTA
- Description 4: Alternative angle (pain point or different benefit)

**Format each asset with:**
- Character count verification (must be exact)
- Audience insight it's based on
- Strategic note (e.g., "keyword headline", "pain point hook")

### Step 5: Structure for Google Ads

Deliver assets in this format:

**HEADLINES (15 required)**

| # | Headline | Chars | Insight | Strategy |
|---|----------|-------|---------|----------|
| H1 | [headline text] | 28 | [insight] | Keyword + benefit |
| H2 | [headline text] | 22 | [insight] | Pain point |
| ... | ... | ... | ... | ... |

**DESCRIPTIONS (4 required)**

| # | Description | Chars | Insight | Strategy |
|---|-------------|-------|---------|----------|
| D1 | [description text] | 87 | [insight] | Benefit + CTA |
| D2 | [description text] | 89 | [insight] | Objection handling |
| D3 | [description text] | 84 | [insight] | Social proof |
| D4 | [description text] | 90 | [insight] | Alternative angle |

**PINNING RECOMMENDATIONS:**
- Pin H1 to position 1 only if it must always show (e.g., brand name + keyword)
- Otherwise let Google optimize combinations
- Never pin more than 2-3 assets total

### Step 6: Validate Top Performers (Optional)

Test 3-5 strongest headline + description combinations with the audience:

```
ask_twins(
  audience: "[same target audience]",
  questions: [
    "You're searching Google for '[search term]' and see this ad: Headline: '[H1]' Description: '[D1]'. Would you click? Why or why not?",
    "Between these ads, which grabs you most? A: '[H2 + D2]' B: '[H5 + D3]' C: '[H8 + D1]'. Why?"
  ]
)
```

Update assets based on feedback before finalizing.

### Step 7: Quality Score Checklist

Before delivering, verify:
- Primary keyword appears in at least 3 headlines
- All headlines ≤30 characters (Google rejects otherwise)
- All descriptions ≤90 characters
- Headlines are diverse (not 15 variations of the same thing)
- Descriptions work with any headline combination
- Copy matches landing page messaging
- Clear CTA in at least 2 descriptions
- Assets use audience's actual language from research

## RSA Best Practices

**Headline Strategy:**
- 3-5 headlines with primary keyword (for relevance)
- 3-5 headlines addressing different pain points
- 2-3 benefit-focused headlines
- 2-3 social proof or trust-building headlines
- 1-2 question or curiosity headlines

**Description Strategy:**
- Lead with the strongest benefit (based on research)
- Address the top objection from audience research
- Include social proof or trust signals
- Provide alternative angle for variety

**Character Optimization:**
- Shorter headlines (15-22 chars) pair well with longer ones
- Max out description length (85-90 chars) to provide context
- Front-load important words (first 15 chars of headlines are critical)

**Keyword Integration:**
- Include keywords naturally, not stuffed
- Use exact phrases from "what would you search for" responses
- Match search intent (don't promise what landing page doesn't deliver)

## Common Pitfalls to Avoid

- **Keyword stuffing**: Google's algorithm detects this and lowers Quality Score
- **Generic headlines**: "Best Software" performs worse than specific benefits from research
- **Over-pinning**: Pinning too many assets limits Google's optimization
- **Identical variations**: "Get Started Today" and "Start Today" waste asset slots
- **Ignoring character limits**: Google truncates or rejects — verify every asset
- **Feature dumping**: Lead with benefits and outcomes the audience cares about
- **No CTA**: Every description should guide the user to act

## Output Checklist

Final deliverable includes:
1. 15 unique headlines (all ≤30 chars)
2. 4 unique descriptions (all ≤90 chars)
3. Character count verified for every asset
4. Table format ready to copy into Google Ads
5. Insight source documented for each asset
6. Pinning recommendations (if any)
7. Quality Score checklist completed
8. Top 3-5 predicted best-performing combinations highlighted

## Related Skills

- **facebook-ad-copy**: For Facebook/Instagram ad copy
- **creative-testing**: To test ad concepts before writing full copy
- **icp-discovery**: To find the right audience before writing ads
- **landing-page-optimization**: To optimise the page ads drive traffic to
