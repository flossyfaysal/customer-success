# Customer Success Skill Manager

## Purpose

This is the root skill that manages all customer success sub-skills. Use this when you need to route a customer interaction to the right skill, apply shared guidelines across skills, or handle scenarios that span multiple skills.

---

## Available Skills

| Skill | Folder | When to Use |
|---|---|---|
| **Prevent Churn** | `prevent-churn/` | Customer requests a refund or threatens to leave |
| **WMGS Pitch** | `wmgs-pitch/` | Customer reports a restoration/migration issue and needs diagnostic help + White Glove Migration Service suggestion |
| **Review Seeker** | `review-seeker/` | Customer left a positive rating on a resolved ticket — ask for a Trustpilot review |
| **Upsell Pitch** | `upsell-pitch/` | Opportunity to recommend a relevant product (Duplicator Pro upgrade, WP Media Cleanup, Cloud Storage, WMGS, Elite Bundle) |
| **Negative Review Recovery** | `negative-review/` | Customer left a negative rating on a resolved ticket — reach out to understand and rebuild trust |
| **CX Approach** | `cx-approach/` | Proactive follow-up with a customer to check on their progress, ensure backups are working, offer hands-on help, and drive continuous success |
| **Prompt Library** | `prompt-library/` | Need a ready-to-use prompt for a specific scenario — search the library for proven templates and real case examples |

---

## How to Use

### Single Skill

When the user provides a customer interaction, identify the scenario and load the matching skill from its folder. Follow that skill's instructions exactly.

### Multi-Skill (Combining Skills)

Some replies need elements from more than one skill. Common combinations:

| Scenario | Primary Skill | Secondary Skill |
|---|---|---|
| Resolved a churn risk, customer is now happy | Prevent Churn | Review Seeker (follow-up) |
| Restoration issue with an angry customer threatening refund | Prevent Churn | WMGS Pitch (weave in as a solution) |
| Resolved a ticket, customer is happy, and there's an upsell opportunity | Review Seeker | Upsell Pitch (add after review ask) |
| Customer had a negative rating but issue is now resolved | Negative Review Recovery | Review Seeker (only after trust is rebuilt, in a later follow-up) |
| Migration issue where customer is also on a lower-tier license | WMGS Pitch | Upsell Pitch (mention upgrade if relevant) |
| Previous issue may be resolved, need to check in and ensure ongoing success | CX Approach | Review Seeker (if confirmed working) or WMGS Pitch (if still stuck) |
| Customer has sites activated/deactivated, need to re-engage | CX Approach | Upsell Pitch (if upgrade opportunity exists) |

**Rules for combining:**
1. Always lead with the primary skill's structure
2. Weave the secondary skill in naturally — never bolt on a second template
3. Keep the total reply length reasonable — combining does not mean doubling
4. The tone should feel like one unified message, not two skills stitched together

---

## Shared Guidelines (Apply to ALL Skills)

These principles override any individual skill's guidelines if there's a conflict.

### Tone & Voice
- **Human first** — every reply should sound like it was written by a real person who genuinely cares
- **Conversational** — short sentences, simple words, no corporate jargon
- **Warm but professional** — friendly without being overly casual
- **Empathetic** — acknowledge the customer's situation before jumping to solutions or asks

### Formatting
- Use the customer's **first name** — if unavailable, use `[Customer Name]`
- Sign off with `Best regards,` unless the skill specifies otherwise
- Use **bold** for key headings or emphasis within the reply
- Keep replies scannable — use bullet points for lists of 3+ items
- No walls of text — break into short paragraphs (2-3 sentences max per paragraph)

### What Never to Do
- Never sound like a bot or a script
- Never guilt-trip, blame, or pressure the customer
- Never fabricate details about the customer's situation
- Never promise something you can't deliver
- Never use emojis unless the customer used them first
- Never repeat the same point multiple times in one reply
- Never include commentary, metadata, or explanations outside the reply — output should be paste-ready

### Product & Link Reference

These are the canonical links used across skills. Always use these exact URLs:

| Resource | URL |
|---|---|
| Installer log guide | https://duplicator.com/knowledge-base/how-do-i-read-the-installer-log/ |
| Package file sharing guide | https://duplicator.com/knowledge-base/how-do-i-share-my-package-file/ |
| White Glove Migration Service | https://duplicator.com/migration-services/ |
| WP Media Cleanup | https://wpmediacleanup.com/ |
| Duplicator Cloud Storage | https://duplicator.com/cloud-storage/ |
| Trustpilot Review Page | https://www.trustpilot.com/evaluate/duplicator.com |

---

## Skill Selection Guide

Use this decision tree when the user doesn't specify which skill to use:

1. **Is the customer asking for a refund or threatening to leave?**
   - Yes → **Prevent Churn**

2. **Is the customer reporting a restoration, migration, or backup failure?**
   - Yes → **WMGS Pitch**
   - If they're also angry/threatening refund → Combine **Prevent Churn** + **WMGS Pitch**

3. **Did the customer leave a positive rating on a resolved ticket?**
   - Yes → **Review Seeker**

4. **Did the customer leave a negative rating on a resolved ticket?**
   - Yes → **Negative Review Recovery**

5. **Is there a natural opportunity to recommend a product?**
   - Yes → **Upsell Pitch** (can be added as a section to any other skill's reply)

6. **Are you following up with a customer to check on their progress, ensure backups are working, or re-engage after silence?**
   - Yes → **CX Approach**
   - If they're now stuck/frustrated → Combine **CX Approach** + **Prevent Churn** or **WMGS Pitch**
   - If everything is working → Combine **CX Approach** + **Review Seeker**

7. **Need a quick prompt for a common scenario (follow-up, getting started, backup help)?**
   - Yes → **Prompt Library** — search for a matching template and adapt

8. **None of the above?**
   - Ask the user for clarification on the scenario

---

## Making Common Updates

When updating shared elements across all skills (tone, links, formatting, product info), update this root file first. The shared guidelines here take precedence over individual skill files.

To update a specific skill, edit the `skill.md` inside that skill's folder directly.

### Update Checklist

When a shared change is needed:
- [ ] Update this root `skill.md` with the new guideline
- [ ] Review each sub-skill to check for conflicts with the new guideline
- [ ] Update any sub-skill that contradicts the new shared guideline
- [ ] Verify all product links are still correct across all skills
