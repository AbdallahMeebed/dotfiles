vim.lsp.config('sv_ls', {
  cmd = {'verible-verilog-ls', '--rules_config_search'},
  -- filetypes = {'sv', 'svh', 'v'},
  filetypes = {'systemverilog', 'verilog'},
  root_markers = {'.git', 'verible.filelist'},
})

vim.lsp.enable('sv_ls')

vim.lsp.config('cpp_ls', {
  cmd = {'clangd'},
  filetypes = {'cpp', 'hpp'},
  root_markers = {'.git', '.clangd'},
})

vim.lsp.enable('cpp_ls')
vim.lsp.config('python_ls', {
    cmd = {'pylsp'},
    filetypes = {'python'},
})
vim.lsp.enable('python_ls')

vim.lsp.config('typst_ls', {
    cmd = {'tinymist'},
    filetypes = {'typst'},
    settings = {
        exportPDF = 'never',
        lint = {enabled = true}
    }
})

vim.lsp.enable('typst_ls')
