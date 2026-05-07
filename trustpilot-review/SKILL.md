---
name: trustpilot-review
description: >
  Generate a personalized Trustpilot review request reply for a resolved support ticket.
  Two modes: build from custom parameters (asks questions step-by-step, supports project
  web research, loyalty recognition, and success wishes) or generate from ticket context
  (quick reply based on what was resolved). Saves the Trustpilot review link to memory
  after first use so it never needs to be re-entered.

  Trigger this skill when the user:
  - Wants to ask a customer for a Trustpilot review after a resolved ticket
  - Says "trustpilot review", "ask for review", "review request", "write a review reply",
    "review seeker", "end with a review ask"
  - Has a positive or resolved ticket and wants a personalized closing reply
  - Wants a reply that mentions customer loyalty, years with company, or project details

  Always use this skill. Do not attempt Trustpilot review replies from scratch without it.
  Output is a single polished reply, ready to paste into a support ticket.
---

# Trustpilot Review Skill

Generates a **personalized Trustpilot review request reply**. Output is warm, genuine, and
personal — never scripted or transactional. The ask feels like a natural end to a great
support interaction, not a marketing push.

---

## Step 0 — Trustpilot Link Setup (Memory Check)

Before asking anything else, check memory for a saved Trustpilot review link.

**How to check:**
Look in the memory directory at:
`~/.claude/projects/-Users-skfaysalalom-Downloads-Projects-wgms-skills/memory/`

Search for any `.md` file containing a `trustpilot` link (e.g. `reference_trustpilot_link.md`).

**If a link is found:** Use it silently. Do not announce it. Proceed to Step 1.

**If no link is found:**
Ask:
> "What is your Trustpilot review link? I'll save it so you won't need to enter it again."

Once provided, save it to memory immediately using the Write tool:
- Path: `~/.claude/projects/-Users-skfaysalalom-Downloads-Projects-wgms-skills/memory/reference_trustpilot_link.md`
- Also update `~/.claude/projects/-Users-skfaysalalom-Downloads-Projects-wgms-skills/memory/MEMORY.md` to add a pointer

Memory file content:
```
---
name: Trustpilot Review Link
description: Saved Trustpilot review link used in all review request replies — do not re-ask
type: reference
---

Trustpilot review link: [link provided by user]
```

Then proceed to Step 1.

---

## Step 1 — Mode Selection

Ask the user:

> "How would you like to build the review reply?
>
> **1. Build from parameters** — I'll ask you a few questions to craft a fully personalized reply (loyalty recognition, project research, success wishes, custom details)
>
> **2. Generate from ticket** — Paste the ticket and I'll write a warm review ask based on what was resolved"

Wait for their choice. Do NOT proceed until they answer.

---

## Mode 1 — Custom Parameters

Ask each question one at a time. Wait for the answer before asking the next. Do NOT batch questions in a single message.

After each answer, briefly acknowledge it (e.g. "Got it." or "Perfect.") unless the answer is a simple yes/no.

---

### Q1 — Customer Name

> "What is the customer's name?"

---

### Q2 — Years with Company

> "How long has this customer been with us? Give me a signup date, a rough year, or just a number of years — I'll convert it."

Convert any input to human-friendly language using today's date (2026-05-07):

| Input | Output |
|---|---|
| since 2017 | nearly 9 years |
| 9.8 years | nearly a decade |
| 10.2 years | over a decade |
| 7.8 years | nearly 8 years |
| 3.1 years | just over 3 years |
| 2.9 years | almost 3 years |
| 8 months | almost a year |

Always prefer milestone language: "nearly a decade" is stronger than "9.8 years".

---

### Q3 — What Was Resolved

> "What did you help them with in this ticket? A sentence or two is fine."

---

### Q4 — Project Appreciation

> "Would you like to include a personal compliment about their project or website? (yes / no)"

**If yes:**
> "What is the project name or URL? You can share more than one."

Store all URLs or project names. They will be used in Q6 if the user wants a success wish.

**If no:** Move to Q5.

---

### Q5 — Loyalty Congratulation

> "Would you like to congratulate them on their years with us? (yes / no)"

If yes: note it. A dedicated loyalty paragraph will be included in the reply.

---

### Q6 — Project Success Wish

> "Would you like to wish them success with their current or future projects? (yes / no)"

**If yes:**

- If project URL(s) were already provided in Q4: use those.
- If not yet provided:
  > "What project or site should I personalize the success wish for? Share a name or URL."

Then ask:
> "How many sentences for the success wish — 1, 2, or 3?"

**Web Research Step:**
Use WebFetch to visit each project URL. From the site, identify:
- What the site is about (niche, purpose, audience)
- Something visually or content-wise notable (design quality, branding, layout, professionalism, clear focus)
- One specific, genuine detail worth complimenting

Write the success wish using what you actually observed. Do NOT invent compliments.
Match the sentence count to what the user specified (1, 2, or 3 sentences).

**Example of good project research output (2 sentences):**
> "I took a look at [site URL] — the branding and layout look exceptionally clean and professional. It's clear you have a strong eye for detail and real pride in your work."

**If no:** Move to Q7.

---

### Q7 — Output Style

> "Last question — what style reply would you like?
>
> **Simple** — Short and warm, 3-4 paragraphs, quick to read
> **Medium** — Balanced, more personal, 4-5 paragraphs
> **Explained** — Fully personalized — loyalty, project research, success wish, full detail"

See `references/output-samples.md` for examples of each.

Then **generate the reply** using everything gathered.

---

## Mode 2 — Ticket-Based

Ask:
> "Paste the ticket context below — the customer's words, what was resolved, and any details you want included."

Then ask:
> "What style reply would you like?
>
> **Simple** — Short and warm
> **Medium** — A bit more personal
> **Explained** — Fully developed"

Even in ticket-based mode:
- Use the customer's name if visible in the ticket
- Reference their specific words if they said something positive
- Mention their loyalty duration if visible in the ticket
- Frame the ask around what was specifically resolved

---

## Reply Structure

Build the reply by combining only the relevant sections for the style and inputs given.

| Section | When to include |
|---|---|
| Opening thanks | Always — reference what was resolved or what they said |
| Loyalty recognition | When years were provided and user said yes to Q5 |
| Project compliment | When URL was provided and user said yes to Q4 |
| Success wish | When user said yes to Q6 — based on web research |
| Review ask | Always — with saved Trustpilot link on its own line |
| Warm close | Always — zero pressure, open door |

---

## Output Rules

- Output ONLY the reply. No commentary or explanation after it.
- Always use the customer's first name.
- Duration must be human-friendly: "nearly 8 years", "over a decade", "almost 3 years".
- Trustpilot link goes on its own line — never inline mid-sentence.
- The review ask is a suggestion, not the point of the email. Never pushy.
- No em dashes (—) in the reply. Use commas or hyphens.
- No backticks or markdown formatting inside the reply text.
- No emojis unless the customer used them first.
- First person always: "I", "I noticed", "I took a look" — never "our team".
- Closing: always "Best regards," (agent adds their own name below it).

Read `references/tone-guide.md` before generating.
Study `references/output-samples.md` to calibrate style and length.

---

## After Output

Once the reply is generated, ask:
> "Want me to save this reply to the outputs folder?"

If yes, save to:
`outputs/[customer-name]-[YYYY-MM-DD].md`

Format:
```
# Trustpilot Reply — [Customer Name] — [Date]

**Mode:** [Custom Parameters / Ticket-Based]
**Style:** [Simple / Medium / Explained]
**Trustpilot Link:** [link used]

---

[Reply text here]
```
