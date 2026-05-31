#import "template.typ": practice_report

// 1. 配置信息
#let config = (
  session: "2024至2025学年第一学期",
  teaching_class_number: 20,
  title: "大标题后面再来想",
  cover_name: "morethan",
  college: "33学院",
  major: "66专业",
  class: "99班",
  id: "20230xxx",
  self_evalue: "一级",
  all_authors: (
    morethan: "20230xxx",
    yyy: "20230666",
    zzz: "20231999",
  ),
  reference_title: "参考文献",
)

// 2. 应用模板
#show: practice_report.with(
  config: config,
  keywords: ("拼好饭", "外卖行业", "大学生消费"),
)

// 3. 正文
= 引言
引言内容...

#include "contents/chapters/chapter1.typ"
#include "contents/chapters/chapter2.typ"
#include "contents/chapters/chapter3.typ"
