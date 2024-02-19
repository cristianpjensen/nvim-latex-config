local M = {}

function M.pipe(fns)
    return function(...)
        for _, fn in ipairs(fns) do
            if not fn(...) then
                return false
            end
        end

        return true
    end
end

local MATH_NODES = {
    displayed_equation = true,
    inline_formula = true,
    math_environment = true,
}

local TEXT_NODES = {
    text_mode = true,
    label_definition = true,
    label_reference = true,
}

local function get_node_at_cursor()
    local pos = vim.api.nvim_win_get_cursor(0)
    -- Subtract one to account for 1-based row indexing in nvim_win_get_cursor
    local row, col = pos[1] - 1, pos[2]

    local parser = vim.treesitter.get_parser(0, "latex")
    if not parser then
        return
    end

    local root_tree = parser:parse({ row, col, row, col })[1]
    local root = root_tree and root_tree:root()
    if not root then
        return
    end

    return root:named_descendant_for_range(row, col, row, col)
end

function M.in_text(check_parent)
    local node = get_node_at_cursor()
    while node do
        if node:type() == "text_mode" then
            if check_parent then
                -- For \text{}
                local parent = node:parent()
                if parent and MATH_NODES[parent:type()] then
                    return false
                end
            end

            return true
        elseif MATH_NODES[node:type()] then
            return false
        end
        node = node:parent()
    end
    return true
end

function M.in_math()
    local node = get_node_at_cursor()
    while node do
        if TEXT_NODES[node:type()] then
            return false
        elseif MATH_NODES[node:type()] then
            return true
        end
        node = node:parent()
    end
    return false
end

local ls = require("luasnip")
local sn = ls.snippet_node
local i = ls.insert_node

function M.get_visual(args, parent)
    if #parent.snippet.env.LS_SELECT_RAW > 0 then
        return sn(nil, i(1, parent.snippet.env.LS_SELECT_RAW))
    else -- If LS_SELECT_RAW is empty, return a blank insert node
        return sn(nil, i(1))
    end
end

function M.no_backslash(line_to_cursor, matched_trigger)
    return not line_to_cursor:find("\\%a+$", -#line_to_cursor)
end

return M
