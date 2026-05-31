#import "../../style/table.typ": three-line-table

= 项目进度

== 当前进展

+ 已完成XX产品的原型设计/开发
+ 已获取XX名种子用户进行试点
+ 已与XX家商户/机构建立合作意向
+ 已完成XX阶段测试，用户反馈XX

== 关键数据

#three-line-table(
  columns: (1fr, auto, auto),
  align: (left + horizon, center + horizon, center + horizon),
  [*指标*], [*当前值*], [*目标值*],
  table.hline(stroke: 0.5pt),
  [注册用户], [XX], [XX],
  [日活跃用户], [XX], [XX],
  [付费用户], [XX], [XX],
  [月营收], [¥XX], [¥XX],
)
