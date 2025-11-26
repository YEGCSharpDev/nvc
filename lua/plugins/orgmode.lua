return {
  "nvim-orgmode/orgmode",
  event = "VeryLazy",
  config = function()
    require("orgmode").setup {
      org_agenda_files = "~/work/**/*",
      org_default_notes_file = "~/work/wiki/refile.org",
      org_todo_keywords = { "TODO(t)", "WAITING(w)", "NEXT(n)", "INPROGRESS(p)", "BLOCKED(b)", "|", "DONE(d)", "SKIPPED(s)" },
      org_todo_keyword_faces = {
        TODO = ":foreground #000000 :background red",
        WAITING = ":foreground #000000 :background #cc6216",
        NEXT = ":foreground #000000 :background #a911cf :weight bold",
        INPROGRESS = ":foreground #000000 :background #16ccc6 :weight bold",
        DONE = ":foreground #000000 :background green :slant italic :underline on",
        SKIPPED = ":foreground #000000 :background #3295a8 :slant italic :underline on",
        BLOCKED = ":foreground #000000 :background #b31414 :weight bold :slant italic :underline on",
      },
      org_archive_location = "~/work/archive/graveyard/todoarchive.org::",
      org_log_done = "note",
      org_log_into_drawer = "LOGBOOK",
      org_adapt_indentation = true,
      win_split_mode = "vertical",
      org_id_method = "uuid",
      org_id_link_to_org_use_id = true,
      org_capture_templates = {
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
        w = {
          description = "Weekly Journal",
          template = "*%?",
          target ="~/work/journal/%<%Y>/%<%V>/%<%Y-%m-%d>-%<%A>.org",
          datetree = {
            reversed = true,
            treetype = 'day',
          },
        },
      },
    }
  end,
}
