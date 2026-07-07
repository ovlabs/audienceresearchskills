# Audience Research Skills Versions

Current versions of all skills. Agents can compare against local versions to check for updates.

| Skill | Version | Last Updated |
|-------|---------|--------------|
| deep-customer-research | 1.1.0 | 2026-07-07 |
| icp-discovery | 1.1.0 | 2026-07-07 |
| creative-testing | 1.1.0 | 2026-07-07 |
| facebook-ad-copy | 1.1.0 | 2026-07-07 |
| google-ad-copy | 1.1.0 | 2026-07-07 |
| landing-page-optimization | 1.1.0 | 2026-07-07 |
| email-campaign-copy | 1.1.0 | 2026-07-07 |
| feature-concept-testing | 1.1.0 | 2026-07-07 |
| brand-messaging-validation | 1.1.0 | 2026-07-07 |
| content-generation-optimization | 1.1.0 | 2026-07-07 |
| creative-brief | 1.1.0 | 2026-07-07 |
| idea-validation | 1.1.0 | 2026-07-07 |
| product-description-optimization | 1.1.0 | 2026-07-07 |
| roundtable-twin-interviews | 1.1.0 | 2026-07-07 |
| video-script-generation | 1.1.0 | 2026-07-07 |

## Recent Changes

### 2026-07-07
- **All 15 skills → 1.1.0: question-quality standard rolled out across the library.** Added a shared, mandatory "Question Quality Rules" block (specific-moment over definitional, open valence / no leading, one idea per question, open-ended only, no socially-correct answers, intent grounded in real behaviour) with Range + Neutrality gates, and rewrote the hardcoded `ask_twins` question sets in every skill to pass it. Tailored add-ons: a **verbatim-elicitation** note for the copy/content skills (facebook-ad-copy, google-ad-copy, email-campaign-copy, landing-page-optimization, product-description-optimization, content-generation-optimization), a **stimulus-testing** note (unaided gut reaction first, no demand effects, counterbalance A/B order, separate comprehension/preference/persuasion) for the concept/creative/messaging skills (icp-discovery, feature-concept-testing, idea-validation, brand-messaging-validation, creative-testing, landing-page-optimization), and an inline Range+Neutrality gate for the adaptive roundtable-twin-interviews. Also added missing `version` fields to creative-brief, idea-validation, product-description-optimization, roundtable-twin-interviews, and video-script-generation.
- **deep-customer-research 1.1.0**: Strengthened question design to maximise the range of answers. Added an explicit, mandatory ruleset (specific-moment over definitional, open valence / no leading questions, one idea per question, no socially-correct answers) with banned phrasings; reworked the framework and sample questions to be open and experience-anchored; added a weak→strong check with Range + Neutrality gates.

### 2026-02-10
- Initial release with 10 audience research skills powered by OriginalVoices Digital Twins
