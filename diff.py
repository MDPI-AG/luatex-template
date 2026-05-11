#!/usr/bin/env python3
from pathlib import Path
import difflib


def write_html_diff(repo_root: Path, left_rel: str, right_rel: str, out_name: str) -> None:
    left_path = repo_root / left_rel
    right_path = repo_root / right_rel
    out_path = repo_root / out_name

    left_lines = left_path.read_text(encoding="utf-8", errors="replace").splitlines()
    right_lines = right_path.read_text(encoding="utf-8", errors="replace").splitlines()

    html = difflib.HtmlDiff(wrapcolumn=120).make_file(
        left_lines,
        right_lines,
        fromdesc=left_rel,
        todesc=right_rel,
        context=False,
        numlines=3,
    )
    out_path.write_text(html, encoding="utf-8")
    print(f"Created: {out_path}")


def main() -> None:
    repo_root = Path(__file__).resolve().parent

    write_html_diff(
        repo_root,
        "lpt-version/Definitions/mdpi-luatex.cls",
        "mdpi-version/Definitions/mdpi-luatex.cls",
        "mdpi-luatex-diff.html",
    )
    write_html_diff(
        repo_root,
        "lpt-version/template-luatex.tex",
        "mdpi-version/template-luatex.tex",
        "template-luatex-diff.html",
    )


if __name__ == "__main__":
    main()
