#!/bin/sh
set -eu

usage() {
  printf 'Usage: %s [--force]\n' "$0" >&2
}

force=0
case "${1:-}" in
  "") ;;
  --force) force=1 ;;
  *)
    usage
    exit 2
    ;;
esac
if [ "$#" -gt 1 ]; then
  usage
  exit 2
fi

source_dir=$(CDPATH= cd "$(dirname "$0")" && pwd)
destination=$(pwd -P)
agent_source="$source_dir/.github/agents/react-native-helper.agent.md"
agent_target="$destination/.github/agents/react-native-helper.agent.md"
skills_source="$source_dir/.github/skills"
skills_target="$destination/.github/skills"

if [ "$force" -eq 0 ]; then
  conflict=0
  if [ -e "$agent_target" ] || [ -L "$agent_target" ]; then
    printf 'Conflict: %s already exists (use --force to overwrite).\n' "$agent_target" >&2
    conflict=1
  fi
  for skill_source in "$skills_source"/*; do
    [ -e "$skill_source" ] || continue
    skill_target="$skills_target/$(basename "$skill_source")"
    if [ -e "$skill_target" ] || [ -L "$skill_target" ]; then
      printf 'Conflict: %s already exists (use --force to overwrite).\n' "$skill_target" >&2
      conflict=1
    fi
  done
  if [ "$conflict" -ne 0 ]; then
    printf 'Nothing was installed.\n' >&2
    exit 1
  fi
fi

mkdir -p "$destination/.github/agents" "$skills_target"
cp "$agent_source" "$agent_target"
for skill_source in "$skills_source"/*; do
  [ -e "$skill_source" ] || continue
  cp -R "$skill_source" "$skills_target/"
done

printf 'Installed React Native Helper and vendored skills into %s\n' "$destination"
