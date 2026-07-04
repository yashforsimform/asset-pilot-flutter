---
name: design
description: This skill should be used when the user asks to implement a screen, build a UI component, match a Figma design, or create any Flutter UI. Activates on phrases like "implement this screen", "build the UI for", "match the design", "create this widget", or when attaching a design image.
---

# Design Implementation Skill

Before writing a single line of UI code, follow these steps exactly.

## Step 1 — Read the design system

Read these files to know what tokens are available. Do not assume anything:

- `lib/values/resources/app_colors.dart` — raw color constants (`AppColors.*`)
- `lib/values/app_theme/theme_color.dart` — semantic tokens via `ThemeColor` (access as `context.themeColor.*`)
- `lib/values/app_theme/text_style_theme.dart` — text style tokens via `TextStyleTheme` (access as `context.textStyleTheme.*`)
- `lib/values/constant/num_constant.dart` — spacing and sizing constants (`NumConstants.*`)
- `lib/values/constant/widget_constants.dart` — widget-specific sizing constants
- `lib/widgets/` — all shared `pt_*` widgets (buttons, scaffolds, text fields, bottom sheets, dialogs, avatars, shimmer, etc.)
- `lib/utilities/navigation/navigation_path.dart` — all route name constants

## Step 2 — Produce a plan and ask before coding

List every decision below. For anything uncertain, ask — do not guess:

| Decision | What to use |
|---|---|
| Colors | Exact `AppColors.*` or `context.themeColor.*` token |
| Text styles | Exact `context.textStyleTheme.*` token (e.g. `mediumM4`, `regularR4`) |
| Spacing / sizing | `NumConstants.*` or `WidgetConstants.*` value |
| Navigation | Exact `NavigationPaths.*` route string |
| Strings | `Str.*` key from ARB — never hardcoded |
| Shared widgets | Which `pt_*` widget to reuse |
| Widget structure | Inline (preferred) vs new file (only if reused across files) |
| State | Which MobX store owns this state |

**Do not edit any file until the user has approved this plan.**

## Step 3 — Implement with these hard rules

- **Colors**: only `AppColors.*` or `context.themeColor.*`. Never `Color(0x...)`, raw hex, or `Colors.*` Flutter built-ins unless no project equivalent exists.
- **Text styles**: only `context.textStyleTheme.*` tokens. Never inline `TextStyle(fontSize:..., fontWeight:...)`.
- **Spacing**: `NumConstants.*` / `WidgetConstants.*` only. No magic numbers.
- **Navigation**: `Navigator.of(context).pushNamed(NavigationPaths.xxx)` via `Routes.generateRoute`. Never `MaterialPageRoute` or `go_router`.
- **Strings**: all user-facing text via `Str.*`. Never hardcoded string literals.
- **Widgets**: use existing `pt_*` shared widgets. Do not re-implement what already exists.
- **Widget classes**: each widget in its own file, snake_case filename matching the class. No functions returning widgets.
- **Business logic**: zero in `build()` — all state, API calls, and transforms live in the MobX store.
- **No CustomPainter, no custom gradients** unless the design explicitly cannot be expressed with existing tokens.
- **Lines ≤ 80 chars**, trailing commas, single quotes, `const` wherever possible.

## Step 4 — Self-audit before declaring done

For each rule in Step 3, write `PASS` or `FAIL` with the file:line reference. Fix all `FAIL`s.

Then run:
```
dart analyze --no-fatal-infos
```

Fix every `error` and `warning` before reporting complete.
