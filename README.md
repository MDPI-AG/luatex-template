# Accessible MDPI LaTeX Template in LuaTeX

Working repository for the development of an accessible MDPI LaTeX template in LuaTeX in a joint efforty between MDPI Production Team and the LaTeX Project Team.

## Version Folders

### `legacy-lpt-version`

First version provided by the LaTeX Team Project.

### `legacy-pdftex-version`

This is MDPI's current PDFLaTeX version used in production, which is due to be replaced by the LuaLaTeX version.

### `legacy-xelatex-version`

This is MDPI's current XeLaTeX version used in production when Unicode support is needed. This version is due to be merged into the LuaLaTeX version, which will support Unicode as well.

### `new-version`

This is the target version for the new LuaLaTeX template, which will be developed based on MDPI's production requirements and will eventually replace it. This is the version being worked on by Ulrike & Frank.

Note: this version currently needs to be compiled using `lualatex-dev` version. In June 2026 this will be distributed in the LaTeX release and the version will be updated to `lualatex` in the documentation.

## Tools & Helpers

### Generate HTML diffs

From the repository root, run:

```bash
python3 diff.py
```

This creates:

- `mdpi-luatex-diff.html` (diff between `lpt-version/Definitions/mdpi-luatex.cls` and `mdpi-version/Definitions/mdpi-luatex.cls`)
- `template-luatex-diff.html` (diff between `lpt-version/template-luatex.tex` and `mdpi-version/template-luatex.tex`)
