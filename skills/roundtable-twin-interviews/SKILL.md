---
name: roundtable-twin-interviews
description: "Use this skill to run a multi-round moderated interview with Digital Twins — like a focus group, but adaptive. Each round builds on what emerged before: the AI moderator designs follow-up questions based on themes, tensions, and surprises from previous rounds, creating a natural conversational arc that goes deeper with each pass. Produces a full verbatim transcript and an analytical research report. Triggers include: requests to run a focus group, conduct qualitative interviews, explore a topic in depth with real people, run a roundtable discussion, or do iterative audience research. Uses OriginalVoices Digital Twins (ask_twins) across multiple rounds of moderated discussion."
---

# Roundtable Twin Interviews Skill

## Overview

Run a multi-round moderated interview with Digital Twins. Unlike single-pass research, the Roundtable is adaptive — each round builds on what the audience said in the last. The AI moderator listens for themes, tensions, and surprises, then designs the next question to go deeper. Over 8 rounds with 20+ twins, you get the depth of a real focus group without the scheduling, cost, or groupthink.

The result: a full verbatim transcript and a sharp, opinionated research report — both ready to share with clients or stakeholders.

## Workflow Steps

### Step 1: Gather Inputs from the User

Ask the user the following questions one at a time, waiting for each answer:

1. **"What's the topic for the roundtable?"** — The subject to explore (e.g. "How people feel about AI-generated content in news media")
2. **"Who is the audience?"** — (e.g. "UK adults 25-45 who read news daily")
3. **"How many rounds?"** — Default: 8. Minimum: 3. More rounds = deeper exploration.
4. **"How many twins per round?"** — Default: 20. Minimum: 15. More twins = broader perspective.

Once all four inputs are collected, confirm back with a one-line summary (e.g. *"Got it — 8 rounds with 20 twins exploring how Gen Z feels about homeownership. Running now."*) and then execute the full session autonomously without stopping.

### Step 2: Run the Roundtable (The Loop)

For each round, follow this sequence:

#### 2a. Design the Moderator Question

The question strategy adapts based on position in the session:

| Round | Strategy | Example approach |
|-------|----------|-----------------|
| Round 1 | **Open & exploratory** — get people talking, no leading | "When you think about [topic], what comes to mind first?" |
| Rounds 2-7 | **Probe emerging themes** — pick a tension, contradiction, or strong theme from the previous round and dig into it | "Several of you mentioned X but disagreed on Y — tell me more about where you stand on this." |
| Final round | **Synthesis** — force prioritisation and final takeaways | "If you could tell a brand/product team one thing about [topic] that they're probably getting wrong, what would it be?" |

**Critical:** Middle-round questions must be informed by what twins actually said. Do not use generic follow-ups. Read the previous round's responses, identify the most interesting thread, and pull on it.

#### 2b. Query the Digital Twins

```
ask_twins(
  audience: "[audience description from Step 1]",
  questions: ["[moderator question for this round]"]
)
```

#### 2c. Record Responses

Store every twin's ID and full verbatim response for the transcript. Never truncate or summarise individual responses.

#### 2d. Between-Round Analysis

After each round, output a brief analysis to the conversation:

**Round [n] Analysis:**
- **Dominant themes** — What most twins agreed on
- **Tensions** — Where twins disagreed or contradicted each other
- **Surprises** — Anything unexpected or counterintuitive
- **Next question direction** — What thread you're pulling on next and why

This keeps the user informed of progress and shows the adaptive logic at work. Do not stop or wait for input — proceed immediately to the next round.

#### 2e. Repeat

Move to the next round. Continue until all rounds are complete. Do not pause between rounds or ask the user for direction — run the full session autonomously.

#### 2f. Handling Interruptions

If the session is interrupted (e.g. response length limits), output what you have so far and tell the user to say **"continue"** to resume from the next round. Track which round you're on so you can pick up where you left off.

### Step 3: Deliver the Transcript

Once all rounds are complete, output the full transcript directly in the conversation.

Format:

```markdown
# Roundtable Twin Interview — Transcript
**Topic:** [topic]
**Audience:** [audience]
**Twins per round:** [n] | **Rounds:** [n]
**Date:** [date]

---

## Round 1

**MODERATOR:** [question]

---

**[Twin ID]:** [full verbatim response]

**[Twin ID]:** [full verbatim response]

[repeat for all twins in this round]

---

## Round 2

**MODERATOR:** [question]

---

[repeat structure for all rounds]
```

### Step 4: Deliver the Research Report

After the transcript, output the research report directly in the conversation.

Format the report using proper markdown: `##` for the report title, `###` for each section, `>` blockquotes for twin quotes, and **bold** for key insights. Where findings have clear quantitative patterns (e.g. "14 out of 20 twins expressed concern about X"), include a chart to visualise the distribution.

### Report sections:

**1. Executive Summary**
2-3 sentences capturing the single most important finding from the entire session.

**2. Key Themes**
3-5 major patterns that emerged across rounds. For each theme:
- What it is
- How it evolved across rounds (did it deepen, shift, or get complicated?)
- Supporting quotes from twins
- Include a chart showing theme prevalence

**3. Tensions & Disagreements**
What divided the group. For each tension:
- The two (or more) sides
- Who held which view and why
- Why it matters strategically

**4. The Arc of the Conversation**
How the discussion evolved from Round 1 to the final round. What shifted? What deepened? What emerged late that wasn't visible early on? This section is unique to the Roundtable format — it captures insight that single-pass research misses.

**5. Standout Quotes**
5-8 of the most powerful, surprising, or representative quotes from across the session.

> "[quote]"
> — [Twin ID], Round [n]

**6. Strategic Implications**
3-5 actionable implications for product, brand, or strategy teams.

**7. Methodology**
This research was conducted using OriginalVoices Digital Twins — AI representations of real people, trained on data owned by the individuals they represent. [n] twins from the target audience participated across [n] rounds of moderated discussion. Each round's question was designed in response to themes emerging from the previous round, creating an adaptive research arc.

## Tips for Best Results

- **Default to 8 rounds**: This gives enough depth for themes to emerge, evolve, and resolve. Fewer than 5 rounds rarely surfaces the tensions that make research valuable
- **20 twins is the sweet spot**: Enough for diversity of perspective without becoming noise. Go higher (25-30) for topics where you expect wide variation
- **Trust the arc**: The best insights often come in rounds 5-7, once surface-level responses have been exhausted and twins start revealing deeper motivations
- **Look for what changed**: If twins say one thing in Round 2 but something different in Round 6, that shift is often the most valuable finding
- **Don't lead in Round 1**: The opening question should be genuinely open. If you anchor too early, you'll get confirmation, not discovery

## Common Pitfalls to Avoid

- **Generic middle-round questions**: "Tell me more about that" is not a good probe. Reference specific things twins said.
- **Ignoring minority views**: If 3 out of 20 twins said something different, that's often where the insight lives
- **Summarising instead of analysing**: The report should be opinionated. "Some people liked X and some didn't" is not analysis. "The group split along generational lines, with under-30s seeing X as essential and over-40s seeing it as intrusive — suggesting a segmented approach" is.

## Related Skills

- **deep-customer-research**: For single-pass comprehensive research when you don't need iterative depth
- **icp-discovery**: If you need to find the right audience before running a Roundtable
- **feature-concept-testing**: If you want to validate a specific feature rather than explore a topic
- **creative-testing**: If you want to test specific creative assets rather than explore a theme
