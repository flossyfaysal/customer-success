# Prompt Library Skill

## Purpose

This skill is your go-to library of ready-to-use customer success prompts. When you need to write a reply for a specific scenario, search this library first — it contains proven prompts organized by category with real case examples. Instead of building from scratch, find the closest match, adapt it to the customer's situation, and send a reply that's already been battle-tested.

---

## How It Works

1. **User describes the scenario** — e.g., "customer hasn't started using the product yet and we need to follow up on their migration"
2. **Search the library** — match the scenario to the closest prompt category below
3. **Check the cases file** — look in `prompt-library/cases.md` for real examples that match
4. **Adapt and generate** — use the prompt template + case examples to craft a reply tailored to the customer's specific situation
5. **Output a paste-ready reply** — no commentary, no metadata, just the reply

---

## Prompt Categories

### 1. Migration Follow-Up

**When to use:** Customer purchased for migration but hasn't started, hasn't created a backup, or went silent after initial contact.

**Key elements:**
- Reference the migration as the reason for follow-up
- Check if they have active sites / have tried the product yet
- Offer help getting started (link to Quick Start KB)
- Offer help creating a backup and running the migration
- Mention White Glove Migration Service + any active discount
- Close with commitment to their success

**Tone:** Supportive, not pushy. Frame it as "we're here to help you succeed" not "why haven't you done this yet."

**Template:**

```
Hi [Customer Name],

I'm following up on your migration — I want to make sure everything is on track for you.

I noticed you don't have any active sites set up yet and haven't had a chance to try Duplicator. No worries at all — getting started is quick, and I'm happy to walk you through it if you'd like a hand.

Here's our Quick Start guide to help you hit the ground running:
[Quick Start Guide](https://duplicator.com/knowledge-base-article-categories/quick-start/)

If you need help creating a backup or running your migration, just let me know — that's exactly what we're here for.

And if you'd prefer to skip the technical steps entirely, our [White Glove Migration Service](https://duplicator.com/migration-services/) team can handle everything end to end. We're currently offering a **30% discount** on the service for a limited time.

We're here until you have a successful migration, reliable backups, and complete peace of mind that your work is protected. Your success is our goal.

Let me know how I can help!

Best regards,
[Your Name]
```

**Adapt by:**
- If they HAVE tried but got stuck → shift from "getting started" to "let me help you past this"
- If they already created a backup but haven't migrated → skip the backup section, focus on migration steps
- If they've been silent for a while → add a softer "just checking in" opener
- If there's a deadline or urgency → emphasize speed of White Glove service

---

### 2. Final Follow-Up (Before Closing Ticket)

**When to use:** Multiple follow-ups sent with no response. This is the last attempt before closing the conversation.

**Key elements:**
- Acknowledge this is a final check-in (without sounding like a threat)
- Briefly restate what you offered to help with
- Mention any common blockers and offer to help past them
- Include relevant self-service links
- Mention White Glove as the "skip everything" option
- Leave the door open

**Template:**

```
Hi [Customer Name],

This is our final follow-up to see where things stand and whether you'd like to move forward with [the migration / your backup setup / etc.].

If you ran into any issues with [specific step], no worries at all — this is very common with [context], and I'm happy to help you through it. [Include relevant KB link if applicable.]

If you'd rather skip the technical steps entirely, our [White Glove Migration Service](https://duplicator.com/migration-services/) might be a good fit. Our team can handle everything for you end to end — and right now, we're offering a **30% discount** on the service for a limited time.

As soon as [next step from customer], I can [what you'll do next].

Let me know how you'd like to proceed or if there's anything at all you need help with — I'm here to make this easy for you.

Best regards,
[Your Name]
```

---

### 3. Getting Started Nudge

**When to use:** Customer purchased but shows no activity — no sites, no backups, no usage.

**Key elements:**
- Friendly check-in, not a lecture
- Link to Quick Start resources
- Offer hands-on help
- Reinforce the value of what they purchased

**Template:**

```
Hi [Customer Name],

Just wanted to check in and see how things are going! I noticed you haven't had a chance to set things up yet, and I wanted to make sure you know we're here to help whenever you're ready.

Getting started is quick — here's our Quick Start guide that walks you through everything step by step:
[Quick Start Guide](https://duplicator.com/knowledge-base-article-categories/quick-start/)

If you'd prefer a little hands-on help, just reply here and I'll walk you through it personally. Whether it's creating your first backup, setting up a migration, or just getting familiar with the plugin — I'm happy to help.

We want to make sure you get full value from your purchase and that your site is protected.

Best regards,
[Your Name]
```

---

### 4. Backup Assistance Offer

**When to use:** Customer needs help creating a backup — either asked directly or is stuck during migration prep.

**Key elements:**
- Normalize that backup issues are common
- Offer to create the backup for them
- Link to package sharing guide
- Mention White Glove if migration is the end goal

**Template:**

```
Hi [Customer Name],

Happy to help you get that backup created! Backup hiccups are really common, especially with larger or more complex sites — so don't worry, we'll get this sorted.

If you'd like, I can take a look from our end. Just share your package file using the steps here:
[How do I share my package file?](https://duplicator.com/knowledge-base/how-do-i-share-my-package-file/)

If you're running into errors during the build process, sharing your backup log will help me pinpoint exactly what's going on.

[If migration is the goal:]
Once we have a successful backup, I can also help you plan out the migration — or if you'd like our team to handle the whole thing, our [White Glove Migration Service](https://duplicator.com/migration-services/) is always an option.

Let me know where you're at and I'll jump in!

Best regards,
[Your Name]
```

---

### 5. White Glove Migration Service Pitch (Standalone)

**When to use:** Customer has expressed interest in migration but keeps hitting walls, or directly asks about done-for-you options.

**Key elements:**
- Empathize with the difficulty they've had
- Position WMGS as the easy path
- Mention any active discount
- Keep it brief and genuine

**Template:**

```
Hi [Customer Name],

I can see you've been putting in the work on this migration, and I'm sorry it hasn't been smooth sailing. Migrations can be tricky, especially with [context — larger sites, complex configurations, etc.].

If you'd like to take the stress out of it completely, our [White Glove Migration Service](https://duplicator.com/migration-services/) team specializes in exactly this. They'll handle the entire migration end to end — backup, transfer, testing, and verification — so you don't have to touch a thing.

We're currently offering a **30% discount** on the service for a limited time, so it's a great time to take advantage of it.

Of course, if you'd rather keep going on your own, I'm right here to help you through every step. Either way, we're not going anywhere until your site is migrated successfully.

Best regards,
[Your Name]
```

---

### 6. Post-Resolution Check-In

**When to use:** Issue was resolved, checking in to make sure everything is still working.

**Template:**

```
Hi [Customer Name],

Just a quick check-in — I wanted to make sure everything is still running smoothly after [the migration / the backup fix / the restoration / etc.].

If anything feels off or if you've noticed any issues since we wrapped up, don't hesitate to reach out. I'm happy to take another look.

Hope everything's working great!

Best regards,
[Your Name]
```

---

## How to Add New Prompts

When you encounter a new scenario that doesn't fit an existing category:

1. Add a new numbered section following the format above
2. Include: **When to use**, **Key elements**, **Template**, and **Adapt by** (if applicable)
3. Add a corresponding real case entry in `prompt-library/cases.md`

---

## Key Links Reference

| Resource | URL |
|---|---|
| Quick Start Guide | https://duplicator.com/knowledge-base-article-categories/quick-start/ |
| Package File Sharing | https://duplicator.com/knowledge-base/how-do-i-share-my-package-file/ |
| Installer Log Guide | https://duplicator.com/knowledge-base/how-do-i-read-the-installer-log/ |
| White Glove Migration Service | https://duplicator.com/migration-services/ |
| WP Media Cleanup | https://wpmediacleanup.com/ |
| Duplicator Cloud Storage | https://duplicator.com/cloud-storage/ |
| Trustpilot Review Page | https://www.trustpilot.com/evaluate/duplicator.com |

---

## Rules

1. Always search the cases file (`cases.md`) for matching real examples before generating
2. Adapt templates to the customer's specific situation — never send a generic copy-paste
3. Follow the root `SKILL.md` shared guidelines for tone, formatting, and what never to do
4. Output only the reply — no commentary, no metadata, paste-ready
5. If the scenario doesn't match any prompt category, check if another skill (Prevent Churn, WMGS Pitch, etc.) is a better fit and route accordingly
