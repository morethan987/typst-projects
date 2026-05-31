// 商业计划书卡片组件：团队成员、信息卡片、时间轴
#import "font.typ": use-size, font-family


/// 团队成员展示卡片
#let team-member(name, role, background, photo: none) = {
  rect(width: 100%, inset: 10pt, stroke: 0.5pt + luma(210), radius: 3pt)[
    #set par(first-line-indent: 0em)
    #grid(
      columns: (auto, 1fr),
      column-gutter: 12pt,
      align(top + center, {
        if photo != none {
          image(photo, width: 3cm, height: 4cm, fit: "cover")
        } else {
          rect(width: 3cm, height: 4cm, fill: luma(240), stroke: 0.5pt + luma(200))[
            #align(center + horizon,
              text(luma(160), size: use-size("小五"))[照片])
          ]
        }
      }),
      {
        text(font: font-family.HeiTi, size: use-size("四号"))[*#name*]
        linebreak()
        text(font: font-family.HeiTi, size: use-size("小四"), fill: luma(80))[#role]
        v(6pt)
        text(font: font-family.SongTi, size: use-size("小四"))[#background]
      },
    )
  ]
}


/// 通用信息卡片（痛点、解决方案、盈利点等）
#let info-card(title, desc) = {
  rect(width: 100%, inset: 10pt, stroke: 0.5pt + luma(210), radius: 2pt)[
    #set par(first-line-indent: 0em)
    #text(font: font-family.HeiTi, size: use-size("小四"))[*#title*]
    #v(4pt)
    #text(font: font-family.SongTi, size: use-size("小四"))[#desc]
  ]
}


/// 时间轴条目（项目进度、未来规划）
#let timeline-entry(time, title, desc) = {
  set par(first-line-indent: 0em)
  grid(
    columns: (2.5cm, 1fr),
    column-gutter: 8pt,
    align(top + right,
      text(font: font-family.HeiTi, size: use-size("小四"))[*#time*]),
    {
      text(font: font-family.HeiTi, size: use-size("小四"))[*#title*]
      linebreak()
      text(font: font-family.SongTi, size: use-size("小四"))[#desc]
    },
  )
}
