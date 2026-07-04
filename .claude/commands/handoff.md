---
description: Write a minimal handoff file capturing the current task state, then clear the chat.
argument-hint: [optional: brief note about what to carry forward]
allowed-tools: [Bash, Write]
---

# Handoff

Run these two commands, then write the file. No other tool calls.

```bash
git rev-parse --abbrev-ref HEAD
git status --short
```

Write `.claude/handoff.md` using **only** this template. No extra sections, no prose:

```
b: <branch>
s: <git status --short output, or ->
done: <verb phrase>; <verb phrase>  (max 3, ≤8 words each)
next: <verb phrase>  (max 2, ≤8 words each, or -)
files: <path>, <path>  (only files changed this session, max 5)
note: <$ARGUMENTS or ->
```

Rules:
- Every field on one line. No markdown headers. No blank lines between fields.
- `done`/`next` items separated by `;` not bullets.
- `files` paths are repo-relative, comma-separated.
- Total file must be ≤ 10 lines.
- Do NOT include dates, full sentences, code snippets, or diffs.

Then reply with exactly one line: `Handoff written. Run /clear to start fresh.`
