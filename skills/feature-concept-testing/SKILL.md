---
name: feature-concept-testing
version: 2.0.0
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

The test can cover one feature, variants of it, or several feature ideas. Test what was supplied, described the way the user described it.

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

Read every individual twin answer to every question before drawing conclusions, and keep track of which question and feature each finding comes from. Apply the shared reporting standard at the end of this skill throughout this step and the next.

With one feature, the analysis below is the whole assessment. With several features or variants, assess each on its own first, then compare only what was tested in a comparable way. What twins say they would use or pay for is a signal to weigh, not proof of adoption.

Review responses and assess:

**Comprehension:**
- What did twins think the feature would actually do?
- Where does that differ from what was intended?

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

This is a full write-up, not a one-page summary: the reader should come away understanding why, not just what. The sections below are the default structure, in this order: deliver each one that applies to what was actually tested, and merge or drop one only when it does not apply or the answers give it nothing to say. Length follows the evidence, and every material finding from every question must make it in. Each section opens with its conclusion in one sentence, then explains it: what is going on, why the twins think or act that way, who it applies to and who it doesn't, and how it connects to the other findings. Counts and shares are the evidence for the analysis, never a replacement for it; count unique twins out of those who answered that question. Quote Digital Twins verbatim and attributed. Answer each section's questions with argued paragraphs and quotes, not one-liners. Where findings have clear quantitative patterns, a chart can show the distribution; never invent scores or percentages to fill one.

With several features or variants, give each its own sections 2-5, then add a comparison of how they did against each other where they were tested in a comparable way.

### Report sections:

**1. Executive Recommendation:**
- Build / Iterate / Don't Build, when the evidence supports a call. When it's mixed, say what the decision depends on rather than forcing one
- Confidence level (high, medium, low), and what the twins' reactions can't tell you (they signal interest, they don't prove adoption)
- The rationale in a short paragraph: the problem as users live it, whether this feature solves it for them, and what tips the decision

**2. Problem Validation:**
- Is the problem real? A paragraph on how users experience it today, with supporting quotes
- How painful and frequent?
- Current workarounds and costs

**3. Feature Assessment:**
- Does it solve the problem? (user interpretation)
- Would users use it? (frequency, scenarios)
- Differentiation vs. existing solutions

**4. Value Analysis:**
- What value does it create?
- Must-have vs. nice-to-have sentiment. A chart of the must-have vs. nice-to-have vs. wouldn't-use split when the answers can be counted that way.
- Willingness to pay (if tested)

**5. Concerns & Objections:**
- Top concerns, each with why it matters to users and supporting quotes
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

## OriginalVoices — Shared Research Analysis, Adaptive Workflow & Reporting Standard

**Version:** 2.0 | **Applies to:** every OriginalVoices research or research-informed content skill.

### Non-negotiable principle

**Every available Twin answer must be considered in the analysis. Every material finding must be reflected in the final output. Be as concise as possible, but as comprehensive as necessary to communicate faithfully what the research revealed.**

### 1. Adapt to the actual brief

- Evaluate exactly the supplied scope. A workflow may have **one** creative, feature, idea, message, product, content asset, or audience — or many. Never assume there are multiple items.
- For **one item**, deliver a substantive standalone assessment. Do not introduce a fictional comparator, winner, league table, or cross-creative section.
- For **several items**, assess **each** independently first; then compare meaningful strengths, weaknesses, interpretation, trade-offs and relevant audience differences **if evidence is comparable**. No clear winner, a tie, or distinct winners for different objectives are valid findings.
- For **one audience**, explore within-audience diversity and caveats. For **multiple audiences**, assess each fully before comparing, using comparable questions and honest disclosure of differences in sample/exposure.
- Tailor questioning and reporting dimensions to what the user actually provides. Do not assume videos, images, price points, variants, brand values, rankings, or KPIs were tested when they were not.
- Question counts, example questions and report sections are **defaults**, not mandatory quotas. Preserve the intended purpose and established tool-call workflow, but use judgement based on scope. Do not initiate follow-up research **solely to make reporting deeper**.

### 2. Analyse all evidence before drafting

1. Inspect **every available individual Twin answer to every question**. Track internally which question, response, item, and audience supports each material finding. If data are incomplete or truncated, say what was missing.
2. For **each question**, capture concrete behaviours, experiences, interpretations, preferences, motives, obstacles, trade-offs, exceptions, relevant respondent language and important negative/neutral reactions. Avoid premature compression into only a few themes.
3. Then synthesize **across questions**, identifying meaningful relationships, areas of reinforcement, contradictory answers, nuances, and distinct respondent perspectives. Only claim within-respondent patterns where response IDs allow linking the same Twin.
4. Separate **what respondents stated**, **analyst interpretation**, and **recommendation**. Do not equate Twin-simulated interest with demonstrated real-world adoption, conversion, purchasing or representative population estimates.
5. A small but decision-relevant minority view deserves inclusion. Do not fabricate segmentation or pretend everyone agrees.

### 3. Evidence and claims

- Ground each significant conclusion in the supplied responses; quote exact Twin language selectively, without invented verbatims. Do not reveal identifying information.
- For quantitative claims use defensible coding, the relevant question's actual responding-Twin denominator, and **unique respondents**, not repeated mentions. Disclose missing answers and unequal sample/exposure where relevant.
- Never invent percentages, numeric fit scores, emotional scores, sample sizes, statistical significance, charts, rankings or confidence measures.
- Compare or rank only if the items/segments were exposed and measured in a sufficiently comparable manner; otherwise offer a qualified qualitative assessment and clearly describe the limitation.
- Don't treat an agent-generated synthesis as equivalent to the full underlying response set. If only aggregated responses are available, explicitly limit claims.

### 4. Adaptive, proportionate reporting

- Deliver an answer suitable to the **decision**, not a rigid template. Begin with the main conclusion or succinct executive overview, then explain the substantive findings, evidence, differences, contradictions, uncertainties and implications.
- Make the level of detail proportional to number of questions, available responses, research complexity, and decision relevance. A short, straightforward test can be concise; an extensive study may need a substantial synthesis. **No 3–5-theme ceiling, mandatory 15-page report, fixed quote quota or compulsory chart.**
- Group related questions into a coherent narrative where useful, but check that **material findings from every question** survive into the final report. Don't dump every raw answer unless asked.
- Only include sections applicable to the actual study. Don't force a creative comparison for one creative, persona ranking for one audience, conversion claims for simulated intent, or fictional product proof points.
- For **content-production** skills, provide the requested usable content as the main output; follow with a concise but meaningful explanation of the audience research and how it shaped the asset. An extensive research report should be supplied only if requested or necessary to the brief.
- Charts, tables and representative quotes are tools for clarity, not obligations.

### 5. Quality gate — check before delivering

- Were **all available answers to all questions** considered, including neutral and negative responses?
- Are **all material findings** captured, including meaningful minority perspectives?
- Has the response adapted correctly to **one vs multiple items/audiences**?
- Is every comparison, count, quote, verdict and recommendation traceable and appropriately qualified?
- Is the result sufficiently detailed to explain what was learned, without needless repetition?
- Have you avoided **extra research calls** that were not part of the requested workflow?

If a check fails, improve the analysis **using existing collected answers**. Do not add questions merely to improve the report.
