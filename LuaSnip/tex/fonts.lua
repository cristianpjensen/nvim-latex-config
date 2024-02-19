local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep

local helpers = require("luasnip_helpers")
local get_visual = helpers.get_visual

return {
    s({ trig = "tii", dscr = "Italics" }, fmta("\\textit{<>}", { d(1, get_visual) })),
    s({ trig = "tbf", dscr = "Bold" }, fmta("\\textbf{<>}", { d(1, get_visual) })),
    s({ trig = "ttt", dscr = "Typewriter" }, fmta("\\texttt{<>}", { d(1, get_visual) })),
    s({ trig = "tsf", dscr = "Sans-serif" }, fmta("\\textsf{<>}", { d(1, get_visual) })),
    s({ trig = "tsc", dscr = "Small caps" }, fmta("\\textsc{<>}", { d(1, get_visual) })),
}
