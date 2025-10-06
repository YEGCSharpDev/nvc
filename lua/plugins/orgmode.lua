return {
  "nvim-orgmode/orgmode",
  event = "VeryLazy",
  config = function()
    require("orgmode").setup {
      org_agenda_files = "~/work/**/*",
      org_default_notes_file = "~/work/wiki/refile.org",
      org_todo_keywords = { "TODO(t)", "WAITING(w)", "NEXT(n)", "INPROGRESS(p)", "BLOCKED(b)", "|", "DONE(d)" },
      org_todo_keyword_faces = {
        TODO = ":background #000000 :foreground red", -- overrides builtin color for `TODO` keyword
        WAITING = ":background #000000 :foreground #cc6216",
        NEXT = ":background #000000 :foreground #a911cf :weight bold",
        INPROGRESS = ":background #000000 :foreground #16ccc6 :weight bold",
        DONE = ":background green :slant italic :underline on",
        BLOCKED = ":background #000000 :foreground #b31414 :weight bold :slant italic :underline on",
      },
    }
  end,
}
