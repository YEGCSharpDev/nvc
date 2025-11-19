-- ~/.config/nvim/lua/config/weekly.lua
local M = {}

function M.weekly_journal_target()
  local now = os.time()
  local dow = tonumber(os.date('%u', now))
  local monday = now - (dow - 1) * 24 * 60 * 60
  local friday = monday + 4 * 24 * 60 * 60

  local year  = os.date('%Y', now)
  local week  = os.date('%V', now)
  local folder = string.format('~/work/journal/%s/%s', year, week)

  local expanded = vim.fn.expand(folder)
  vim.fn.mkdir(expanded, 'p')

  return string.format('%s/%s to %s.org',
    folder, os.date('%b %d', monday), os.date('%b %d', friday))
end

return M
