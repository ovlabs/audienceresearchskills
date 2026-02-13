---
name: idea-validation
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

```
ask_twins(
  audience: "[detailed target audience description]",
  questions: [
    "When it comes to [problem area], what's the biggest challenge or frustration you deal with? How often does it come up?",
    "How do you currently handle [problem]? Walk me through what you do today.",
    "What's the worst part about your current approach? What do you wish was different?",
    "Have you ever looked for a better solution to [problem]? What did you find, and why did you stick with (or abandon) it?",
    "On a scale of 1-10, how painful is this problem in your life right now? What makes it that level?",
    "I'd like to get your reaction to an idea: [describe the idea clearly and concisely, in plain language]. What's your immediate gut reaction?",
    "Does this idea solve a real problem for you, or is it more of a 'nice to have'? Be honest.",
    "What questions or concerns come to mind when you hear about this idea? What would hold you back from trying it?",
    "If this existed today, what would it need to do to get you to switch from your current approach?",
    "What would you expect to pay for something like this? What would feel like a fair price?",
    "Would you recommend this to someone you know? Who would you tell about it and what would you say?",
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

**1. Verdict: Go / Pivot / Kill**

| Verdict | When to use |
|---------|------------|
| **Go** | Problem is real and painful, solution sparked genuine excitement, audience would pay and switch |
| **Pivot** | Problem is real but the proposed solution missed the mark — the audience pointed to a better direction |
| **Kill** | Problem isn't painful enough, audience is indifferent to the solution, or insurmountable barriers exist |

**2. Evidence Summary**

| Dimension | Signal | Strength (Strong / Mixed / Weak) |
|-----------|--------|----------------------------------|
| Problem exists | [What the audience said] | [Rating] |
| Problem is painful | [Pain level and frequency] | [Rating] |
| Solution resonates | [Gut reactions] | [Rating] |
| Would switch | [Switching willingness] | [Rating] |
| Would pay | [Price expectations] | [Rating] |
| Would recommend | [Word of mouth signals] | [Rating] |

**3. Strongest Signals**
- What resonated most (with supporting quotes)
- The clearest signs of demand or excitement

**4. Biggest Risks**
- What concerned the audience most
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
