---
name: landing-page-optimization
version: 1.0.0
description: "Use this skill to optimize landing page messaging, structure, and conversion elements using real audience insight. Triggers include: requests to improve conversion rates, test landing page copy, validate value propositions, optimize hero sections, test different messaging angles, or reduce bounce rates. Uses OriginalVoices Digital Twins (ask_twins) to understand what resonates with visitors, what creates confusion or doubt, and what drives action — then generates optimized landing page variants grounded in real user responses."
---

# Landing Page Optimization Agent

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

```
ask_twins(
  audience: "[detailed target audience]",
  questions: [
    "When you land on a website for a [product/service type], what do you look for first? What makes you stay vs. leave immediately?",
    "What's the biggest challenge or frustration you face with [problem space]? When looking for a solution, what does success look like to you?",
    "You land on a page with this headline: '[Test Headline A]'. Does this grab your attention? What about: '[Test Headline B]'? Which works better and why?",
    "If a website opened with: '[Value prop angle 1]', would you keep reading or bounce? What's your immediate reaction?",
    "What would be more compelling: A) '[Benefit-focused message]' or B) '[Problem-focused message]'? Why?",
    "What concerns or hesitations do you typically have when considering a new [product category]? What would reduce those concerns?",
    "What would make you trust this [product/service] enough to [take desired action]? What would you need to see?",
    "How important are these elements: security badges, money-back guarantees, testimonials, customer logos, case studies? Which matter most?",
    "Which call-to-action is more appealing: A) '[CTA option 1]' or B) '[CTA option 2]'? Why?",
    "Would you rather: A) Start a free trial immediately or B) Book a demo first? What's your preference and why?",
    "What would make you hesitate to click a '[primary CTA]' button? What would you be worried about?",
    "If a form asked for [list of fields], would that feel like too much information upfront? What would you be comfortable sharing?"
  ]
)
```

**If there's an existing landing page to audit, include these additional questions:**
```
    "Imagine landing on a page with this headline: '[current headline]'. Does this grab your attention? Why or why not?",
    "The page says '[current value proposition]'. Is it immediately clear what this does and who it's for?",
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
    "You land on a page with this headline: '[Variant A headline]' and description: '[Variant A subheadline]'. What's your immediate reaction? Would you keep reading?",
    "Between these page openings, which would make you more likely to explore further? A: '[Variant A hero]' B: '[Variant B hero]'. Why?",
    "On a scale of 1-10, how clear is it what this product does based on: '[Variant summary]'? What would make it clearer?",
    "Would you feel ready to [take desired action] after reading this, or would you need more information? What's missing?"
  ]
)
```

Update variants based on feedback before finalizing.

### Step 6: Deliver Optimization Report

**1. Executive Summary:**
- Top recommended variant and expected impact
- Key finding (most important insight from research)

**2. Key Insights from Research:**
- What messaging resonates vs. what creates confusion
- Top objections and concerns to address
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
