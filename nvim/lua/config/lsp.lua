vim.lsp.config('sv_ls', {
  cmd = {'verible-verilog-ls'},
  -- filetypes = {'sv', 'svh', 'v'},
  filetypes = {'systemverilog'},
  root_markers = {'.git'},
})

vim.lsp.enable('sv_ls')
