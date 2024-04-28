---@type MappingsTable
local M = {}

M.general = {
  n = {
    -- [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>p"] = { "<cmd> %y+ <CR>", "copy whole file" },
    ["<leader>w"] = { "<cmd> w <CR>", "save file" },
  },
}

-- more keybinds!
M.user = {
  n = {
    ["<leader>db"] = { "gg0vG$d", "delete the buffer" },
    ["<leader>s"] = { ":Telescope grep_string<CR>", "grep string" },
    ["<leader>cd"] = { ":cd %:p:h<CR>:pwd<CR>", "enter to the location of current file" },
    ["<leader>q"] = { ":q<CR>", "quit nvim" },
    -- telescope
    ["<leader>te"] = { ":Telescope <CR>", "spawn telescope" },
    ["<leader>tl"] = { ":Telescope live_grep<CR>", "spawn telescope with living grep" },

    -- truezen
    ["<leader>ta"] = { ":TZAtaraxis <CR>", "enter ataraxis mode of truezen" },
    ["<leader>tm"] = { ":TZMinimalist <CR>", "enter minimize mode of truezen" },
    ["<leader>tf"] = { ":TZFocus <CR>", "enter focus mode of truezen" },
    ["<leader>lc"] = {
      function()
        local cword = vim.fn.escape(vim.fn.expand('<cword>'), [[\/]])
        local cmd = string.format(":s/%s/\\\\lstinline!%s!/g", cword, cword)
        vim.cmd(cmd)
      end,
      "replace word to lstinline code",
    },
  },

  v = {
    ["$<"] = { "<esc>`>a><esc>`<i<<esc>", "wrap <> with selected context" },
    ["$("] = { "<esc>`>a)<esc>`<i(<esc>", "wrap ()) with selected context" },
    ["$["] = { "<esc>`>a]<esc>`<i[<esc>", "wrap []] with selected context" },
    ["${"] = { "<esc>`>a}<esc>`<i{<esc>", "wrap {} with selected context" },
    ['$"'] = { '<esc>`>a"<esc>`<i"<esc>', "wrap \"\" with selected context" },
    ["$'"] = { "<esc>`>a'<esc>`<i'<esc>", "wrap '' with selected context" },
    ["$`"] = { "<esc>`>a`<esc>`<i`<esc>", "wrap `` with selected context" },
    ["$$"] = { "$", "jump to the end of selected context" },
  },

  i = {
    ["jc"] = { "/*  */<Left><Left><Left>", "insert c style comment" },
  }
}

return M
