#import "font.typ": use-size, font-family
#import "heading.typ": set-heading, custom-numbering

#let make-task-page(content) = {
  // 大标题
  align(center + top, text(use-size("三号"))[社会实践报告分工表])

  set heading(numbering: custom-numbering, outlined: false)
  show heading: it => set-heading(it)

  content
  pagebreak()
}
