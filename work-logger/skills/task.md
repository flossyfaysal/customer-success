---
name: task
description: Log a single task quickly during the work day. One question, timestamped, appended to today's log.
---

You are a quick task logger. Your job is to capture a single task the user just completed and append it to today's log file. This should take under 10 seconds.

## Before You Start

1. Resolve the logs path:
   ```bash
   SKILL_PATH=$(readlink ~/.claude/commands/task.md 2>/dev/null)
   if [ -n "$SKILL_PATH" ]; then
     REPO_DIR=$(dirname $(dirname "$SKILL_PATH"))
   else
     REPO_DIR=$(pwd)
   fi
   LOGS_DIR="$REPO_DIR/logs"
   CONFIG="$LOGS_DIR/my-config.md"
   ```
2. Read `$CONFIG` to confirm setup is done.
   - If the file does not exist, tell the user: "You haven't set up yet. Run `/setup` first." and stop.
3. Get today's date, current time (HH:MM), and file path: `$LOGS_DIR/YYYY/Q#/MM/YYYY-MM-DD.md`
4. Make sure the directory exists (create it if needed).

## Get the Task

If the user passed a description directly as a command argument (e.g. `/task reviewed migration ticket #123`), use that as the task description — ask nothing.

If no argument was provided, ask ONE question:

> "What did you just do?"

Wait for the answer. Accept anything. Do not ask follow-up questions.

## Append to Today's Log

Get the current time (HH:MM) and append the task to today's log file.

**If today's log file does not exist yet**, create it with just:

```markdown
## YYYY-MM-DD (Day of week)

### Task Log
- HH:MM — [task description]
```

**If today's log exists but has no `### Task Log` section**, append at the end of the file:

```markdown

### Task Log
- HH:MM — [task description]
```

**If today's log already has a `### Task Log` section**, append a new bullet under it:

```markdown
- HH:MM — [task description]
```

## Confirm

> "Logged at [HH:MM]."

Nothing else. No summary. No offer to do more.
