require "nvchad.autocmds"

vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  callback = function()
    vim.opt.formatoptions:remove({ "c", "r", "o" })
  end,
})

-- 저장시 자동으로 \r 제거
vim.api.nvim_create_autocmd({ "BufReadPost", "TextChanged", "TextChangedI" }, {
  group = vim.api.nvim_create_augroup("nvchad_remove_cr", { clear = true }),
  callback = function()
    if vim.bo.modifiable then
      pcall(function()
        vim.api.nvim_command("silent! %s/\\r//g")
      end)
    end
  end,
})

local function zellij(mode)
  vim.schedule(function()
    if vim.env.ZELLIJ ~= nil then
      vim.fn.system({ "zellij", "action", "switch-mode", mode })
    end
  end)
end

local function augroup(name)
  return vim.api.nvim_create_augroup(name, { clear = true })
end

vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter" }, {
  group = augroup("zellij_lock"),
  callback = function()
    zellij("locked")
  end,
})

vim.api.nvim_create_autocmd({ "FocusLost", "VimLeave" }, {
  group = augroup("zellij_normal"),
  callback = function()
    zellij("normal")
  end,
})
