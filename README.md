# Audience Research Skills

**Build with insight, not assumptions.**

AI agent skills that help you instantly research and understand any target audience, and then use those insights to optimize marketing, product, and content decisions.

Built by [OV Labs](https://originalvoices.ai). Learn more about Digital Twins and audience research at the [OriginalVoices docs](https://docs.originalvoices.ai).

**Contributions welcome!** Found a way to improve a skill or have a new one to add? [Open a PR](#contributing).

## What are Skills?

Skills are markdown files that give AI agents specialized knowledge and workflows for specific tasks. When you add these to your project, Claude Code can recognize when you're working on an audience research task and apply the right frameworks and best practices — using OriginalVoices Digital Twins (`ask_twins`) to gather real audience insight.

## Available Skills

<!-- SKILLS:START -->
| Skill | Description |
|-------|-------------|
| [deep-customer-research](skills/deep-customer-research/) | Conduct deep qualitative customer research on any topic using 10-12 comprehensive questions covering behaviour, pain points, emotions, priorities, decision-making, unmet needs, trust signals, and willingness to pay. |
| [icp-discovery](skills/icp-discovery/) | Find your ideal customer profile by testing a product or concept across 5+ distinct demographic segments simultaneously, ranking segments by fit and extracting messaging guidance for the top ICP. |
| [creative-testing](skills/creative-testing/) | Test and validate creative concepts — ads, copy, taglines, scripts, packaging — with real audience feedback before spending budget. Supports up to 10-12 concepts in a single session. |
| [facebook-ad-copy](skills/facebook-ad-copy/) | Generate Facebook and Instagram ad copy grounded in real audience insight, creating 10-15 ad variations rooted in what real people actually said. |
| [google-ad-copy](skills/google-ad-copy/) | Generate Google Responsive Search Ad (RSA) assets grounded in real audience insight — 15 headlines and 4 descriptions optimized for Quality Score. |
| [landing-page-optimization](skills/landing-page-optimization/) | Optimize landing page messaging and conversion elements using real audience insight covering headline testing, trust signals, CTA preferences, and conversion drivers. |
| [email-campaign-copy](skills/email-campaign-copy/) | Generate email marketing campaigns informed by real subscriber insight — subject lines, opening hooks, CTA drivers, and frequency tolerance. |
| [feature-concept-testing](skills/feature-concept-testing/) | Validate feature concepts with real user insight before committing engineering resources — test whether a feature solves a real problem, how users would use it, and whether they'd pay for it. |
| [brand-messaging-validation](skills/brand-messaging-validation/) | Validate brand messaging with real audience insight — positioning clarity, emotional resonance, authenticity, and differentiation. |
| [content-generation-optimization](skills/content-generation-optimization/) | Generate SEO and AEO-optimized content informed by real audience insight — blog posts, articles, and guides that rank well and get read. |
<!-- SKILLS:END -->

## Installation

### Option 1: CLI Install (Recommended)

Use [npx skills](https://github.com/vercel-labs/skills) to install skills directly:

```bash
# Install all skills
npx skills add ovlabs/audienceresearchskills

# Install specific skills
npx skills add ovlabs/audienceresearchskills --skill deep-customer-research icp-discovery

# List available skills
npx skills add ovlabs/audienceresearchskills --list
```

This automatically installs to your `.claude/skills/` directory.

### Option 2: Claude Code Plugin

Install via Claude Code's built-in plugin system:

```bash
# Add the marketplace
/plugin marketplace add ovlabs/audienceresearchskills

# Install all audience research skills
/plugin install audience-research-skills
```

### Option 3: Clone and Copy

Clone the entire repo and copy the skills folder:

```bash
git clone https://github.com/ovlabs/audienceresearchskills.git
cp -r audienceresearchskills/skills/* .claude/skills/
```

### Option 4: Git Submodule

Add as a submodule for easy updates:

```bash
git submodule add https://github.com/ovlabs/audienceresearchskills.git .claude/audienceresearchskills
```

Then reference skills from `.claude/audienceresearchskills/skills/`.

### Option 5: Fork and Customize

1. Fork this repository
2. Customize skills for your specific needs
3. Clone your fork into your projects

### Option 6: SkillKit (Multi-Agent)

Use [SkillKit](https://github.com/rohitg00/skillkit) to install skills across multiple AI agents (Claude Code, Cursor, Copilot, etc.):

```bash
# Install all skills
npx skillkit install ovlabs/audienceresearchskills

# Install specific skills
npx skillkit install ovlabs/audienceresearchskills --skill deep-customer-research icp-discovery

# List available skills
npx skillkit install ovlabs/audienceresearchskills --list
```

## Prerequisites

These skills require access to OriginalVoices Digital Twins via the `ask_twins` function. This is available through the [OriginalVoices MCP server](https://docs.originalvoices.ai).

## Usage

Once installed, just ask Claude Code to help with audience research tasks:

```
"Help me understand what our customers think about screen time management"
→ Uses deep-customer-research skill

"Find the best audience for my meal planning app"
→ Uses icp-discovery skill

"Test these 5 ad concepts with our target audience"
→ Uses creative-testing skill

"Write Facebook ads for our skincare product"
→ Uses facebook-ad-copy skill

"Validate our new brand positioning"
→ Uses brand-messaging-validation skill
```

You can also invoke skills directly:

```
/deep-customer-research
/icp-discovery
/creative-testing
```

## Skill Categories

### Customer Research
- `deep-customer-research` — Comprehensive qualitative research on any topic
- `icp-discovery` — Find your ideal customer profile across segments

### Creative & Ad Copy
- `creative-testing` — Test creative concepts before spending budget
- `facebook-ad-copy` — Audience-informed Facebook/Instagram ads
- `google-ad-copy` — Audience-informed Google RSA assets

### Conversion & Messaging
- `landing-page-optimization` — Optimize pages for conversion
- `email-campaign-copy` — Subscriber-informed email campaigns
- `brand-messaging-validation` — Validate positioning and taglines

### Product & Content
- `feature-concept-testing` — Validate features before building
- `content-generation-optimization` — SEO/AEO content from audience insight

## Contributing

Found a way to improve a skill? Have a new skill to suggest? PRs and issues welcome!

See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines on adding or improving skills.

## License

[MIT](LICENSE) — Use these however you want.
