#import "../metadata.typ": meta

#locate(loc => {
  set text(font: "Iosevka NF", size: 10pt)
  show: block.with(
    stroke: (top: 1pt),
    inset: (top: 1em)
  )

  // skip first page footer
  if loc.page() == 1 {
    return
  }

  let current-page = counter(page).at(loc).at(0)
  let total-pages = counter(page).final(loc).at(0)

  let semester-of-year = calc.rem(meta.semester, 10)
  // change this when you come from the 2100s
  let year-from = calc.round(meta.semester / 10) + 2000
  let year-to = year-from + 1

  stack(
    dir: ltr,
    [#meta.course-name - Học kỳ #semester-of-year năm học #year-from - #year-to],
    1fr,
    [Trang #current-page/#total-pages]
  )
})