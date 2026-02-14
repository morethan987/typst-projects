/// Main file for the thesis project. This file serves as the entry point for compiling the entire thesis document.

#import "template.typ": cqu_thesis
#import "config.typ": config


// ==========================================
// 使用模板
// ==========================================
#show: cqu_thesis.with(config: config)

// ==========================================
// 正文开始
// ==========================================

= 引言
引言内容...

// 也可以引用外部文件
#include "contents/chapters/chapter1.typ"
#include "contents/chapters/chapter2.typ"
#include "contents/chapters/chapter3.typ"
