#!/usr/bin/env bash
# Generates one independent plugin per agent from src/core + src/agents/<name>.
# Edit the core once, run ./build.sh, and every agent gets the change.
set -e
cd "$(dirname "$0")"
rm -rf plugins && mkdir -p plugins .claude-plugin
VERSION="$(tr -d " \n" < VERSION)"
ENTRIES=""
for dir in src/agents/*/; do
  ( . "$dir/meta.env"
    PL="plugins/${NAME}-agent"
    mkdir -p "$PL/.claude-plugin" "$PL/agents" "$PL/commands" "$PL/hooks" "$PL/scripts" "$PL/skills"
    sub() { sed -e "s/__NAME__/${NAME}/g" -e "s/__PREFIX__/${PREFIX}/g" -e "s/__TITLE__/${TITLE}/g"; }

    sub < src/core/hooks.json > "$PL/hooks/hooks.json"
    for f in src/core/scripts/*.sh; do sub < "$f" > "$PL/scripts/$(basename "$f")"; done
    chmod +x "$PL"/scripts/*.sh
    for c in start stop status skills learn; do sub < "src/core/commands/$c.md" > "$PL/commands/${NAME}-$c.md"; done
    for t in "$dir"task-*.md; do [ -f "$t" ] && cp "$t" "$PL/commands/${NAME}-$(basename "$t" .md | sed 's/^task-//').md"; done

    mkdir -p "$PL/skills/${NAME}-core"
    cp -r src/core/skill/* "$PL/skills/${NAME}-core/"
    find "$PL/skills/${NAME}-core" -type f -name '*.md' | while read -r f; do sub < "$f" > "$f.tmp" && mv "$f.tmp" "$f"; done
    cp "$dir/agent.md" "$PL/agents/${NAME}.md"
    mkdir -p "$PL/skills/${NAME}-playbook" && cp -r "$dir/playbook/"* "$PL/skills/${NAME}-playbook/"

    cat > "$PL/.claude-plugin/plugin.json" <<JSON
{
  "name": "${NAME}-agent",
  "version": "${VERSION}",
  "description": "${DESC}",
  "author": { "name": "Your Team" }
}
JSON
  )
  . "$dir/meta.env"
  ENTRIES="${ENTRIES}${ENTRIES:+,}
    { \"name\": \"${NAME}-agent\", \"source\": \"./plugins/${NAME}-agent\", \"description\": \"${DESC}\" }"
done
cat > .claude-plugin/marketplace.json <<JSON
{
  "name": "agent-plugins",
  "owner": { "name": "Your Team" },
  "plugins": [${ENTRIES}
  ]
}
JSON
echo "Built: $(ls plugins | tr '\n' ' ')"
