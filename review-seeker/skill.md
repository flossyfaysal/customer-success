---
name: Review Seeker
description: Generate a personalized Trustpilot review request when a customer shows positive sentiment. Not pushy - just a natural, warm ask.
---

# Skill: Review Seeker

## Purpose
Generate a personalized Trustpilot review request when a customer shows positive sentiment. Not pushy — just a natural, warm ask.

---

## Skill Structure

```
review-seeker/
├── SKILL.md                               ← You are here (index + full skill guide)
└── prompt-library/
    ├── 001-long-time-user-activation.md
    ├── 002-churning-positive-sentiment.md
    └── 003-post-negative-review-recovery.md
```

---

## When to Use
- Customer left a positive rating or positive feedback
- Customer said something genuinely nice about the product

## Intake Questions

Ask these before generating. Required fields must be answered; optional fields improve the output but skip if unavailable.

| # | Question | Required? |
|---|----------|-----------|
| 1 | What is the customer's name? | Required |
| 2 | What did they say? (paste their exact words) | Required |
| 3 | What was resolved or discussed in this ticket? | Required |
| 4 | How long have they been a customer? | Optional |
| 5 | Any other context worth knowing? (e.g. churning, just renewed, first ticket, upgraded) | Optional |

**Note on question 4:** Express duration in human-friendly terms - "nearly 10 years", not "since 2016". If only a signup date is available, convert it.

## Reply Structure
1. **Thank them** — quote their actual words, tie it to what was resolved
2. **Appreciate loyalty** — mention duration if available, 1-2 sentences
3. **Ask for Trustpilot review** — frame around why their voice matters, include link on its own line: https://www.trustpilot.com/evaluate/duplicator.com
4. **Close with no pressure** — zero obligation, door open for future help

## Rules
- Conversational and warm — real human, not a bot
- Quote their words — makes it personal
- Never pushy — the ask is a suggestion, not the point of the email
- Concise — scannable in under 30 seconds
- No emojis unless the customer used them first
- Always include: "the biggest compliment you can give us is telling others about your experience" (adapt naturally)

---

## Prompt Library

See [prompt-library/](prompt-library/) for real examples — study these before generating.

---

## Version Notes

**v1.0** — Initial skill: when to use, inputs, reply structure, rules, 3 prompt library entries
**v2.0** — Restructured: prompt library entries moved to separate files
**v2.1** — Inputs replaced with structured Intake Questions (5 questions, required/optional marked)

**Notes:**
Don't use the ` or — (em dash) characters in the reply. Keep it simple with hyphens and standard punctuation.