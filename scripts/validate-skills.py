#!/usr/bin/env python3
from __future__ import annotations

import os
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
AGENT_ROOTS = [
    Path("/Users/bobbc/.codex/skills"),
    Path("/Users/bobbc/.claude/skills"),
    Path("/Users/bobbc/.gemini/skills"),
    Path("/Users/bobbc/.openclaw/skills"),
    Path("/Users/bobbc/.hermes/skills"),
]


def fail(msg: str) -> None:
    print(f"ERROR: {msg}", file=sys.stderr)
    raise SystemExit(1)


def parse_frontmatter(path: Path) -> dict[str, str]:
    text = path.read_text(encoding="utf-8")
    if not text.startswith("---\n"):
        fail(f"{path} missing YAML frontmatter opener")
    try:
        end = text.index("\n---\n", 4)
    except ValueError:
        fail(f"{path} missing YAML frontmatter closer")
    fields: dict[str, str] = {}
    for raw in text[4:end].splitlines():
        if not raw.strip() or raw.startswith(" ") or raw.startswith("#"):
            continue
        if ":" not in raw:
            fail(f"{path} invalid frontmatter line: {raw!r}")
        key, value = raw.split(":", 1)
        fields[key.strip()] = value.strip().strip('"').strip("'")
    return fields


def validate_skill_dir(skill_dir: Path) -> str:
    skill_md = skill_dir / "SKILL.md"
    if not skill_md.exists():
        fail(f"missing SKILL.md: {skill_md}")
    fields = parse_frontmatter(skill_md)
    name = fields.get("name")
    description = fields.get("description")
    if not name:
        fail(f"{skill_md} missing name")
    if not description:
        fail(f"{skill_md} missing description")
    if name != skill_dir.name:
        fail(f"{skill_md} name {name!r} does not match folder {skill_dir.name!r}")

    openai_yaml = skill_dir / "agents" / "openai.yaml"
    if openai_yaml.exists():
        text = openai_yaml.read_text(encoding="utf-8")
        if "default_prompt:" not in text:
            fail(f"{openai_yaml} missing default_prompt")
        if f"${name}" not in text:
            fail(f"{openai_yaml} default_prompt must mention ${name}")
    return name


def main() -> int:
    skills_root = ROOT / "skills"
    if not skills_root.exists():
        fail(f"missing skills root: {skills_root}")

    names = []
    for skill_dir in sorted(p for p in skills_root.iterdir() if p.is_dir()):
        names.append(validate_skill_dir(skill_dir))

    if not names:
        fail("no skills found")

    for name in names:
        canonical = ROOT / "skills" / name
        for root in AGENT_ROOTS:
            target = root / name
            if not target.exists() and not target.is_symlink():
                fail(f"missing installed target: {target}")
            if not target.is_symlink():
                fail(f"target is not a symlink: {target}")
            resolved = target.resolve()
            if resolved != canonical.resolve():
                fail(f"bad symlink: {target} -> {resolved}, expected {canonical}")

    print(f"OK: validated {len(names)} skill(s): {', '.join(names)}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
