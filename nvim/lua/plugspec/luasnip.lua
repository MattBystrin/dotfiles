local ls = require "luasnip"

ls.config.set_config {
	history = false,
	updateevents = "TextChanged,TextChangedI",
	delete_check_events = "InsertLeave",
	region_check_events = "InsertLeave",
	enable_autosnippets = false,
}

-- <c-k> is my expansion key
-- this will expand the current item or jump to the next item within the snippet.
vim.keymap.set({ "i", "s" }, "<C-l>", function()
  if ls.expand_or_jumpable() then
    ls.expand_or_jump()
  end
end, { silent = true })

-- <c-j> is my jump backwards key.
-- this always moves to the previous item within the snippet
vim.keymap.set({ "i", "s" }, "<C-h>", function()
  if ls.jumpable(-1) then
    ls.jump(-1)
  end
end, { silent = true })
