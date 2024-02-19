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
        { trig = "mk", name = "Inline math", wordTrig = true, snippetType = "autosnippet" },
        fmta("$<>$", {
            d(1, get_visual),
        }),
        { condition = in_text }
    ),

    s(
        { trig = "dm", name = "Display math", wordTrig = true, snippetType = "autosnippet" },
        fmta(
            [[
                \[
                    <>.
                \]

             ]],
            {
                d(1, get_visual),
            }
        ),
        { condition = in_text }
    ),

    -- stylua: ignore start
    -- Greek letters
    s({ trig = ";a", name = "Alpha", wordTrig = true, snippetType = "autosnippet" }, t("\\alpha"), { condition = in_math }),
    s({ trig = ";b", name = "Beta", wordTrig = true, snippetType = "autosnippet" }, t("\\beta"), { condition = in_math }),
    s({ trig = ";g", name = "Gamma", wordTrig = true, snippetType = "autosnippet" }, t("\\gamma"), { condition = in_math }),
    s({ trig = ";d", name = "Delta", wordTrig = true, snippetType = "autosnippet" }, t("\\delta"), { condition = in_math }),
    s({ trig = ";e", name = "Epsilon", wordTrig = true, snippetType = "autosnippet" }, t("\\epsilon"), { condition = in_math }),
    s({ trig = ";t", name = "Theta", wordTrig = true, snippetType = "autosnippet" }, t("\\theta"), { condition = in_math }),
    s({ trig = ";l", name = "Lambda", wordTrig = true, snippetType = "autosnippet" }, t("\\lambda"), { condition = in_math }),
    s({ trig = ";m", name = "Mu", wordTrig = true, snippetType = "autosnippet" }, t("\\mu"), { condition = in_math }),
    s({ trig = ";p", name = "Pi", wordTrig = true, snippetType = "autosnippet" }, t("\\pi"), { condition = in_math }),
    s({ trig = ";s", name = "Sigma", wordTrig = true, snippetType = "autosnippet" }, t("\\sigma"), { condition = in_math }),
    s({ trig = ";f", name = "Phi", wordTrig = true, snippetType = "autosnippet" }, t("\\phi"), { condition = in_math }),
    s({ trig = ";q", name = "Psi", wordTrig = true, snippetType = "autosnippet" }, t("\\psi"), { condition = in_math }),
    s({ trig = ";c", name = "Chi", wordTrig = true, snippetType = "autosnippet" }, t("\\chi"), { condition = in_math }),
    s({ trig = ";o", name = "Omega", wordTrig = true, snippetType = "autosnippet" }, t("\\omega"), { condition = in_math }),

    s({ trig = ";A", name = "Alpha capital", wordTrig = true, snippetType = "autosnippet" }, t("A"), { condition = in_math }),
    s({ trig = ";B", name = "Beta capital", wordTrig = true, snippetType = "autosnippet" }, t("B"), { condition = in_math }),
    s({ trig = ";G", name = "Gamma capital", wordTrig = true, snippetType = "autosnippet" }, t("\\Gamma"), { condition = in_math }),
    s({ trig = ";D", name = "Delta capital", wordTrig = true, snippetType = "autosnippet" }, t("\\Delta"), { condition = in_math }),
    s({ trig = ";E", name = "Epsilon capital", wordTrig = true, snippetType = "autosnippet" }, t("E"), { condition = in_math }),
    s({ trig = ";T", name = "Theta capital", wordTrig = true, snippetType = "autosnippet" }, t("\\Theta"), { condition = in_math }),
    s({ trig = ";L", name = "Lambda capital", wordTrig = true, snippetType = "autosnippet" }, t("\\Lambda"), { condition = in_math }),
    s({ trig = ";M", name = "Mu capital", wordTrig = true, snippetType = "autosnippet" }, t("M"), { condition = in_math }),
    s({ trig = ";P", name = "Pi capital", wordTrig = true, snippetType = "autosnippet" }, t("\\Pi"), { condition = in_math }),
    s({ trig = ";S", name = "Sigma capital", wordTrig = true, snippetType = "autosnippet" }, t("\\Sigma"), { condition = in_math }),
    s({ trig = ";F", name = "Phi capital", wordTrig = true, snippetType = "autosnippet" }, t("\\Phi"), { condition = in_math }),
    s({ trig = ";Q", name = "Psi capital", wordTrig = true, snippetType = "autosnippet" }, t("\\Psi"), { condition = in_math }),
    s({ trig = ";C", name = "Chi capital", wordTrig = true, snippetType = "autosnippet" }, t("X"), { condition = in_math }),
    s({ trig = ";O", name = "Omega capital", wordTrig = true, snippetType = "autosnippet" }, t("\\Omega"), { condition = in_math }),

    -- Mathbb
    s({ trig = "AA", name = "A mathbb", wordTrig = true, snippetType = "autosnippet" }, t("\\mathbb{A}"), { condition = in_math }),
    s({ trig = "BB", name = "B mathbb", wordTrig = true, snippetType = "autosnippet" }, t("\\mathbb{B}"), { condition = in_math }),
    s({ trig = "CC", name = "C mathbb", wordTrig = true, snippetType = "autosnippet" }, t("\\mathbb{C}"), { condition = in_math }),
    s({ trig = "DD", name = "D mathbb", wordTrig = true, snippetType = "autosnippet" }, t("\\mathbb{D}"), { condition = in_math }),
    s({ trig = "EE", name = "E mathbb", wordTrig = true, snippetType = "autosnippet" }, t("\\E"), { condition = in_math }),
    s({ trig = "FF", name = "F mathbb", wordTrig = true, snippetType = "autosnippet" }, t("\\mathbb{F}"), { condition = in_math }),
    s({ trig = "GG", name = "G mathbb", wordTrig = true, snippetType = "autosnippet" }, t("\\mathbb{G}"), { condition = in_math }),
    s({ trig = "HH", name = "H mathbb", wordTrig = true, snippetType = "autosnippet" }, t("\\mathbb{H}"), { condition = in_math }),
    s({ trig = "II", name = "I mathbb", wordTrig = true, snippetType = "autosnippet" }, t("\\mathbb{I}"), { condition = in_math }),
    s({ trig = "JJ", name = "J mathbb", wordTrig = true, snippetType = "autosnippet" }, t("\\mathbb{J}"), { condition = in_math }),
    s({ trig = "KK", name = "K mathbb", wordTrig = true, snippetType = "autosnippet" }, t("\\mathbb{K}"), { condition = in_math }),
    s({ trig = "LL", name = "L mathbb", wordTrig = true, snippetType = "autosnippet" }, t("\\mathbb{L}"), { condition = in_math }),
    s({ trig = "MM", name = "M mathbb", wordTrig = true, snippetType = "autosnippet" }, t("\\mathbb{M}"), { condition = in_math }),
    s({ trig = "NN", name = "N mathbb", wordTrig = true, snippetType = "autosnippet" }, t("\\mathbb{N}"), { condition = in_math }),
    s({ trig = "OO", name = "O mathbb", wordTrig = true, snippetType = "autosnippet" }, t("\\mathbb{O}"), { condition = in_math }),
    s({ trig = "PP", name = "P mathbb", wordTrig = true, snippetType = "autosnippet" }, t("\\mathbb{P}"), { condition = in_math }),
    s({ trig = "QQ", name = "Q mathbb", wordTrig = true, snippetType = "autosnippet" }, t("\\mathbb{Q}"), { condition = in_math }),
    s({ trig = "RR", name = "R mathbb", wordTrig = true, snippetType = "autosnippet" }, t("\\R"), { condition = in_math }),
    s({ trig = "SS", name = "S mathbb", wordTrig = true, snippetType = "autosnippet" }, t("\\mathbb{S}"), { condition = in_math }),
    s({ trig = "TT", name = "T mathbb", wordTrig = true, snippetType = "autosnippet" }, t("\\mathbb{T}"), { condition = in_math }),
    s({ trig = "UU", name = "U mathbb", wordTrig = true, snippetType = "autosnippet" }, t("\\mathbb{U}"), { condition = in_math }),
    s({ trig = "VV", name = "V mathbb", wordTrig = true, snippetType = "autosnippet" }, t("\\mathbb{V}"), { condition = in_math }),
    s({ trig = "WW", name = "W mathbb", wordTrig = true, snippetType = "autosnippet" }, t("\\mathbb{W}"), { condition = in_math }),
    s({ trig = "XX", name = "X mathbb", wordTrig = true, snippetType = "autosnippet" }, t("\\mathbb{X}"), { condition = in_math }),
    s({ trig = "YY", name = "Y mathbb", wordTrig = true, snippetType = "autosnippet" }, t("\\mathbb{Y}"), { condition = in_math }),
    s({ trig = "ZZ", name = "Z mathbb", wordTrig = true, snippetType = "autosnippet" }, t("\\mathbb{Z}"), { condition = in_math }),

    -- Mathcal
    s({ trig = "aa", name = "A mathcal", wordTrig = true, snippetType = "autosnippet" }, t("\\mathcal{A}"), { condition = in_math }),
    s({ trig = "bb", name = "B mathcal", wordTrig = true, snippetType = "autosnippet" }, t("\\mathcal{B}"), { condition = in_math }),
    s({ trig = "cc", name = "C mathcal", wordTrig = true, snippetType = "autosnippet" }, t("\\mathcal{C}"), { condition = in_math }),
    s({ trig = "dd", name = "D mathcal", wordTrig = true, snippetType = "autosnippet" }, t("\\mathcal{D}"), { condition = in_math }),
    s({ trig = "ee", name = "E mathcal", wordTrig = true, snippetType = "autosnippet" }, t("\\mathcal{E}"), { condition = in_math }),
    s({ trig = "ff", name = "F mathcal", wordTrig = true, snippetType = "autosnippet" }, t("\\mathcal{F}"), { condition = in_math }),
    s({ trig = "gg", name = "G mathcal", wordTrig = true, snippetType = "autosnippet" }, t("\\mathcal{G}"), { condition = in_math }),
    s({ trig = "hh", name = "H mathcal", wordTrig = true, snippetType = "autosnippet" }, t("\\mathcal{H}"), { condition = in_math }),
    s({ trig = "ii", name = "I mathcal", wordTrig = true, snippetType = "autosnippet" }, t("\\mathcal{I}"), { condition = in_math }),
    s({ trig = "jj", name = "J mathcal", wordTrig = true, snippetType = "autosnippet" }, t("\\mathcal{J}"), { condition = in_math }),
    s({ trig = "kk", name = "K mathcal", wordTrig = true, snippetType = "autosnippet" }, t("\\mathcal{K}"), { condition = in_math }),
    s({ trig = "ll", name = "L mathcal", wordTrig = true, snippetType = "autosnippet" }, t("\\mathcal{L}"), { condition = in_math }),
    s({ trig = "mm", name = "M mathcal", wordTrig = true, snippetType = "autosnippet" }, t("\\mathcal{M}"), { condition = in_math }),
    s({ trig = "nn", name = "N mathcal", wordTrig = true, snippetType = "autosnippet" }, t("\\mathcal{N}"), { condition = in_math }),
    s({ trig = "oo", name = "O mathcal", wordTrig = true, snippetType = "autosnippet" }, t("\\mathcal{O}"), { condition = in_math }),
    s({ trig = "pp", name = "P mathcal", wordTrig = true, snippetType = "autosnippet" }, t("\\mathcal{P}"), { condition = in_math }),
    s({ trig = "qq", name = "Q mathcal", wordTrig = true, snippetType = "autosnippet" }, t("\\mathcal{Q}"), { condition = in_math }),
    s({ trig = "rr", name = "R mathcal", wordTrig = true, snippetType = "autosnippet" }, t("\\mathcal{R}"), { condition = in_math }),
    s({ trig = "ss", name = "S mathcal", wordTrig = true, snippetType = "autosnippet" }, t("\\mathcal{S}"), { condition = in_math }),
    s({ trig = "tt", name = "T mathcal", wordTrig = true, snippetType = "autosnippet" }, t("\\mathcal{T}"), { condition = in_math }),
    s({ trig = "uu", name = "U mathcal", wordTrig = true, snippetType = "autosnippet" }, t("\\mathcal{U}"), { condition = in_math }),
    s({ trig = "vv", name = "V mathcal", wordTrig = true, snippetType = "autosnippet" }, t("\\mathcal{V}"), { condition = in_math }),
    s({ trig = "ww", name = "W mathcal", wordTrig = true, snippetType = "autosnippet" }, t("\\mathcal{W}"), { condition = in_math }),
    s({ trig = "xx", name = "X mathcal", wordTrig = true, snippetType = "autosnippet" }, t("\\mathcal{X}"), { condition = in_math }),
    s({ trig = "yy", name = "Y mathcal", wordTrig = true, snippetType = "autosnippet" }, t("\\mathcal{Y}"), { condition = in_math }),
    s({ trig = "zz", name = "Z mathcal", wordTrig = true, snippetType = "autosnippet" }, t("\\mathcal{Z}"), { condition = in_math }),
    -- stylua: ignore end

    -- Vector
    s(
        { trig = "([%l]),.", name = "Vector", wordTrig = true, regTrig = true, snippetType = "autosnippet" },
        fmta(
            "\\vec{<>}",
            f(function(_, snip)
                return snip.captures[1]
            end)
        ),
        { condition = in_math }
    ),

    -- Matrix
    s(
        { trig = "([%u]).,", name = "Matrix", wordTrig = true, regTrig = true, snippetType = "autosnippet" },
        fmta(
            "\\mat{<>}",
            f(function(_, snip)
                return snip.captures[1]
            end)
        ),
        { condition = in_math }
    ),

    -- Equality by definition
    s(
        { trig = ":=", name = "Equality by definition", snippetType = "autosnippet" },
        t("\\doteq"),
        { condition = in_math }
    ),

    s({ trig = "...", name = "Low dots", snippetType = "autosnippet" }, t("\\ldots"), { condition = in_math }),
}
