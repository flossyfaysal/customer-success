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

## Inputs
- Customer name
- Their positive words (exact quote)
- What was resolved or discussed
- EDD signup date (if available) — express as human-friendly duration ("nearly 10 years", not "since 2016")
- Any extra context (leaving, long-time user, first ticket, etc.)

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

**Notes:**
Don't use the ` or — (em dash) characters in the reply. Keep it simple with hyphens and standard punctuation.