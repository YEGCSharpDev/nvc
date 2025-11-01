return {
  {
    "MeanderingProgrammer/render-markdown.nvim",
    ft = { "markdown", "org" },
    dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-mini/mini.nvim" },
    config = function()
      require("render-markdown").setup {
        enabled = true,
        render_modes = { "n", "c", "t" },
        file_types = { "markdown", "org" },
      }
    end,
  },
}
