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

local get_visual = function(args, parent)
    if #parent.snippet.env.LS_SELECT_RAW > 0 then
        return sn(nil, i(1, parent.snippet.env.LS_SELECT_RAW))
    else -- If LS_SELECT_RAW is empty, return a blank insert node
        return sn(nil, i(1))
    end
end

local tex_utils = {}
tex_utils.in_env = function(name) -- generic environment detection
    local is_inside = vim.fn["vimtex#env#is_inside"](name)
    return (is_inside[1] > 0 and is_inside[2] > 0)
end
tex_utils.in_math = function()
    return tex_utils.in_env("equation") or tex_utils.in_env("align") or tex_utils.in_env("align*")
end
tex_utils.in_tikz = function()
    return tex_utils.in_env("tikzpicture")
end

return {
    s(
        { trig = "([^%a])mm", dscr = "Inline math", wordTrig = false, regTrig = true, snippetType = "autosnippet" },
        fmta("<>$<>$", {
            f(function(_, snip)
                return snip.captures[1]
            end),
            d(1, get_visual),
        })
    ),

    s(
        { trig = "([^%a])dm", dscr = "Display math", wordTrig = false, regTrig = true, snippetType = "autosnippet" },
        fmta(
            [[
                <>\[
                    <>
                \]

             ]],
            {
                f(function(_, snip)
                    return snip.captures[1]
                end),
                d(1, get_visual),
            }
        )
    ),

    -- Greek letters
    s({ trig = ";a", dscr = "Alpha", snippetType = "autosnippet" }, t("\\alpha"), { condition = tex_utils.in_math }),
    s({ trig = ";b", dscr = "Beta", snippetType = "autosnippet" }, t("\\beta"), { condition = tex_utils.in_math }),
    s({ trig = ";g", dscr = "Gamma", snippetType = "autosnippet" }, t("\\gamma"), { condition = tex_utils.in_math }),
    s({ trig = ";d", dscr = "Delta", snippetType = "autosnippet" }, t("\\delta"), { condition = tex_utils.in_math }),
    s(
        { trig = ";e", dscr = "Epsilon", snippetType = "autosnippet" },
        t("\\epsilon"),
        { condition = tex_utils.in_math }
    ),
    s({ trig = ";t", dscr = "Theta", snippetType = "autosnippet" }, t("\\theta"), { condition = tex_utils.in_math }),
    s({ trig = ";l", dscr = "Lambda", snippetType = "autosnippet" }, t("\\lambda"), { condition = tex_utils.in_math }),
    s({ trig = ";m", dscr = "Mu", snippetType = "autosnippet" }, t("\\mu"), { condition = tex_utils.in_math }),
    s({ trig = ";p", dscr = "Pi", snippetType = "autosnippet" }, t("\\pi"), { condition = tex_utils.in_math }),
    s({ trig = ";s", dscr = "Sigma", snippetType = "autosnippet" }, t("\\sigma"), { condition = tex_utils.in_math }),
    s({ trig = ";f", dscr = "Phi", snippetType = "autosnippet" }, t("\\phi"), { condition = tex_utils.in_math }),
    s({ trig = ";q", dscr = "Psi", snippetType = "autosnippet" }, t("\\psi"), { condition = tex_utils.in_math }),
    s({ trig = ";c", dscr = "Chi", snippetType = "autosnippet" }, t("\\chi"), { condition = tex_utils.in_math }),
    s({ trig = ";o", dscr = "Omega", snippetType = "autosnippet" }, t("\\omega"), { condition = tex_utils.in_math }),

    s({ trig = ";A", dscr = "Alpha capital", snippetType = "autosnippet" }, t("A"), { condition = tex_utils.in_math }),
    s({ trig = ";B", dscr = "Beta capital", snippetType = "autosnippet" }, t("B"), { condition = tex_utils.in_math }),
    s(
        { trig = ";G", dscr = "Gamma capital", snippetType = "autosnippet" },
        t("\\Gamma"),
        { condition = tex_utils.in_math }
    ),
    s(
        { trig = ";D", dscr = "Delta capital", snippetType = "autosnippet" },
        t("\\Delta"),
        { condition = tex_utils.in_math }
    ),
    s(
        { trig = ";E", dscr = "Epsilon capital", snippetType = "autosnippet" },
        t("E"),
        { condition = tex_utils.in_math }
    ),
    s(
        { trig = ";T", dscr = "Theta capital", snippetType = "autosnippet" },
        t("\\Theta"),
        { condition = tex_utils.in_math }
    ),
    s(
        { trig = ";L", dscr = "Lambda capital", snippetType = "autosnippet" },
        t("\\Lambda"),
        { condition = tex_utils.in_math }
    ),
    s({ trig = ";M", dscr = "Mu capital", snippetType = "autosnippet" }, t("M"), { condition = tex_utils.in_math }),
    s({ trig = ";P", dscr = "Pi capital", snippetType = "autosnippet" }, t("\\Pi"), { condition = tex_utils.in_math }),
    s(
        { trig = ";S", dscr = "Sigma capital", snippetType = "autosnippet" },
        t("\\Sigma"),
        { condition = tex_utils.in_math }
    ),
    s(
        { trig = ";F", dscr = "Phi capital", snippetType = "autosnippet" },
        t("\\Phi"),
        { condition = tex_utils.in_math }
    ),
    s(
        { trig = ";Q", dscr = "Psi capital", snippetType = "autosnippet" },
        t("\\Psi"),
        { condition = tex_utils.in_math }
    ),
    s({ trig = ";C", dscr = "Chi capital", snippetType = "autosnippet" }, t("X"), { condition = tex_utils.in_math }),
    s(
        { trig = ";O", dscr = "Omega capital", snippetType = "autosnippet" },
        t("\\Omega"),
        { condition = tex_utils.in_math }
    ),

    s(
        { trig = "([^%a])mm", dscr = "Inline math", wordTrig = false, regTrig = true, snippetType = "autosnippet" },
        fmta("<>$<>$", {
            f(function(_, snip)
                return snip.captures[1]
            end),
            d(1, get_visual),
        })
    ),
}
