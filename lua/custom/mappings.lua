local M = {}


M.general = {
  i = {
    ["jk"] = {"<ESC>", "return to normal mode"},
  },
  v ={
    ["<leader>fr"] = {"<ESC>:lua require('spectre').open_visual()<CR>", "replace global"},
  },
  n = {
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
