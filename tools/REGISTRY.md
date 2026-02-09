# Audience Research Tools Registry

Quick reference for AI agents to discover tool capabilities.

## How to Use This Registry

1. **Find tools by category** — Browse sections below
2. **Check integration methods** — See what APIs and MCPs are available
3. **Use within skills** — Skills reference these tools for audience research

---

## Tool Index

| Tool | Category | API | MCP | Description |
|------|----------|:---:|:---:|-------------|
| OriginalVoices | Audience Research | ✓ | ✓ | Digital Twins for qualitative audience research via `ask_twins` |

---

## OriginalVoices

**Category**: Audience Research
**Website**: [originalvoices.ai](https://originalvoices.ai)
**Docs**: [docs.originalvoices.ai](https://docs.originalvoices.ai)

### What It Does

OriginalVoices provides access to Digital Twins — AI representations of real people, trained and owned by the individuals they represent. Use `ask_twins` to conduct qualitative market research by asking questions to Digital Twins selected to match your specified audience demographics and interests.

### Core Function

```
ask_twins(
  audience: "Detailed audience description — demographics, interests, lifestyle",
  questions: [
    "Open-ended question 1",
    "Open-ended question 2",
    ...
  ]
)
```

### Key Capabilities

- Conduct qualitative research with real audience perspectives
- Test creative concepts, messaging, and positioning
- Validate product ideas and features before building
- Generate audience-informed marketing copy
- Discover ideal customer profiles across segments

### Best Practices

- **Be specific with audiences**: Include age, location, interests, lifestyle, values
- **Ask open-ended questions**: Start with "How", "What", "Why", "Walk me through..."
- **Don't lead**: Ask "What matters to you about X?" not "Don't you think X is important?"
- **Use their language**: Include direct quotes from Digital Twin responses in outputs
- **Batch questions**: Send 10-12 questions in a single call for comprehensive research
