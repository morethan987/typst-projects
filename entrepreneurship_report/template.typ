// template.typ — 商业计划书模板

// 导入样式模块
#import "style/heading.typ": custom-numbering, set-heading
#import "style/font.typ": font-family, use-size
#import "style/cover.typ": fill-cover-content
#import "style/section.typ": unnumbered-section

// 定义模板主函数
//   路径参数传 none 可跳过对应章节；默认路径遵循 contents/ 约定
#let business-plan(
  config: (:), // 元数据
  bib-path: none, // none 跳过参考文献
  appendix-path: "contents/appendix.typ", // none 跳过附录
  body, // 正文
) = {
  // --- 文档元数据 ---
  set document(
    title: config.project-name + " - 商业计划书",
    author: config.members.map(m => m.name),
    date: datetime.today(),
  )

  // --- 全局字体与页面 ---
  set page(paper: "a4", numbering: "1")
  set text(font: font-family.SongTi, size: use-size("五号"), lang: "zh")
  set par(first-line-indent: (amount: 2em, all: true), justify: true)

  // --- 封面 ---
  fill-cover-content(config)

  // --- 目录 ---
  pagebreak()
  {
    set text(font: font-family.SongTi)
    show outline.entry: set block(above: 1.2em)
    outline(
      depth: 4,
      title: text(bottom-edge: "descender", size: use-size("小二"))[目录],
    )
  }
  pagebreak()

  // --- 正文样式 ---
  counter(page).update(1)
  counter(heading).update(0)
  set heading(numbering: custom-numbering)
  show heading: it => set-heading(it)
  set enum(indent: 2em)
  set list(indent: 2em)
  set figure(numbering: "一", supplement: [图片])
  set figure.caption(separator: [：])

  // --- 正文 ---
  body

  // --- 参考文献 ---
  if bib-path != none {
    pagebreak()
    unnumbered-section[
      #bibliography(
        bib-path,
        title: "参考文献",
        style: "gb-7714-2015-numeric",
      )
    ]
  }

  // --- 附录 ---
  if appendix-path != none {
    pagebreak()
    unnumbered-section(with-figure-style: true)[
      #set heading(outlined: false)
      #counter(heading).update(0)
      #heading(level: 1)[附录]
      #include appendix-path
    ]
  }
}
