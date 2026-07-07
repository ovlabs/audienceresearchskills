---
name: brand-messaging-validation
version: 1.1.0
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

**Question quality — apply every rule to every question before sending.** The goal is the widest possible range of honest answers. A weak question is narrow, leading, or closed, so respondents converge on the same obvious reply and you learn nothing. Run each question through these rules:

1. **Anchor in a specific moment or behaviour, not an abstract definition.** Ask "Walk me through the last time…" or "Tell me about a time…", never "How do you define / think about [concept]?".
2. **Keep the valence open — never lead.** Don't presuppose the experience was good or bad. Banned phrasings: "what frustrates you most about…", "the time [X] annoyed you", "what do you love about this". Ask "how did it go?" or make it two-sided: "what worked well, and what didn't?".
3. **One idea per question.** Split anything double-barrelled into separate questions.
4. **Open-ended only — no yes/no, no multiple choice.** Every question invites How / What / Why / Walk me through / Tell me about. Never hand respondents a menu of options to pick from — let them supply their own.
5. **No socially-correct answers.** If almost everyone would answer the same way ("Is quality important?" → yes), reframe with a trade-off ("when is quality *not* worth it?").
6. **Ground intent in real behaviour.** Don't ask hypotheticals like "would you buy / click / switch?" — they inflate. Anchor in what they last actually did ("the last time you bought something like this, what tipped the decision?").
7. **Build in room to diverge.** Prefer a fork, trade-off, or spectrum ("what would make you — and what would hold you back?") over a flat single-answer prompt.

Before sending, check each question passes both gates — **Range:** could most people answer it the same way, or is there an obvious "right" answer? **Neutrality:** does it assume how they feel, or hand them the answer? If it fails either, rewrite it.

**Testing stimuli without bias.** When showing concepts, ads, taglines, or messaging options:
- Capture the **unaided gut reaction first** ("what's your first impression?") before asking for reasons.
- **Don't signal the hoped-for winner** — never reveal which option is the client's, and never ask "isn't this great?".
- When comparing options, **counterbalance the order** (don't always show A first) and always allow "neither / none of them".
- **Keep three questions separate:** comprehension ("what message do you take from this? who is it for?") → preference ("which do you prefer, and why?") → persuasion ("does it make you more or less likely to act?"). Never fuse them into one.

```
ask_twins(
  audience: "[detailed target audience]",
  questions: [
    "Tell me about the last time you picked a [product category / industry] brand and felt good about the choice — what won you over?",
    "Thinking about the [category] brands you've dealt with — what have some got right, and what have others got wrong?",
    "Here's how a brand describes itself: '[positioning statement]'. What's your honest first impression?",
    "In your own words, what does this brand actually do, and who is it for? What's fuzzy or unclear, if anything?",
    "Set next to other [category] brands you know, how does this one come across — where does it stand out, and where does it blend in?",
    "[If testing tagline] When you read this tagline: '[tagline]', what does it make you think or feel?",
    "This brand says it stands for: [list 3-4 brand values]. Which of these would actually change how you see a [category] brand — and which are just table stakes?",
    "For a [category] brand, which of those claims would you take at face value — and which would you take with a pinch of salt? What makes the difference?",
    "[If testing tone — show the two examples in a random order, and allow 'neither'] Here are two ways this brand might talk: '[Example 1]' and '[Example 2]'. Which sounds more like a brand you'd trust — or does neither — and what is it about the wording?",
    "Set against [competitor name] or other [category] brands you know, where does this one feel genuinely different, and where does it feel like more of the same?",
    "When you read this brand's messaging, what feeling does it leave you with — and how close does it come to understanding people like you?",
    "Tell me about a brand you've happily recommended to someone — what earned that? Where would this one land against it?",
    "If you described this brand to a friend in one sentence, what would you say — and what would stick with you afterwards?",
    "[If testing alternatives — show the options in a random order, and allow 'neither'] Here are two ways this brand could position itself: '[Option 1]' and '[Option 2]'. Which pulls you in more — or does neither — and what's doing the work?"
  ]
)
```

**Note:** Adjust questions based on what's being tested. If not testing a tagline, remove tagline questions. If not testing tone, remove tone questions. If testing alternatives, include comparison questions. Whenever you show two options (tone or positioning), vary which one appears first across runs and always let respondents choose "neither".

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

Format the output using proper markdown headers: use `##` for the report title, `###` for major sections, `####` for subsections, `>` blockquotes for Digital Twin quotes, and `---` horizontal rules between major sections. Never use plain text or bold-only text as section headers — always use proper markdown headers. Where findings have clear quantitative patterns (e.g. "8 out of 12 twins found the positioning unclear"), include a chart to visualize the distribution.

### Report sections:

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
- Which values resonate (ranked by importance). Include a chart ranking values by resonance.
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
- Primary feelings the messaging evokes. Include a chart of dominant emotional responses.
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
