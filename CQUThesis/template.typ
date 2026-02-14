#import "config.typ": font-family
#import "style/heading.typ": set-heading, custom-numbering
#import "utils/font.typ": use-size
#import "style/cover.typ": fill-cover-content
#import "style/abstract.typ": make-abstract
#import "style/ref.typ": apply-ref-style
#import "style/appendix.typ": apply-appendix-style

// 定义模板主函数，这里包括了整个文档的结构和样式设置
#let cqu_thesis(config: (:), body) = {
  // --- 文档元数据设置 ---
  set document(
    title: config.meta_data.at("title", default: "default title"),
    author: config.meta_data.at("author", default: "default author"),
    date: config.meta_data.at("date", default: "default date"),
    description: config.meta_data.at("description", default: "default description")
  )

  // --- 封面 ---
  // fill-cover-content(config)

  // --- 目录 ---
  pagebreak()
  // 局部设置目录样式
  {
    set text(font: font-family.at("SongTi")) // 确保目录字体正确
    show outline.entry: set block(above: 1.2em)
    let outline_title = text(bottom-edge: "descender", size: use-size("小二"))[目录]
    outline(depth: 4, title: outline_title)
  }

  // --- 摘要 ---
  import "contents/abstract.typ": abstract, keywords
  make-abstract(abstract, keywords)

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
  pagebreak()
  apply-ref-style[
    #bibliography(
      config.reference_config.bib_file,
      title: config.reference_config.at("reference_title", default: "参考文献"),
      full: config.reference_config.at("full", default: false),
      style: config.reference_config.at("reference_style", default: "gb-7714-2015-numeric")
    )
  ]
}
