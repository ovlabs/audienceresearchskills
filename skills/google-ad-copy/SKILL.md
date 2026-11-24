---
name: google-ad-copy
version: 2.0.0
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

The search-language question below (what did you actually type into Google) is the model verbatim question for this skill — it gives you the exact keywords to drop into headlines. Keep it grounded in a real, recalled search rather than a hypothetical.

```
ask_twins(
  audience: "[detailed target audience description]",
  questions: [
    "Walk me through the last time [problem/category] came up for you — what did you actually do about it, and how did it go?",
    "Tell me about the last time you chose a [product category] — what tipped the decision, and what did you rule out?",
    "The last time you went looking for [solution] online, what exact words did you type into Google? Give me the actual phrases, however rough.",
    "Think about the last Google ad you actually clicked on — or one you deliberately skipped — what was it about, and what made you act?",
    "When you think about trying a new [product/solution], what pulls you toward it — and what makes you hesitate?",
    "How would you describe [problem/solution] in your own words — the way you'd say it to a friend?"
  ]
)
```

### Step 3: Extract Key Insights

Read every individual twin answer to every question, including the neutral and negative ones, before extracting anything. Apply the shared reporting standard at the end of this skill: the RSA assets are the deliverable, so the research shows up in the choices you make and in a short rationale, not in a long report.

Analyze responses and identify:
- **Search language**: Exact phrases they'd type into Google (use these in headlines)
- **Pain points**: Their top frustrations (lead with these)
- **Value drivers**: What matters most (benefits to emphasize)
- **Trust factors**: What builds confidence (use in descriptions)
- **Attention triggers**: What makes them click vs scroll past

### Step 4: Generate RSA Assets

Create **15 headlines** and **4 descriptions** using the audience insights. Follow Google RSA format strictly. That is one full asset set; if the user gave several ad groups or campaigns, write a set for each, and if they asked for fewer assets, write what they asked for. Use only the offers, claims and proof the user supplied: don't invent promotions, guarantees or statistics.

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

Present it in clear sections, with Digital Twin quotes verbatim and attributed.

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
    "You're searching Google for '[search term]' and this ad comes up: Headline: '[H1]' Description: '[D1]'. In your own words, what do you take it to be offering — and what would you do next, if anything?",
    "Between these ads, which feels most like a match for what you searched? A: '[H2 + D2]' B: '[H5 + D3]' C: '[H8 + D1]'. What makes the other two miss?"
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
- Use exact phrases from the "what did you actually type into Google" responses
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
8. The 3-5 combinations to test first highlighted, each with the audience insight behind it (a suggestion from the research, not a performance forecast)
9. A short audience rationale: the search language, motivations and objections that shaped the assets, including any finding that matters to the campaign but didn't become an asset

## Related Skills

- **facebook-ad-copy**: For Facebook/Instagram ad copy
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
