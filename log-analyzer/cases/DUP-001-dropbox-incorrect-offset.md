---
case-id: DUP-001
title: Dropbox Chunked Upload Fails with incorrect_offset Error
product: Duplicator Pro
error-type: Storage Transfer Failure
tags: dropbox, upload, incorrect_offset, chunked-upload, LiteSpeed, resume, offset-mismatch
date-added: 2026-03-11
---

## Problem

Customer's backup completes successfully but the transfer to Dropbox fails repeatedly. The upload starts, reaches a few percent progress, then fails with an `incorrect_offset` error after multiple retries. The storage status is marked as failed even though the backup package itself is intact.

## Log Signature

Key error strings that identify this issue:

```
incorrect_offset
resume from position [number]
Dropbox rejected
storage status: failed
retry attempt [N of 11]
chunked upload
```

## Root Cause

This is a **Dropbox chunked upload session mismatch**. Duplicator Pro splits large archives into chunks and uploads them sequentially. If the connection is interrupted (server timeout, LiteSpeed killing the process, PHP max_execution_time hit), Duplicator tries to resume from its last recorded byte position. However, Dropbox's server-side session may have expired or reset, so it no longer recognizes that offset as valid — causing Dropbox to reject the resume attempt with `incorrect_offset`.

The backup file is fine. Only the transfer session is broken.

## Solution

1. **Re-authorize the Dropbox connection** — Go to Duplicator Pro > Storage, edit the Dropbox storage entry, and click "Re-Authorize". This refreshes the access token and clears any stale session data on the Dropbox side.

2. **Clear local temporary files** — Go to Duplicator Pro > Tools > Cleanup, click "Delete Reserved Files" and "Clear Build Cache". This removes any corrupted local resume state that holds the bad offset.

3. **Enable Client-Side Kickoff** — Go to Duplicator Pro > Settings > Backups tab and ensure "Client-Side Kickoff" is enabled. On LiteSpeed servers, background processes are often killed aggressively; this setting keeps the transfer alive through the browser instead.

4. **Adjust chunk size** — In the Dropbox storage settings, try increasing the chunk size (e.g., 5MB or 10MB) to reduce the number of total requests. If the server has a very low timeout, try decreasing it instead.

5. **Retry the transfer manually** — After steps 1-4, attempt a manual transfer of the existing package from the Packages list rather than running a full new backup.

## Notes

- This issue is common on LiteSpeed hosting environments where PHP processes are killed mid-transfer.
- The backup package itself is always valid when this error occurs — the customer does not need to re-run the full backup, only retry the transfer.
- If re-authorization alone doesn't fix it, clearing the local temp files (step 2) is usually what resolves the stale offset mismatch.
- PHP timeout settings (`max_execution_time`, `max_input_time`) contributing to the initial interruption can be checked in the log for values under 120 seconds.
