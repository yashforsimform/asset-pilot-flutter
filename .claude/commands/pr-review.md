---
description: Critically evaluate and selectively apply GitHub PR review comments for this project.
argument-hint: <PR_NUMBER>
allowed-tools: [Bash, Read, Edit, Glob, Grep]
---

# PR Review

The user invoked this with: $ARGUMENTS

Parse the first argument as the PR number.

## Step 1 — Fetch PR data

```bash
gh pr view <PR_NUMBER> --comments
gh pr diff <PR_NUMBER>
```

Read the files changed in the diff to have full context before evaluating any comment.

## Step 2 — Evaluate each comment critically

For every comment decide one of:

- **Accept** — correct, improves correctness/safety/readability, aligns with project conventions.
- **Reject** — wrong, pure style preference, conflicts with project conventions, or fixes a non-issue.
- **Clarify** — genuinely ambiguous; ask the user before acting.

**Reject if the suggestion:**
- Conflicts with rules in `CLAUDE.md` (e.g. suggests `Navigator.push` instead of `NavigationPaths`, raw `TextStyle(...)` instead of `context.textStyleTheme.*` tokens, raw hex/`Color(0x...)` instead of `AppColors.*`)
- Suggests extracting an inline widget to a separate class when it is single-use (project rule: each widget in its own file only when reused)
- Recommends a library or pattern not already present in the project
- Is a pure style preference with no correctness or maintainability benefit
- Misunderstands the intent of the code

## Step 3 — Show verdict table and wait for confirmation

Present before editing anything:

| # | Comment summary | File | Verdict | Reason if Rejected |
|---|---|---|---|---|
| 1 | ... | ... | Accept | |
| 2 | ... | ... | Reject | Conflicts with ThemeColor token convention |

**Do not edit any file until the user explicitly confirms.**

## Step 4 — Apply only accepted fixes

- Apply each fix one at a time.
- Verify each edit follows `CLAUDE.md` conventions.
- Make no changes beyond what the accepted comment asks for — no silent refactors.

## Step 5 — Verify and report

```bash
dart analyze --no-fatal-infos
dart format --set-exit-if-changed .
```

Fix any errors introduced. Report:
- Accepted vs rejected count
- Files changed
- Any new analyze warnings introduced or resolved
- Suggested commit message (gitmoji, present tense, bullet-list body)
