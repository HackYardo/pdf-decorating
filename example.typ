#import "@preview/pdf-decorating:0.1.1": *

#set page(width:15cm, height:18cm, margin:0.5cm, columns:2)
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

#colbreak()

#gm-alert(0)[Prefer Embedded Fonts of Typst CLI]
#gm-alert(1)[to be Fast and Universal]
#gm-alert(2)[and Font Fallback available]
#gm-alert(3)[Symbols by DejaVu Sans Mono]
#gm-alert(4)[so Different from GitHub's]

#gm-alert-diy(c:green, s:emoji.parrot, k:"Do-It-Yourself")[
/ c, s, k: color, symbol, kind
Symbols depend on fonts:
```typc
s:text(size:1em, font:"Noto Color Emoji", emoji.parrot)```]

= Road Map
#show: gm-task-list.with()
- [x] CommonMark
- [x] GitHub Markup
- [ ] Jupyter Book MyST
- [ ] Bootstrap
