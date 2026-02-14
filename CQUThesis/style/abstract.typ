#import "/utils/font.typ": use-size
#import "/config.typ": font-family

#let make-abstract(abstract, key_word) = {
  // 大标题
  align(center + top, text(use-size("三号"))[
    *摘要*
  ])

  set par(first-line-indent: 0em)
  set text(font: font-family.at("SongTi"), size: use-size("小四"))
  // 摘要
  [*摘要：*#abstract\ ]

  // 关键词
  [*关键词：*#key_word\ ]

  pagebreak()
}
