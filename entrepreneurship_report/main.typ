#import "template.typ": business-plan

// 1. 配置信息
#let config = (
  project-name: "项目名称（待定）",
  slogan: "用一句话描述项目愿景",
  industry: "XX行业",
  round: "天使轮",
  amount: "XXX万元",
  session: "2024至2025学年第二学期",
  course: "创业管理",
  members: (
    (name: "张三", role: "CEO / 项目负责人", id: "20230xxx"),
    (name: "李四", role: "CTO / 技术负责人", id: "20230xxx"),
    (name: "王五", role: "COO / 运营负责人", id: "20230xxx"),
  ),
)

// 2. 应用模板
#show: business-plan.with(config: config)

// 3. 正文
#include "contents/chapters/overview.typ"
#include "contents/chapters/team.typ"
#include "contents/chapters/market.typ"
#include "contents/chapters/pain-points.typ"
#include "contents/chapters/solution.typ"
#include "contents/chapters/product.typ"
#include "contents/chapters/business-model.typ"
#include "contents/chapters/revenue.typ"
#include "contents/chapters/competition.typ"
#include "contents/chapters/progress.typ"
#include "contents/chapters/roadmap.typ"
#include "contents/chapters/financing.typ"
#include "contents/chapters/risk.typ"
