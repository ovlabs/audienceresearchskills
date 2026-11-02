---
name: content-generation-optimization
version: 1.1.1
description: "Use this skill to generate SEO and AEO-optimized content (blog posts, articles, guides) informed by real audience insight. Triggers include: requests to write blog posts, create SEO content, generate articles, write guides, or create audience-aligned content. Uses OriginalVoices Digital Twins (ask_twins) to understand what the audience wants to know, what tone resonates, what questions they have, and what makes content engaging — then uses those insights to write content that ranks well, gets read, and drives results."
---

# Content Generation Optimization Skill

## Overview

Generate SEO and AEO-optimized content informed by real audience insight. This workflow researches your target audience to understand what they want to know, what tone resonates, and what makes content engaging — then uses those insights to write blog posts, articles, or guides that rank well in search engines, appear in AI answer engines, and actually get read.

## Workflow Steps

### Step 1: Define Content to Generate

Gather from the user:
- **Topic/headline**: What is this content about? (e.g. "How to choose the right CRM for small businesses")
- **Target audience**: Who is this for? (e.g. "Small business owners with 5-20 employees")
- **Content goal**: What should this achieve? (SEO rankings for specific keywords, lead generation, education, thought leadership, AEO visibility)
- **Desired length**: Word count or depth (e.g. "1,500-2,000 words", "comprehensive guide", "quick how-to")
- **Content type**: Blog post, guide, article, how-to, listicle, case study, etc.
- **SEO keywords** (if applicable): Primary and secondary keywords to target
- **Specific requirements**: Tone, structure, sections to include, CTAs, etc.

### Step 2: Research Audience to Inform Content

One comprehensive research call to understand what will make this content valuable, engaging, and optimized for the audience.

**Question quality — apply every rule to every question before sending.** The goal is the widest possible range of honest answers. A weak question is narrow, leading, or closed, so respondents converge on the same obvious reply and you learn nothing. Run each question through these rules:

1. **Anchor in a specific moment or behaviour, not an abstract definition.** Ask "Walk me through the last time…" or "Tell me about a time…", never "How do you define / think about [concept]?".
2. **Keep the valence open — never lead.** Don't presuppose the experience was good or bad. Banned phrasings: "what frustrates you most about…", "the time [X] annoyed you", "what do you love about this". Ask "how did it go?" or make it two-sided: "what worked well, and what didn't?".
3. **One idea per question.** Split anything double-barrelled into separate questions.
4. **Open-ended only — no yes/no, no multiple choice.** Every question invites How / What / Why / Walk me through / Tell me about. Never hand respondents a menu of options to pick from — let them supply their own.
5. **No socially-correct answers.** If almost everyone would answer the same way ("Is quality important?" → yes), reframe with a trade-off ("when is quality *not* worth it?").
6. **Ground intent in real behaviour.** Don't ask hypotheticals like "would you buy / click / switch?" — they inflate. Anchor in what they last actually did ("the last time you bought something like this, what tipped the decision?").
7. **Build in room to diverge.** Prefer a fork, trade-off, or spectrum ("what would make you — and what would hold you back?") over a flat single-answer prompt.

Before sending, check each question passes both gates — **Range:** could most people answer it the same way, or is there an obvious "right" answer? **Neutrality:** does it assume how they feel, or hand them the answer? If it fails either, rewrite it.

**Capturing the audience's own words.** This skill generates copy from what real people say, so the research must surface their *own language*, not abstract opinions — generic questions produce generic copy. Include at least two moment-anchored questions built to elicit verbatim phrasing (e.g. "The last time you looked for [X], what did you actually type or say?", "How would you describe [problem] in your own words, to a friend?"). When you later test copy, replace "would you click / stop scrolling?" (demand effect + inflated intent) with "what would you do next, if anything?" — and ask "what do you take this to be offering?" (comprehension) before whether they like it.

```
ask_twins(
  audience: "[detailed target audience]",
  questions: [
    "When you're looking for information about [topic], what are you trying to learn or accomplish? What's your main goal?",
    "What specific questions do you have about [topic] that you want answered?",
    "Think about the last piece you read on [topic] — what did it do well, and where did it fall short or waste your time?",
    "When something's written well on [topic], how would you describe the way it's written? And what kind of writing on this makes you click away?",
    "Think about a piece on [topic] you actually read to the end — how long and how deep was it? When do you want the full deep-dive, and when do you just want the quick version?",
    "The last time you trusted a piece on [topic] enough to act on it, what earned that trust? And what makes you distrust something on this subject?",
    "What would make you actually read an article about [topic] all the way through vs. just skimming?",
    "If you were searching for '[topic]' on Google, what would you type? What would you expect to find?",
    "What kind of examples or real situations, if any, actually help you when you're reading about [topic] — and which feel like filler?",
    "Think of the last article you saved or sent to someone — what was it about [topic] that made it worth passing on?",
    "Are there common mistakes or misconceptions about [topic] you see repeated that you wish someone would address?",
    "What's missing from most content on [topic]? What do you wish someone would explain better?"
  ]
)
```

### Step 3: Analyse Insights & Plan Content Structure

Review audience responses and extract:

**Key Questions to Answer:**
- What specific questions the audience has
- What they're trying to accomplish
- What's missing from existing content

**Tone & Style:**
- Casual vs. professional
- Depth: comprehensive vs. concise
- Structure: how-to, storytelling, data-driven, etc.

**Credibility Signals:**
- What builds trust (data, examples, credentials, case studies)
- What examples or scenarios resonate

**Engagement Hooks:**
- What makes them read vs. skim
- What makes them share or bookmark
- Pain points and frustrations to address

**SEO/AEO Optimization:**
- How they search for this topic (keywords, questions)
- What they expect to find
- How to structure for featured snippets and AI answers

### Step 4: Write the Complete Blog Post/Article

**IMPORTANT**: Using the insights from Step 3, write the complete, publish-ready blog post or article. Output the full written content, not just an outline or summary.

**Structure your written content as follows:**

**Headline:**
- Compelling, click-worthy headline that includes the primary keyword
- Based on what makes the audience interested (from research)

**Introduction (2-3 paragraphs):**
- Open with a hook that addresses their pain point or goal (from research)
- Establish what they'll learn and why it matters to them
- Set expectations for depth and value
- Make them want to keep reading

**Body (Main Content):**
- Use H2 and H3 headers that answer their specific questions (from research)
- Answer the key questions they have in order of importance
- Address frustrations with existing content they mentioned
- Write in their preferred tone (casual/professional based on research)
- Include credibility signals they care about (data, examples, case studies)
- Correct common misconceptions they mentioned
- Use short paragraphs, bullets, and formatting for scannability
- Naturally incorporate SEO keywords
- Structure answers clearly for featured snippets and AI answer engines

**Examples/Evidence (throughout body):**
- Include real-world scenarios or case studies that resonate with them
- Add data or statistics that build credibility (if they value data)
- Use practical examples they can relate to their situation

**Conclusion (2-3 paragraphs):**
- Summarize the key takeaways
- Provide clear, actionable next steps
- Include CTA aligned with content goal (newsletter signup, product trial, related content, etc.)

**Write the complete article now** — from headline through conclusion. Make it ready to publish.

### Step 5: Deliver the Content

Present it in clear sections, with Digital Twin quotes verbatim and attributed.

**PRIMARY DELIVERABLE — The Complete Written Blog Post/Article:**

Output the full, publish-ready blog post or article you wrote in Step 4, including:
- Headline
- Complete introduction
- Full body with all sections and headers
- Examples and evidence throughout
- Complete conclusion with CTA
- Ready to copy and publish

**THEN provide supporting materials:**

**1. Content Brief:**
- **Target audience**: Who this is for
- **Primary goal**: SEO, lead gen, education, etc.
- **Word count**: Actual length
- **Tone**: Casual/professional based on research
- **Primary keyword**: Main SEO target
- **Secondary keywords**: Supporting terms

**2. Key Insights Used:**
- Top 3-5 audience insights that shaped the content
- Questions answered (from research)
- Pain points addressed
- Credibility signals included
- Engagement hooks used

**3. SEO/AEO Optimization Summary:**
- **Target keywords**: Primary and secondary
- **Search intent**: What audience is looking for
- **Featured snippet opportunity**: How content is structured to capture it
- **AEO optimization**: How it's structured for AI answer engines
- **Internal linking opportunities**: Related content to link to
- **Meta description suggestion**: Based on audience search behavior

**4. Performance Recommendations:**
- How to measure success (traffic, rankings, engagement, conversions)
- Distribution channels (where to promote based on audience research)
- Potential updates or follow-ups based on content gaps identified

## Content Generation Framework

| Content Element | Audience Insight Source | Optimization |
|----------------|------------------------|--------------|
| **Headline** | What makes them click | Include primary keyword, promise value |
| **Introduction** | Pain points and goals | Hook with their frustration/goal, set expectations |
| **Structure** | Questions they have | H2/H3 headers that answer specific questions |
| **Tone** | Casual vs. professional preference | Match their preferred style |
| **Examples** | What makes it relatable | Use scenarios they mentioned or similar |
| **Credibility** | What builds trust | Include data/examples/credentials they value |
| **Depth** | How comprehensive they want | Match preferred length and detail level |
| **SEO** | How they search | Natural keyword usage, semantic relevance |
| **AEO** | Questions they ask | Clear, direct answers; structured data |
| **CTA** | What makes them take action | Aligned with content goal and their needs |

## Tips for Best Results

- **Write for the audience, optimize for search**: Use insights to inform content, then layer in SEO naturally
- **Answer the real questions**: Don't assume — use the specific questions from research
- **Match their depth preference**: Don't write 3,000 words if they want quick, actionable advice
- **Use their language**: Incorporate words and phrases they used in responses
- **Address frustrations**: Call out what existing content gets wrong and do it better
- **Build credibility their way**: If they value data, include data; if they value stories, include stories
- **Structure for skimming**: Use headers, bullets, short paragraphs — they said what makes them read vs. skim
- **Optimize for featured snippets**: Use clear question-answer format for key questions
- **Make it actionable**: Include practical next steps they can take

## Related Skills

- **deep-customer-research**: For deeper audience understanding before content creation
- **landing-page-optimization**: To optimise the pages content links to
- **brand-messaging-validation**: To ensure content aligns with validated brand voice
- **creative-testing**: To test content angles and headlines before writing
