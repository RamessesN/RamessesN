
#import "./Chinese-Resume-in-Typst/template.typ": *
#let submodule-name = "Chinese-Resume-in-Typst"

#let DT(y, m) = {
  datetime(year: y, month: m, day: 1).display("[year] 年 [month] 月")
}

// 主题颜色
#let theme-color = rgb("#26267d")
#let icon = icon.with(fill: theme-color)

// 设置图标, 来源: https://fontawesome.com/icons/

#let fa-award = icon("icons/fa-award.svg")
#let fa-building-columns = icon("icons/fa-building-columns.svg")
#let fa-code = icon("icons/fa-code.svg")
#let fa-envelope = icon("icons/fa-envelope.svg")
#let fa-github = icon("icons/fa-github.svg")
#let fa-graduation-cap = icon("icons/fa-graduation-cap.svg")
#let fa-linux = icon("icons/fa-linux.svg")
#let fa-phone = icon("icons/fa-phone.svg")
#let fa-windows = icon("icons/fa-windows.svg")
#let fa-wrench = icon("icons/fa-wrench.svg")
#let fa-work = icon("icons/fa-work.svg")
#let fa-research = icon("icons/fa-research.svg")

#let my-icon(path) = box(
  // baseline: 0.125em,
  height: 0.7em,
  width: 1.25em,
  align(
    center + horizon,
    image(path, height: 1em),
  )
)

#let gh-pre = "https://github.com/"
#let repo(id) = link(gh-pre + id, id)


#let gh-id = state("gh-id", "")
#let _pr-or-issue-of(pull-issue, pr-issue, num) = {
  let snum = str(num)
  context link(gh-pre+gh-id.get()+pull-issue+snum, pr-issue + " " + snum)
}
#let issue = _pr-or-issue-of.with("/issues/", "issue")
#let PR = _pr-or-issue-of.with("/pull/", "PR")

#let item-under-gh(name, git-id, classification,
  dt,
  techs,
  contents,
  append-git-id: true,
) = [
  #context gh-id.update(git-id)
  #let git-url = gh-pre + git-id
  #item(
    link(
      git-url,
      [*#name* #if append-git-id {[#linebreak() (#link(git-url, git-id))]} else {}],
    ),
    strong(classification),
    date(dt),
  )
  #tech(techs)
  #contents
]

