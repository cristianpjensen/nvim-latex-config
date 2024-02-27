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
local pipe = helpers.pipe
local no_backslash = helpers.no_backslash
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
    s({ trig = ";a", name = "Alpha", wordTrig = true, snippetType = "autosnippet" }, t("\\alpha"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = ";b", name = "Beta", wordTrig = true, snippetType = "autosnippet" }, t("\\beta"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = ";g", name = "Gamma", wordTrig = true, snippetType = "autosnippet" }, t("\\gamma"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = ";d", name = "Delta", wordTrig = true, snippetType = "autosnippet" }, t("\\delta"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = ";e", name = "Epsilon", wordTrig = true, snippetType = "autosnippet" }, t("\\epsilon"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = ";t", name = "Theta", wordTrig = true, snippetType = "autosnippet" }, t("\\theta"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = ";l", name = "Lambda", wordTrig = true, snippetType = "autosnippet" }, t("\\lambda"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = ";m", name = "Mu", wordTrig = true, snippetType = "autosnippet" }, t("\\mu"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = ";p", name = "Pi", wordTrig = true, snippetType = "autosnippet" }, t("\\pi"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = ";s", name = "Sigma", wordTrig = true, snippetType = "autosnippet" }, t("\\sigma"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = ";f", name = "Phi", wordTrig = true, snippetType = "autosnippet" }, t("\\phi"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = ";q", name = "Psi", wordTrig = true, snippetType = "autosnippet" }, t("\\psi"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = ";c", name = "Chi", wordTrig = true, snippetType = "autosnippet" }, t("\\chi"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = ";o", name = "Omega", wordTrig = true, snippetType = "autosnippet" }, t("\\omega"), { condition = pipe({ in_math, no_backslash }) }),

    s({ trig = ";A", name = "Alpha capital", wordTrig = true, snippetType = "autosnippet" }, t("A"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = ";B", name = "Beta capital", wordTrig = true, snippetType = "autosnippet" }, t("B"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = ";G", name = "Gamma capital", wordTrig = true, snippetType = "autosnippet" }, t("\\Gamma"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = ";D", name = "Delta capital", wordTrig = true, snippetType = "autosnippet" }, t("\\Delta"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = ";E", name = "Epsilon capital", wordTrig = true, snippetType = "autosnippet" }, t("E"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = ";T", name = "Theta capital", wordTrig = true, snippetType = "autosnippet" }, t("\\Theta"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = ";L", name = "Lambda capital", wordTrig = true, snippetType = "autosnippet" }, t("\\Lambda"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = ";M", name = "Mu capital", wordTrig = true, snippetType = "autosnippet" }, t("M"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = ";P", name = "Pi capital", wordTrig = true, snippetType = "autosnippet" }, t("\\Pi"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = ";S", name = "Sigma capital", wordTrig = true, snippetType = "autosnippet" }, t("\\Sigma"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = ";F", name = "Phi capital", wordTrig = true, snippetType = "autosnippet" }, t("\\Phi"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = ";Q", name = "Psi capital", wordTrig = true, snippetType = "autosnippet" }, t("\\Psi"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = ";C", name = "Chi capital", wordTrig = true, snippetType = "autosnippet" }, t("X"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = ";O", name = "Omega capital", wordTrig = true, snippetType = "autosnippet" }, t("\\Omega"), { condition = pipe({ in_math, no_backslash }) }),

    -- Mathbb
    s({ trig = "AA", name = "A mathbb", wordTrig = true, snippetType = "autosnippet" }, t("\\mathbb{A}"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = "BB", name = "B mathbb", wordTrig = true, snippetType = "autosnippet" }, t("\\mathbb{B}"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = "CC", name = "C mathbb", wordTrig = true, snippetType = "autosnippet" }, t("\\mathbb{C}"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = "DD", name = "D mathbb", wordTrig = true, snippetType = "autosnippet" }, t("\\mathbb{D}"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = "EE", name = "E mathbb", wordTrig = true, snippetType = "autosnippet" }, t("\\E"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = "FF", name = "F mathbb", wordTrig = true, snippetType = "autosnippet" }, t("\\mathbb{F}"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = "GG", name = "G mathbb", wordTrig = true, snippetType = "autosnippet" }, t("\\mathbb{G}"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = "HH", name = "H mathbb", wordTrig = true, snippetType = "autosnippet" }, t("\\mathbb{H}"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = "II", name = "I mathbb", wordTrig = true, snippetType = "autosnippet" }, t("\\mathbb{I}"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = "JJ", name = "J mathbb", wordTrig = true, snippetType = "autosnippet" }, t("\\mathbb{J}"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = "KK", name = "K mathbb", wordTrig = true, snippetType = "autosnippet" }, t("\\mathbb{K}"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = "LL", name = "L mathbb", wordTrig = true, snippetType = "autosnippet" }, t("\\mathbb{L}"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = "MM", name = "M mathbb", wordTrig = true, snippetType = "autosnippet" }, t("\\mathbb{M}"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = "NN", name = "N mathbb", wordTrig = true, snippetType = "autosnippet" }, t("\\mathbb{N}"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = "OO", name = "O mathbb", wordTrig = true, snippetType = "autosnippet" }, t("\\mathbb{O}"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = "PP", name = "P mathbb", wordTrig = true, snippetType = "autosnippet" }, t("\\mathbb{P}"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = "QQ", name = "Q mathbb", wordTrig = true, snippetType = "autosnippet" }, t("\\mathbb{Q}"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = "RR", name = "R mathbb", wordTrig = true, snippetType = "autosnippet" }, t("\\R"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = "SS", name = "S mathbb", wordTrig = true, snippetType = "autosnippet" }, t("\\mathbb{S}"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = "TT", name = "T mathbb", wordTrig = true, snippetType = "autosnippet" }, t("\\mathbb{T}"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = "UU", name = "U mathbb", wordTrig = true, snippetType = "autosnippet" }, t("\\mathbb{U}"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = "VV", name = "V mathbb", wordTrig = true, snippetType = "autosnippet" }, t("\\mathbb{V}"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = "WW", name = "W mathbb", wordTrig = true, snippetType = "autosnippet" }, t("\\mathbb{W}"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = "XX", name = "X mathbb", wordTrig = true, snippetType = "autosnippet" }, t("\\mathbb{X}"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = "YY", name = "Y mathbb", wordTrig = true, snippetType = "autosnippet" }, t("\\mathbb{Y}"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = "ZZ", name = "Z mathbb", wordTrig = true, snippetType = "autosnippet" }, t("\\mathbb{Z}"), { condition = pipe({ in_math, no_backslash }) }),

    -- Mathcal
    s({ trig = "aa", name = "A mathcal", wordTrig = true, snippetType = "autosnippet" }, t("\\mathcal{A}"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = "bb", name = "B mathcal", wordTrig = true, snippetType = "autosnippet" }, t("\\mathcal{B}"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = "cc", name = "C mathcal", wordTrig = true, snippetType = "autosnippet" }, t("\\mathcal{C}"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = "dd", name = "D mathcal", wordTrig = true, snippetType = "autosnippet" }, t("\\mathcal{D}"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = "ee", name = "E mathcal", wordTrig = true, snippetType = "autosnippet" }, t("\\mathcal{E}"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = "ff", name = "F mathcal", wordTrig = true, snippetType = "autosnippet" }, t("\\mathcal{F}"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = "gg", name = "G mathcal", wordTrig = true, snippetType = "autosnippet" }, t("\\mathcal{G}"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = "hh", name = "H mathcal", wordTrig = true, snippetType = "autosnippet" }, t("\\mathcal{H}"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = "ii", name = "I mathcal", wordTrig = true, snippetType = "autosnippet" }, t("\\mathcal{I}"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = "jj", name = "J mathcal", wordTrig = true, snippetType = "autosnippet" }, t("\\mathcal{J}"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = "kk", name = "K mathcal", wordTrig = true, snippetType = "autosnippet" }, t("\\mathcal{K}"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = "ll", name = "L mathcal", wordTrig = true, snippetType = "autosnippet" }, t("\\mathcal{L}"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = "mm", name = "M mathcal", wordTrig = true, snippetType = "autosnippet" }, t("\\mathcal{M}"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = "nn", name = "N mathcal", wordTrig = true, snippetType = "autosnippet" }, t("\\mathcal{N}"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = "oo", name = "O mathcal", wordTrig = true, snippetType = "autosnippet" }, t("\\mathcal{O}"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = "pp", name = "P mathcal", wordTrig = true, snippetType = "autosnippet" }, t("\\mathcal{P}"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = "qq", name = "Q mathcal", wordTrig = true, snippetType = "autosnippet" }, t("\\mathcal{Q}"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = "rr", name = "R mathcal", wordTrig = true, snippetType = "autosnippet" }, t("\\mathcal{R}"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = "ss", name = "S mathcal", wordTrig = true, snippetType = "autosnippet" }, t("\\mathcal{S}"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = "tt", name = "T mathcal", wordTrig = true, snippetType = "autosnippet" }, t("\\mathcal{T}"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = "uu", name = "U mathcal", wordTrig = true, snippetType = "autosnippet" }, t("\\mathcal{U}"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = "vv", name = "V mathcal", wordTrig = true, snippetType = "autosnippet" }, t("\\mathcal{V}"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = "ww", name = "W mathcal", wordTrig = true, snippetType = "autosnippet" }, t("\\mathcal{W}"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = "xx", name = "X mathcal", wordTrig = true, snippetType = "autosnippet" }, t("\\mathcal{X}"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = "yy", name = "Y mathcal", wordTrig = true, snippetType = "autosnippet" }, t("\\mathcal{Y}"), { condition = pipe({ in_math, no_backslash }) }),
    s({ trig = "zz", name = "Z mathcal", wordTrig = true, snippetType = "autosnippet" }, t("\\mathcal{Z}"), { condition = pipe({ in_math, no_backslash }) }),
    -- stylua: ignore end

    -- Vector
    s(
        { trig = "([%l]),[.]", name = "Vector", wordTrig = true, regTrig = true, snippetType = "autosnippet" },
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
        { trig = "([%u])[.],", name = "Matrix", wordTrig = true, regTrig = true, snippetType = "autosnippet" },
        fmta(
            "\\mat{<>}",
            f(function(_, snip)
                return snip.captures[1]
            end)
        ),
        { condition = in_math }
    ),

    s(
        { trig = "//", name = "Fraction", snippetType = "autosnippet" },
        fmta("\\frac{<>}{<>}", {
            d(1, get_visual),
            i(2),
        }),
        { condition = in_math }
    ),

    s(
        { trig = "n//", name = "Nice fraction", snippetType = "autosnippet" },
        fmta("\\nicefrac{<>}{<>}", {
            d(1, get_visual),
            i(2),
        }),
        { condition = in_math }
    ),

    s(
        { trig = ":=", name = "Equality by definition", snippetType = "autosnippet" },
        t("\\doteq"),
        { condition = in_math }
    ),

    s({ trig = "...", name = "Low dots", snippetType = "autosnippet" }, t("\\ldots"), { condition = in_math }),

    s(
        { trig = "!=", name = "Not equal", wordTrig = false, snippetType = "autosnippet" },
        t("\\neq"),
        { condition = in_math }
    ),
    s(
        { trig = ">=", name = "Greater or equal", wordTrig = false, snippetType = "autosnippet" },
        t("\\geq"),
        { condition = in_math }
    ),
    s(
        { trig = "<=", name = "Less or equal", wordTrig = false, snippetType = "autosnippet" },
        t("\\leq"),
        { condition = in_math }
    ),
    s({ trig = "~~", name = "~", wordTrig = false, snippetType = "autosnippet" }, t("\\sim"), { condition = in_math }),
    s(
        { trig = "==", name = "In align env", wordTrig = false, snippetType = "autosnippet" },
        fmta("&= <> \\\\", i(1)),
        { condition = in_math }
    ),

    s(
        { trig = "inf", name = "Infinity", wordTrig = false, snippetType = "autosnippet" },
        t("\\infty"),
        { condition = pipe({ in_math, no_backslash }) }
    ),
    s(
        { trig = "inn", name = "In set", wordTrig = false, snippetType = "autosnippet" },
        t("\\in"),
        { condition = pipe({ in_math, no_backslash }) }
    ),

    s(
        { trig = "hat", name = "Hat", wordTrig = false, snippetType = "autosnippet" },
        fmta("\\hat{<>}", d(1, get_visual)),
        { condition = pipe({ in_math, no_backslash }) }
    ),
    s(
        { trig = "bar", name = "Bar", wordTrig = false, snippetType = "autosnippet" },
        fmta("\\overline{<>}", d(1, get_visual)),
        { condition = pipe({ in_math, no_backslash }) }
    ),
    s(
        { trig = "sq", name = "Square root", wordTrig = false, snippetType = "autosnippet" },
        fmta("\\sqrt{<>}", d(1, get_visual)),
        { condition = pipe({ in_math, no_backslash }) }
    ),
    s(
        { trig = "tr", name = "Transpose", wordTrig = false, snippetType = "autosnippet" },
        fmta("\\transpose{<>}", d(1, get_visual)),
        { condition = pipe({ in_math, no_backslash }) }
    ),

    s(
        { trig = "set", name = "Set" },
        fmta("\\{ <> \\}", d(1, get_visual)),
        { condition = pipe({ in_math, no_backslash }) }
    ),

    -- Matrices
    s(
        { trig = "bmat", name = "Brackets matrix" },
        fmta("\\begin{bmatrix} <> \\end{bmatrix}", i(1)),
        { condition = in_math }
    ),

    s(
        { trig = "pmat", name = "Parentheses matrix" },
        fmta("\\begin{pmatrix} <> \\end{pmatrix}", i(1)),
        { condition = in_math }
    ),

    -- Iterators
    s(
        { trig = "sum", name = "Sum" },
        fmta("\\sum_{<>}^{<>} <>", { i(1, "n=1"), i(2, "N"), i(3) }),
        { condition = pipe({ in_math, no_backslash }) }
    ),
    s(
        { trig = "prod", name = "Product" },
        fmta("\\prod_{<>}^{<>} <>", { i(1, "n=1"), i(2, "N"), i(3) }),
        { condition = pipe({ in_math, no_backslash }) }
    ),

    -- Limit
    s(
        { trig = "lim", name = "Limit" },
        fmta("\\lim_{<> \\to <>} <>", { i(1, "n"), i(2, "\\infty"), i(3) }),
        { condition = pipe({ in_math, no_backslash }) }
    ),

    s(
        { trig = "seq", name = "Sequence" },
        fmta("<>, \\ldots, <>", { i(1, "x_1"), i(2, "x_N") }),
        { condition = in_math }
    ),
}
