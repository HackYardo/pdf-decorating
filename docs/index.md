---
icon: lucide/rocket
---

# PDF Decorating

## About

PDF Decorating is a PDF Web UI Library, it brings fascinating Web visuals to make PDF pages more attractive and structured. 

Web visuals are from CommonMark, GitHub Markup (GitHub Flavored Markdown (GFM)), JupyterBook MyST, Bootstrap CSS，Tailwind CSS and more. If you see some brand-new visuals, open issues please!

* concise: no `}` line, no binary png or svg icon
* flexible: global or local, all or part of, built-in or DIY
* universal: different env, the same PDF, even mobile phones

## Usage

1. Download the Typst PDF compiler
2. Copy the code block into a file with name `example.typ`
3. `#!console $ typst compile example.typ && firefox example.pdf`

=== "Example"

    ![example](example.png)

=== "Code Block"

    ``` typst title="example.typ"
    #import "@preview/pdf-decorating:0.1.1": *

    #set page(paper:"a5", columns:2)
    #set heading(numbering:"I.1")

    = Set/Show Rules

    == CommonMark<cm>

    #show: cm-link.with()
    globally part call
    #link("https://commonmark.org")[CommonMark]

    #cm-raw[`locally part call`]

    #common-mark[locally all call @cm]

    #show: common-mark.with()
    #quote(attribution:[many call ways])[globally all call]

    == GitHub Markup

    #github-markup[
    === Heading with auto anchor

    #table(columns:8, table.header(.."Table".split("")),
      ..range(0x3b1, 0x3c1).map(str.from-unicode))

    - [ ] Task
      + [x] L
      + [] i [ ] s [x] t

    @heading-with-auto-anchor[auto anchor]]

    = Box/Block Functions

    #gm-color-dot(navy)
    #gm-color-dot(aqua, m:"rgb")
    #gm-color-dot(color.hsl(blue), m:"hsl")

    #gm-alert(0)[Prefer Embedded Fonts of Typst CLI]
    #gm-alert(1)[to be Fast and Universal]
    #gm-alert(2)[and Font Fallback available]
    #gm-alert(3)[Symbols by DejaVu Sans Mono]
    #gm-alert(4)[so Different from GitHub's]

    #gm-alert-diy(c:green, s:emoji.parrot, k:"Do-It-Yourself")[
    / c, s, k: color, symbol, kind
    Symbols depend on fonts:\
    `s:text(size:1em, font:"Noto Color Emoji", emoji.parrot)`]

    = Road Map
    #show: gm-task-list.with()
    - [x] CommonMark
    - [x] GitHub Markup
    - [ ] Jupyter Book MyST
    - [ ] Bootstrap
    ```

=== "Typst"
    
    ``` console
    $ # Android, Mac, Windows
    $ pkg install typst # (1)!
    $ brew install typst # (2)!
    $ winget install typst
    
    $ # Linux
    $ cd ~/Downloads/
    $ aria2c -x2 'source' -o typst.tar.xz # (3)!
    $ tar -xf typ(Tab) # (4)!
    $ rm typ*.xz
    $ ln -s ~/Downloads/typst/typst ~/bin/typst
    ```
    
    1.  https://termux.dev/en/
    2.  for iphone or ipad, search GitHub or App Store
    3.  - GitHub: https://github.com/typst/typst/releases/latest/download/typst-x86_64-unknown-linux-musl.tar.xz
        - USTC: https://mirrors.ustc.edu.cn/ > 获取开源软件 > Typst
    4.  click ++tab++ auto complete
    
    | Test | Typst | Trace |
    | ---: | :---: | :--- |
    | **PASS** | 0.15.1-0.12.0 | --- |
    | *output err* | 0.11.1-0.11.0 | v(), show regex() |
    | *compile err* | 0.10.0-0.9.0 | func `table` not contain field `header` |
    | *compile err* | 0.8.0-0.6.0 | unknown variable: quote |
    | *compile err* | 0.5.0-0.1.0 | file not found: search preview |

## LICENSE

[Apache-2.0](https://www.apache.org/licenses/LICENSE-2.0)
