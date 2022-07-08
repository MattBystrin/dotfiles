set completeopt=menu,menuone,noselect
lua << EOF
local cmp = require('cmp')
cmp.setup({
	completion = {
		autocomplete = false
	},
	snippet = {
		expand = function(args)
			-- For `vsnip` user.
			-- vim.fn["vsnip#anonymous"](args.body)
		        -- For `luasnip` user.
        		-- require('luasnip').lsp_expand(args.body)
		        -- For `ultisnips` user.
        		-- vim.fn["UltiSnips#Anon"](args.body)
      		end,
    	},
    	mapping = {
      		['<C-d>'] = cmp.mapping.scroll_docs(-4),
      		['<C-f>'] = cmp.mapping.scroll_docs(4),
      		['<A-k>'] = cmp.mapping.complete(),
      		['<C-e>'] = cmp.mapping.close(),
      		['<CR>'] = cmp.mapping.confirm({ select = true }),
    	},
	sources = {
      		{ name = 'nvim_lsp' },
	      	-- For vsnip user.
      		-- { name = 'vsnip' },
      		-- For luasnip user.
      		-- { name = 'luasnip' },
      		-- For ultisnips user.
      		-- { name = 'ultisnips' },
      		{ name = 'buffer' },
	}
})
EOF
