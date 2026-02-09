---
name: feature-concept-testing
version: 1.0.0
description: "Use this skill to test and validate new feature concepts before building them. Triggers include: requests to validate feature ideas, test product concepts, understand if users would use a feature, gauge interest in new functionality, or reduce risk of building unwanted features. Uses OriginalVoices Digital Twins (ask_twins) to understand whether a feature solves a real problem, how users would actually use it, what concerns they have, and whether they'd pay for it — preventing wasted engineering effort on features nobody wants."
---

# Feature Concept Testing Agent

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

```
ask_twins(
  audience: "[detailed target audience]",
  questions: [
    "What's your biggest challenge when it comes to [problem area this feature addresses]? How do you handle it today?",
    "How often do you encounter [problem]? How painful is it when it happens?",
    "Imagine [product] added a feature that lets you [feature description]. How useful would that be for you?",
    "Would [feature] solve a real problem for you? What problem would it solve?",
    "When would you use [feature]? Walk me through a specific scenario where you'd use it.",
    "How often would you realistically use [feature]? Daily, weekly, monthly, or rarely?",
    "How would [feature] be different from how you currently solve [problem]? Would it be meaningfully better?",
    "Would using [feature] feel natural in your workflow, or would it feel like extra steps?",
    "What concerns or hesitations would you have about [feature]? What could go wrong?",
    "Is [feature] something you need, something nice to have, or something you probably wouldn't use?",
    "If a competitor offered [feature] and [current product] didn't, would you switch?",
    "Would you be willing to pay extra for [feature]? Why or why not?"
  ]
)
```

**Optional: Test Alternative Approaches**
```
ask_twins(
  audience: "[same audience]",
  questions: [
    "Instead of [feature concept], what if [product] did [alternative approach]? Would that be better?",
    "Would you prefer: A) [Feature as described], or B) [Simpler version]? Why?",
    "If you could design the perfect solution to [problem], what would it look like?"
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
- Must-have vs. nice-to-have sentiment
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
