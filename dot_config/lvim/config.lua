local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {

  {
    command = "clang-format",
    filetypes = { "c", "cpp", "objc", "objcpp" },
  },
  {
    command = "isort",
    filetypes = { "python" },
    args = { "--profile", "black" }, -- Ensures isort follows Black's formatting style
  },
  {
    command = "black",
    filetypes = { "python" },
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
