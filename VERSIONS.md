# Audience Research Skills Versions

Current versions of all skills. Agents can compare against local versions to check for updates.

| Skill | Version | Last Updated |
|-------|---------|--------------|
| deep-customer-research | 2.0.0 | 2026-11-24 |
| icp-discovery | 2.0.0 | 2026-11-24 |
| creative-testing | 2.0.0 | 2026-11-24 |
| facebook-ad-copy | 2.0.0 | 2026-11-24 |
| google-ad-copy | 2.0.0 | 2026-11-24 |
| landing-page-optimization | 2.0.0 | 2026-11-24 |
| email-campaign-copy | 2.0.0 | 2026-11-24 |
| feature-concept-testing | 2.0.0 | 2026-11-24 |
| brand-messaging-validation | 2.0.0 | 2026-11-24 |
| content-generation-optimization | 2.0.0 | 2026-11-24 |
| creative-brief | 2.0.0 | 2026-11-24 |
| idea-validation | 2.0.0 | 2026-11-24 |
| product-description-optimization | 2.0.0 | 2026-11-24 |
| roundtable-twin-interviews | 2.0.0 | 2026-11-24 |
| video-script-generation | 2.0.0 | 2026-11-24 |

## Recent Changes

### 2026-11-24
- **All 15 skills → 2.0.0: reports adapt to what was tested.** Every skill now reads every twin answer before writing, carries every material finding into the output, and fits the report to the study instead of a fixed template. A major version because the shape of the output changes:
  - **One item or several.** creative-testing gains a single-concept path (its own question set, no winner); icp-discovery profiles a single audience instead of inventing segments to rank; feature-concept-testing, idea-validation and brand-messaging-validation assess each item on its own before comparing. Ties, "no clear winner" and "inconclusive" are valid results.
  - **Verdicts are qualified, not forced.** Go / Pivot / Kill, Build / Iterate / Don't Build and Keep / Refine / Rethink stay as the default framing, given when the evidence supports one and described as a reading of twin answers rather than proof of demand or adoption.
  - **No quotas.** The 3-5 theme ceiling, fixed quote counts, fixed sentence counts and compulsory charts are gone. Report sections are the default structure; charts appear only where answers can be counted; numeric fit scores need a stated method.
  - **Content skills deliver the asset first** (ads, emails, scripts, descriptions, briefs), then a short audience rationale. Variation counts are defaults that give way to what the user asked for. No invented offers, claims, statistics or performance forecasts.
  - **No research calls added to improve a report.** Optional validation steps and the Roundtable's rounds are unchanged.
- Research design is unchanged: question-quality rules, question sets and `ask_twins` calls are as in 1.2.0, apart from the new single-concept set in creative-testing.

### 2026-11-02
- **All 15 skills → 1.1.1: output formatting is left to the host.** Each skill's delivery step no longer prescribes markdown (`##`/`###` headers, `>` blockquotes, `---` rules); it says to present the deliverable in clear sections with Digital Twin quotes verbatim and attributed. What to deliver (sections, contents, charts to include) is unchanged. Agents and apps render it in their own format: markdown in Claude Code or Cursor, native components elsewhere.

### 2026-07-07
- **All 15 skills → 1.1.0: question-quality standard rolled out across the library.** Added a shared, mandatory "Question Quality Rules" block (specific-moment over definitional, open valence / no leading, one idea per question, open-ended only, no socially-correct answers, intent grounded in real behaviour) with Range + Neutrality gates, and rewrote the hardcoded `ask_twins` question sets in every skill to pass it. Tailored add-ons: a **verbatim-elicitation** note for the copy/content skills (facebook-ad-copy, google-ad-copy, email-campaign-copy, landing-page-optimization, product-description-optimization, content-generation-optimization), a **stimulus-testing** note (unaided gut reaction first, no demand effects, counterbalance A/B order, separate comprehension/preference/persuasion) for the concept/creative/messaging skills (icp-discovery, feature-concept-testing, idea-validation, brand-messaging-validation, creative-testing, landing-page-optimization), and an inline Range+Neutrality gate for the adaptive roundtable-twin-interviews. Also added missing `version` fields to creative-brief, idea-validation, product-description-optimization, roundtable-twin-interviews, and video-script-generation.
- **deep-customer-research 1.1.0**: Strengthened question design to maximise the range of answers. Added an explicit, mandatory ruleset (specific-moment over definitional, open valence / no leading questions, one idea per question, no socially-correct answers) with banned phrasings; reworked the framework and sample questions to be open and experience-anchored; added a weak→strong check with Range + Neutrality gates.

### 2026-02-10
- Initial release with 10 audience research skills powered by OriginalVoices Digital Twins
