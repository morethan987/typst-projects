#import "font.typ": font-family, use-size


#let fill-cover-content(config) = {
  // 校名
  align(center + top, image("/asset/school-name.png", width: 30%))
  v(1.5em)
  // 大标题
  align(center, text(font: font-family.HeiTi, size: use-size("小初"))[
    *商业计划书*
  ])
  v(0.8em)
  // 项目名称
  align(center, text(font: font-family.HeiTi, size: use-size("三号"))[
    #config.project-name
  ])
  v(0.4em)
  // Slogan
  align(center, text(font: font-family.KaiTi, size: use-size("四号"))[
    #config.slogan
  ])
  v(0.8em)
  // 校徽
  align(center, image("/asset/school-badge.png", width: 22%))
  v(2em)
  // 基本信息
  par(
    first-line-indent: 0pt,
    leading: 20pt,
    align(left, text(font: font-family.HeiTi, size: use-size("四号"))[
      #h(25%)课程名称：#config.course\
      #h(25%)项目赛道：#config.industry\
      #h(25%)融资阶段：#config.round\
      #h(25%)融资金额：#config.amount\
      #h(25%)学\u{3000}\u{3000}期：#config.session\
    ]),
  )
  v(2em)
  // 团队成员
  par(first-line-indent: 0pt, leading: 16pt, align(left, text(font: font-family.HeiTi, size: use-size("小四"))[
    #for m in config.members [
      #h(25%)#m.name（#m.id）#m.role\
    ]
  ]))
}
