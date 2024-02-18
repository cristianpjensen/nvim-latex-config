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

local tex_utils = require("snippets.tex_utils")

local in_math = tex_utils.in_math
local in_text = tex_utils.in_text

local get_visual = function(args, parent)
    if #parent.snippet.env.LS_SELECT_RAW > 0 then
        return sn(nil, i(1, parent.snippet.env.LS_SELECT_RAW))
    else -- If LS_SELECT_RAW is empty, return a blank insert node
        return sn(nil, i(1))
    end
end

return {
    s(
        { trig = "mk", name = "Inline math", wordTrig = false, regTrig = true, snippetType = "autosnippet" },
        fmta("$<>$", {
            d(1, get_visual),
        }),
        { condition = in_text }
    ),

    s(
        { trig = "dm", name = "Display math", wordTrig = false, regTrig = true, snippetType = "autosnippet" },
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

    -- Greek letters
    s({ trig = ";a", name = "Alpha", snippetType = "autosnippet" }, t("\\alpha"), { condition = in_math }),
    s({ trig = ";b", name = "Beta", snippetType = "autosnippet" }, t("\\beta"), { condition = in_math }),
    s({ trig = ";g", name = "Gamma", snippetType = "autosnippet" }, t("\\gamma"), { condition = in_math }),
    s({ trig = ";d", name = "Delta", snippetType = "autosnippet" }, t("\\delta"), { condition = in_math }),
    s({ trig = ";e", name = "Epsilon", snippetType = "autosnippet" }, t("\\epsilon"), { condition = in_math }),
    s({ trig = ";t", name = "Theta", snippetType = "autosnippet" }, t("\\theta"), { condition = in_math }),
    s({ trig = ";l", name = "Lambda", snippetType = "autosnippet" }, t("\\lambda"), { condition = in_math }),
    s({ trig = ";m", name = "Mu", snippetType = "autosnippet" }, t("\\mu"), { condition = in_math }),
    s({ trig = ";p", name = "Pi", snippetType = "autosnippet" }, t("\\pi"), { condition = in_math }),
    s({ trig = ";s", name = "Sigma", snippetType = "autosnippet" }, t("\\sigma"), { condition = in_math }),
    s({ trig = ";f", name = "Phi", snippetType = "autosnippet" }, t("\\phi"), { condition = in_math }),
    s({ trig = ";q", name = "Psi", snippetType = "autosnippet" }, t("\\psi"), { condition = in_math }),
    s({ trig = ";c", name = "Chi", snippetType = "autosnippet" }, t("\\chi"), { condition = in_math }),
    s({ trig = ";o", name = "Omega", snippetType = "autosnippet" }, t("\\omega"), { condition = in_math }),

    s({ trig = ";A", name = "Alpha capital", snippetType = "autosnippet" }, t("A"), { condition = in_math }),
    s({ trig = ";B", name = "Beta capital", snippetType = "autosnippet" }, t("B"), { condition = in_math }),
    s({ trig = ";G", name = "Gamma capital", snippetType = "autosnippet" }, t("\\Gamma"), { condition = in_math }),
    s({ trig = ";D", name = "Delta capital", snippetType = "autosnippet" }, t("\\Delta"), { condition = in_math }),
    s({ trig = ";E", name = "Epsilon capital", snippetType = "autosnippet" }, t("E"), { condition = in_math }),
    s({ trig = ";T", name = "Theta capital", snippetType = "autosnippet" }, t("\\Theta"), { condition = in_math }),
    s({ trig = ";L", name = "Lambda capital", snippetType = "autosnippet" }, t("\\Lambda"), { condition = in_math }),
    s({ trig = ";M", name = "Mu capital", snippetType = "autosnippet" }, t("M"), { condition = in_math }),
    s({ trig = ";P", name = "Pi capital", snippetType = "autosnippet" }, t("\\Pi"), { condition = in_math }),
    s({ trig = ";S", name = "Sigma capital", snippetType = "autosnippet" }, t("\\Sigma"), { condition = in_math }),
    s({ trig = ";F", name = "Phi capital", snippetType = "autosnippet" }, t("\\Phi"), { condition = in_math }),
    s({ trig = ";Q", name = "Psi capital", snippetType = "autosnippet" }, t("\\Psi"), { condition = in_math }),
    s({ trig = ";C", name = "Chi capital", snippetType = "autosnippet" }, t("X"), { condition = in_math }),
    s({ trig = ";O", name = "Omega capital", snippetType = "autosnippet" }, t("\\Omega"), { condition = in_math }),
}
