---
name: feature-concept-testing
version: 1.1.1
description: "Use this skill to test and validate new feature concepts before building them. Triggers include: requests to validate feature ideas, test product concepts, understand if users would use a feature, gauge interest in new functionality, or reduce risk of building unwanted features. Uses OriginalVoices Digital Twins (ask_twins) to understand whether a feature solves a real problem, how users would actually use it, what concerns they have, and whether they'd pay for it — preventing wasted engineering effort on features nobody wants."
---

# Feature Concept Testing Skill

## Overview

Validate feature concepts with real user insight before committing engineering resources. This workflow tests whether a feature idea solves a real problem, how users would actually use it, and what makes it valuable — so you build features people want instead of features that seem good in theory.

## Workflow Steps

### Step 1: Define the Feature Concept

Gather from the user:
- **Target audience**: Who is this feature for? (e.g. "Power users of project management software")
- **Feature description**: What does it do? (functionality, not technical implementation)
- **Problem it solves**: What user problem or need does this address?
- **Context**: Where does it fit? When would users encounter it?

### Step 2: Validate Problem & Feature Concept

One comprehensive research call covering problem validation, feature appeal, usage scenarios, value perception, and concerns.

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
    "Walk me through the last time [problem area this feature addresses] tripped you up — what did you do about it?",
    "Tell me about the last time [problem] happened — what did it cost you in time or hassle, and how often does it come around?",
    "Here's an idea: [product] could let you [feature description]. In your own words, what would that actually do for someone like you?",
    "If that existed, what — if anything — would it change about how you handle [problem] today?",
    "Picture the next time [problem] comes up — where, if anywhere, would something like this fit into what you're already doing?",
    "Realistically, how often do you see yourself reaching for something like this — and what would push it up or down?",
    "How does this compare with the way you deal with [problem] now — where might it win, and where might your current way still be better?",
    "What would it take for something like this to feel like a natural part of your routine rather than an extra step?",
    "What would give you pause about relying on something like this — what could go wrong?",
    "How much would you actually miss something like this if it never existed? What makes you say that?",
    "Tell me about a time you switched to a different [product type] because of one specific feature — what made it worth it, and how does this compare?",
    "What's an add-on or upgrade you currently pay extra for in tools like this — and what made it worth paying for? Where would something like this fall?"
  ]
)
```

**Optional: Test Alternative Approaches**
```
ask_twins(
  audience: "[same audience]",
  questions: [
    "Here's a different way to tackle [problem]: [alternative approach]. What do you make of it next to the first idea — and when might one beat the other?",
    "Some people would want [Feature as described], others a stripped-back version, others neither — where do you land, and why?",
    "If you could design the perfect fix for [problem] from scratch, what would it look like?"
  ]
)
```

### Step 3: Analyse Feature Validation Insights

Review responses and assess:

**Problem-Solution Fit:**
- Is the problem real and painful?
- Does the feature actually solve it?
- Is it meaningfully better than alternatives?

**Usage Likelihood:**
- Would users actually use it?
- How often? Does it fit their workflow?

**Value Perception:**
- Must-have vs. nice-to-have?
- Would they pay for it?
- Would they switch products for it?

**Concerns & Risks:**
- What objections exist?
- What would prevent adoption?

### Step 4: Deliver Feature Validation Report

Present it in clear sections, with Digital Twin quotes verbatim and attributed. Where findings have clear quantitative patterns, include a chart to visualize the distribution.

### Report sections:

**1. Executive Recommendation:**
- Build / Iterate / Don't Build
- Confidence level (high, medium, low)
- Key rationale (2-3 sentences)

**2. Problem Validation:**
- Is the problem real? (supporting quotes)
- How painful and frequent?
- Current workarounds and costs

**3. Feature Assessment:**
- Does it solve the problem? (user interpretation)
- Would users use it? (frequency, scenarios)
- Differentiation vs. existing solutions

**4. Value Analysis:**
- What value does it create?
- Must-have vs. nice-to-have sentiment. Include a chart showing the distribution of must-have vs. nice-to-have vs. wouldn't-use responses.
- Willingness to pay (if tested)

**5. Concerns & Objections:**
- Top concerns (with quotes)
- Adoption risks
- Dealbreakers vs. acceptable limitations

**6. Recommendations:**

If **Build**:
- Key requirements to meet user needs
- Potential MVP scope
- Critical success factors

If **Iterate**:
- What to change about the concept
- Alternative approaches to test

If **Don't Build**:
- Why it failed validation
- What to focus on instead

**7. Next Steps:**
- If validated: Prototyping, design, MVP scope
- If needs iteration: What to test next
- If not validated: Where to focus effort instead

## Feature Validation Framework

| Criterion | Strong Signal | Weak Signal |
|-----------|---------------|-------------|
| **Problem intensity** | "This is incredibly frustrating, happens constantly" | "Minor annoyance occasionally" |
| **Solution fit** | "This would solve my problem perfectly" | "Not sure this would help" |
| **Usage frequency** | "I'd use this daily/multiple times per week" | "Might use it once in a while" |
| **Workflow fit** | "This fits naturally into how I work" | "I'd have to remember to use it" |
| **Value perception** | "Game-changer" / "I'd pay for this" | "That's nice I guess" |
| **Adoption likelihood** | "I'd start using this immediately" | "I'd stick with current approach" |

**Strong validation**: Multiple strong signals — Build with confidence
**Moderate validation**: Mixed signals — Iterate, test again
**Weak validation**: Mostly weak signals — Don't build

## Red Flags (Don't Build)

- Users struggle to describe when/how they'd use the feature
- The problem isn't painful or frequent
- Users say "that's cool" but can't articulate why it's valuable
- Current workarounds are simple and acceptable
- Users say "I guess I might use it" instead of "I need this"
- Concerns and objections outweigh enthusiasm

## Green Lights (Build)

- Users describe specific, frequent scenarios where they'd use it
- The problem is painful and current workarounds are costly
- Users say "this would change how I work"
- Multiple users independently describe similar use cases
- Users ask when it will be available
- Feature fits naturally into existing workflows
- Users would pay for it or switch products for it

## Tips for Best Results

- **Test the problem first**: If the problem isn't real, the feature doesn't matter
- **Watch for polite enthusiasm**: "That sounds cool" does not equal "I would use this" does not equal "I need this"
- **Look for specificity**: Vague positivity means nothing; specific use cases indicate real intent
- **Frequency matters**: Features used daily can be simple; features used monthly must be instantly intuitive
- **Follow the energy**: Strong emotional reactions are more valuable than lukewarm interest
- **Test the simplest version**: Test the core concept first, not a feature with 10 capabilities

## Related Skills

- **deep-customer-research**: For broader understanding of user needs before testing specific features
- **icp-discovery**: To find the right audience for your feature
- **creative-testing**: To test how you communicate the feature
- **brand-messaging-validation**: To validate how the feature fits your brand story
