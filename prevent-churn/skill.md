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
│   ├── platform-exit.md                   ← Customer leaving WordPress entirely
│   └── renewal-refund.md                  ← Renewal refund requests (non-refundable policy + partial discount)
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

**STOP — answer this before doing anything else:**

> Is this a renewal refund request? (yes/no)

- If the answer is not provided in the conversation context, ask the agent before proceeding.
- If **yes**: stop and follow [scenarios/renewal-refund.md](scenarios/renewal-refund.md) instead of the standard flow
- If **no**: continue with the steps below

1. **Identify the scenario** — go to [scenarios/](scenarios/)
2. **Check the frustration level** — see [core/tone-calibration.md](core/tone-calibration.md)
3. **Build your response** — follow [core/response-template.md](core/response-template.md)
4. **Pick phrases** — browse [phrase-banks/](phrase-banks/)
5. **Review real examples** — see [examples/](examples/) or [prompt-library/](prompt-library/)

---

## Quick-Start Checklist

- Is this a renewal order? If yes, follow [scenarios/renewal-refund.md](scenarios/renewal-refund.md) — do NOT offer a full refund
- Did I collect the required inputs for renewal cases (reminder emails, sites registered)?
- Did I acknowledge their specific frustration?
- Did I apologize sincerely (without being overly apologetic)?
- Did I explain the likely root cause briefly?
- Did I offer 2-4 concrete, specific solutions?
- Did I include a "done-for-you" option?
- Did I add a bonus or compensation?
- Did I use partnership language ("we," "together," "your success is our success")?
- Did I include the safety net (refund still available for new purchases only)?
- Did I make it easy for them to say yes?
- Did I include the features overview with links? (required in ALL replies)
- If plugin-not-working: did I make the support commitment explicit and unmistakable?
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

## Company Values Integration

When processing a refund or handling a frustrated customer, reference the relevant company value as the reason behind the action.

| Trigger | Value | How to use it |
|---|---|---|
| Offering a refund (full or partial) | **We Do The Right Thing** | Frame the refund as doing right by the customer - even partial refunds on non-refundable renewals are an exception made out of integrity |
| Frustrated or upset customer | **We Fight for Our Customer's Success** | Frame the effort to retain and resolve as a commitment to their success - we only win when they win |

**Phrasing guidance:**
- For refunds: insert in the sentence that introduces or confirms the refund offer
- For frustrated customers: insert in the empathetic opening as the stated reason for going above and beyond
- One sentence is enough — the value explains *why*, then the action follows immediately

**Examples:**

Partial refund offer (renewal):
> "We believe in doing the right thing, every time. Renewals are non-refundable per our terms, but because we want to make this right for you, we're happy to offer a 50% partial refund as an exception."

Frustrated customer opening:
> "We fight for our customers' success - we only win when you win. So let me make sure we get to the bottom of this and find you a real solution."

---

## Version Notes

**v2.4** — Company values integration
- Added Company Values Integration section: Do The Right Thing for refunds, Customer's Success for frustrated customers
- Updated scenarios/renewal-refund.md: Do The Right Thing framing in partial refund offer
- Updated core/response-template.md: Customer's Success guidance in empathetic opening, Do The Right Thing in graceful exit refund step

**v1.0** — Initial skill: core structure, 6 scenarios, tone calibration, phrase banks, 3 examples
**v2.0** — Restructured into modular folders and files; added platform-exit scenario, loyalty-appreciation phrase bank, platform-exit example, and prompt library entry 002 (appreciation churn pattern)
**v2.1** — Added renewal-refund scenario: non-refundable policy, required inputs (reminder emails, sites registered), 50% partial discount offer, conditional reply template, and renewal-specific checklist items
**v2.2** — Added features overview block (with links) as a required step in all replies; strengthened plugin-not-working scenario with explicit commitment language and direct phrases to use
**v2.3** — Added mandatory yes/no gate at the top of "How to Use This Skill" to determine renewal vs. non-renewal before any other step


**Notes:**
Don't use the ` or — (em dash) characters in the reply. Keep it simple with hyphens and standard punctuation.