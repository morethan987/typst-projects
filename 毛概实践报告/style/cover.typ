#let fill-cover-content(config) = {
  // 学校大字名称
  align(center + top, image("/asset/school-name.png", width: 33%))
  // 文件名
  align(center, text(font: "Source Han Serif SC", size: 26pt)[概论课程社会实践报告])
  // 校徽
  align(center + top, image("/asset/school-badge.png", width: 33%))
  //学期
  align(center, text(font: "Source Han Sans SC", size: 16pt)[#config.session])
  // 空行
  [\ ]
  
  par(leading: 18pt, align(left, text(font: "Source Han Sans SC", size: 15pt)[
    #h(13%)教学班号：#config.teaching_class_number\
    #h(13%)论文题目：#config.title\
    #h(13%)学生姓名：#config.cover_name\
    #h(13%)学院专业班级：#config.college#config.major#config.class\
    #h(13%)学号：#config.id\
    #h(13%)自评等级：#config.self_evalue
  ]))
}

#let inser-background(cover_content) = {
  // 背景
  page(
    background: [
      #image(
        "/asset/school-badge.png",
        fit: "cover"
      )
    ],
    cover_content
  )

  // 分页
  pagebreak()
}