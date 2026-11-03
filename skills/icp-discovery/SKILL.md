---
name: icp-discovery
version: 1.2.0
description: "Use this skill to discover the ideal customer profile (ICP) and target audience for a product, concept, or idea by testing it across multiple demographic segments. Triggers include: requests to find the best audience for a product, identify an ICP, discover who a product resonates with most, explore which demographic segments respond best to a concept, validate target market assumptions, find product-market fit, or uncover unexpected audience opportunities. Also use when a user doesn't know who to target, is entering a new market, launching a new product, or wants to compare audience receptivity across segments before committing budget. Uses OriginalVoices Digital Twins (ask_twins) to test the same product/concept across 5+ distinct demographic segments simultaneously, then ranks segments by fit and extracts messaging guidance for the top ICP."
---

# ICP & Target Audience Discovery Skill

## Overview

Identify your ideal target audience by evaluating your product, concept, or idea across multiple demographic segments simultaneously. Rather than making assumptions about who to reach, this workflow presents your offering to 5+ distinct audiences and reveals who resonates most — and precisely why. The result is a ranked segment list, targeted messaging insights for your primary ICP, and comprehensive feedback across all audiences.

## Workflow Steps

### Step 1: Understand the Product/Concept

Request that the user either:
- **Describe** their product, concept, or idea in a few sentences, or
- **Share a link** to a landing page, product page, or pitch deck

Extract a clear 1-2 sentence summary describing what it is and what problem it addresses. This summary becomes the foundation for questions presented to each segment.

### Step 2: Select Candidate Segments

Based on the product/concept, propose 5-7 distinct demographic segments representing a diverse cross-section of potential audiences. Segments should vary across multiple dimensions — not just age.

**Segment design principles:**
- Vary by age, gender, life stage, interests, income, and lifestyle
- Include at least one "unexpected" segment the user might not have considered
- Ensure segments don't overlap heavily

**Example segment set for a meal planning app:**
1. Busy working parents aged 30-45 with young children
2. Health-conscious young adults aged 20-30 living in cities
3. Men aged 35-45 interested in health and fitness
4. University students aged 18-24
5. Women aged 45-60

### Step 3: Build the Question Set

Design 4-6 questions that test receptivity, relevance, emotional response, and purchase intent. These same questions will be asked to every segment for direct comparison.

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

**Core questions (adapt to the specific product/concept):**

```
questions: [
  "I'd like to tell you about [product/concept: 1-2 sentence description]. Setting aside whether it's for you, what's your honest first impression?",
  "Tell me about the last time [the problem this solves] came up in your life — what happened, and how much did it matter to you?",
  "The last time you tried something new to deal with [the problem this solves], what made you give it a go — and what would hold you back with something like this?",
  "What would something like this have to get right to earn a place in your life — and what would make it not worth it?",
  "If you were describing this to a friend, what would you say it is and who it's for?",
  "What's the first thing you'd want to know before deciding whether something like this is for you?"
]
```

### Step 4: Run Segment-by-Segment Research

Make a separate `ask_twins` call for each segment, using the same questions every time. This ensures clean, comparable data across all segments.

```
# Segment 1
ask_twins(
  audience: "Busy working parents aged 30-45 with young children in the US",
  questions: [
    "I'd like to tell you about [product description]. Setting aside whether it's for you, what's your honest first impression?",
    "Tell me about the last time [problem] came up in your life — what happened, and how much did it matter to you?",
    "The last time you tried something new to deal with [problem], what made you give it a go — and what would hold you back with something like this?",
    "What would something like this have to get right to earn a place in your life — and what would make it not worth it?",
    "If you were describing this to a friend, what would you say it is and who it's for?",
    "What's the first thing you'd want to know before deciding whether something like this is for you?"
  ]
)

# Segment 2
ask_twins(
  audience: "Health-conscious Gen Z adults aged 20-28 living in cities",
  questions: [
    # Same questions as above
  ]
)

# ... Repeat for all segments
```

### Step 5: Score & Rank Each Segment

For each segment, evaluate responses across these dimensions:

| Dimension | What to Look For |
|-----------|-----------------|
| **Interest level** | Enthusiasm vs. indifference. Did they light up or shrug? |
| **Problem relevance** | Is the problem real and active in their life, or theoretical? |
| **Purchase intent** | Would they actually try/buy it, or is it a polite "maybe"? |
| **Emotional resonance** | Did it trigger a strong emotional response (excitement, relief, hope)? |
| **Objection severity** | Are their hesitations minor (price, timing) or fundamental (don't need it)? |
| **Natural language fit** | Did they describe the product in a way that could become marketing copy? |
| **Word-of-mouth potential** | Could they easily explain it to a friend? Did their description sound compelling? |

**Rank all segments from strongest to weakest fit** based on a holistic assessment of these dimensions.

### Step 6: Deep-Dive on Top ICP

For the #1 ranked segment, extract detailed messaging guidance:

- **Why they care**: The core motivation driving their interest
- **Their language**: Exact words and phrases they used to describe the product and problem
- **Key benefit**: The single benefit that resonated most
- **Primary objection**: The main thing holding them back — and how to address it
- **Emotional hook**: The feeling that drives them (relief, excitement, validation, fear)
- **How they'd describe it**: Their "friend description" becomes the basis for positioning
- **Trust signals needed**: What they said they'd want to know or see before trying it
- **Recommended messaging angle**: A 1-2 sentence positioning statement built from their actual words

### Step 7: Deliver the Full Report

This is a full write-up, not a one-page summary: the reader should come away understanding why, not just what. Deliver every section below, in this order. Each section opens with its conclusion in one sentence, then explains it: what is going on, why the twins think or act that way, who it applies to and who it doesn't, and how it connects to the other findings. Counts and shares are the evidence for the analysis, never a replacement for it. Quote Digital Twins verbatim and attributed. Where findings have clear quantitative patterns, include a chart to visualize the distribution.

### Report sections:

**1. Executive Summary**
The story of the research in a short paragraph (4-6 sentences): which segments were compared, the #1 target audience and why they beat the others, the biggest surprise, and what it means for go-to-market.

**2. Segment Rankings**

| Rank | Segment | Interest | Relevance | Intent | Key Insight |
|------|---------|----------|-----------|--------|-------------|
| 1 | [Top segment] | High | High | High | [The insight that decides its rank] |
| 2 | [Second segment] | ... | ... | ... | ... |
| ... | ... | ... | ... | ... | ... |

**3. Top ICP Deep-Dive**
- Who this audience is and why the product fits their life: a paragraph of analysis on their situation, the problem as they experience it, and what makes them more ready than the other segments — before any positioning
- Detailed messaging guidance (from Step 6)
- 3-5 direct quotes from Digital Twins that capture why this segment is the best fit
- Recommended positioning statement
- Suggested ad/marketing angles
- Include a chart comparing segment fit scores across all segments.

**4. Segment-by-Segment Breakdown**
For each segment (including lower-ranked ones):
- **Overall fit**: High / Medium / Low
- **Why**: A paragraph of analysis — what in their situation makes the product matter to them or not, what resonated, what fell flat and why
- **Key quotes**: 2-3 representative quotes from different twins
- **Verdict**: Should you target this segment? (Yes / Secondary / No — with reasoning)

**5. Messaging Matrix**

| Segment | Lead Message | Emotional Hook | Key Objection | Recommended? |
|---------|-------------|----------------|---------------|-------------|
| [Segment 1] | ... | ... | ... | Primary |
| [Segment 2] | ... | ... | ... | Secondary |
| [Segment 3] | ... | ... | ... | Deprioritise |
| ... | ... | ... | ... | ... |

**6. Strategic Recommendations**
- Primary ICP to target and the messaging angle to lead with, with the evidence that supports each
- Secondary audiences worth testing with smaller budget
- Segments to avoid and why
- Suggested next steps (e.g. "Run the Google Ad Copy workflow targeting your primary ICP")

## Tips for Best Results

- **Test at least 5 segments**: Fewer than 5 doesn't give enough contrast. 6-7 is ideal
- **Include a wildcard segment**: Always test one audience you wouldn't obviously target — surprises happen
- **Keep questions identical across segments**: Consistency is what makes comparison valid
- **Don't oversell the product**: Describe it factually in 1-2 sentences. Let the audience's genuine reaction tell the story
- **Watch for "polite interest" vs. real excitement**: Some audiences will say "sounds nice" without any real intent. Look for strong emotional language, specific use cases they imagine, and unprompted enthusiasm
- **The "friend description" question is gold**: How someone would explain your product to a friend is often better positioning than anything a marketer would write
- **Low-ranking segments are still valuable**: Understanding who doesn't care — and why — is just as strategic as finding who does

## Related Skills

- **deep-customer-research**: Once you've found your ICP, go deeper on their needs
- **facebook-ad-copy**: Generate ad copy targeting your top ICP
- **google-ad-copy**: Generate search ads targeting your top ICP
- **creative-testing**: Test creative concepts with your discovered audience
