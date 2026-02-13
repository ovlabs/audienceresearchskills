---
name: content-generation-optimization
version: 1.0.0
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

```
ask_twins(
  audience: "[detailed target audience]",
  questions: [
    "When you're looking for information about [topic], what are you trying to learn or accomplish? What's your main goal?",
    "What specific questions do you have about [topic] that you want answered?",
    "What frustrates you about most articles or content on [topic]? What do they get wrong, miss, or over-explain?",
    "When reading about [topic], do you prefer: A) Casual, conversational tone, or B) Professional, formal tone? Why?",
    "How deep should content on [topic] go? Would you read a comprehensive 2,000-word guide, or do you prefer short, actionable advice?",
    "What makes you trust that content about [topic] is credible and worth your time? (data, examples, author credentials, case studies, etc.)",
    "What would make you actually read an article about [topic] all the way through vs. just skimming?",
    "If you were searching for '[topic]' on Google, what would you type? What would you expect to find?",
    "What examples, case studies, or real-world scenarios would make content about [topic] more useful to you?",
    "What would make you bookmark or share an article about [topic] with someone else?",
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
