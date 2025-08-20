#import "font.typ": use-size, font-family

#let style-ref(ref) = {
  pagebreak()
  text(
    ref,
    font: font-family.at("SongTi"),
    size: use-size("四号"),
    weight: "bold"
  )
}