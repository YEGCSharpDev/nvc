return {
  {
--This plugin works sometimes, doesnt work sometime. Maybe should disable Lazy Loading 
    "chipsenkbeil/org-roam.nvim",
    enabled = true,
    tag = "0.2.0",
    dependencies = {
      {
        "nvim-orgmode/orgmode",
        tag = "0.7.1",
      },
    },
    keys = {
      { "<leader>oRa" },
      { "<leader>oRb" },
      { "<leader>oRc" },
      { "<leader>oRf" },
      { "<leader>oRi" },
      { "<leader>oRl" },
      { "<leader>oRm" },
      { "<leader>oRn" },
      { "<leader>oRp" },
      { "<leader>oRq" },
      { "<leader>oR." },
    },
    config = function()
      require("org-roam").setup {
        directory = "~/work",
--        org_files = "~/work",
        bindings = { prefix = "<leader>oR" },
        templates = {
          n = {
            description = "Note",
            template = "%?",
            target = "~/work/to-refile/%<%Y%m%d%H%M%S>-%[slug].org",
          },
          t = {
            description = "Todo",
            reversed = true,
            template = "* TODO %?\n %u",
            target = "~/work/todo.org",
          },
          p = {
            description = "Work Periphery/Personal Todo",
            reversed = true,
            template = "* TODO %?\n %u",
            target = "~/work/nonworktodo.org",
          },
          j = {
            description = "Daily Journal",
            template = "*%?",
            target = "~/work/journal/%<%Y>/%<%V>/%<%Y-%m-%d>-%<%A>.org",
          },
          s = {
            description = "Softi",
            template = "* SOFTI \n** Successes \n - n/a \n** Opportunities \n  - n/a \n** Failures \n  - n/a \n** Threats\n - n/a \n** Issues \n  - n/a",
            target = "~/work/SOFTI/%?.org",
          },
        },
      }
    end,
  },
}
