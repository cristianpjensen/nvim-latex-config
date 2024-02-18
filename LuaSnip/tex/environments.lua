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

local line_begin = require("luasnip.extras.expand_conditions").line_begin

return {
    s(
        { trig = "ali", dscr = "Align equations", snippetType = "autosnippet" },
        fmta(
            [[
                \begin{align*}
                    <>
                \end{align*}
            ]],
            { i(1) }
        ),
        { condition = line_begin }
    ),
    s(
        { trig = "beg", snippetType = "autosnippet" },
        fmta(
            [[
                \begin{<>}
                    <>
                \end{<>}
            ]],
            {
                i(1),
                i(2),
                rep(1),
            }
        ),
        { condition = line_begin }
    ),
    s(
        { trig = "fig", snippetType = "autosnippet" },
        fmta(
            [[
                \begin{figure}[<>]
                    \centering
                    \includegraphics[width=<>\textwidth]{<>}
                    \caption{<>}
                    \label{fig:<>}
                \end{figure}
            ]],
            {
                i(1, "htpb"),
                i(2),
                i(3),
                i(4, "Caption"),
                i(5, "label"),
            }
        ),
        { condition = line_begin }
    ),
    s(
        { trig = "table", snippetType = "autosnippet" },
        fmta(
            [[
                \begin{table}[<>]
                    \centering
                    \caption{<>}
                    \label{tab:<>}
                    \begin{tabular}{<>} \toprule
                        <> \\
                        \midrule
                        <>
                        \bottomrule \\
                    \end{tabular}
                \end{table}
            ]],
            {
                i(1, "htpb"),
                i(2, "Caption"),
                i(3, "label"),
                i(5, "lcr"),
                i(4),
                i(6),
            }
        ),
        { condition = line_begin }
    ),
    s(
        { trig = "enum", snippetType = "autosnippet" },
        fmta(
            [[
                \begin{enumerate}
                    \item <>
                \end{enumerate}
            ]],
            {
                i(1),
            }
        ),
        { condition = line_begin }
    ),
    s(
        { trig = "item", snippetType = "autosnippet" },
        fmta(
            [[
                \begin{itemize}
                    \item <>
                \end{itemize}
            ]],
            {
                i(1),
            }
        ),
        { condition = line_begin }
    ),
    s(
        { trig = "pac", snippetType = "autosnippet" },
        fmta([[\usepackage<>{<>}]], {
            i(1, "[options]"),
            i(2, "package"),
        }),
        { condition = line_begin }
    ),
}
