local telescope = require('telescope')
local builtin = require('telescope.builtin')
local ts_select_dir_for_grep = function(prompt_bufnr)
  local action_state = require("telescope.actions.state")
  local fb = require("telescope").extensions.file_browser
  local live_grep = require("telescope.builtin").live_grep
  local current_line = action_state.get_current_line()

  fb.file_browser({
    files = false,
    depth = false,
    attach_mappings = function(prompt_bufnr)
      require("telescope.actions").select_default:replace(function()
        local entry_path = action_state.get_selected_entry().Path
        local dir = entry_path:is_dir() and entry_path or entry_path:parent()
        local relative = dir:make_relative(vim.fn.getcwd())
        local absolute = dir:absolute()

        live_grep({
          results_title = relative .. "/",
          cwd = absolute,
          default_text = current_line,
        })
      end)

      return true
    end,
  })
end
vim.keymap.set('n', '<leader>pf', "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({previewer = false}))<cr>", {})
vim.keymap.set('n', '<leader>ps', builtin.live_grep, {})
vim.keymap.set('n', '<leader>gb', builtin.git_branches, {}) 
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
telescope.setup{
  pickers = {
      live_grep = {
        mappings = {
          i = {
            ["<C-s>"] = ts_select_dir_for_grep,
          },
          n = {
            ["<C-s>"] = ts_select_dir_for_grep,
          },
        },
    },
  },
}
