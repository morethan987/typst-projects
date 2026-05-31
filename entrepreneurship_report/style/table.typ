// 三线表组件：顶线 + 栏目线 + 底线，无竖线
//
// 用法：
//   #three-line-table(
//     columns: (auto, auto, 1fr),
//     align: (center + horizon, center + horizon, left + horizon),
//     [*表头1*], [*表头2*], [*表头3*],
//     table.hline(stroke: 0.5pt),  // 栏目线（表头与正文之间）
//     [单元格], [单元格], [单元格],
//     [单元格], [单元格], [单元格],
//   )
//
// 函数自动添加顶线和底线，用户只需手动放置栏目线。


/// 渲染三线表
///
/// - columns: 列宽定义，同 `table()` 的 columns 参数
/// - align: 对齐方式，单值或按列数组
/// - ..args: 表格内容（单元格 + table.hline）
#let three-line-table(
  columns: (auto,),
  align: center + horizon,
  ..args,
) = {
  table(
    columns: columns,
    align: align,
    stroke: none,
    inset: (x: 10pt, y: 6pt),
    // 顶线
    table.hline(stroke: 1.5pt),
    // 用户内容（含栏目线 table.hline(stroke: 0.5pt)）
    ..args,
    // 底线
    table.hline(stroke: 1.5pt),
  )
}
