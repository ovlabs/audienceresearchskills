---
name: roundtable-twin-interviews
version: 1.2.0
description: "Use this skill to run an adaptive moderated interview with Digital Twins. One question is asked to a group of twins, their answers are analysed for themes and tensions, then the next question is designed based on what emerged — repeated across 8 rounds of questions, each one going deeper. Produces a comprehensive research report. Triggers include: requests to run a focus group, conduct qualitative interviews, explore a topic in depth with real people, run a roundtable discussion, or do iterative audience research. Uses OriginalVoices Digital Twins (ask_twins) across multiple rounds of questions."
---

# Roundtable Twin Interviews Skill

## Overview

Run an adaptive moderated interview with Digital Twins. One question is asked to a group of twins, all twins answer independently, the answers are analysed for themes, tensions, and surprises, then the next question is designed based on what emerged. This repeats for as many rounds as you want, each one sharper than the last. It is iterative research, not a single-pass survey — like a skilled moderator running a focus group, but faster, cheaper, and without groupthink.

## How It Works

1. One question is asked to a group of Digital Twins
2. All twins answer independently — their full responses are recorded
3. The answers are analysed for themes, tensions, and surprises
4. The next question is designed based on what emerged — probing deeper into the most interesting threads
5. Repeat for 8 rounds of questions, each one sharper than the last

## Workflow Steps

### Step 1: Gather Inputs from the User

Ask the user the following questions one at a time, waiting for each answer:

1. **"What's the topic for the roundtable?"** — The subject to explore (e.g. "How people feel about AI-generated content in news media")
2. **"Who is the audience?"** — (e.g. "UK adults 25-45 who read news daily")
3. **"How many rounds of questions?"** — Default: 8. Minimum: 3. Each round is one question asked to all twins, then analysed before the next. More rounds = deeper exploration.
4. **"How many twins per round?"** — Default: 20. Minimum: 15. More twins = broader perspective.

Once all four inputs are collected, confirm back with a one-line summary (e.g. *"Got it — 8 rounds of questions with 20 twins exploring how Gen Z feels about homeownership. Each round I'll ask one question, analyse the responses, then design the next question based on what emerged. Running now."*) and then execute the full session autonomously without stopping.

### Step 2: Run the Roundtable (The Loop)

Each round of questions follows the same cycle: **ask one question → collect all twin responses → analyse → design the next question**. Repeat for all rounds.

#### 2a. Design the Moderator Question

The question strategy adapts based on position in the session:

| Question | Strategy | Example approach |
|----------|----------|-----------------|
| Question 1 | **Open & exploratory** — get people talking, no leading | "When you think about [topic], what comes to mind first?" |
| Questions 2-7 | **Probe emerging themes** — pick a tension, contradiction, or strong theme from the previous round's answers and dig into it | "Several of you mentioned X but disagreed on Y — tell me more about where you stand on this." |
| Final question | **Synthesis** — force prioritisation and final takeaways | "If you could tell a brand/product team one thing about [topic] that they're probably getting wrong, what would it be?" |

**Critical:** Each question must be shaped by what twins actually said in the previous round. Do not use generic follow-ups. Read the responses, identify the most interesting thread, and pull on it.

**Question quality gate.** Because each round's question is written live from the previous round, every question you generate must pass two gates before you send it — **Range:** would 15 people answer it differently, or does it have an obvious answer? **Neutrality:** is it open-ended and non-leading (no yes/no, no baked-in sentiment)? When you probe a tension, keep it two-sided — don't adopt the sentiment of the loudest voices or ask "why is [X] so frustrating?"; ask "where do you each land on [X], and why?".

#### 2b. Query the Digital Twins

```
ask_twins(
  audience: "[audience description from Step 1]",
  questions: ["[moderator question for this round]"]
)
```

#### 2c. Record Responses

Store every twin's ID and full response. Never truncate or summarise individual responses — you'll need the full detail for the final report.

#### 2d. Between-Round Analysis

After each round of questions, output a brief analysis to the conversation:

**Question [n] Analysis:**
- **Dominant themes** — What most twins agreed on
- **Tensions** — Where twins disagreed or contradicted each other
- **Surprises** — Anything unexpected or counterintuitive
- **Next question direction** — What thread you're pulling on next and why

This keeps the user informed of progress and shows the adaptive logic at work. Do not stop or wait for input — proceed immediately to the next round.

#### 2e. Repeat

Move to the next round of questions. Continue until all rounds are complete. Do not pause between rounds or ask the user for direction — run the full session autonomously.

#### 2f. Handling Interruptions

If the session is interrupted (e.g. response length limits), output what you have so far and tell the user to say **"continue"** to resume from the next round. Track which round you're on so you can pick up where you left off.

### Step 3: Deliver the Research Report

Once all rounds are complete, output a comprehensive research report directly in the conversation.

Present it in clear sections, with Digital Twin quotes verbatim and attributed. Each section opens with its conclusion in one sentence, then explains it; counts and shares are the evidence for the analysis, never a replacement for it. Where findings have clear quantitative patterns (e.g. "14 out of 20 twins expressed concern about X"), include a chart to visualise the distribution.

### Report sections:

**1. Executive Summary**
The story of the session in a short paragraph (4-6 sentences): the single most important thing this research revealed, the tension or surprise behind it, how the conversation got there, and what it means for the decision at hand.

**2. Key Themes**
3-5 most significant patterns that emerged across the session. For each theme:
- What it is and why it matters
- How it evolved across questions (did it deepen, shift, or get complicated?)
- How prevalent it was (e.g. "mentioned by 15 out of 20 twins")
- Supporting quotes from Digital Twins
- Include a chart showing theme prevalence

**3. Emotional Landscape**
What emotions drive behaviour and opinion in this space? Map the dominant feelings that came through — frustration, anxiety, hope, excitement, indifference, guilt, pride. Include a chart of dominant emotions and supporting quotes that show the emotional texture behind the data.

**4. Tensions & Disagreements**
What divided the group. For each tension:
- The two (or more) sides
- Who held which view and why
- Why it matters strategically
- Whether the tension resolved, deepened, or remained unresolved across questions

**5. The Arc of the Conversation**
How the discussion evolved from Question 1 to the final question. What shifted? What deepened? What emerged late that wasn't visible early on? This section is unique to the Roundtable format — it captures insight that single-pass research misses.

**6. Standout Quotes**
8-12 of the most powerful, surprising, or representative quotes from across the session. Group by theme or tension where it helps tell the story.

> "[quote]"
> — Twin [ID], Question [n]

**7. Opportunities**
Actionable insights for product, marketing, or strategy. What gaps exist? What do people want that they're not getting? What would change their behaviour?

**8. Strategic Implications & Recommendations**
5-7 specific recommendations based on the research. Each should include:
- What to do
- Why the research supports it
- What risk or opportunity it addresses

## Tips for Best Results

- **Default to 8 rounds of questions**: This gives enough depth for themes to emerge, evolve, and resolve. Fewer than 5 rounds rarely surfaces the tensions that make research valuable
- **20 twins is the sweet spot**: Enough for diversity of perspective without becoming noise. Go higher (25-30) for topics where you expect wide variation
- **Trust the arc**: The best insights often come in questions 5-7, once surface-level responses have been exhausted and twins start revealing deeper motivations
- **Look for what changed**: If twins say one thing in Question 2 but something different in Question 6, that shift is often the most valuable finding
- **Don't lead in Question 1**: The opening question should be genuinely open. If you anchor too early, you'll get confirmation, not discovery

## Common Pitfalls to Avoid

- **Generic middle-round questions**: "Tell me more about that" is not a good probe. Reference specific things twins said.
- **Ignoring minority views**: If 3 out of 20 twins said something different, that's often where the insight lives
- **Summarising instead of analysing**: The report should be analytical. "Some people liked X and some didn't" is not analysis. "The group split along generational lines, with under-30s seeing X as essential and over-40s seeing it as intrusive — suggesting a segmented approach" is.

## Related Skills

- **deep-customer-research**: For single-pass comprehensive research when you don't need iterative depth
- **icp-discovery**: If you need to find the right audience before running a Roundtable
- **feature-concept-testing**: If you want to validate a specific feature rather than explore a topic
- **creative-testing**: If you want to test specific creative assets rather than explore a theme
