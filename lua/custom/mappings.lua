local M = {}


M.general = {
  i = {
    ["jk"] = {"<ESC>", "return to normal mode"},
  },
  n = {
    ["tt"] = {":CocCommand explorer<CR>", "open file exploerer"},
    ["<leader>rr"] = { function()
        vim.cmd("w")
        if vim.bo.filetype == "python" then
          vim.cmd([[
            set splitbelow
            :sp
            :term python3 %
          ]])
        end
      end, "run python file"},
  }
}


return M
