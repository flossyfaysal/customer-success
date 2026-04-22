# Social Media Posts Skill

Generates weekly post drafts for LinkedIn, Facebook, and X (Twitter) based on a topic queue. Runs every Wednesday, saves drafts locally, and sends a Slack notification.

---

## How it works

1. Reads the next unchecked topic from `social-media-plan.md`
2. Generates one post per platform following each platform's guidelines
3. Saves the draft to `drafts/YYYY-MM-DD.md`
4. Marks the topic as done in the plan file
5. Sends all three drafts + image suggestions to Slack

---

## Files

| File | Purpose |
|---|---|
| `SKILL.md` | Core skill instructions used by Claude |
| `social-media-plan.md` | Topic queue - add new topics here |
| `config.md` | Private config (Slack webhook) - not committed to git |
| `linkedin-guidelines.md` | LinkedIn tone, templates, and guardrails |
| `facebook-guidelines.md` | Facebook tone, templates, and guardrails |
| `x-guidelines.md` | X/Twitter tone, templates, and guardrails |
| `run-weekly.ps1` | PowerShell script that runs the skill via Claude CLI |
| `setup-task-scheduler.ps1` | One-time setup for Windows Task Scheduler |
| `drafts/` | Output folder - one `.md` file per week (gitignored) |

---

## Configuration

### 1. Add or edit topics

Open `social-media-plan.md` and add topics at the bottom:

```
- [ ] Your new topic here
- [ ] Another topic
```

- `- [ ]` = pending (will be picked up next)
- `- [x]` = done (already written)

Topics are picked in order from top to bottom. The skill stops and notifies you on Slack when the list runs out.

### 2. Slack webhook

The Slack webhook URL is stored in `config.md` (gitignored). To update it:

1. Open `social-media-posts/config.md` or create it if it doesn't exist
2. Replace the value on the `SLACK_WEBHOOK=` line with your new webhook URL

To get a new webhook URL: go to [api.slack.com/apps](https://api.slack.com/apps), open your app, go to Incoming Webhooks, and copy the URL.

### 3. Platform guidelines

Each platform has its own guidelines file. Edit these to change tone, format rules, hashtags, or content pillars:

- `linkedin-guidelines.md` — LinkedIn-specific rules
- `facebook-guidelines.md` — Facebook-specific rules
- `x-guidelines.md` — X/Twitter-specific rules

Changes take effect on the next run.

### 4. Schedule (Windows Task Scheduler)

The task runs every Wednesday at 5:00 PM local time. To change the schedule:

1. Open Task Scheduler (`taskschd.msc`)
2. Navigate to `Task Scheduler Library > AwesomeMotive`
3. Right-click `AM Social Media Posts - Weekly` and choose Properties
4. Go to the Triggers tab and edit the trigger

To re-register the task from scratch (e.g. after moving files):

```powershell
# Run as Administrator
.\social-media-posts\setup-task-scheduler.ps1
```

### 5. Run manually

To generate this week's draft at any time without waiting for Wednesday:

```powershell
cd "E:\wamp\www\awesomemotive\support\customer-success"
.\social-media-posts\run-weekly.ps1
```

---

## Requirements

- **Claude Code CLI** installed (`npm install -g @anthropic-ai/claude-code`)
- **Node.js v20+** (v22 recommended) — check with `node --version`
- Claude Code authenticated (`claude` must be logged in)
- Slack webhook URL configured in `config.md`

---

## Troubleshooting

**Script runs but Claude starts in interactive mode**
Make sure you're using the pipe invocation in `run-weekly.ps1`:
```powershell
$prompt | & "claude.cmd" --dangerously-skip-permissions -p --input-format text
```

**`claude` not found**
Find the full path with `where.exe claude` and update the path in `run-weekly.ps1`.

**Node version error / CLI prints JavaScript source**
Upgrade Node.js to v20 or higher. Run `node --version` to check.

**Slack notification fails**
Check that `config.md` exists and contains a valid `SLACK_WEBHOOK=` line. The file must not be committed to git (it is listed in `.gitignore`).

**All topics are checked**
Add new topics to `social-media-plan.md`. The skill will Slack you when the list runs out.
