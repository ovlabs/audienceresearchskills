---
name: creative-brief
description: "Use this skill to generate a creative brief grounded in real audience insight. Triggers include: requests to write a creative brief, brief a creative team or agency, define a campaign brief, establish creative direction, or prepare a brief for designers, copywriters, or content creators. Uses OriginalVoices Digital Twins (ask_twins) to deeply understand the target audience's language, emotions, motivations, and preferences — then synthesises findings into a structured creative brief that gives creative teams a validated human foundation to build from, not assumptions."
---

# Creative Brief

## Overview

Generate a creative brief grounded in real audience insight using OriginalVoices Digital Twins. Instead of writing briefs based on assumptions or internal opinions, this workflow builds the brief from validated audience understanding — so creative teams start with what actually matters to real people.

## Workflow Steps

### Step 1: Gather Inputs

Collect from the user:

- **Product or service**: What is being promoted or communicated?
- **Campaign objective**: What should this creative achieve? (e.g. awareness, trial, conversion, repositioning)
- **Target audience**: Who is this for? Be as specific as possible — demographics, interests, lifestyle, values
- **Deliverables**: What will the creative team produce? (e.g. social ads, video, landing page, packaging, brand campaign)
- **Brand guidelines** (if any): Existing tone, visual identity, or messaging guardrails
- **Competitors or context** (optional): Who else is in the space? What's the competitive landscape?
- **Budget/timeline context** (optional): Any constraints that shape the brief

### Step 2: Audience Research via Digital Twins

Conduct deep audience research to build the brief on validated insight, not guesswork. Ask 10-12 questions covering emotional drivers, language, pain points, aspirations, preferences, and what makes the audience act.

```
ask_twins(
  audience: "[detailed target audience description]",
  questions: [
    "When you think about [product category], what matters most to you? What do you actually care about?",
    "What frustrates you most about [product category / current solutions]? What do brands in this space get wrong?",
    "How does [the problem this product solves] make you feel day-to-day? What emotions come up?",
    "When you see ads or content about [category], what catches your attention? What makes you stop scrolling?",
    "What kind of tone or voice feels right for a [category] brand talking to someone like you? What feels off?",
    "Can you describe a moment when you realised you really needed a better [product/solution]? What was happening?",
    "What would make you trust a new brand in this space enough to try it? What signals credibility to you?",
    "If a product like [product] truly delivered, how would your life or routine be different? What would change?",
    "What words or phrases do you use when talking about [problem/category] with friends or family?",
    "When you see [category] advertising, what turns you off immediately? What feels fake or irrelevant?",
    "What would a brand need to say or show to make you feel like they genuinely understand people like you?",
    "Who or what influences your decisions about [category]? Where do you go for recommendations?"
  ]
)
```

**Note:** Tailor questions to the specific product and campaign. If the brief is for a visual campaign, add questions about imagery and aesthetics. If it's for a specific channel, ask about that channel's consumption habits.

### Step 3: Identify the Key Insight

From the research, identify the single most important human truth — the insight that should anchor the entire brief. A strong insight:

- Reveals a tension, desire, or unmet need the audience feels deeply
- Is specific enough to inspire creative work (not generic)
- Creates an "of course" reaction — it feels true and recognisable
- Connects the audience's world to what the product can deliver

**Test your insight:** If you could say it about any brand in any category, it's too generic. If it only makes sense for this audience and this product, you've found it.

### Step 4: Deliver the Creative Brief

Structure the brief as follows:

**1. Background & Context**
- What's the situation? Why is this creative needed now?
- Product/service overview
- Competitive landscape (informed by what the audience actually said about alternatives)

**2. Objective**
- What must this creative achieve?
- Primary KPI or success metric

**3. Target Audience Profile**
- Demographics and psychographics
- How they think and feel about the category (grounded in Twin responses)
- Their language — actual words and phrases they use
- What they care about most, in their own words
- Key emotional drivers

**4. Key Insight**
- The single human truth that anchors this brief
- Supporting evidence from audience responses

**5. Single-Minded Message**
- The one thing the audience should think, feel, or do after seeing this creative
- Must flow directly from the insight

**6. Support Points**
- 3-4 reasons to believe
- Product truths that validate the message
- Proof points or credibility signals the audience said matter to them

**7. Tone & Manner**
- How the creative should feel (grounded in what the audience said resonates)
- What to avoid (grounded in what the audience said turns them off)
- Audience quotes that capture the right tone

**8. Audience Do's and Don'ts**

| Do (resonates with this audience) | Don't (falls flat or alienates) |
|---|---|
| [Specific thing that works, with quote] | [Specific thing to avoid, with quote] |
| [Another thing that works] | [Another thing to avoid] |
| [Continue based on findings] | [Continue based on findings] |

**9. Mandatories & Guardrails**
- Brand guidelines to follow
- Legal or compliance requirements
- Channel-specific constraints

**10. Deliverables & Format**
- What the creative team needs to produce
- Dimensions, formats, or specifications

## Tips for Best Results

- **Lead with audience language**: Use the actual words Twins used — they reveal how real people think and talk about this category
- **One insight, not five**: The best briefs are ruthlessly focused. Pick the most powerful insight and build everything around it
- **Tensions are gold**: If the audience revealed a tension (e.g. "I want X but I'm afraid of Y"), that's often the strongest creative territory
- **Specificity inspires creativity**: "Busy mums who feel guilty about screen time" inspires better work than "parents aged 25-45"
- **Include raw quotes**: Creative teams connect with real voices more than summarised findings
- **Don't prescribe executions**: The brief should inspire creative solutions, not dictate them. Define the "what" and "why", let the creative team own the "how"

## Common Pitfalls to Avoid

- **Brief by committee**: Cramming every stakeholder's opinion into the brief dilutes focus
- **Generic insights**: "People want quality at a good price" isn't an insight — it's a truism
- **Multiple messages**: If the brief has more than one key message, it has no key message
- **Skipping the audience**: Writing the brief first and then looking for audience data to support it defeats the purpose
- **Internal language in the brief**: If the audience wouldn't use a word, it shouldn't be in the insight or message
- **Confusing features with benefits**: The audience cares about outcomes, not specifications

## Creative Brief Quality Checklist

Before delivering, verify:

- [ ] Insight is specific to this audience and product (not interchangeable)
- [ ] Single-minded message is truly single-minded (one idea, not three)
- [ ] Audience profile uses their actual language, not marketing speak
- [ ] Tone guidance is grounded in what the audience said, not internal preference
- [ ] Do's and Don'ts are backed by real audience quotes
- [ ] Brief would inspire creative work (not just inform it)
- [ ] A creative team could start working from this brief alone
