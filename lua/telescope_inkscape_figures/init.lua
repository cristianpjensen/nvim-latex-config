local pickers = require("telescope.pickers")
local finders = require("telescope.finders")
local conf = require("telescope.config").values
local actions = require("telescope.actions")
local action_state = require("telescope.actions.state")

local M = {}

function list_figures()
    local i, t, popen = 0, {}, io.popen
    local pfile = popen([[inkscape-figures-manager list]])
    for filename in pfile:lines() do
        i = i + 1
        t[i] = filename
    end
    pfile:close()
    return t
end

function find_svg_figures()
    return finders.new_table({
        results = list_figures(),
    })
end

function M.inkscape_figures()
    pickers
        .new(require("telescope.themes").get_dropdown({}), {
            prompt_title = "Figures",
            finder = find_svg_figures(),
            sorter = conf.file_sorter(),
            attach_mappings = function(prompt_bufnr, map)
                actions.select_default:replace(function()
                    actions.close(prompt_bufnr)
                    local selection = action_state.get_selected_entry()
                    vim.fn.system({ "inkscape-figures-manager", "edit", selection[1] })
                end)
                return true
            end,
        })
        :find()
end

return M
