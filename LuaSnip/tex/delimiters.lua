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
local in_math = helpers.in_math
local in_text = helpers.in_text
local get_visual = helpers.get_visual

return {
    s(
        { trig = "lrp", name = "Parentheses", snippetType = "autosnippet" },
        fmta("\\lft( <> \\rgt)", {
            d(1, get_visual),
        }),
        { condition = in_math }
    ),

    s(
        { trig = "lrb", name = "Curly braces", snippetType = "autosnippet" },
        fmta("\\lft\\{ <> \\rgt\\}", {
            d(1, get_visual),
        }),
        { condition = in_math }
    ),

    s(
        { trig = "lrB", name = "Brackets", snippetType = "autosnippet" },
        fmta("\\lft[ <> \\rgt]", {
            d(1, get_visual),
        }),
        { condition = in_math }
    ),

    s(
        { trig = "lra", name = "Brackets", snippetType = "autosnippet" },
        fmta("\\lft\\langle <> \\rgt\\rangle", {
            d(1, get_visual),
        }),
        { condition = in_math }
    ),

    s(
        { trig = "lrm", name = "Brackets", snippetType = "autosnippet" },
        fmta("\\lft| <> \\rgt|", {
            d(1, get_visual),
        }),
        { condition = in_math }
    ),
}
