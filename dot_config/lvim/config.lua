local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {

  {
    command = "clang-format",
    filetypes = { "c", "cpp", "objc", "objcpp" },
  },
  {
    command = "ruff",
    filetypes = { "python" },
    args = { "--fix", "--select", "F,E4,E7,E9,I" },
  },
}
lvim.format_on_save.enabled = true
lvim.plugins = {
  { "nvim-lua/plenary.nvim" },
  { "kmontocam/nvim-conda" },
  { "lervag/vimtex", },
}
vim.g.vimtex_compiler_latexmk_engines = {
  _ = '-lualatex',
}
