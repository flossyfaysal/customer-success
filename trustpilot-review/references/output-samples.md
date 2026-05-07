# Output Samples — Trustpilot Review Skill

Three style examples to calibrate length, tone, and structure. Study these before
generating a reply. Match the energy, not just the format.

---

## Style 1 — Simple

**Use when:** The ticket was a quick win, or the user wants a short, clean close.
**Length:** 3-4 short paragraphs. Fast to read, no extra sections.
**Sections:** Opening thanks + loyalty mention (brief) + review ask + warm close.

---

**Input:**
Customer: Sarah — activation issue resolved — 5 years with us — no project info — simple close

**Output:**

Hi Sarah,

So glad we got that activation sorted out for you quickly!

I also noticed you've been with us for over 5 years — thank you so much for that. It honestly means a lot to us.

If you have a spare moment, it would mean the world if you could share a quick review on Trustpilot:
https://www.trustpilot.com/evaluate/duplicator.com

A few honest words from someone who has been with us as long as you have go a long way in helping others feel confident choosing Duplicator. It's genuinely the biggest compliment you could give us.

Totally no pressure, of course. I'm just glad everything's working again, and I'm here whenever you need me.

Best regards,

---

## Style 2 — Medium

**Use when:** The ticket had some depth, or the customer said something kind.
**Length:** 4-5 paragraphs. Includes a quote if available, loyalty paragraph, one personal
touch, review ask, warm close.
**Sections:** Opening thanks + loyalty recognition + light personal touch + review ask + close.

---

**Input:**
Customer: Marcus — migration completed after multiple attempts — nearly 7 years with us — has one site (no URL provided) — customer said "finally works, thank you!"

**Output:**

Hi Marcus,

"Finally works, thank you!" — that made my day. I'm really glad we got that migration wrapped up for you, even if it took a bit of back and forth to get there.

I also couldn't help but notice that you've been with us for nearly 7 years. That kind of loyalty genuinely means a lot, and I'm glad we could come through for you on this one.

I hope the site runs smoothly from here on out. If you ever need a hand with anything down the road, I'm always just a message away.

If you have a spare minute, it would mean a lot if you could share a quick review of your experience on Trustpilot:
https://www.trustpilot.com/evaluate/duplicator.com

A few honest words from a long-time user like you go a long way in helping others feel confident. It's the biggest compliment you could give us.

No pressure at all, Marcus. Thank you again, and I'm here whenever you need me.

Best regards,

---

## Style 3 — Explained

**Use when:** Long-time customer, multiple personal details available, project URLs provided,
or the user wants maximum personalization.
**Length:** 5-7 paragraphs. Full loyalty section, project research paragraph, success wish,
full review ask, warm close.
**Sections:** Opening thanks + loyalty recognition + project compliment + success wish + review ask + close.

---

**Input:**
Customer: Joel — hard reset fixed missing features — nearly 8 years (7.8) — two project URLs: biglittlepictures.com and papercutstrading.com — success wish: 2 sentences — congratulate loyalty: yes

**Output:**

Hi Joel,

I'm glad to hear that the hard reset worked perfectly and restored those missing features for you.

I noticed that you have been with us for nearly 8 years - 7.8 years to be exact! Thank you so much for such incredible loyalty. It is long-term users like you who have helped make Duplicator Pro what it is today, and we are truly honored to have supported your projects for nearly a decade.

Speaking of projects, I took a look at both https://biglittlepictures.com/ and https://papercutstrading.com/. You've done a wonderful job with the branding and layout on both sites - they look exceptionally professional and clean. It's clear you have a great eye for detail and a strong passion for your work.

I wish you the absolute best of success with these current sites and all your future ventures. We are always here whenever you need us.

If you're happy with the support I provided today, would you mind taking a moment to share your experience on Trustpilot? As a veteran user of almost 8 years, your feedback would mean a lot to our team:
https://www.trustpilot.com/evaluate/duplicator.com

Thanks again, Joel!

Best regards,

---

## Quick Reference — Style Comparison

| | Simple | Medium | Explained |
|---|---|---|---|
| Paragraphs | 3-4 | 4-5 | 5-7 |
| Loyalty mention | Brief (1-2 lines) | Full paragraph | Full paragraph + milestone |
| Project compliment | No | Optional (1 line) | Yes - based on web research |
| Success wish | No | No | Yes - specified sentence count |
| Customer quote | No | Yes if available | Yes if available |
| Review ask | Yes | Yes | Yes - framed with loyalty context |
| Closing | Short | Warm, 1-2 lines | Personal, references their journey |

---

## Notes for Generation

- In Simple and Medium styles, skip sections that have no data (no project = no project line)
- In Explained style, every available section should be present
- Never force a section — if the user didn't provide the data, don't fake it
- Project compliments in the Explained style MUST come from actual web research (WebFetch)
- The Trustpilot link always goes on its own line, never mid-sentence
