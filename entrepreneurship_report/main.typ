#import "template.typ": business-plan

// 1. 配置信息
#let config = (
  project-name: "LinkPal 灵伴",
  slogan: "基于轻量化大模型与 FriendSkill 熟人技能蒸馏的桌面社交陪伴机器人",
  industry: "桌面社交陪伴机器人",
  round: "天使轮",
  amount: "待定",
  session: "2025至2026学年第二学期",
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
#include "contents/chapters/vision.typ"
#include "contents/chapters/product.typ"
#include "contents/chapters/market.typ"
#include "contents/chapters/competition.typ"
#include "contents/chapters/development.typ"
#include "contents/chapters/team.typ"
#include "contents/chapters/finance.typ"
#include "contents/chapters/risk.typ"
#include "contents/chapters/exit.typ"
#include "contents/chapters/roadmap.typ"
