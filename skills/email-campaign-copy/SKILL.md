---
name: email-campaign-copy
version: 1.1.1
description: "Use this skill to generate email marketing copy grounded in real audience insight. Triggers include: requests to write email campaigns, create newsletter content, improve email open rates, write welcome sequences, launch announcement emails, or re-engagement campaigns. Uses OriginalVoices Digital Twins (ask_twins) to understand what makes the audience open emails, what messaging resonates, what triggers action, and what causes unsubscribes — then generates audience-informed email variations rooted in real subscriber perspectives."
---

# Email Campaign Copy Skill

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

One comprehensive research call covering email behaviour, what drives opens and unsubscribes, value perception, and messaging preferences. Keep the research phase open-ended — save subject-line and opening-line A/B picks for the copy-validation step (Step 5), where forced choice belongs.

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
    "Tell me about the last marketing email you actually opened and read — what was it, and what made you open it?",
    "Tell me about the last marketing email you deleted straight away or unsubscribed from — what was it about it that put you off?",
    "How would you describe [topic/offer] in your own words — the way you'd explain it to a friend?",
    "Think about a marketing email you were glad you read — what did it give you that made it feel worth your time rather than just noise?",
    "When you open a marketing email, what usually makes you keep reading past the first line — and what makes you close it?",
    "Tell me about the last time an email actually got you to click through to something — what was it, and what made you act?",
    "When you're weighing up whether something like [offer/product/concept] is worth it, what pulls you in — and what makes you hold back?",
    "Think about a brand whose emails you've stayed subscribed to — how often do they email you, and what makes that feel about right rather than too much?",
    "When you read an email that felt like it really got you, how was it written — the tone, the length, the way it talked to you?",
    "What's a subject line or phrase from a marketing email that actually stuck with you — good or bad — and what was it about it?"
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

Test 3-5 strongest emails back with the audience. This is where forced-choice A/B picks belong — the research phase stayed open-ended, so use this step to compare specific subject lines, openings, and emails head to head.

```
ask_twins(
  audience: "[same audience]",
  questions: [
    "You see these subject lines in your inbox: A: '[Subject A]' B: '[Subject B]' C: '[Subject C]'. Which would you open first, and what makes the other two easy to skip?",
    "Here are two ways this email could open. A: '[Opening line A]' B: '[Opening line B]'. Which one keeps you reading, and where does the other lose you?",
    "You open this email and read the first few lines: '[Opening]'. In your own words, what do you take it to be offering — and what would you do next, if anything?",
    "Between these two emails, which feels more worth your time? A: '[Email A summary]' B: '[Email B summary]'. What makes the other one miss?",
    "Does this email feel worth your time or like noise? What makes you say that?",
    "Picture this CTA at the end of the email: '[CTA copy]'. What would you do when you reach it — and what, if anything, would make you more likely to act?"
  ]
)
```

Update emails based on feedback before finalizing.

### Step 6: Deliver Email Campaign Set

Present it in clear sections, with Digital Twin quotes verbatim and attributed.

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
