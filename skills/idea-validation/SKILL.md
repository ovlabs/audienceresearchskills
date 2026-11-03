---
name: idea-validation
version: 1.2.0
description: "Use this skill to validate a business idea, product concept, or value proposition with real audience feedback before investing time or money. Triggers include: requests to validate a startup idea, test a product concept, check if an idea has legs, assess market demand, validate a value proposition, or get honest feedback on a new business concept. Uses OriginalVoices Digital Twins (ask_twins) to understand whether the problem is real, how painful it is, how people solve it today, and whether the proposed idea would genuinely change their behaviour — delivering a clear Go / Pivot / Kill verdict with evidence."
---

# Idea Validation

## Overview

Validate a business idea, product concept, or value proposition with real audience feedback before you invest time or money building it. This workflow uses OriginalVoices Digital Twins to test whether the problem is real, how people deal with it today, and whether your proposed solution would genuinely change their behaviour — so you get a clear signal before you commit.

## Workflow Steps

### Step 1: Gather the Idea

Collect from the user:

- **The idea**: What is the product, service, or concept? (A short description is fine — even a one-liner)
- **The problem it solves**: What pain point or need does it address?
- **Target audience**: Who is this for? Be as specific as possible — demographics, interests, lifestyle, situation
- **How it works** (optional): Any details on the proposed solution, pricing model, or delivery method
- **What exists today** (optional): Known competitors or alternatives the audience might already use

### Step 2: Validate with Digital Twins

Test the idea with the target audience using 10-12 questions that progress from problem validation through to purchase intent. This sequence is deliberate — it establishes whether the problem is real before introducing the solution.

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
  audience: "[detailed target audience description]",
  questions: [
    "When it comes to [problem area], walk me through the last time it got in your way — what happened, and how often does that come up?",
    "How do you currently handle [problem]? Walk me through what you do today.",
    "Thinking about how you handle it now — what works fine, and what do you wish was different?",
    "Tell me about a time you went looking for a better way to deal with [problem] — what did you find, and why did you stick with it or drop it?",
    "Compared with the other hassles in your week, where does [problem] rank — and what makes it that big or small a deal?",
    "I'd like your honest first reaction to an idea: [describe the idea clearly and concisely, in plain language]. What goes through your mind?",
    "If this existed, what — if anything — would it change in your day-to-day? And where might it fall short for you?",
    "What questions or concerns come to mind when you hear about this idea? What would hold you back from trying it?",
    "Tell me about the last time you switched from a way of doing something you were used to — what finally tipped you? What would it take here?",
    "Think about what you already spend on [problem] today — in money, time, or workarounds. Against that, what would something like this be worth to you?",
    "When did you last tell someone about a product you'd found — what made it worth mentioning? Who, if anyone, comes to mind for this one?",
    "If you could change one thing about this idea to make it perfect for you, what would it be?"
  ]
)
```

**Important:** Present the idea in plain language, the way you'd explain it to a friend. Avoid marketing speak or inflated claims — you want honest reactions, not polite nods.

### Step 3: Assess the Signals

Analyse responses across five validation dimensions:

**Problem Validation**
- Is the problem real and frequent, or theoretical?
- How painful is it (mild annoyance vs. genuine frustration)?
- Are people actively looking for solutions?

**Solution Fit**
- Did the idea spark genuine interest or polite indifference?
- Does it solve the problem as the audience experiences it?
- Did anyone say "I need this" or "where can I get this"?

**Switching Willingness**
- Would they actually change their current behaviour?
- What barriers to adoption came up?
- How entrenched are current habits or solutions?

**Value Perception**
- Do price expectations align with a viable business model?
- Is it seen as a "must-have" or "nice-to-have"?
- Would they pay for it, or only use it if free?

**Word of Mouth Potential**
- Would they tell others about it?
- Can they articulate the value clearly?
- Who would they recommend it to?

### Step 4: Deliver the Validation Verdict

This is a full write-up, not a one-page summary: the reader should come away understanding why, not just what. Deliver every section below, in this order. Each section opens with its conclusion in one sentence, then explains it: what is going on, why the twins think or act that way, who it applies to and who it doesn't, and how it connects to the other findings. Counts and shares are the evidence for the analysis, never a replacement for it. Quote Digital Twins verbatim and attributed. Where findings have clear quantitative patterns, include a chart to visualize the distribution.

### Report sections:

**1. Verdict: Go / Pivot / Kill**

The verdict, then a short paragraph (4-6 sentences) on why it holds: how the audience experiences the problem, how they reacted to the idea, and the signal that decided it.

| Verdict | When to use |
|---------|------------|
| **Go** | Problem is real and painful, solution sparked genuine excitement, audience would pay and switch |
| **Pivot** | Problem is real but the proposed solution missed the mark — the audience pointed to a better direction |
| **Kill** | Problem isn't painful enough, audience is indifferent to the solution, or insurmountable barriers exist |

**2. Evidence Summary**

A paragraph that reads across the dimensions below: where the signals agree, where they conflict, and what that says about demand. Include a chart showing signal strength across validation dimensions.

| Dimension | Signal | Strength (Strong / Mixed / Weak) |
|-----------|--------|----------------------------------|
| Problem exists | [What the audience said] | [Rating] |
| Problem is painful | [Pain level and frequency] | [Rating] |
| Solution resonates | [Gut reactions] | [Rating] |
| Would switch | [Switching willingness] | [Rating] |
| Would pay | [Price expectations] | [Rating] |
| Would recommend | [Word of mouth signals] | [Rating] |

**3. Strongest Signals**
- What resonated most and why it matters to them, each with a paragraph of analysis and 2-3 supporting quotes
- The clearest signs of demand or excitement

**4. Biggest Risks**
- What concerned the audience most and why, each with a paragraph of analysis and supporting quotes
- Barriers to adoption they raised
- Gaps between the idea and what they actually need

**5. Audience-Suggested Improvements**
- Changes the audience said would make the idea better
- Features or aspects they specifically asked for
- What would turn it from "interesting" to "essential"

**6. Recommended Next Steps**

For **Go**:
- Priority features to build first (based on what the audience valued most)
- Messaging angles that resonated
- Audience segments that showed strongest interest

For **Pivot**:
- What direction the audience pointed toward
- Which elements to keep vs. rethink
- Suggested reframing of the idea

For **Kill**:
- Why the idea doesn't have sufficient demand
- Whether a different audience might respond better
- Salvageable elements worth exploring elsewhere

## Tips for Best Results

- **Test the problem before the solution**: The question sequence is deliberate — if the problem isn't real, the solution doesn't matter
- **Present the idea simply**: If you can't explain it in 2-3 sentences, the audience won't get it either. That's a signal in itself
- **Listen for energy, not politeness**: "That's interesting" is lukewarm. "Where can I get this?" is validation
- **Pain level matters**: A real problem that's mildly annoying won't drive behaviour change. Look for genuine frustration
- **Switching cost is the hidden killer**: Even great ideas fail if the cost of changing behaviour is too high
- **Price expectations reveal truth**: If the audience expects it to be free, they don't value it enough to sustain a business

## Validation Signal Guide

### Strong Positive Signals
- Audience describes the problem with emotion and specific examples
- Gut reaction to the idea is enthusiastic, not just polite
- They ask "when can I get this?" or "does this exist?"
- They immediately think of someone they'd tell about it
- Price expectations align with a viable model
- They describe current workarounds that are painful or expensive

### Warning Signs (Consider Pivoting)
- Problem is real but the solution doesn't quite fit how they experience it
- Interest is conditional — "I'd use it if..." with significant conditions
- They like the idea but wouldn't pay for it
- They can't articulate who they'd recommend it to
- Current solutions are "good enough" even if imperfect

### Red Flags (Consider Killing)
- Audience struggles to relate to the problem
- Gut reaction is indifferent or confused
- "That's interesting" without follow-up enthusiasm
- They wouldn't switch from their current approach
- Price expectation is zero or far below viability
- No one they'd recommend it to
- The problem exists but isn't painful enough to drive action

## Common Pitfalls to Avoid

- **Confirmation bias**: Don't cherry-pick positive responses and ignore concerns. The warnings are the most valuable part
- **Solution-first thinking**: If you skip problem validation and jump straight to "do you like my idea?", you'll get polite answers, not honest ones
- **Ignoring switching costs**: People may love the idea in theory but never change their actual behaviour
- **Confusing interest with intent**: "That sounds cool" is not the same as "I would pay for that"
- **Testing with the wrong audience**: A great idea tested with the wrong people will look like a bad idea. Be specific about who you're testing with
- **Over-describing the idea**: The more you explain and sell, the less honest the reaction. Keep it simple and let the audience respond naturally
