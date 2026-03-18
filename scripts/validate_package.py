import os, re, json
base = os.path.dirname(os.path.dirname(__file__))
skills_dir = os.path.join(base, "skills")
cmd_dir = os.path.join(base, "commands", "pmx")
skills = sorted([d for d in os.listdir(skills_dir) if os.path.isdir(os.path.join(skills_dir, d))])
cmds = sorted([f for f in os.listdir(cmd_dir) if f.endswith(".toml")])
assert len(skills) == 65, f"Expected 65 skills, found {len(skills)}"
assert len(cmds) == 36, f"Expected 36 commands, found {len(cmds)}"
for skill in skills:
    skill_md = os.path.join(skills_dir, skill, "SKILL.md")
    assert os.path.exists(skill_md), f"Missing SKILL.md for {skill}"
    text = open(skill_md, encoding="utf-8").read()
    m = re.search(r"^name:\s*(.+)$", text, re.M)
    assert m, f"Missing name frontmatter in {skill}"
    assert m.group(1).strip() == skill, f"Name mismatch: folder={skill}, frontmatter={m.group(1).strip()}"
catalog = json.load(open(os.path.join(base, "catalog.json"), encoding="utf-8"))
assert len(catalog["skills"]) == 65
assert len(catalog["commands"]) == 36
print("Validation passed.")
print(f"Skills: {len(skills)}")
print(f"Commands: {len(cmds)}")
