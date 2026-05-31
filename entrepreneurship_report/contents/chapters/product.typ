#import "../../style/table.typ": three-line-table

= 产品与服务

== 产品介绍

在此处描述产品或服务的核心功能和价值主张。

// 建议插入产品图片（取消注释并修改路径）：
// #figure(
//   image("asset/product.png", width: 80%),
//   caption: [产品展示图],
// )

== 核心优势

+ *优势一*：描述产品的核心竞争力（技术壁垒、独家资源、成本优势等）
+ *优势二*：描述产品的差异化特点
+ *优势三*：描述产品的用户体验或服务优势

== 定价策略

#three-line-table(
  columns: (auto, auto, 1fr),
  align: (center + horizon, center + horizon, left + horizon),
  [*产品/服务*], [*定价*], [*说明*],
  table.hline(stroke: 0.5pt),
  [基础版], [¥XX/月], [基础功能描述],
  [专业版], [¥XX/月], [进阶功能描述],
  [企业版], [¥XX/月], [全功能 + 专属服务],
)
