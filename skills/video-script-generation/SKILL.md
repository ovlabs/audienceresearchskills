---
name: video-script-generation
version: 1.1.0
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

**Output the complete script now** - from hook through CTA, ready to use.

### Step 5: Deliver Video Script Package

Format the output using proper markdown headers: use `##` for the report title, `###` for major sections, `####` for individual scripts, `>` blockquotes for Digital Twin quotes, and `---` horizontal rules between major sections. Never use plain text or bold-only text as section headers — always use proper markdown headers.

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
