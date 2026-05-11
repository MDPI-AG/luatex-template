# Accessible MDPI LaTeX Template in LuaTeX

Working repository for the development of an accessible MDPI LaTeX template in LuaTeX in a joint efforty between MDPI Production Team and the Linux Project Team.

## Generate HTML diffs

From the repository root, run:

```bash
python3 diff.py
```

This creates:

- `mdpi-luatex-diff.html` (diff between `lpt-version/Definitions/mdpi-luatex.cls` and `mdpi-version/Definitions/mdpi-luatex.cls`)
- `template-luatex-diff.html` (diff between `lpt-version/template-luatex.tex` and `mdpi-version/template-luatex.tex`)