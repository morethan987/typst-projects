#import "../utils/font.typ": use-size


#let apply-ref-style(body) = {
  set par(first-line-indent: 0em)
  set heading(numbering: none)
  show heading: head => {
    set align(center) if head.level == 1
    set text(size: use-size("四号")) if head.level == 1
    set text(size: use-size("小四")) if head.level == 2
    set text(size: use-size("小四")) if head.level == 3
    set text(size: use-size("五号")) if head.level == 4

    strong[#head.body]
  }
  body
}
