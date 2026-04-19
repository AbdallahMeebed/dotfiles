local gh = function(x) return 'https://github.com/' .. x end

vim.pack.add({
    gh("stevearc/conform.nvim"),
    -- gh("whonore/coqtail"),
    gh("folke/which-key.nvim"),
    gh("mason-org/mason.nvim"),
    gh("echasnovski/mini.nvim"),

    -- telescope dependencies
    gh("nvim-lua/plenary.nvim"),
    gh("debugloop/telescope-undo.nvim"),
    gh("nvim-telescope/telescope-fzf-native.nvim"),
    gh("nvim-telescope/telescope-ui-select.nvim" ),
    gh("nvim-tree/nvim-web-devicons"),
    gh("nvim-telescope/telescope.nvim"),

    gh("nvim-treesitter/nvim-treesitter"),
    gh("zk-org/zk-nvim"),
    gh("MeanderingProgrammer/render-markdown.nvim"),
})

require("plugins.conform")
require("plugins.which-key")
require("plugins.telescope")
require("mason").setup()
require("plugins.mini")
require("plugins.treesitter")
require("plugins.zk")
