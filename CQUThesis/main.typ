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
  reference_title: "参考文献", // 可选
)

// ==========================================
// 2. 应用模板
// ==========================================
// 说明：with语法会将后面所有的内容(也就是正文)作为 body 参数传入模板
#show: practice_report.with(
  config: config,
  keywords: ("拼好饭", "外卖行业", "大学生消费"),

  // ---> 引用外部文件 <---
  abstract: include "contents/abstract.typ",
  task_info: include "contents/task.typ",
  appendix: include "contents/appendix.typ",

  bib_file: "ref.bib"
)

// ==========================================
// 3. 正文开始
// ==========================================

// 可以直接写内容
= 引言
引言内容...

// 也可以引用外部文件
#include "contents/chapters/chapter1.typ"
#include "contents/chapters/chapter2.typ"
#include "contents/chapters/chapter3.typ"
