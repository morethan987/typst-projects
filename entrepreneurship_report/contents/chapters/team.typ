#import "../../style/card.typ": team-member

= 核心团队

#grid(
  columns: 2,
  gutter: 1em,
  team-member(
    "张三",
    "CEO / 项目负责人",
    "XX大学XX专业，X年XX行业经验。曾主导XX项目，具备XX资源与XX能力。",
  ),
  team-member(
    "李四",
    "CTO / 技术负责人",
    "XX大学XX专业，擅长XX技术栈。曾参与XX系统开发，拥有X项技术专利。",
  ),
  team-member(
    "王五",
    "COO / 运营负责人",
    "XX大学XX专业，X年运营管理经验。曾任XX公司XX岗位，擅长XX。",
  ),
)
