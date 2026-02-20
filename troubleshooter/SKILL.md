# Troubleshooter Skill — Plugin & Backup Diagnostic Replies

## Purpose

This skill helps you craft structured, diagnostic troubleshooting replies when customers report issues with the Duplicator Pro plugin — backup failures, storage problems, crashes, errors, timeouts, and related technical problems. The goal is to **identify the root cause fast**, guide the customer through fixes, and offer to jump in directly when self-service steps don't cut it.

---

## Core Philosophy

Our troubleshooting goal is simple: **get the customer's backup working.** Every reply should move the customer one step closer to a successful backup — whether that's a settings change they can do themselves or us logging in to fix it.

- Don't just throw steps at the wall. Diagnose first, then prescribe.
- If the logs or context reveal a likely cause, call it out clearly — customers appreciate knowing *why* something broke.
- Always have a fallback: if self-service steps don't work, offer to log in and handle it.

---

## Core Principles

1. **Diagnose Before Prescribing** — Read the logs, check the version, identify the likely cause before suggesting fixes. Don't guess blindly.
2. **Call Out Discrepancies** — If the customer says one thing but the logs show another (e.g., version mismatch), flag it politely. Accuracy matters.
3. **Educate While Fixing** — Briefly explain *why* a setting matters (e.g., "WordPress memory limit of 40MB is too low for backup creation"). Customers who understand the cause are less likely to hit the same problem again.
4. **Escalate Gracefully** — Start with steps the customer can do. If those don't work, offer to log in. Never make the customer feel like they're on their own.
5. **One Reply, Multiple Angles** — A good troubleshooting reply addresses the most likely causes in order of probability, so the customer can work through them without waiting for another round of back-and-forth.
6. **Be Specific** — Reference exact settings, exact paths, exact values. "Increase your memory" is vague. "Increase your WordPress memory limit to 256MB" is actionable.
7. **Respect Their Time** — Keep the reply scannable. Use numbered steps, bold key actions, and keep explanations short.

---

## Input Requirements

When using this skill, provide:
- **Customer's name**: First name from the ticket
- **Customer's complaint**: What they described (backup failure, crash, storage error, etc.)
- **Log data** (if available): Version info, error messages, server settings from the log
- **What they've already tried** (if mentioned): Steps the customer has taken
- **Plugin version discrepancy** (if any): What the customer claims vs. what the logs show
- **Server environment details** (if available): PHP version, memory limits, hosting provider

---

## Diagnostic Flow

Before generating a reply, follow this mental checklist:

### Step 1: Version Check
- Is the customer running the latest version of Duplicator Pro?
- Does the version in the logs match what the customer reported?
- If there's a mismatch, flag it — outdated versions cause known issues that may already be fixed.

### Step 2: Server Environment Check
- **WordPress memory limit** — Should be at least 256MB for reliable backup creation
- **PHP memory limit** — Should match or exceed WordPress memory limit
- **Max execution time** — Should be at least 300 seconds for larger sites
- **Disk space** — Site needs roughly 2x its size in free disk space to create a backup
- **PHP version** — Should be 7.4+ (ideally 8.0+)

### Step 3: Archive Engine Check
- What archive engine is the customer using? (ShellZip, ZipArchive, DupArchive)
- **DupArchive** is our native engine — it works reliably across most hosting environments and handles large sites better
- If they're using ShellZip or ZipArchive and hitting issues, suggest switching to DupArchive

### Step 4: Storage & Configuration Check
- Where are they storing backups? (Local, cloud storage, etc.)
- Is the storage path writable?
- Are there permission issues on the server?
- Is the hosting provider blocking any processes?

### Step 5: Escalation Decision
- Can the customer reasonably fix this themselves with the steps provided?
- If the issue is complex, ambiguous, or the customer seems stuck — offer to log in

---

## Response Structure

Every troubleshooting reply follows this flow:

### 1. Warm Acknowledgment (1-2 sentences)
- Thank them for reaching out to Duplicator Pro support
- Add a positive statement about helping them — "I'm happy to help you get your backups running smoothly"
- Reference their specific issue briefly if it fits naturally

### 2. Diagnostic Summary (1-2 sentences)
- Transition into the findings confidently: "After reviewing your logs, I've identified a few key areas..."
- Frame it as a diagnosis, not a lecture — you've done the work, now you're sharing the results

### 3. Recommended Fixes (bold-headed paragraphs, 2-4 fixes)
- Each fix gets its own **bold heading** followed by a paragraph explanation
- Format: **Fix Name:** followed by what to do and why it matters
- Include specific values, paths, and links inline (e.g., screenshot links from logs)
- Order by most likely to resolve the issue first
- Keep each fix to 1-2 sentences — concise but complete

### 4. Escalation Offer (1 heading + 2-3 sentences)
- Introduce with a friendly header: "**If you'd like me to handle this for you:**"
- Frame it as a convenience — "If these steps don't resolve the issue, I would be happy to log in and troubleshoot this directly"
- Request WordPress admin username/password and login URL
- Provide the secure credentials link: https://secrets.supportally.com
- Keep this section brief — no numbered lists, just a clean paragraph

### 5. Confident Close (1 sentence)
- Express confidence and availability: "I'm standing by to help you get this resolved!"
- Keep it warm and forward-looking

---

## Output Format

```
Hi [Name],

Thank you for reaching out to Duplicator Pro support! I'm happy to help you [get your backups running smoothly / resolve this issue / etc.].

After reviewing your [logs / setup / details], I've identified a few key areas that are likely causing the trouble. Here is what I recommend to get things back on track:

**[Fix 1 Name]:** [What to do, why it matters, specific values/paths. Include inline links to logs/screenshots if available. 1-2 sentences.]

**[Fix 2 Name]:** [What to do, why it matters, specific values/paths. 1-2 sentences.]

**[Fix 3 Name]:** [What to do, why it matters, specific values/paths. 1-2 sentences.]

**If you'd like me to handle this for you:** If these steps don't resolve the issue, I would be happy to log in and troubleshoot this directly on your site. To do so, please provide:

Your WordPress admin username and password.

Your site's login URL.

For your security, please share these details using our secret link tool: https://secrets.supportally.com. Once you've added the credentials, simply share the generated link with me here.

I'm standing by to help you get this resolved!

Best regards,
```

---

## Scenario Templates

### Scenario 1: Backup Failure — Version Mismatch + Server Settings

**When to use:** Customer reports backup failure. Logs show an outdated plugin version and/or server settings that are too low (memory, execution time, etc.).

**Template:**

```
Hi [Customer Name],

Thank you for reaching out to Duplicator Pro support! I'm happy to help you get your backups running smoothly.

After reviewing your logs, I've identified a few key areas that are likely causing the trouble. Here is what I recommend to get things back on track:

**Update the Plugin:** Your log indicates you are running version [log version], [screenshot link if available] even though the ticket mentioned the latest version. Please ensure you are fully updated to [latest version], as many recent fixes address the exact issues you're seeing.

**Increase WordPress Memory:** Your current WordPress memory limit is set to [current value]. I recommend increasing this to 256MB to match your PHP memory limit. This provides the power needed to bundle your site's files.

**Switch to DupArchive:** You are currently using "[current engine]" for your backups. I suggest switching to DupArchive (found under Settings > Backup > Archive). This is our native engine and is much more reliable on most server environments.

**If you'd like me to handle this for you:** If these steps don't resolve the issue, I would be happy to log in and troubleshoot this directly on your site. To do so, please provide:

Your WordPress admin username and password.

Your site's login URL.

For your security, please share these details using our secret link tool: https://secrets.supportally.com. Once you've added the credentials, simply share the generated link with me here.

I'm standing by to help you get this resolved!

Best regards,
```

---

### Scenario 2: Backup Crash / Storage Problems

**When to use:** Customer reports that Duplicator crashes during backup or mentions storage-related errors (disk full, write failures, storage path issues).

**Template:**

```
Hi [Customer Name],

Thank you for reaching out to Duplicator Pro support! I'm sorry to hear you're running into crashes, and I'd love to help get this sorted.

After looking into the details, crashes during backup creation are usually caused by a few common factors. Here is what I recommend:

**Check Your Disk Space:** Your site needs roughly 2x its total size in free disk space to create a backup. For example, if your site is 5GB, you'll need at least 10GB free. You can check this in your hosting control panel (cPanel > Disk Usage or similar).

**Increase WordPress Memory:** If your memory limit is below 256MB, that's likely contributing to the crash. You can increase it by adding this line to your wp-config.php file: `define('WP_MEMORY_LIMIT', '256M');`

**Increase PHP Max Execution Time:** If the backup process is timing out, ask your hosting provider to increase max_execution_time to at least 300 seconds.

**Switch to DupArchive:** Go to Settings > Backup > Archive and select DupArchive as your archive engine. This is our native engine and handles larger sites much more reliably than ShellZip or ZipArchive.

**If you'd like me to handle this for you:** If these steps don't resolve the issue, I would be happy to log in and troubleshoot this directly on your site. To do so, please provide:

Your WordPress admin username and password.

Your site's login URL.

For your security, please share these details using our secret link tool: https://secrets.supportally.com. Once you've added the credentials, simply share the generated link with me here.

I'm standing by to help you get this resolved!

Best regards,
```

---

### Scenario 3: Timeout / Slow Backup

**When to use:** Customer reports backup process hanging, timing out, or being extremely slow.

**Template:**

```
Hi [Customer Name],

Thank you for reaching out to Duplicator Pro support! I understand timeouts are frustrating, and I'm happy to help get this resolved.

After looking into your setup, here is what I recommend to get your backups completing successfully:

**Switch to DupArchive:** Go to Settings > Backup > Archive and select DupArchive. This is our native engine and is specifically designed to handle larger or more complex sites without timing out.

**Increase PHP Max Execution Time:** Contact your hosting provider and ask them to increase max_execution_time to at least 300 seconds (ideally 600 for larger sites). This gives the backup process the time it needs to complete.

**Increase WordPress Memory:** Make sure your memory limit is set to at least 256MB. You can do this by adding `define('WP_MEMORY_LIMIT', '256M');` to your wp-config.php file.

**Exclude Large Directories:** If your site has large media folders, log directories, or cache folders, you can exclude them from the backup under Settings > Backup > Files > Filters. This significantly reduces backup size and processing time.

**If you'd like me to handle this for you:** If these steps don't resolve the issue, I would be happy to log in and troubleshoot this directly on your site. To do so, please provide:

Your WordPress admin username and password.

Your site's login URL.

For your security, please share these details using our secret link tool: https://secrets.supportally.com. Once you've added the credentials, simply share the generated link with me here.

I'm standing by to help you get this resolved!

Best regards,
```

---

### Scenario 4: Plugin Conflict / Compatibility Issue

**When to use:** Customer reports Duplicator not working, throwing errors, or conflicting with other plugins or their theme.

**Template:**

```
Hi [Customer Name],

Thank you for reaching out to Duplicator Pro support! I'm sorry you're running into this, and I'd like to help narrow down what's going on.

Plugin conflicts can cause unexpected behavior, so here is what I recommend to isolate the issue:

**Update Duplicator Pro:** Make sure you're running the latest version. You can check under Dashboard > Plugins and update if a newer version is available. We regularly release fixes for compatibility issues.

**Test for Plugin Conflicts:** Temporarily deactivate your other plugins (except Duplicator Pro) and try the operation again. If it works, reactivate them one by one to find which plugin is causing the conflict.

**Switch to a Default Theme:** If deactivating plugins doesn't help, switch to a default WordPress theme (like Twenty Twenty-Four) to rule out theme-related conflicts.

**Check Your PHP Version:** Make sure your hosting is running PHP 7.4 or higher (8.0+ is recommended). You can usually check and change this in your hosting control panel.

**If you'd like me to handle this for you:** If the issue persists after these steps, I would be happy to log in and troubleshoot this directly on your site. To do so, please provide:

Your WordPress admin username and password.

Your site's login URL.

For your security, please share these details using our secret link tool: https://secrets.supportally.com. Once you've added the credentials, simply share the generated link with me here.

I'm standing by to help you get this resolved!

Best regards,
```

---

### Scenario 5: Database-Related Backup Failure

**When to use:** Customer reports backup failures specifically related to the database — large database, corrupted tables, database connection errors, or SQL-related errors in the logs.

**Template:**

```
Hi [Customer Name],

Thank you for reaching out to Duplicator Pro support! Database-related backup issues are common, especially with larger or older WordPress sites — I'm happy to help get this sorted.

After looking into the details, here is what I recommend:

**Repair and Optimize Your Database:** Go to your hosting control panel (cPanel > phpMyAdmin), select your WordPress database, check all tables, and run "Repair table" followed by "Optimize table." This clears up common corruption issues that can cause backup failures.

**Increase WordPress Memory:** A large database needs more memory to process during backup. Make sure your memory limit is set to at least 256MB in wp-config.php: `define('WP_MEMORY_LIMIT', '256M');`

**Switch to DupArchive:** Go to Settings > Backup > Archive and select DupArchive. It handles large databases more efficiently by processing them in smaller chunks, which avoids memory and timeout issues.

**Clean Up Unnecessary Data:** Consider cleaning up post revisions, spam comments, transients, and old logs. Plugins like WP-Optimize can help reduce database size significantly, making backups faster and more reliable.

**If you'd like me to handle this for you:** If these steps don't resolve the issue, I would be happy to log in and troubleshoot this directly on your site. To do so, please provide:

Your WordPress admin username and password.

Your site's login URL.

For your security, please share these details using our secret link tool: https://secrets.supportally.com. Once you've added the credentials, simply share the generated link with me here.

I'm standing by to help you get this resolved!

Best regards,
```

---

### Scenario 6: Cloud Storage Connection Issues

**When to use:** Customer reports issues connecting Duplicator to cloud storage (Google Drive, Dropbox, Amazon S3, OneDrive, etc.) or backups failing during upload to cloud storage.

**Template:**

```
Hi [Customer Name],

Thank you for reaching out to Duplicator Pro support! I'm sorry you're having trouble with your cloud storage connection — I'd love to help get this working.

After looking into the setup, here is what I recommend:

**Re-authorize the Connection:** Go to Duplicator Pro > Storage, click on your [storage provider] configuration, and try re-authorizing the connection. Sometimes the authentication token expires and simply needs to be refreshed.

**Check Your Storage Quota:** Make sure you have enough free space in your [storage provider] account to receive the backup file. If your account is full, the upload will fail silently.

**Test With a Smaller Backup:** Create a backup with just the database (exclude files) and try uploading that. If the small backup uploads successfully, the issue is likely related to upload size or timeout for larger files.

**Check Outbound Connections:** Some hosting providers block outbound connections to external APIs. Contact your host and ask them to whitelist connections to [storage provider's API domain].

**If you'd like me to handle this for you:** If these steps don't resolve the issue, I would be happy to log in and configure the storage connection for you directly. To do so, please provide:

Your WordPress admin username and password.

Your site's login URL.

For your security, please share these details using our secret link tool: https://secrets.supportally.com. Once you've added the credentials, simply share the generated link with me here.

I'm standing by to help you get this resolved!

Best regards,
```

---

## Real Cases (Learn From These)

Study these real cases to understand the troubleshooting patterns. When generating replies, match the diagnostic approach, specificity, and helpful tone.

---

### Case 1: Backup Failure — Version Mismatch + Low Memory + Wrong Engine

**Context:** Customer reported "problems with storage, crash duplicator app." Logs revealed they were running Duplicator 4.5.10 (not the latest 4.5.24.4 as they claimed), WordPress memory limit was only 40MB, and they were using ShellZip as the archive engine.

**What made this reply effective:**
- Opened warmly with a positive statement — "I'm happy to help you get your backups running smoothly"
- Used a confident diagnostic transition — "After reviewing your logs, I've identified a few key areas"
- Each fix got a bold heading with a concise explanation of what to do and why
- Included the screenshot link inline as evidence (not just words)
- Called out the version discrepancy politely — "even though the ticket mentioned the latest version"
- Identified the 40MB memory limit and gave a specific target (256MB) with a human explanation ("provides the power needed to bundle your site's files")
- Suggested switching from ShellZip to DupArchive with the exact navigation path
- Escalation section had a friendly header and clean paragraph format — no numbered lists
- Closed with confident, forward-looking energy

**Reply:**

```
Hi [Customer Name],

Thank you for reaching out to Duplicator Pro support! I'm happy to help you get your backups running smoothly.

After reviewing your logs, I've identified a few key areas that are likely causing the trouble. Here is what I recommend to get things back on track:

**Update the Plugin:** Your log indicates you are running version 4.5.10, https://a.supportally.com/i/rXdgnZ even though the ticket mentioned the latest version. Please ensure you are fully updated to 4.5.24.4, as many recent fixes address the exact issues you're seeing.

**Increase WordPress Memory:** Your current WordPress memory limit is set to 40MB. I recommend increasing this to 256MB to match your PHP memory limit. This provides the power needed to bundle your site's files.

**Switch to DupArchive:** You are currently using "Shell Zip" for your backups. I suggest switching to DupArchive (found under Settings > Backup > Archive). This is our native engine and is much more reliable on most server environments.

**If you'd like me to handle this for you:** If these steps don't resolve the issue, I would be happy to log in and troubleshoot this directly on your site. To do so, please provide:

Your WordPress admin username and password.

Your site's login URL.

For your security, please share these details using our secret link tool: https://secrets.supportally.com. Once you've added the credentials, simply share the generated link with me here.

I'm standing by to help you get this resolved!

Best regards,
```

**Pattern tags:** `version-mismatch` `low-memory` `engine-switch` `duparchive` `site-access-request` `secure-credentials` `bold-heading-format`

---

## Common Diagnostic Reference

### Memory Limits Quick Reference

| Setting | Minimum | Recommended | Where to Change |
|---|---|---|---|
| WordPress memory limit | 128MB | 256MB | wp-config.php: `define('WP_MEMORY_LIMIT', '256M');` |
| PHP memory limit | 128MB | 256MB | php.ini or hosting control panel |
| Max execution time | 120s | 300s | php.ini or contact hosting provider |
| Max input vars | 1000 | 3000 | php.ini or contact hosting provider |
| Upload max filesize | 32MB | 256MB | php.ini or hosting control panel |

### Archive Engine Comparison

| Engine | Best For | Notes |
|---|---|---|
| **DupArchive** | All sites, especially large ones | Our native engine. Most reliable across hosting environments. Recommended default. |
| **ZipArchive** | Small to medium sites | PHP-based. Can hit memory/timeout limits on larger sites. |
| **ShellZip** | Sites where shell_exec is available | Fastest when available, but many hosts disable shell_exec for security. |

### Common Error → Likely Cause Mapping

| Error / Symptom | Likely Cause | First Fix |
|---|---|---|
| Backup crashes mid-process | Low memory limit | Increase WP memory to 256MB |
| Backup times out | Low max_execution_time | Increase to 300s+ |
| "Disk full" or storage error | Insufficient disk space | Need 2x site size free |
| "Could not create zip" | ShellZip not supported by host | Switch to DupArchive |
| AJAX communication blocked | Security plugin or hosting firewall | Check security plugin settings, whitelist Duplicator AJAX |
| Database backup fails | Large/corrupted database | Repair tables, increase memory |
| Cloud storage upload fails | Auth token expired or quota full | Re-authorize connection, check storage space |
| Plugin conflict errors | Another plugin interfering | Deactivate other plugins, test |
| "Package has warnings" | Non-critical issues detected | Review warnings — most can be safely ignored |

---

## Key Phrases Bank

### Diagnostic Opening Phrases
- "After reviewing your logs, I've identified a few key areas that are likely causing the trouble"
- "After looking into the details, here is what I recommend to get things back on track"
- "After looking into your setup, a few things stand out that we can address"
- "I took a look at the details you shared, and here's what I found"

### Version Discrepancy Phrases
- "Can you please double-check the version you're running?"
- "The log shows version [X], but you mentioned [Y] — can you verify?"
- "Running the latest version ensures you have all recent fixes and improvements"
- "Updating to the latest version may resolve this on its own"

### Settings Fix Phrases
- "Can you increase your WordPress memory limit to 256MB?"
- "A low memory limit is one of the most common causes of backup failures"
- "Increasing max_execution_time to 300 seconds will give the backup process enough room to complete"
- "You can change this in your wp-config.php file"

### Engine Switch Phrases
- "Can you try switching to DupArchive from Settings > Backup > Archive?"
- "DupArchive is our native engine and works reliably across most hosting environments"
- "It handles large sites and complex backups more efficiently"
- "This alone often resolves backup failures on shared hosting"

### Escalation Phrases
- "If you'd like me to handle this for you:"
- "If these steps don't resolve the issue, I would be happy to log in and troubleshoot this directly on your site"
- "I'd be happy to take a direct look if these steps don't help"
- "If you'd prefer, I can jump in and take care of this from our end"

### Credentials Request Phrases
- "To do so, please provide your WordPress admin username and password, and your site's login URL"
- "For your security, please share these details using our secret link tool: https://secrets.supportally.com"
- "Once you've added the credentials, simply share the generated link with me here"

### Confidence Close Phrases
- "I'm standing by to help you get this resolved!"
- "I'm confident we'll get this working for you!"
- "I'm standing by whenever you're ready!"
- "We'll get this sorted — just let me know how it goes!"

---

## Tone Calibration

### Simple Issue (one likely cause, straightforward fix)
- **Tone**: Friendly, confident, direct
- **Length**: Short (5-8 sentences)
- **Steps**: 1-2 targeted fixes + escalation offer
- **Energy**: "Quick fix — let's get this done"

### Moderate Issue (multiple possible causes, needs investigation)
- **Tone**: Helpful, thorough, educational
- **Length**: Standard (8-12 sentences)
- **Steps**: 3-4 ordered fixes + escalation offer
- **Energy**: "Let's work through this together"

### Complex Issue (unclear cause, customer already tried things, may need site access)
- **Tone**: Empathetic, professional, proactive
- **Length**: Longer (10-15 sentences)
- **Steps**: 2-3 quick checks + strong push toward site access
- **Energy**: "Let me take a look — I'll handle this"

---

## What NOT to Do

- **Don't guess without data** — If you don't have logs or details, ask for them before prescribing fixes
- **Don't dump every possible fix** — Prioritize the most likely causes. 2-4 targeted steps is better than 8 generic ones
- **Don't be condescending** — "As I'm sure you know..." or "Obviously you should..." has no place here
- **Don't blame the customer** — Even if they're running an ancient version, frame it as "let's make sure you're on the latest" not "you should have updated"
- **Don't skip the escalation offer** — Always include the option to log in. Some customers can't or don't want to do technical steps themselves
- **Don't use jargon without explanation** — If you mention DupArchive, explain what it is. If you mention max_execution_time, say what it does
- **Don't make the reply a wall of text** — Use numbered lists, bold headings, and short paragraphs

---

## Combining with Other Skills

| Scenario | Primary | Secondary |
|---|---|---|
| Troubleshooting reveals the issue is too complex for self-service | Troubleshooter | WMGS Pitch (offer White Glove as the "skip everything" option) |
| Customer is frustrated after multiple failed troubleshooting attempts | Troubleshooter | Prevent Churn (lead with empathy, then diagnose) |
| Issue resolved, customer is happy | Troubleshooter | Review Seeker (follow up and ask for review) |
| Troubleshooting complete, customer needs ongoing backup protection | Troubleshooter | CX Approach (follow up to ensure continuous success) |
| Customer needs troubleshooting help + hasn't activated license | Troubleshooter | CX Approach (Purchased Not Activated pattern) |
| Troubleshooting reveals customer could benefit from an upgrade | Troubleshooter | Upsell Pitch (mention naturally after solving the issue) |

---

## Quick Start Checklist

When crafting your troubleshooting reply, check:

- [ ] Did I review the logs/details before suggesting fixes?
- [ ] Did I call out any version discrepancies politely?
- [ ] Did I identify the most likely root cause(s)?
- [ ] Are my fixes specific and actionable (exact settings, exact values, exact paths)?
- [ ] Did I briefly explain *why* each fix matters?
- [ ] Did I suggest DupArchive if they're using a different engine?
- [ ] Did I order fixes by most likely to resolve the issue first?
- [ ] Did I include the escalation offer (site access request)?
- [ ] Did I provide the secure credentials link and guide?
- [ ] Is the reply scannable (numbered steps, bold headings, short paragraphs)?
- [ ] Is the tone warm and helpful, not condescending?
- [ ] Is this paste-ready with no commentary or metadata?

---

## Key Links Reference

| Resource | URL |
|---|---|
| Secure Credentials Sharing | https://secrets.supportally.com |
| Credentials Sharing Guide | https://duplicator.com/knowledge-base/privately-sharing-credentials-with-support/ |
| Quick Start Guide | https://duplicator.com/knowledge-base-article-categories/quick-start/ |
| Package File Sharing | https://duplicator.com/knowledge-base/how-do-i-share-my-package-file/ |
| Installer Log Guide | https://duplicator.com/knowledge-base/how-do-i-read-the-installer-log/ |
| White Glove Migration Service | https://duplicator.com/migration-services/ |
| WP Media Cleanup | https://wpmediacleanup.com/ |
| Duplicator Cloud Storage | https://duplicator.com/cloud-storage/ |
| Trustpilot Review Page | https://www.trustpilot.com/evaluate/duplicator.com |

---

## Rules

1. Always output only the reply — paste-ready, no commentary, no metadata
2. Diagnose before prescribing — use logs, version info, and server details to identify the likely cause
3. Be specific — exact settings, exact values, exact navigation paths
4. Follow the root `manager.md` shared guidelines for tone, formatting, and what never to do
5. Always include an escalation path (site access offer) for cases where self-service steps don't work
6. Keep fixes ordered by most likely to resolve the issue first
7. If the scenario shifts (customer becomes frustrated, wants a refund), route to the appropriate skill and combine naturally

---

## Version Notes

**Version 1.0** - Initial skill creation
- Core diagnostic flow for plugin and backup troubleshooting
- 6 scenario templates covering common troubleshooting situations
- Real Case 1: Version mismatch, low memory, engine switch (proven reply)
- Diagnostic reference tables: memory limits, archive engines, error-to-cause mapping
- Phrase banks: diagnostic opening, version check, settings fix, engine switch, escalation, credentials, confidence close
- Tone calibration for simple, moderate, and complex issues
- Combining guide for multi-skill scenarios
- Quick start checklist for reply quality assurance
