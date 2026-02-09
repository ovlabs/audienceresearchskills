---
name: facebook-ad-copy
version: 1.0.0
description: "Use this skill to generate Facebook and Instagram ad copy grounded in real audience insight. Triggers include: requests to create Facebook or Meta ad campaigns, write primary text and headlines for Facebook ads, refresh stale social ad creative, build ad sets for different audience segments, or generate audience-tested ad variations. Uses OriginalVoices Digital Twins (ask_twins) to deeply research the target audience's language, preferences, concerns, and experiences, then generates 10-15 audience-informed ad variations rooted in what real people actually said — not AI guesswork."
---

# Facebook Ad Copy Agent

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

This is the most important step. Use `ask_twins` to understand the audience's world — their language, what they care about, what frustrates them, what grabs their attention, and how they relate to the problem space. Ask broad questions about the general topic area, not just about the specific product.

```
ask_twins(
  audience: "[detailed target audience description]",
  questions: [
    "What's your biggest frustration or challenge when it comes to [general topic area, e.g. skincare, fitness, cooking, managing finances]?",
    "What matters most to you when choosing a [product category]? What do you look for?",
    "Have you tried any [products/solutions in this space] before? What was your experience — what worked and what didn't?",
    "What concerns or hesitations would you have about trying a new [product in this category]?",
    "What would a brand need to say or show to earn your trust in this space?",
    "How do you typically discover new [products in this category]? What influences your decisions?"
  ]
)
```

**Why this matters:** These questions surface the real language people use, the emotions they feel, the objections they hold, and the experiences that shape their decisions. This is what makes the ads resonate — not generic marketing copy.

### Step 3: Analyse Audience Insights

Review all responses and extract:

- **Pain points in their own words**: The exact language they use to describe frustrations
- **Preferences and priorities**: What they look for and value in this category
- **Experiences and context**: What they've tried before and how it went
- **Concerns and objections**: What would hold them back from trying something new
- **Trust signals**: What builds or breaks confidence
- **Emotional drivers**: The feelings that motivate action (relief, excitement, validation, fear of missing out)

### Step 4: Generate Ad Variations

Using the audience insights, generate 10-15 ad variations (or the number requested). Every ad should be directly traceable to something the audience actually said — a pain point, a preference, a phrase, an emotion.

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
    "Imagine you're scrolling through Facebook and you see this ad: '[primary text + headline]'. Would you stop scrolling? Would you click? Why or why not?",
    "Which of these ad openings grabs you most? A: '[opening A]' B: '[opening B]' C: '[opening C]'. Tell me why.",
    "Is there anything in these ads that feels off, unbelievable, or would make you keep scrolling?"
  ]
)
```

### Step 6: Deliver Final Ad Set

Present the full set of ad variations with:
- Each ad in full (primary text, headline, description, CTA)
- The audience insight driving each ad clearly labelled
- Ads grouped by angle (pain point, benefit, trust, experience, objection)
- Validation results (if done)
- Top 3-5 recommended ads to test first
- A/B testing suggestions (which ads to test against each other)

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
