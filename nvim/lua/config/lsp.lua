vim.lsp.config('sv_ls', {
  cmd = {'verible-verilog-ls'},
  -- filetypes = {'sv', 'svh', 'v'},
  filetypes = {'systemverilog', 'verilog'},
  root_markers = {'.git', 'verible.filelist'},
})

vim.lsp.enable('sv_ls')
