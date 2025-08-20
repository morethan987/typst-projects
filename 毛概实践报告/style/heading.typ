#import "ref.typ": style-ref

// 标题样式配置
#let set-heading(head, config) = {
  // 接收标题元素，返回content元素

  //排除引用文献的标题
  if head.body == [#config.reference_title]{
    set par(first-line-indent: 0em)
    style-ref([#head.body])
    return
  }

  set par(first-line-indent: 0em)
  set text(size: 14pt) if head.level == 1
  set text(size: 12pt) if head.level == 2
  set text(size: 12pt) if head.level == 3
  set text(size: 10.5pt) if head.level == 4
  strong[#counter(heading).display()#head.body]
}

#let custom-numbering(..nums) = {
  // list是标志标题层级的数组
  let list = nums.pos()
  if list.len() == 1{
    return [#numbering("一", list.last())、]
  }
  if list.len() == 2{
    return [（#numbering("一", list.last())）]
  }
  if list.len() == 3{
    return [#numbering("1", list.last()). ]
  }
  if list.len() == 4{
    return [（#numbering("1", list.last())）]
  }
}

