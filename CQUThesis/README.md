# CQUThesis with Typst

使用 Typst 实现的 CQUThesis，相比 LaTeX 更加现代化：语法更加直观、**真正意义上的增量式热更新**、更加完善易懂的官方文档(LaTeX历史包袱太沉重了)、本地部署异常简单

## 使用方法

面向不想细究本模板底层设计的用户，零技术门槛轻松上手💪

### 安装Typst

### 下载本模板

### 基础配置

模板中本身就包含大量可以直接拷贝使用的例子，可以自行探索并使用

## 开发说明

面向想要进行格式调整的、想要参与贡献的用户，此处涉及一些比较复杂的 Typst 语法以及本框架的细致设计思路；非开发者请参看[使用方法](#使用方法)

```txt
/CQUThesis
│
├── main.typ              <-- 入口文件（几乎没什么内容，很短、很干净）
├── template.typ          <-- 模板逻辑（这里定义具体的文档结构并引入样式）
├── ref.bib               <-- 参考文献库
│
├── contents/             <-- 专门放各种长内容的文件夹
│   ├── abstract.typ      <-- 存放摘要
│   ├── task.typ          <-- 存放人员分工
│   └── appendix.typ      <-- 存放附录、问卷、图片
│
└── style/                <-- 样式文件夹
    ├── heading.typ
    └── ...
```

## 参考链接

- [CQUThesis-LaTeX](https://github.com/nanmu42/CQUThesis.git)：经典开山之作
- [某博士学长的博士论文](https://github.com/neardws/My-Doctoral-Dissertation.git)：适配了2023年学位论文要求
- [2023年学位论文标准](https://github.com/cqu-bdsc/CQUThesis/tree/master/standers/%E9%99%84%E4%BB%B6%EF%BC%9A%E9%87%8D%E5%BA%86%E5%A4%A7%E5%AD%A6%E5%8D%9A%E5%A3%AB%E3%80%81%E7%A1%95%E5%A3%AB%E5%AD%A6%E4%BD%8D%E8%AE%BA%E6%96%87%E6%A0%BC%E5%BC%8F%E6%A0%87%E5%87%86%EF%BC%882023%E5%B9%B4%E4%BF%AE%E8%AE%A2%EF%BC%89)
