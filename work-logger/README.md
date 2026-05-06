# Work Logger

A set of Claude Code skills that help you capture daily work, log tasks on the fly, generate weekly summary emails, and draft quarterly self-assessments.

---

## What This Does

You get 5 commands in Claude Code:

| Command | When to use | Time |
|---|---|---|
| `/setup` | First time only (and when rocks change) | 3-5 min |
| `/task` | Anytime during the day | Under 10 sec |
| `/log` | End of every work day | 2-3 min |
| `/weekly-email` | Friday (before sending your summary) | 3-5 min |
| `/quarterly-draft` | End of quarter (before the QR) | 10-15 min |

**`/setup`** asks you a few questions about yourself, your role, your daily tasks, and your rocks. Saves everything to a config file. Run it once per quarter when rocks change.

**`/task`** captures a single task instantly — one question, timestamped, done. Use it throughout the day as you complete things.

**`/log`** asks 4 quick questions about your whole day and saves a structured log file. Run it at the end of the day.

**`/weekly-email`** reads your week's logs and drafts your Friday summary email for your supervisor.

**`/quarterly-draft`** reads ALL your logs for the quarter and drafts your full self-assessment, section by section.

---

## What You Need

- **Claude Code** installed on your computer

---

## How to Install

### Step 1: Open your terminal

- **On Mac:** Press `Cmd + Space`, type "Terminal", press Enter
- **On Windows:** Press `Win + R`, type "cmd", press Enter

### Step 2: Run the installer

Navigate to the work-logger folder and run:

```bash
bash install.sh
```

You should see:
```
===================================
  Work Logger — Installer
===================================

[OK] Created logs/
[OK] Created ~/.claude/commands/
[OK] Linked /setup skill
[OK] Linked /log skill
[OK] Linked /task skill
[OK] Linked /weekly-email skill
[OK] Linked /quarterly-draft skill

===================================
  Installation complete!
===================================
```

### Step 3: Run first-time setup

1. Open Claude Code
2. Type `/setup` and press Enter
3. Answer the questions: name, role, supervisor, quarter, daily tasks, rocks
4. Done — your config is saved and folders are created

---

## Daily Workflow

**During the day** — as you complete tasks:
1. Type `/task` in Claude Code
2. Say what you just did (or pass it directly: `/task reviewed migration ticket #123`)
3. Done — logged with a timestamp

**End of day:**
1. Type `/log` in Claude Code
2. Answer 4 quick questions about your day
3. Done — log saved automatically

**Tips:**
- It's OK to skip questions — just say "nothing" or "skip"
- A short log every day beats a detailed log once a week
- `/task` and `/log` write to the same file — they don't conflict

---

## Weekly Workflow (Friday)

1. Open Claude Code
2. Type `/weekly-email` and press Enter
3. Paste your weekly numbers if you have them (or skip)
4. Review the draft — request edits if needed
5. Copy the final email and send it to your supervisor

---

## Quarterly Workflow (End of Quarter)

1. Open Claude Code
2. Type `/quarterly-draft` and press Enter
3. Paste your quarterly totals if you have them (or skip)
4. Review each section — request edits as you go
5. Copy each section into your QR document
6. Fill in the `[Please fill in]` placeholders (scoring reasoning, career goals, etc.)

---

## Updating Your Rocks (New Quarter)

1. Open Claude Code
2. Type `/setup` and press Enter
3. Choose "Update for a new quarter"
4. Answer the rocks question with your new rocks

---

## Where Are My Logs?

Logs are saved inside the work-logger folder under `logs/`:

```
logs/
├── my-config.md              ← Your profile (name, role, tasks, rocks)
└── 2026/
    └── Q2/
        ├── 04/               ← April daily logs
        │   ├── 2026-04-07.md
        │   └── ...
        ├── 05/               ← May daily logs
        ├── 06/               ← June daily logs
        ├── weekly-emails/    ← Weekly email drafts
        └── quarterly-draft.md
```

Logs stay on your computer. The `logs/` folder is excluded from git — nothing is uploaded automatically.

---

## Troubleshooting

**"/log or /task doesn't work"**
Re-run the installer: `bash install.sh`

**"My logs folder is empty"**
Run `/setup` first — it creates the folder structure.

**"I accidentally deleted my config"**
Run `/setup` again — it will recreate everything.

**"I forgot to log for a few days"**
That's fine. Just run `/log` today and mention what you remember from the missed days.
