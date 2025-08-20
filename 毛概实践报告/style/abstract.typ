#import "/style/font.typ": use-size, font-family

#let make-abstruct(config, abstract, key_word) = {
  // 大标题
  align(center + top, text(use-size("三号"))[
    #strong(config.title)
  ])

  // 小作者
  align(center + top, text(use-size("小四"))[
    #config.all_authors.keys().map(author => {
      author + config.all_authors.at(author)
    }).join("  ")
  ])

  set par(first-line-indent: 0em)
  set text(font: font-family.at("SongTi"), size: use-size("小四"))
  // 摘要
  [*摘要：*#abstract\ ]

  // 关键词
  [*关键词：*#key_word\ ]

  pagebreak()
}