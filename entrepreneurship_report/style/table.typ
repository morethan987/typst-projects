/// 普通三线表
///
/// - columns: 列宽定义，同 table() 的 columns 参数
/// - align: 对齐方式，单值或按列数组
/// - ..args: 表格内容（单元格 + table.hline）
#let three-line-table(
  columns: (auto,),
  table-align: center + horizon,
  table-caption: none,
  ..args,
) = {
  let grid-table = table(
    columns: columns,
    align: table-align,
    stroke: none,
    inset: (x: 10pt, y: 6pt),
    // 顶线
    table.hline(stroke: 1.5pt),
    // 用户内容（含栏目线 table.hline(stroke: 0.5pt)）
    ..args,
    // 底线
    table.hline(stroke: 1.5pt),
  )
  if table-caption != none {
    figure(
      grid-table,
      caption: table-caption,
      kind: table, // 明确声明类型为 table，确保应用置顶规则与表格编号通道
    )
  } else {
    grid-table
  }
}

/// 渲染带橙色表头的网格表（采用官方 figure 规范支持自动编号）
///
/// - columns: 列宽定义
/// - align: 对齐方式
/// - caption: 表格标题/标注（自动显示在上方且带有“表 1”等编号）
/// - header-fill: 表头底色
/// - ..args: 表格内容单元格
#let orange-grid-table(
  columns: (auto,),
  table-align: left + horizon,
  table-caption: none,
  header-fill: orange,
  ..args,
) = {
  // 2. 设置表头文字自动为白色、粗体
  show table.cell.where(y: 0): set text(fill: white, weight: "bold")

  // 3. 构建表格主体
  let grid-table = table(
    columns: columns,
    align: table-align,
    stroke: 0.5pt + rgb("#b5b5b5"),
    inset: (x: 10pt, y: 10pt),
    fill: (x, y) => if y == 0 { header-fill } else { none },
    ..args,
  )

  // 4. 判断是否需要添加官方标注
  if table-caption != none {
    figure(
      grid-table,
      caption: table-caption,
      kind: table, // 明确声明类型为 table，确保应用置顶规则与表格编号通道
    )
  } else {
    grid-table
  }
}
