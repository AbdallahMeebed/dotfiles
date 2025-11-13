return {
	"zk-org/zk-nvim",
	config = function()
		require("zk").setup({
			-- Can be "telescope", "fzf", "fzf_lua", "minipick", "snacks_picker",
			-- or select" (`vim.ui.select`).
			picker = "telescope",

			lsp = {
				-- `config` is passed to `vim.lsp.start(config)`
				config = {
					name = "zk",
					cmd = { "zk", "lsp" },
					filetypes = { "markdown" },
					on_attach = function(client, bufnr)
						vim.lsp.completion.enable(true, client.id, bufnr, {
							autotrigger = true,
							convert = function(item)
								return { abbr = item.label:gsub("%b()", "") }
							end,
						})
					end,
					-- on_attach = ...
					-- etc, see `:h vim.lsp.start()`
				},

				-- automatically attach buffers in a zk notebook that match the given filetypes
				auto_attach = {
					enabled = true,
				},
			},
		})

		local opts = { noremap = true, silent = false }

		-- Create a new note after asking for its title.
		vim.api.nvim_set_keymap("n", "<leader>zn", "<Cmd>ZkNew { title = vim.fn.input('Title: ') }<CR>", opts)

		-- Open notes.
		vim.api.nvim_set_keymap("n", "<leader>zf", "<Cmd>ZkNotes { sort = { 'modified' } }<CR>", opts)
		-- Open notes associated with the selected tags.
		vim.api.nvim_set_keymap("n", "<leader>zt", "<Cmd>ZkTags<CR>", opts)
        -- Insert link
		vim.api.nvim_set_keymap("n", "<leader>zl", "<Cmd>ZkInsertLink<CR>", opts)
        -- Search backlinks of current buffer
		vim.api.nvim_set_keymap("n", "<leader>zb", "<Cmd>ZkBacklinks<CR>", opts)

	end,
}
