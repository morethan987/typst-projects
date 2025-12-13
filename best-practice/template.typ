// template.typ

// 导入原来的样式模块
#import "style/heading.typ": set-heading, custom-numbering
#import "style/font.typ": use-size, font-family
#import "style/cover.typ": inser-background, fill-cover-content
#import "style/abstract.typ": make-abstract
#import "style/task.typ": make-task-page
#import "style/ref.typ": apply-ref-style
#import "style/appendix.typ": apply-appendix-style

// 定义模板主函数，这里包括了整个文档的结构和样式设置
#let practice_report(
  config: (:),           // 所有的元数据
  abstract: [],          // 摘要内容
  keywords: (),          // 关键词列表
  task_info: none,       // 分工表内容
  bib_file: none,        // 参考文献文件路径 (.bib)
  appendix: none,        // 附录内容
  body                   // 正文
) = {
  // --- 文档元数据设置 ---
  set document(
    title: config.title,
    author: config.at("author", default: "morethan"), // 做了个防空保护
    date: datetime.today(),
  )

  // --- 全局字体与页面配置 ---
  set page(paper: "a4", numbering: "1")
  set text(font: font-family.at("SongTi"), size: use-size("五号"), lang: "zh")
  set par(
    first-line-indent: (amount: 2em, all: true),
    justify: true
  )

  // --- 封面 ---
  fill-cover-content(config)

  // --- 目录 ---
  pagebreak()
  // 局部设置目录样式
  {
    set text(font: font-family.at("SongTi")) // 确保目录字体正确
    show outline.entry: set block(above: 1.2em)
    let outline_title = text(bottom-edge: "descender", size: use-size("小二"))[目录]
    outline(depth: 4, title: outline_title)
  }

  // --- 任务分工表 ---
  if task_info != none {
    pagebreak()
    make-task-page(task_info)
  }

  // --- 摘要 ---
  // 这里假设 make-abstract 内部处理了 pagebreak，如果没有，可以在这里加
  make-abstract(config, abstract, keywords)

  // --- 正文样式配置 ---
  // 重置页码或计数器（如果需要）
  counter(page).update(1)
  counter(heading).update(0)

  set heading(numbering: custom-numbering)
  show heading: it => set-heading(it)

  set enum(indent: 2em)
  set list(indent: 2em)

  set figure(numbering: "一", supplement: [图片])
  set figure.caption(separator: [：])

  // --- 渲染正文 ---
  body

  // --- 参考文献 ---
  if bib_file != none {
    pagebreak()
    apply-ref-style[
      #bibliography(
        bib_file,
        title: config.at("reference_title", default: "参考文献"),
        style: "gb-7714-2015-numeric"
      )
    ]
  }

  // --- 附录 ---
  if appendix != none {
    pagebreak()
    apply-appendix-style[
      // 附录特有设置
      #set heading(outlined: false)
      #counter(heading).update(0) // 附录重新编号
      #heading(level: 1)[附录]

      #appendix
    ]
  }
}
