return { -- Highlight, edit, and navigate code
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    local group = vim.api.nvim_create_augroup("treesitter-start", { clear = true })
    vim.api.nvim_create_autocmd("FileType", {
      group = group,
      callback = function(args)
        -- Neovim's builtin treesitter highlight is enabled per-buffer.
        pcall(vim.treesitter.start, args.buf)
      end,
    })
  end,
}
