---
name: landing-page-optimization
version: 1.1.1
description: "Use this skill to optimize landing page messaging, structure, and conversion elements using real audience insight. Triggers include: requests to improve conversion rates, test landing page copy, validate value propositions, optimize hero sections, test different messaging angles, or reduce bounce rates. Uses OriginalVoices Digital Twins (ask_twins) to understand what resonates with visitors, what creates confusion or doubt, and what drives action — then generates optimized landing page variants grounded in real user responses."
---

# Landing Page Optimization Skill

## Overview

Optimize your landing page for conversion using real audience insight. This workflow researches how your target audience evaluates landing pages — what grabs attention, what creates trust, what triggers doubt, and what drives action — then uses those insights to craft landing page elements that convert.

## Workflow Steps

### Step 1: Gather Context

Collect from the user:
- **Current landing page**: URL or description of what the page currently says/shows
- **Target audience**: Who is this page for? (e.g. "Startup founders looking for project management tools")
- **Primary goal**: What action should visitors take? (sign up, purchase, book demo, etc.)

### Step 2: Research Landing Page Preferences & Conversion Drivers

One comprehensive research call covering current messaging evaluation, problem awareness, headline testing, trust signals, and CTA preferences.

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

**Testing stimuli without bias.** When showing headlines, value props, or page variants:
- Capture the **unaided gut reaction first** ("what's your first impression?") before asking for reasons.
- **Don't signal the hoped-for winner** — don't ask "does this grab your attention?"; ask "what, if anything, would you do after landing here?".
- When comparing options, **counterbalance the order** and always allow "neither".
- **Keep three questions separate:** comprehension ("what do you think this page is offering, and who for?") → preference ("which version works better for you, and why?") → persuasion ("what would make you act, or hesitate?"). Never fuse them.

```
ask_twins(
  audience: "[detailed target audience]",
  questions: [
    "When you land on a website for a [product/service type], what do you look for first, and what makes you stay or leave?",
    "Think about the last time you went looking for a [product/service type] — what set you off looking, and what were you hoping to find?",
    "Here are two openings for a page like this — A: '[Test Headline A]' and B: '[Test Headline B]'. What's your first impression of each, and which — if either — makes you want to read on? Why?",
    "A page opens with: '[Value prop angle 1]'. What's your first impression, and what would you do next, if anything?",
    "Here are two ways of putting it — A: '[Benefit-focused message]' and B: '[Problem-focused message]'. What does each one say to you, and which lands better — or neither? Why?",
    "Think about the last time you signed up for or bought a new [product category] — what made you hesitate, if anything, and what tipped you over the line?",
    "Think of the last time a website earned enough of your trust to [take desired action] — what did it do, and where do most fall short?",
    "When you're deciding whether to trust a [product/service] you've just found, what actually makes a difference to you — and what do you ignore or distrust?",
    "Here are two buttons — A: '[CTA option 1]' and B: '[CTA option 2]'. What does each make you expect will happen if you click, and which — if either — feels more like something you'd do? Why?",
    "Think about the last [product category] you were seriously considering — did you want to jump straight in and try it, talk to someone first, or something else? What drove that?",
    "When you reach a '[primary CTA]' button, what's going through your mind in the moment before you click — or decide not to?",
    "Think about the last sign-up form that made you give up on it — what did it ask for that was a step too far? How does being asked for [list of fields] compare?"
  ]
)
```

**If there's an existing landing page to audit, include these additional questions:**
```
    "Here's the headline the page opens with: '[current headline]'. What's your first impression, and what would you do next, if anything?",
    "The page says '[current value proposition]'. In your own words, what do you take this to be offering, and who for? Where did you have to guess?",
    "What questions would you have after reading this page? What would you want to know more about?"
```

### Step 3: Extract Key Insights

Analyze responses and identify:

**Hero Section Insights:**
- What grabs attention vs. what's ignored
- Most compelling headline angle
- Clearest value proposition framing
- What needs to be communicated immediately

**Trust & Credibility:**
- Which trust elements matter most
- What testimonial styles resonate
- Key objections that need addressing

**CTA & Conversion:**
- Optimal CTA copy and positioning
- Form friction points to reduce
- Optimal offer structure (trial, demo, immediate purchase)

**Content Hierarchy:**
- What information they need first
- What must be above the fold
- What can wait for below the fold

### Step 4: Generate Optimized Landing Page Variants

Create 3-5 landing page variants, each grounded in different insights from research.

**For each variant, deliver:**
- **Headline** — Hook that grabs attention (based on what resonated)
- **Subheadline** — Clarifies value prop (addresses top questions/concerns)
- **Value propositions** — 3-5 key benefits (in their language)
- **Social proof** — Type and positioning (testimonials, logos, stats)
- **Primary CTA** — Button copy and offer (based on what drives action)
- **Trust elements** — What to include above fold (security, guarantees, etc.)
- **Key sections** — Recommended page structure

**Label each variant with:**
- **Target insight** — Which research finding drives this variant
- **Best for** — What type of visitor or use case
- **Key hypothesis** — What makes this variant different and why it should work

**Spread variants across different angles:**
- Problem-focused (lead with pain point)
- Benefit-focused (lead with outcome)
- Trust-first (emphasize credibility and social proof)
- Direct/minimal (for audiences who prefer no-fluff)
- Story-driven (if research shows they value context)

### Step 5: Validate Top Variants (Optional)

Test 2-3 strongest variants back with the audience:

```
ask_twins(
  audience: "[same audience]",
  questions: [
    "You land on a page opening with '[Variant A headline]' — '[Variant A subheadline]'. What's your first impression, and what would you do next, if anything?",
    "Here are two openings — A: '[Variant A hero]' and B: '[Variant B hero]'. What does each say to you, and which — if either — pulls you in more? Why?",
    "Based on '[Variant summary]', what do you take this product to do? Where, if anywhere, did it leave you guessing?",
    "After reading this, what would you do next — and if you're not ready to [take desired action], what's holding you back?"
  ]
)
```

Update variants based on feedback before finalizing.

### Step 6: Deliver Optimization Report

Present it in clear sections, with Digital Twin quotes verbatim and attributed. Where findings have clear quantitative patterns, include a chart to visualize the distribution.

### Report sections:

**1. Executive Summary:**
- Top recommended variant and expected impact
- Key finding (most important insight from research)

**2. Key Insights from Research:**
- What messaging resonates vs. what creates confusion
- Top objections and concerns to address. Include a chart ranking objections by frequency.
- Trust signals that matter most
- Optimal CTA and offer structure

**3. Landing Page Variants (3-5 full variants):**
- Complete copy for each (headline, subheadline, value props, CTA, etc.)
- Insight driving each variant
- When to use each (audience segment, traffic source, etc.)

**4. A/B Testing Plan:**
- Which variants to test first
- What elements to test (headline, CTA, social proof, etc.)
- Success metrics to track

**5. Quick Wins:**
- Simple changes that can be implemented immediately

**6. Common Pitfalls to Avoid:**
- Based on what the audience reacted negatively to

## Landing Page Element Guidelines

| Element | Best Practice |
|---------|---------------|
| **Headline** | Lead with strongest hook from testing; 6-12 words; avoid jargon |
| **Subheadline** | Clarify value prop; address top question; 10-20 words |
| **Value props** | Use audience's language; focus on outcomes; 3-5 bullets |
| **CTA** | Action-oriented; address friction points; repeat 2-3 times |
| **Social proof** | Above fold; match format that resonates |
| **Trust elements** | Address top concerns; position near CTA |

## Tips for Best Results

- **Clarity beats cleverness**: If they struggle to understand what the product does, clever copy won't convert
- **Address objections explicitly**: If research surfaced concerns, address them on the page
- **Use their language**: Use exact phrases from Digital Twin responses
- **Hierarchy matters**: Put the most important information (based on research) above the fold
- **Don't bury the CTA**: If they're ready to act, make it easy
- **Test drastically different variants**: Test genuinely different messaging angles, not just headline variations
- **Optimize for your audience**: Let research guide you, not generic "best practices"

## Related Skills

- **deep-customer-research**: For deeper audience understanding before optimization
- **creative-testing**: To test specific creative concepts or variants
- **brand-messaging-validation**: If brand positioning needs validation first
- **facebook-ad-copy**: To write ads that drive traffic to the optimized page
