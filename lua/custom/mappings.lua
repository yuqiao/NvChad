local M = {}

local opt = { noremap = true, silent = true }

M.general = {
  i = {
    ["jk"] = {"<ESC>", "return to normal mode", opts = opt},
  },
  v ={
    ["<leader>fr"] = {"<ESC>:lua require('spectre').open_visual()<CR>", "replace global"},
  },
  n = {
    ["gd"] = {"<Plug>(coc-definition)", "go to definition", opts=opt},
    ["gy"] = {"<Plug>(coc-type-definition)", "go to definition", opts=opt},
    ["gi"] = {"<Plug>(coc-implementation)", "go to definition", opts=opt},
    ["gr"] = {"<Plug>(coc-references)", "go to definition", opts=opt},
    ["tt"] = {":CocCommand explorer<CR>", "open file exploerer"},
    ["<leader>ff"] = {":Telescope find_files<CR>", "find files"},
    ["<leader>fg"] = {":Telescope live_grep<CR>", "find global"},
    ["<leader>fr"] = {":lua require('spectre').open_visual({select_word=true})<CR>", "replace global"},
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
