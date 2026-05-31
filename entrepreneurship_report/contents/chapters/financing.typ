#import "../../style/table.typ": three-line-table

= 融资计划

== 融资需求

+ *估值*：XX万元
+ *融资金额*：XX万元
+ *出让股份*：XX%
+ *预计使用周期*：XX个月

== 资金用途

#three-line-table(
  columns: (1fr, auto, auto),
  align: (left + horizon, center + horizon, center + horizon),
  [*用途*], [*金额（万元）*], [*占比*],
  table.hline(stroke: 0.5pt),
  [产品研发], [XX], [XX%],
  [市场推广], [XX], [XX%],
  [团队建设], [XX], [XX%],
  [日常运营], [XX], [XX%],
  [储备资金], [XX], [XX%],
  [*合计*], [*XX*], [*100%*],
)
