/// 全局配置文件
#let config = (
  // 学位层级，可选值: bachelor, master, doctor, postdoc
  // 模板内容会根据学位自动调整，对于不需要的内容会自动忽略
  degree: "bachelor",
  degree-type: "academic",
  anonymous: false, // 盲审模式
  twoside: false, // 双面模式，会加入空白页，便于打印
  meta_data: ( // 如下的信息会写入到生成的 PDF 元数据中，为了明确起见，这里的信息只会写入到 PDF 元数据中，不会在封面等位置显示
    title: "清华大学学位论文 Typst 模板\n使用示例文档",
    author: "Morethan",
    description: "这是一个使用 Typst 模板编写的示例学位论文文档，展示了模板的基本功能和配置选项",
    // 论文提交日期，具体日期不会在封面中显示，但会写入到 PDF 元数据中
    date: datetime.today(),
    // 指定论文提交日期，可填写任意时间
    // date: datetime(year: 2026, month: 5, day: 30),
    // （并不建议）将日期具体到时分秒（UTC 时间），同时会应用系统时区，因而需要根据实际情况自行换算
    // 如下设置北京时间 2026 年 5 月 30 日 10:30 AM，对应 UTC 时间的 2:30 AM：
    // date: datetime(year: 2026, month: 5, day: 30, hour: 2, minute: 30, second: 0),
  ),
  reference_config: (
    // 参考文献标题，默认为 "参考文献"
    reference_title: "参考文献",
    bib_file: "ref.bib",
    // 参考文献样式，默认为 "gb-7714-2015-numeric"
    // 详细参见：https://typst.app/docs/reference/model/bibliography/
    reference_style: "gb-7714-2015-numeric",
    full: false, // 是否显示参考文献的全部信息(即便没有在文中引用)，默认为 false
  ),
)

/// 以下字体配置适用于安装了 Windows 10/11 字体及 Windows 10/11 简体中文字体扩展的设备，
/// 请勿修改 font-family 中定义的键值，除 Math 数学字体外，修改西文字体时请使用 `latin-in-cjk` 覆盖字体范围
///
/// 对于 MacOS 用户，可以使用 `Songti SC`、`Heiti SC`、`Kaiti SC`、`Fangsong SC` 和 `Menlo` 作为替代
///
/// 对于 Linux 用户，可以使用 `Source Han Serif`、`Source Han Sans`、`Source Han Mono` 或文泉驿字体等进行配置
#let font-family = (
  SongTi: (
    (name: "Noto Serif", covers: "latin-in-cjk"),
    "Source Han Serif",
  ),
  HeiTi: (
    (name: "Noto Sans", covers: "latin-in-cjk"),
    "Source Han Sans",
  ),
  KaiTi: (
    (name: "Noto Serif", covers: "latin-in-cjk"),
    "AR PL UKai",
  ),
  FangSong: (
    (name: "Noto Serif", covers: "latin-in-cjk"),
    "FZFangSong-Z02S",
  ),
  Mono: (
    (name: "Noto Sans Mono", covers: "latin-in-cjk"),
    "Maple Mono NF",
  ),
  Math: (
    "Noto Sans Math",
  ),
)
