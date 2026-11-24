---
name: video-script-generation
version: 2.0.0
description: "Use this skill to generate video scripts for creators or AI, informed by real audience insight. Triggers include: requests to write video scripts, create content for YouTube/TikTok/Instagram, generate video narration, write video copy, or create scripts for video ads. Uses OriginalVoices Digital Twins (ask_twins) to understand what hooks the audience, what tone resonates, what keeps them watching, and what drives engagement — then writes complete video scripts optimized for that audience."
---

# Video Script Generation Skill

## Overview

Generate video scripts for creators or AI, informed by real audience insight. This workflow researches your target audience to understand what hooks them in the first seconds, what tone and pacing they prefer, what keeps them watching, and what drives engagement — then uses those insights to write complete video scripts that resonate and perform.

## Workflow Steps

### Step 1: Define Video Context

Gather from the user:
- **Video topic/concept**: What is the video about? (e.g. "How to choose the right CRM", "Product demo for productivity app", "Brand story video")
- **Target audience**: Who is this video for? (e.g. "Small business owners", "Gen Z interested in personal finance", "Marketing managers")
- **Video goal**: What should it achieve? (Education, product awareness, entertainment, conversion, brand building)
- **Platform**: Where will this video be published? (YouTube, TikTok, Instagram Reels, LinkedIn, website, video ad)
- **Video length**: Target duration (e.g. "30 seconds", "60 seconds", "3-5 minutes", "10+ minutes")
- **Product/brand info** (if applicable): What needs to be mentioned or featured?
- **Tone preference** (optional): Any specific tone requirements? (Educational, entertaining, inspirational, etc.)

### Step 2: Research Audience Video Preferences

One comprehensive research call to understand what will make this video effective for this audience.

**Question quality — apply every rule to every question before sending.** The goal is the widest possible range of honest answers. A weak question is narrow, leading, or closed, so respondents converge on the same obvious reply and you learn nothing. Run each question through these rules:

1. **Anchor in a specific moment or behaviour, not an abstract definition.** Ask "Walk me through the last time…" or "Tell me about a time…", never "How do you define / think about [concept]?".
2. **Keep the valence open — never lead.** Don't presuppose the experience was good or bad. Banned phrasings: "what frustrates you most about…", "the time [X] annoyed you", "what do you love about this". Ask "how did it go?" or make it two-sided: "what worked well, and what didn't?".
3. **One idea per question.** Split anything double-barrelled into separate questions.
4. **Open-ended only — no yes/no, no multiple choice.** Every question invites How / What / Why / Walk me through / Tell me about. Never hand respondents a menu of options to pick from — let them supply their own.
5. **No socially-correct answers.** If almost everyone would answer the same way ("Is quality important?" → yes), reframe with a trade-off ("when is quality *not* worth it?").
6. **Ground intent in real behaviour.** Don't ask hypotheticals like "would you buy / click / switch?" — they inflate. Anchor in what they last actually did ("the last time you bought something like this, what tipped the decision?").
7. **Build in room to diverge.** Prefer a fork, trade-off, or spectrum ("what would make you — and what would hold you back?") over a flat single-answer prompt.

Before sending, check each question passes both gates — **Range:** could most people answer it the same way, or is there an obvious "right" answer? **Neutrality:** does it assume how they feel, or hand them the answer? If it fails either, rewrite it.

```
ask_twins(
  audience: "[detailed target audience]",
  questions: [
    "Tell me about the last video on [topic] that made you stop scrolling — what was happening in those first few seconds?",
    "Tell me about a video on [topic] you watched all the way through — what was the pace like, and did that keep you or start to lose you?",
    "Think of a [topic] video whose tone just clicked for you — how would you describe the way it talked to you? And one whose tone put you off?",
    "Tell me about the last [topic] video you watched to the end, and the last one you clicked away from early — how long was each, and what made the difference?",
    "Walk me through the last time you were watching a [topic] video and something made you keep going instead of clicking away — what held you there?",
    "Tell me about a [topic] video that actually taught you something useful — what did you walk away with?",
    "Think of a [topic] video that really worked for you — how was it put together, and why did that click?",
    "When you picture the [topic] videos you actually finish, what's usually on screen — a person, visuals, text? Tell me about one that stuck with you.",
    "Tell me about the last [topic] video you shared, saved, or commented on — what made you do it?",
    "Tell me about the last [topic] video you bailed on within seconds — what made you nope out?",
    "Think of a [topic] video that hooked you — did it get straight to the point or build up first, and how did that work for you?",
    "Tell me about a time a video asked you to do something at the end — subscribe, buy, visit — that felt fine, and a time it felt pushy. What was the difference?"
  ]
)
```

### Step 3: Analyse Video Content Insights

Read every individual twin answer to every question, including the neutral and negative ones, before extracting anything. Apply the shared reporting standard at the end of this skill: the script is the deliverable, so the research shows up in the hook, structure and CTA you choose and in a short rationale, not in a long report.

Review audience responses and extract:

**Hook Strategy:**
- What captures attention in the first 3-5 seconds
- What makes them stop scrolling
- Hook styles that work vs. don't work

**Tone & Style:**
- Preferred tone (casual, professional, entertaining)
- Pacing preference (fast vs. slow)
- Energy level

**Content Structure:**
- Preferred format (story, how-to, tips, explanation)
- Optimal length for this topic and audience
- Information depth they want

**Engagement Drivers:**
- What keeps them watching
- What makes them engage (comment, share, save)
- What creates value for them

**Turnoffs:**
- What makes them stop watching
- What feels pushy or off-putting
- What to avoid

**CTA Approach:**
- Whether CTAs feel natural or pushy
- How to integrate them effectively

### Step 4: Write the Complete Video Script

**IMPORTANT**: Using the insights from Step 3, now write the complete video script ready to record. Output the full script with hooks, narration, and timing notes.

**Script structure:**

**[0:00-0:05] HOOK (First 3-5 seconds)**
- Open with the hook that stops them scrolling (based on research)
- Address their problem, curiosity, or interest immediately
- Make it impossible to scroll past

**[0:05-0:XX] INTRO (If appropriate for length)**
- Quick context or credibility (if needed)
- Set expectations for what they'll learn/get
- Keep it brief - only if research showed they want build-up

**[0:XX-X:XX] MAIN CONTENT**
- Deliver on the hook's promise
- Use their preferred tone and pacing (from research)
- Structure based on format preference (story, how-to, tips, explanation)
- Include the information they said they expect
- Keep attention with variety, value, or entertainment
- Match the depth they want (quick tips vs. detailed explanation)

**[X:XX-X:XX] PAYOFF/CONCLUSION**
- Summarize key takeaway or deliver final value
- Reinforce the benefit they got from watching
- Create satisfaction or curiosity

**[X:XX-END] CALL-TO-ACTION (If appropriate)**
- Natural CTA based on video goal (subscribe, visit website, try product, etc.)
- Integrate smoothly based on research (don't be pushy if they said that's a turnoff)
- Make it feel like a natural next step

**Writing guidelines:**
- Write in spoken language (how people talk, not formal writing)
- Use their preferred tone (casual/professional/entertaining from research)
- Match pacing preference (short punchy sentences for fast-paced, longer for detailed)
- Include [timing markers] so creators know pacing
- Include [VISUAL NOTES] in brackets if helpful for context, but focus on the script
- Write exactly what should be said/shown on screen
- Make it ready to record or input into AI video tools
- Use only the claims, results and proof the user supplied: don't invent testimonials, statistics or footage that doesn't exist
- Write one script unless the user asked for variations; match the platform, format and length they gave

**Output the complete script now** - from hook through CTA, ready to use.

### Step 5: Deliver Video Script Package

Present it in clear sections, with Digital Twin quotes verbatim and attributed.

**PRIMARY DELIVERABLE - Complete Video Script:**

Output the full, production-ready video script including:
- Timing markers [0:00-0:05]
- Hook
- Intro (if appropriate)
- Main content narration/dialogue
- Payoff/conclusion
- Call-to-action (if appropriate)
- [Visual notes] where helpful
- Ready to record or use in AI video generation tools

**THEN provide supporting materials:**

**1. Script Overview:**
- **Target length**: Estimated final video duration
- **Tone**: Casual/professional/entertaining based on research
- **Format**: Story/how-to/tips/explanation
- **Platform optimization**: Specific to YouTube/TikTok/Instagram/etc.

**2. Key Insights Used:**
- **Hook strategy**: What captures their attention (with research quote)
- **Tone & pacing**: What style resonates with them
- **Content structure**: What format they prefer
- **Engagement drivers**: What keeps them watching
- **CTA approach**: How to ask for action without being pushy

**3. Audience Video Profile:**
- What hooks them in the first seconds
- Preferred tone and pacing
- Optimal video length for this topic
- What keeps them watching vs. clicking away
- What drives engagement (shares, comments, saves)

**4. Production Notes:**
- Delivery tips based on tone preference
- Pacing guidance (fast vs. slow)
- Visual suggestions (if audience expressed preference)
- Platform-specific considerations

**5. Optimization Recommendations:**
- Alternative hooks to test
- Engagement tactics based on what drives shares/comments
- CTA variations to try
- A/B test suggestions

## Video Script Framework

| Script Element | Audience Insight Source | Optimization Approach |
|----------------|------------------------|----------------------|
| **Hook (0-5 sec)** | What stops them scrolling | Lead with their problem/curiosity/interest |
| **Intro** | Whether they want build-up | Skip if they want to "get to the point"; brief if they want context |
| **Tone** | Casual/professional/entertaining preference | Match their preferred style throughout |
| **Pacing** | Fast vs. slow preference | Short sentences for fast; longer, detailed for slow |
| **Content structure** | Story/how-to/tips/explanation | Organize based on format preference |
| **Depth** | How much information they want | Match detail level to their expectations |
| **Length** | Optimal duration for topic | Stay within their attention span sweet spot |
| **Engagement hooks** | What keeps them watching | Use variety, value, or entertainment tactics |
| **CTA** | Whether CTAs feel natural or pushy | Integrate smoothly or skip if it's a turnoff |

## Tips for Best Results

- **First 5 seconds are everything**: The hook must stop the scroll based on research
- **Write how people talk**: Spoken language, not written language
- **Match their energy**: Fast-paced and punchy, or calm and detailed
- **Deliver on the hook**: Whatever you promise in the first 5 seconds, deliver quickly
- **Cut ruthlessly**: If research says they want it short, every word must earn its place
- **Use pattern interrupts**: Variety keeps attention (questions, facts, stories, etc.)
- **Natural CTAs**: If they said pushy feels bad, make it a soft suggestion
- **Platform matters**: TikTok scripts ≠ YouTube scripts ≠ LinkedIn scripts

## Common Video Script Pitfalls

- **Slow hook**: Taking too long to get to the point when they want it fast
- **Wrong tone**: Being too casual for professional topics or too formal for entertainment
- **Too long**: Ignoring research that says they prefer 60 seconds when you write 5 minutes
- **Buried value**: Saving the best for last when they'll click away before they get there
- **Generic opening**: "Hey guys, today we're talking about..." when they need a strong hook
- **Pushy CTA**: Hard-selling when research says they hate that
- **Written language**: Sounding like an essay instead of natural speech
- **No payoff**: Building up without delivering satisfaction at the end

## Red Flags (Revise Script)

- Hook doesn't address what they said stops them scrolling
- Tone doesn't match their preference (too casual, formal, or salesy)
- Length exceeds their attention span for this topic
- Pacing is off (too fast when they want detail, too slow when they want quick tips)
- CTA feels forced when they said pushy is a turnoff
- Content doesn't deliver what they said they expect from videos on this topic

## Green Lights (Strong Script)

- Hook immediately addresses what captures their attention
- Tone and pacing match their preferences exactly
- Length fits their attention span for this topic
- Delivers the information or value they expect
- Structure matches format preference (story, how-to, tips)
- Keeps momentum with variety and engagement tactics
- CTA feels natural and appropriate for their expectations
- Written in spoken, natural language
- Platform-optimized for where it'll be published

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
