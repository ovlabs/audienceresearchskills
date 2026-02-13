---
name: brand-messaging-validation
version: 1.0.0
description: "Use this skill to validate and refine brand messaging, positioning, and taglines using real audience insight. Triggers include: requests to test brand positioning, validate taglines or slogans, understand brand perception, refine mission statements, test brand voice, or differentiate from competitors. Uses OriginalVoices Digital Twins (ask_twins) to understand how target audiences interpret brand messaging, what resonates emotionally, what creates confusion, and what drives brand affinity — ensuring brand statements connect with real people, not just internal stakeholders."
---

# Brand Messaging Validation Skill

## Overview

Validate your brand messaging with real audience insight before locking it in. This workflow helps you understand how your target audience interprets your brand statements, what creates emotional resonance, what causes confusion, and what differentiates you meaningfully — so you can build brand messaging that actually connects instead of sounding like every other company.

## Workflow Steps

### Step 1: Define What You're Testing

Gather from the user:
- **Target audience**: Who is this brand for? (e.g. "Health-conscious millennials", "Small business owners in creative industries")
- **Current or proposed brand messaging**:
  - Brand positioning statement
  - Tagline/slogan (if applicable)
  - Mission/vision statements (if testing)
  - Key brand values or pillars
  - Tone of voice examples (if testing)
- **Category context**: What space does the brand operate in? Who are main competitors?

### Step 2: Comprehensive Brand Messaging Validation

One comprehensive research call covering category values, positioning interpretation, tagline resonance, brand values authenticity, differentiation, and emotional connection.

```
ask_twins(
  audience: "[detailed target audience]",
  questions: [
    "When you think about [product category / industry], what matters most to you? What do you look for in brands you trust?",
    "What frustrates you about most brands in the [category] space? What do they get wrong?",
    "Here's how a brand describes itself: '[positioning statement]'. What's your immediate reaction? What do you think this brand is about?",
    "Based on that description, is it clear what this brand does and who it's for? What's confusing or unclear, if anything?",
    "Does that description make this brand sound different from other [category] brands? What makes it stand out, or does it blend in?",
    "[If testing tagline] When you read this tagline: '[tagline]', what does it make you think or feel? Does it feel memorable or forgettable?",
    "This brand says it stands for: [list 3-4 brand values]. Do these values matter to you? Which ones resonate and why?",
    "Do those values feel authentic for a [category] brand, or do they feel like generic corporate speak that every brand claims?",
    "[If testing tone] Here are two ways this brand might communicate: A: '[Example A]' B: '[Example B]'. Which feels more right for what they do?",
    "Compared to [competitor name] or other [category] brands you know, does this brand feel genuinely different? What makes you say that?",
    "When you read this brand's messaging, how does it make you feel? Does it feel like it 'gets you' and understands people like you?",
    "Based on how this brand presents itself, would you feel proud to use or recommend it? What would hold you back?",
    "If you had to describe this brand to a friend in one sentence, what would you say? What would you remember about it?",
    "[If testing alternatives] Between these positioning options: A: '[Option A]' B: '[Option B]', which appeals to you more and why?"
  ]
)
```

**Note:** Adjust questions based on what's being tested. If not testing a tagline, remove tagline questions. If not testing tone, remove tone questions. If testing alternatives, include comparison questions.

### Step 3: Analyse Brand Messaging Insights

Review responses and assess:

**Clarity:**
- Do people understand what the brand does and who it's for?
- What creates confusion or ambiguity?

**Resonance:**
- What messaging landed emotionally?
- What values or statements people connected with?
- What felt hollow or generic?

**Differentiation:**
- Does the brand feel distinct from competitors?
- What makes it stand out (or fail to stand out)?
- Is differentiation meaningful or superficial?

**Authenticity:**
- Does the messaging feel genuine or corporate?
- Do stated values feel believable?
- Does tone match expectations for the category?

**Memorability:**
- What stuck with people?
- What would they remember or repeat?

### Step 4: Deliver Brand Messaging Report

**1. Executive Summary:**
- Overall verdict on current messaging
- Top 3 strengths
- Top 3 areas for improvement
- Recommended direction (Keep / Refine / Rethink)

**2. Positioning Assessment:**
- How audience interprets the positioning
- What lands clearly vs. what's confusing
- Emotional response and brand personality perception
- Differentiation from competitors
- Supporting quotes

**3. Tagline/Slogan Analysis** (if tested):
- Resonance and memorability
- What it communicates (intended vs. actual)
- Comparison with alternatives (if tested)
- Refinement suggestions

**4. Brand Values Validation:**
- Which values resonate (ranked by importance)
- Which feel authentic vs. generic
- Values that drive affinity vs. values that don't matter
- Supporting quotes

**5. Tone & Voice** (if tested):
- Whether tone lands as intended
- Audience preference between options
- Category fit and authenticity

**6. Differentiation Analysis:**
- How brand is perceived vs. competitors
- What makes it stand out (or doesn't)
- Meaningful differentiation vs. superficial claims

**7. Emotional Connection:**
- Primary feelings the messaging evokes
- Whether brand feels relatable and "gets them"
- Factors that build (or block) affinity

**8. Audience Insights:**
- What this audience cares about in the category
- What builds trust and loyalty
- What turns them off
- Key emotional drivers

**9. Recommendations:**
- Refined positioning statement (if needed)
- Alternative tagline options (if current one didn't land)
- Brand value prioritization (which to lead with)
- Tone adjustments
- Messaging do's and don'ts

**10. Next Steps:**
- If validated: Move forward with confidence
- If needs refinement: Specific changes to make and retest
- If messaging missed: Strategic pivot recommendations

## Brand Messaging Framework

Strong brand messaging answers these questions clearly:

| Question | What It Tests |
|----------|--------------|
| **Who are we?** | Category/space clarity |
| **Who are we for?** | Target audience clarity |
| **What do we do?** | Core offering clarity |
| **Why does it matter?** | Value/outcome clarity |
| **What makes us different?** | Differentiation clarity |
| **Why should you trust us?** | Credibility signals |
| **What should you feel?** | Emotional tone |

If your messaging doesn't clearly answer these, use the research to refine until it does.

## Red Flags (Rethink Messaging)

- Audience can't articulate what the brand does
- Positioning feels generic and interchangeable with competitors
- Values feel like empty corporate speak
- Tagline is forgettable or confusing
- Emotional response is neutral or negative
- People struggle to describe the brand in their own words

## Green Lights (Strong Messaging)

- Audience clearly understands what the brand does and who it's for
- Messaging evokes specific, positive emotions
- Differentiation is clear and meaningful
- Values feel authentic and tied to actions
- Tagline is memorable and captures essence
- People can easily explain the brand to others
- Brand feels relatable and "gets them"

## Tips for Best Results

- **Be willing to hear "no"**: If messaging doesn't resonate, it's better to know now than after a launch
- **Specificity beats aspiration**: "We help X do Y so they can Z" beats "We're transforming the future of [industry]"
- **Watch for comprehension gaps**: If people don't understand what you do, nothing else matters
- **Generic values don't differentiate**: "Innovation, integrity, excellence" — every brand claims these
- **Differentiation must be meaningful**: "We care more" isn't differentiation; "We're the only [category] for [specific need]" is
- **Emotional connection drives loyalty**: People may buy on features but stay loyal to brands they feel connected to
- **Test competitors too**: Understanding how audience perceives competitors reveals positioning opportunities

## Related Skills

- **deep-customer-research**: For deeper audience understanding before testing messaging
- **creative-testing**: To test specific creative executions of your brand
- **icp-discovery**: To find the right audience for your brand
- **landing-page-optimization**: To apply validated messaging to your landing page
