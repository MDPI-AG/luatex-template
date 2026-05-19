# Accessible MDPI LaTeX Template in LuaTeX

Working repository for the development of an accessible MDPI LaTeX template in LuaTeX in a joint efforty between MDPI Production Team and the LaTeX Project Team.

## Version Folders

### `lpt-version`

First version provided by the LaTeX Team Project.

### `mdpi-version`

First trial on LuaLaTeX provided by Xiu Li / MDPI Production Team.

### `new-version`

This is the version being worked on by Ulrike & Frank.

## Tools & Helpers

### Generate HTML diffs

From the repository root, run:

```bash
python3 diff.py
```

This creates:

- `mdpi-luatex-diff.html` (diff between `lpt-version/Definitions/mdpi-luatex.cls` and `mdpi-version/Definitions/mdpi-luatex.cls`)
- `template-luatex-diff.html` (diff between `lpt-version/template-luatex.tex` and `mdpi-version/template-luatex.tex`)
