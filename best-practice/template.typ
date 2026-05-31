// template.typ

// 导入样式模块
#import "style/heading.typ": set-heading, custom-numbering
#import "style/font.typ": use-size, font-family
#import "style/cover.typ": fill-cover-content
#import "style/abstract.typ": make-abstract
#import "style/task.typ": make-task-page
#import "style/section.typ": unnumbered-section

// 定义模板主函数
//   路径参数传 none 可跳过对应章节；默认路径遵循 contents/ 约定
#let practice_report(
  config: (:),                        // 元数据
  keywords: (),                       // 关键词
  abstract_path: "contents/abstract.typ",  // none 跳过
  task_path: "contents/task.typ",          // none 跳过
  bib_path: "ref.bib",                    // none 跳过
  appendix_path: "contents/appendix.typ",  // none 跳过
  body,                                    // 正文
) = {
  // --- 文档元数据 ---
  set document(
    title: config.title,
    author: config.at("author", default: "morethan"),
    date: datetime.today(),
  )

  // --- 全局字体与页面 ---
  set page(paper: "a4", numbering: "1")
  set text(font: font-family.at("SongTi"), size: use-size("五号"), lang: "zh")
  set par(first-line-indent: (amount: 2em, all: true), justify: true)

  // --- 封面 ---
  fill-cover-content(config)

  // --- 目录 ---
  pagebreak()
  {
    set text(font: font-family.at("SongTi"))
    show outline.entry: set block(above: 1.2em)
    let outline_title = text(bottom-edge: "descender", size: use-size("小二"))[目录]
    outline(depth: 4, title: outline_title)
  }

  // --- 任务分工表 ---
  if task_path != none {
    pagebreak()
    make-task-page(include task_path)
  }

  // --- 摘要 ---
  if abstract_path != none {
    make-abstract(config, include abstract_path, keywords)
  }

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
  if bib_path != none {
    pagebreak()
    unnumbered-section[
      #bibliography(
        bib_path,
        title: config.at("reference_title", default: "参考文献"),
        style: "gb-7714-2015-numeric",
      )
    ]
  }

  // --- 附录 ---
  if appendix_path != none {
    pagebreak()
    unnumbered-section(with-figure-style: true)[
      #set heading(outlined: false)
      #counter(heading).update(0)
      #heading(level: 1)[附录]
      #include appendix_path
    ]
  }
}
