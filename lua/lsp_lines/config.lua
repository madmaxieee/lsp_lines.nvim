local M = {}

M.setup = function(options)
  local defaults = {
    box_drawing_characters = {
      vertical = "│",
      vertical_right = "├",
      horizontal_up = "┴",
      cross = "┼",
      up_right = "└",
      horizontal = "─",
    },
    disabled_filetypes = {},
  }

  if options == nil then
    M.config = defaults
  else
    M.config = vim.tbl_deep_extend("keep", options, defaults)
  end

  M.config.disabled_filetype_map = {}
  for _, ft in ipairs(M.config.disabled_filetypes) do
    M.config.disabled_filetype_map[ft] = true
  end
end

return M
