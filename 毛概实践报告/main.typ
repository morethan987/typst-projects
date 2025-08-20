
#let config = (
  session: "2024至2025学年第一学期",
  teaching_class_number: 20,
  title: "大标题后面再来想",
  cover_name: "莫然",
  college: "计算机学院",
  major: "计算机科学与技术",
  class: "卓越(01)班",
  id: "20230674",
  self_evalue: "一级",
  all_authors: (
    莫然: "20230674",
    赖彦翰: "20230320",
    段雯菀: "20231326"
  ),

  //其他
  reference_title: "参考文献",
)

#set document(
  title: [毛概实践报告],
  author: "morethan",
  date: datetime(year: 2025, month: 8, day: 2),
  description: [毛概实践报告的模板],
  keywords: ("毛概", "实践报告", "Typst")
)

#import "style/heading.typ": set-heading, custom-numbering
#import "style/font.typ": use-size, font-family
#import "style/cover.typ": inser-background, fill-cover-content
#import "style/abstract.typ": make-abstruct

//产生封面内容
#fill-cover-content(config)

// 字体配置
#set text(font: font-family.at("SongTi"), use-size("五号"))

// 标题计数器配置
#set heading(numbering: custom-numbering)

//目录设置
#pagebreak()
#show outline.entry: set block(above: 1.2em)
#let outline_title = text(bottom-edge: "descender", size: use-size("小二"))[目录]
#outline(depth: 4, title: outline_title)


//标题样式配置
#show heading: it => set-heading(it, config)

// 页面配置
#set page(paper: "a4", numbering: "1 / 1")
#set par(first-line-indent: (
  amount: 2em,
  all: true,
))

// 列表缩进配置
#set enum(indent: 2em)
#set list(indent: 2em)

////////////////////// 摘要 //////////////////////

#let abstruct = [
  #lorem(450)
]

#let key_word = [
  #lorem(5)
]

#make-abstruct(config, abstruct, key_word)

////////////////////// 正文 //////////////////////

= 引言

这里随便放一点口水话就行

// 随机文本函数
#lorem(100)

= 研究背景与问题提出

外卖行业发展历史啊，拼好饭的出现啊，具体的市场数据啊之类的，还有现有的研究，然后提出这篇文章想要研究的问题

研究问题的话我觉得就一人一个点吧：

+ 分析拼好饭成为网络热梗的原因，以及大学生群体对于拼好饭的看法（问卷调查）

+ 分析拼好饭背后的商业模式（包括消费者福利、商家利润压缩以及这种商业模式爆火的原因等等）

+ 分析拼好饭爆火背后反应的社会经济动态，这种商业模式可能会对社会经济发展产生的影响（作用与反作用）

= 研究方法和调查设计

该怎么设计问卷，调查的对象，数据收集方式

#lorem(50)

= 调查结果与数据分析

先简单罗列数据，然后分析数据，得到一些比较浅显的现象

#lorem(50)

= 研究与讨论

分析可能的原因，挖掘一下上一步得到的浅显现象背后的深层次逻辑

#lorem(150)

= 总结与展望

字数不够，这里来凑

中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文

中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文

这里放一个文献引用@sina20241026，只有引用的的文献才会被列出

////////////////////// 引用文献 //////////////////////

#bibliography(
  "ref.bib",
  title: config.reference_title,
  style: "gb-7714-2015-numeric"
)
#pagebreak()

/////////////////////// 附录 ///////////////////////

#set par(first-line-indent: 0em)

#set heading(numbering: none)
#show heading: head => {
  set align(center) if head.level == 1
  set text(size: use-size("四号")) if head.level == 1
  set text(size: use-size("小四")) if head.level == 2
  set text(size: use-size("小四")) if head.level == 3
  set text(size: use-size("五号")) if head.level == 4

  strong[#head.body]
}

= 附录

// 目录中不展示子级内容
#set heading(outlined: false)

== 问卷调查

#lorem(300)

#pagebreak()

== 活动图片

#set figure(numbering: "一")
#set figure.caption(separator: [：])

#figure(
  image("asset/截图 2025-08-15 15-44-39.png", width: 85%),
  caption: [图片示例],
  supplement: [图片],
  
)

#figure(
  image("asset/截图 2025-08-15 15-44-39.png", width: 85%),
  caption: [图片示例],
  supplement: [图片],
  
)