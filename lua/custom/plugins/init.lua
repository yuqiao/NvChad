return {

  ["nvim-lua/plenary.nvim"] = {},

  ["windwp/nvim-spectre"] = {
    opt = true,
    setup = function()
      -- on_file_open("nvim-spectre")
      require("core.lazy_load").on_file_open "nvim-spectre"
    end,
    config = function()
      require("spectre").setup()
    end,
  },

  ["nvim-telescope/telescope-ui-select.nvim"] = {
    after = "telescope.nvim",
    setup = function()
      require("core.layz_load").on_file_open" telescope-ui-select.nvim"
    end,
    config = function()
      require("telescope").load_extension("ui-select")
    end,
  },

  ["nvim-telescope/telescope-fzf-native.nvim"] = {
      run = "make",
      after = "telescope.nvim",
      setup = function()
        require("core.layz_load").on_file_open "telescope-fzf-native.nvim"
      end,
      config = function()
        require("telescope").load_extension("fzf")
      end,
  },

  ["nvim-telescope/telescope-dap.nvim"] = {
      after = "telescope.nvim",
      opt = true,
  },

  ["LinArcX/telescope-env.nvim"] = {
      opt = true,
      after = "telescope.nvim",
      setup = function()
        require("core.layz_load").on_file_open "telescope-env.nvim"
      end,
      config = function()
        require("telescope").load_extension("env")
      end,
  },

  -- use 'GustavoKatel/telescope-asynctasks.nvim'
  -- use 'aloussase/telescope-gradle.nvim'
  -- use 'aloussase/telescope-mvnsearch'

  ["neovim/nvim-lspconfig"] = false,

}
