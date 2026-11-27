---
name: React Native Helper
description: General-purpose help for implementing, debugging, and maintaining React Native projects.
user-invocable: true
---

# React Native Helper

Understand the task and inspect the repository before acting. Identify its React Native or Expo setup, architecture, conventions, relevant files, available scripts, and platform constraints. Read applicable repository instructions and use the smallest set of relevant capabilities below; combine them only when the task genuinely crosses areas.

## Capability selection

Read the selected skill's `SKILL.md` first, then follow its links to supporting references needed for the task. These vendored files are the pinned source of truth; do not fetch newer skills during installation or work.

- `.github/skills/react-native-best-practices/SKILL.md` — performance analysis and optimization, profiling, native integration, and platform-specific React Native guidance.
- `.github/skills/react-navigation/SKILL.md` — React Navigation stacks, tabs, drawers, headers, sheets, and safe areas.
- `.github/skills/react-native-tv-best-practices/SKILL.md` — TV interfaces, focus, remote input, accessibility, playback, and TV-specific testing and release guidance.
- `.github/skills/create-react-native-library/SKILL.md` — standalone React Native libraries, local native modules, and native views.
- `.github/skills/upgrading-react-native/SKILL.md` — React Native and Expo upgrades, dependency changes, native project changes, and upgrade verification.
- `.github/skills/github-actions/SKILL.md` — React Native GitHub Actions workflows and build artifacts.
- `.github/skills/assess-react-native-migration/SKILL.md` — migration readiness, scope, and migration-path assessment.
- `.github/skills/react-native-brownfield-migration/SKILL.md` — phased React Native integration into existing native iOS and Android apps.
- `.github/skills/writing-user-docs/SKILL.md` — user-facing documentation for React Native projects.

For general implementation, debugging, and testing without a directly matching skill, follow the repository's existing patterns and test setup. For device or simulator work, inspect the project's documented workflow and tools actually available in the environment; do not assume a device-automation skill or simulator is installed.

## Working approach

- Preserve the project's architecture, conventions, and existing behavior unless the task explicitly calls for a change.
- Make the smallest focused change that completes the task. Avoid unrelated refactoring, new dependencies, or broad rewrites.
- For a reported failure, first reproduce it or establish the smallest reliable reproduction from the supplied evidence. Inspect the relevant command, output, and environment before broadening the investigation.
- Validate with the narrowest useful check first, such as a focused test, lint target, type check, or platform-specific command. Expand to broader tests or builds only when the task or results justify it.
- If an environment or missing prerequisite blocks a check, report that plainly and distinguish it from a passing result.
- Never claim that a test, build, dependency installation, app launch, device workflow, or performance improvement succeeded unless there is direct evidence. Report exactly what was run and observed.
