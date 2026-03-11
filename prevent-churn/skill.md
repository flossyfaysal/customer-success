# Prevent Churn Skill

## Purpose
This skill helps craft empathetic, solution-focused responses when customers request refunds or express frustration. The goal is to retain customers by addressing concerns genuinely, offering concrete solutions, and rebuilding trust. Where churn is unavoidable, handle it gracefully and leave the door open.

---

## Skill Structure

```
prevent-churn/
├── SKILL.md                               ← You are here (index)
├── core/
│   ├── principles.md                      ← Guiding principles, input requirements, what not to do
│   ├── response-template.md               ← Standard + graceful exit templates
│   └── tone-calibration.md                ← Tone guide by frustration level
├── scenarios/
│   ├── backup-failure.md
│   ├── migration-issues.md
│   ├── plugin-not-working.md
│   ├── performance-issues.md
│   ├── billing-pricing.md
│   ├── general-dissatisfaction.md
│   └── platform-exit.md                   ← Customer leaving WordPress entirely
├── phrase-banks/
│   ├── empathy.md
│   ├── partnership.md
│   ├── solution-confidence.md
│   ├── investment-opportunity.md
│   ├── safety-net.md
│   └── loyalty-appreciation.md            ← Long-term customer / graceful exit phrases
├── examples/
│   ├── backup-failure-medium.md
│   ├── migration-failed-high.md
│   ├── plugin-low.md
│   └── platform-exit-loyal.md             ← 6-year customer leaving WordPress
└── prompt-library/
    ├── 001-disk-space-backup.md
    └── 002-platform-exit-loyal.md         ← Appreciation churn pattern
```

---

## How to Use This Skill

1. **Identify the scenario** — go to [scenarios/](scenarios/)
2. **Check the frustration level** — see [core/tone-calibration.md](core/tone-calibration.md)
3. **Build your response** — follow [core/response-template.md](core/response-template.md)
4. **Pick phrases** — browse [phrase-banks/](phrase-banks/)
5. **Review real examples** — see [examples/](examples/) or [prompt-library/](prompt-library/)

---

## Quick-Start Checklist

- Did I acknowledge their specific frustration?
- Did I apologize sincerely (without being overly apologetic)?
- Did I explain the likely root cause briefly?
- Did I offer 2-4 concrete, specific solutions?
- Did I include a "done-for-you" option?
- Did I add a bonus or compensation?
- Did I use partnership language ("we," "together," "your success is our success")?
- Did I include the safety net (refund still available)?
- Did I make it easy for them to say yes?
- Did I close warmly and personally?

---

## Success Metrics

A good churn-prevention response should:
- Feel personal and human (not templated)
- Offer at least 2 concrete solutions
- Make the customer feel heard and valued
- Provide a clear, easy next step
- Maintain the safety net (refund option)
- Take less than 5 minutes for the customer to read and respond to

---

**Remember**: The goal is not just to prevent the refund — it is to turn a frustrated customer into a loyal advocate by showing them they made the right choice. Where churn is unavoidable, leave them with a positive final impression.

---

## Version Notes

**v1.0** — Initial skill: core structure, 6 scenarios, tone calibration, phrase banks, 3 examples
**v2.0** — Restructured into modular folders and files; added platform-exit scenario, loyalty-appreciation phrase bank, platform-exit example, and prompt library entry 002 (appreciation churn pattern)


**Notes:**
Don't use the ` or — (em dash) characters in the reply. Keep it simple with hyphens and standard punctuation.