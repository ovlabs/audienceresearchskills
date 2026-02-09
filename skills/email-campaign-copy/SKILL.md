---
name: email-campaign-copy
version: 1.0.0
description: "Use this skill to generate email marketing copy grounded in real audience insight. Triggers include: requests to write email campaigns, create newsletter content, improve email open rates, write welcome sequences, launch announcement emails, or re-engagement campaigns. Uses OriginalVoices Digital Twins (ask_twins) to understand what makes the audience open emails, what messaging resonates, what triggers action, and what causes unsubscribes — then generates audience-informed email variations rooted in real subscriber perspectives."
---

# Email Campaign Copy Agent

## Overview

Generate email marketing campaigns informed by real subscriber insight. This workflow researches how your target audience engages with email — what captures their attention, what they value, and what drives action — then creates emails that speak to what real people actually care about.

## Workflow Steps

### Step 1: Gather Campaign Context

Collect from the user:
- **Target audience**: Who is this email for? (e.g. "SaaS customers in their first 30 days")
- **Email type/goal**: Welcome series, product launch, newsletter, re-engagement, promotion, etc.
- **Key message or offer**: What's the main point?
- **Number of variations**: How many? (Default: 5-8)

Optional:
- **Current performance**: Open rates, click rates, unsubscribe rates
- **Tone/brand voice**: Any specific voice to match?

### Step 2: Research Audience Email Behavior & Preferences

One comprehensive research call covering email behavior, topic relevance, subject line testing, and messaging preferences.

```
ask_twins(
  audience: "[detailed target audience]",
  questions: [
    "When you open your inbox, what makes you decide to open a marketing email vs. delete it? What grabs your attention in a subject line?",
    "What's your biggest frustration with marketing emails? What makes you unsubscribe?",
    "If you received an email about [topic/offer], what would make it feel valuable vs. just more noise? What would you want to know immediately?",
    "You see these subject lines in your inbox. Which would you most likely open? A: '[Subject A]' B: '[Subject B]' C: '[Subject C]'. Why?",
    "Imagine opening an email that starts with: '[Opening line A]'. Would you keep reading? What about: '[Opening line B]'? Which grabs you more?",
    "Would you prefer: A) A short, direct email (2-3 paragraphs) that gets to the point quickly, or B) A longer, story-driven email? Why?",
    "What would make you actually click a CTA button in this email vs. just reading and closing it?",
    "What concerns or hesitations would you have about [offer/product/concept being promoted]?",
    "How do you feel about email frequency from [brands in this category]? How often is too often?",
    "If an email subject line said '[test subject line]', would that feel like clickbait or would it make you curious? Be honest."
  ]
)
```

### Step 3: Extract Key Insights

Analyze responses and identify:

**Subject Line Drivers:**
- What triggers opens (benefit, curiosity, urgency, personalization)
- What feels spammy or manipulative
- Optimal tone and length

**Email Body Preferences:**
- Optimal opening hook
- Tone that resonates (casual, direct, story-driven)
- Preferred length and structure

**CTA & Action:**
- What drives clicks
- How to frame the ask without being pushy

**Friction Points:**
- What causes unsubscribes
- Frequency tolerance
- What feels like noise

### Step 4: Generate Email Variations

Create 5-8 email variations, each built on different insights from research.

**For each email, deliver:**
- **Subject line** (6-10 words, grounded in what drives opens)
- **Preview text** (40-100 chars, complements subject line)
- **Email body**:
  - Opening hook (2-3 sentences)
  - Core message (3-5 short paragraphs or bullets)
  - CTA (clear, specific, action-oriented)
  - Sign-off
- **Insight label** — Which research finding drives this email
- **Best use case** — When/why to use this variant

**Spread variations across different angles:**
- Value-first (lead with clear benefit)
- Problem-aware (open with pain point)
- Direct/no-fluff (straight to the point)
- Social proof (credibility and trust)
- Story-driven (context or scenario)
- Curiosity-driven (only if research shows it resonates)

### Step 5: Validate Top Variants (Optional)

Test 3-5 strongest emails back with the audience:

```
ask_twins(
  audience: "[same audience]",
  questions: [
    "You receive this email. Subject: '[Subject]'. Would you open it? If you opened it and saw: '[Opening]', would you keep reading?",
    "Between these emails, which would you engage with? A: '[Email A summary]' B: '[Email B summary]'. Why?",
    "Does this email feel valuable or like noise? What makes you say that?",
    "Would you click this CTA: '[CTA copy]'? What would make you more likely to click?"
  ]
)
```

Update emails based on feedback before finalizing.

### Step 6: Deliver Email Campaign Set

**1. Campaign Overview:**
- Audience insights summary
- Key findings (what resonates, what to avoid)
- Recommended approach

**2. Email Variations (5-8 complete emails):**
- Subject line + preview text
- Full body copy + CTA
- Insight driving each email
- Best use case

**3. Subject Line Library:** 10-15 tested subject lines ranked by predicted performance

**4. A/B Testing Plan:**
- Which emails to test first
- What elements to test (subject, opening, CTA, length)
- Success metrics to track

**5. Do's and Don'ts (based on research):**
- What resonates with this audience
- What triggers unsubscribes

## Email Best Practices

| Element | Guideline |
|---------|-----------|
| **Subject line** | 6-10 words; clear benefit or curiosity without clickbait |
| **Preview text** | Complement subject line; don't repeat; add context |
| **Opening hook** | First 2 sentences determine if they keep reading |
| **Email body** | Short paragraphs (2-3 sentences); scannable; whitespace |
| **CTA** | One primary CTA; clear action; repeat if email is long |
| **Length** | Match audience preference (research will reveal) |
| **Frequency** | Align with tolerance from research |

## Email Sequence Considerations

For multi-email sequences (welcome series, onboarding, launch):

- **Map the journey**: What do they need to know first, second, third?
- **Vary the approach**: Don't repeat the same structure in every email
- **Build on previous emails**: Reference what they've learned or done
- **Respect timing**: Space emails based on frequency tolerance
- **Clear exit**: Make it easy to unsubscribe; forcing people to stay backfires

## Tips for Best Results

- **Subject lines make or break opens**: Test multiple angles; what works for one audience won't work for another
- **The first sentence is everything**: If the opening doesn't hook them, they're gone
- **Use their language**: Pull exact phrases from Digital Twin responses
- **Clarity over cleverness**: If they need to re-read to understand, simplify
- **One clear goal per email**: One CTA, one purpose
- **Respect their inbox**: If research shows frequency concerns, acknowledge it
- **Test drastically different approaches**: Not just subject variations; test fundamentally different structures and tones

## Related Skills

- **deep-customer-research**: For deeper audience understanding before writing campaigns
- **creative-testing**: To test email concepts before full production
- **landing-page-optimization**: To optimise the page email CTAs link to
- **brand-messaging-validation**: If brand voice needs validation first
