-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
-- Nop overrides
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
vim.keymap.set("n", "Q", "<nop>")

-- Open explorer
vim.keymap.set("n", "<leader>fv", vim.cmd.Ex)

-- Allow moving lines or blocks
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Handle positioning cusor in window while scrolling
vim.keymap.set("n", "J", "mzJ`z")          -- Move next line to back of cursor line (keep cursor in place)
vim.keymap.set("n", "<C-d>", "<C-d>zz")    -- Scroll down half page (keep cursor centered)
vim.keymap.set("n", "<C-u>", "<C-u>zz")    -- Scroll up half page (keep cursor centered)
vim.keymap.set("n", "n", "nzzzv")          -- Next search result (keep cursor centered)
vim.keymap.set("n", "N", "Nzzzv")          -- Previous search result (keep cursor centered)

vim.keymap.set("x", "<leader>p", [["_dP]]) -- Paste but keep original cut/copy in the void register

-- These yank to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "nop")
-- vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
-- vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Quickfix navigation - TODO: look into this
-- vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
-- vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
-- vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
-- vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
