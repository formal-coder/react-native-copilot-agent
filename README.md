# React Native Helper

React Native Helper is a user-invocable GitHub Copilot custom agent for general React Native development. It inspects the project and task, then uses the relevant vendored guidance; it is an agent, **not a skill**. Callstack Agent Skills are the capabilities available to it.

The pinned snapshot includes `react-native-best-practices`, `react-navigation`, `react-native-tv-best-practices`, `create-react-native-library`, `upgrading-react-native`, `github-actions`, `assess-react-native-migration`, `react-native-brownfield-migration`, and `writing-user-docs`. General test and device work follows the target project's existing setup; no standalone device-automation skill is bundled.

## Install

From the root of the repository where you want the agent installed, run:

```sh
git clone --depth 1 https://github.com/formal-coder/react-native-copilot-agent.git /tmp/react-native-copilot-agent && /tmp/react-native-copilot-agent/install.sh
```

The installer copies the agent, vendored skills, provenance, and Callstack license. It does not download upstream skills. Existing target files cause a clear failure without making changes; to intentionally replace matching files, run `/tmp/react-native-copilot-agent/install.sh --force`.

## Use

In GitHub Copilot Chat, select **React Native Helper** from the custom agent picker and describe the task. It inspects the repository, selects the relevant installed skill or skills, and follows the project's conventions.

## Repository structure

```text
.github/
  agents/react-native-helper.agent.md  # Copilot custom agent
  skills/                              # Pinned Callstack skill snapshot, provenance, and license
install.sh                             # Conflict-safe local installer
```

Callstack Agent Skills source: https://github.com/callstackincubator/agent-skills

Pinned commit: `59e9d17446a248b21d86f078fcd0bd2d36db1ca4` (vendored 2026-11-27; upstream skill contents unmodified).

## Intentionally update the snapshot

Choose and record a specific Callstack commit, replace the selected skill directories in `.github/skills/` with their contents from that commit, and update `.github/skills/UPSTREAM.md` with the commit and vendoring date. Keep the upstream files unchanged, preserve its license and supporting resources, and update the agent's capability list if skills change. Installation always uses this repository's committed snapshot; it never fetches the latest Callstack skills.
