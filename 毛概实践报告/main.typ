
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


#import "style/heading.typ": set-heading, custom-numbering
#import "style/font.typ": use-size, font-family
#import "style/cover.typ": inser-background, fill-cover-content
#import "style/abstract.typ": make-abstract
#import "style/ref.typ": apply-ref-style
#import "style/appendix.typ": apply-appendix-style

// 文档内置属性设置，和内容无关
#set document(
  title: [毛概实践报告],
  author: "morethan",
  date: datetime(year: 2025, month: 8, day: 2),
  description: [毛概实践报告的模板],
  keywords: ("毛概", "实践报告", "Typst")
)

//产生封面内容
#fill-cover-content(config)

// 字体配置
#set text(font: font-family.at("SongTi"), use-size("五号"), lang: "zh")

//目录设置
#pagebreak()
#show outline.entry: set block(above: 1.2em)
#let outline_title = text(bottom-edge: "descender", size: use-size("小二"))[目录]
#outline(depth: 4, title: outline_title)


//标题样式配置
#set heading(numbering: custom-numbering)
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

#let abstract = [
  #lorem(450)
]

#let key_word = [
  关键词1，关键词2，关键词3
]

#make-abstract(config, abstract, key_word)

////////////////////// 正文 //////////////////////

= 引言

近年来，“拼好饭”这一新兴外卖团餐模式迅速走入公众视野，成为诸多打工人和学生群体日常就餐的新选择。不同于传统外卖平台主打的高品质与多样化，“拼好饭”最大的卖点就是极致的性价比：1.9元的蜜雪冰城、3.9元的沪上阿姨、6.9元的塔斯汀三件套套餐等等@sohu20250515。作为外卖界的拼多多，“拼好饭”在网络上也逐渐成为一个热门的名词，评价也呈现两极分化：正面评价认为“拼好饭”为广大普通百姓提供了廉价的饭菜，是惠民利民的良好商业模式，能够刺激消费带动经济增长；而负面评价认为“拼好饭”极低的价格降低了商家利润的同时也难以保证食品的质量。

为了对“拼好饭”这一新兴的外卖模式有更加客观实际的认知，我们小组将目标选定为“拼好饭”进行社会实践调查。

////////////////// 研究背景与问题提出 //////////////////

= 研究背景与问题提出

== 研究背景

外卖行业发展历史啊，拼好饭的出现啊，具体的市场数据啊之类的，还有现有的研究

== 研究问题

=== 拼好饭口碑分化调查

分析拼好饭成为网络热梗的原因，以及大学生群体对于拼好饭的看法（问卷调查）

=== 拼好饭商业模式分析

分析拼好饭背后的商业模式（包括消费者福利、商家利润压缩以及这种商业模式爆火的原因等等）

=== 拼好饭背后的社会经济

分析拼好饭爆火背后反应的社会经济动态，这种商业模式可能会对社会经济发展产生的影响（作用与反作用）

////////////////// 研究方法和调查设计 //////////////////

= 研究方法和调查设计

== 拼好饭口碑分化调查

该怎么设计问卷，调查的对象，数据收集方式

== 拼好饭商业模式分析

该怎么设计问卷，调查的对象，数据收集方式

== 拼好饭背后的社会经济

该怎么设计问卷，调查的对象，数据收集方式

////////////////// 调查结果与数据分析 //////////////////

= 调查结果与数据分析

== 拼好饭口碑分化调查

先简单罗列数据，然后分析数据，得到一些比较浅显的现象

== 拼好饭商业模式分析

先简单罗列数据，然后分析数据，得到一些比较浅显的现象

== 拼好饭背后的社会经济

先简单罗列数据，然后分析数据，得到一些比较浅显的现象

////////////////// 研究与讨论 //////////////////

= 研究与讨论

== 拼好饭口碑分化调查

分析可能的原因，挖掘一下上一步得到的浅显现象背后的深层次逻辑

== 拼好饭商业模式分析

分析可能的原因，挖掘一下上一步得到的浅显现象背后的深层次逻辑

== 拼好饭背后的社会经济

分析可能的原因，挖掘一下上一步得到的浅显现象背后的深层次逻辑

////////////////// 总结与展望 //////////////////

= 总结与展望

字数不够，这里来凑

中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文

中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文

这里放一个文献引用@sina20241026，只有引用的的文献才会被列出

////////////////////// 引用文献 //////////////////////
#pagebreak()
#apply-ref-style[

#bibliography(
  "ref.bib",
  title: config.reference_title,
  style: "gb-7714-2015-numeric"
)

]
#pagebreak()

/////////////////////// 附录 ///////////////////////
#apply-appendix-style[

= 附录

== 问卷调查

#lorem(300)

#pagebreak()

== 活动图片

#figure(
  image("asset/截图 2025-08-15 15-44-39.png", width: 85%),
  caption: [图片示例]  
)

#figure(
  image("asset/截图 2025-08-15 15-44-39.png", width: 85%),
  caption: [图片示例]
)

]