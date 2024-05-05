-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

lvim.plugins = {
    { "lunarvim/colorschemes" },
    --   { "voldikss/vim-floaterm" },
    { "mfussenegger/nvim-jdtls" },
    { "microsoft/java-debug" },
}

-- vim.cmd [[colorscheme tokyonight]]
-- lvim.transparent_window = true

-- lvim.colorscheme = "tokyonight-moon"

-- lvim.builtin.which_key.mappings["t"] = {
--   name = "Terminal",
--   t = { "<cmd>FloatermToggle<CR>", "Toggle Terminal" }
-- }

-- vim.g.floaterm_position = "bottom"
-- vim.g.floaterm_width = 0.98
-- vim.g.floaterm_height = 0.3


-- vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "jdtls" })

-- general
lvim.log.level = "warn"
lvim.format_on_save = false
lvim.colorscheme = "alduin"
vim.cmd("let g:sonokai_style = 'andromeda'")
vim.cmd("let g:sonokai_enable_italic_comment = 1")
vim.opt.shiftwidth = 4
lvim.transparent_window = true

lvim.builtin.terminal.size = 15
lvim.builtin.terminal.direction = "horizontal"
lvim.keys.normal_mode["<C-b>"] = "<esc><cmd>ToggleTermSendCurrentLine<CR>"
lvim.keys.visual_mode["<C-b>"] = ":'<,'>ToggleTermSendVisualLines<CR>"
lvim.keys.term_mode["<C-l>"] = "<C-l>"
lvim.builtin.which_key.mappings["t"] = {
    "Terminal",
    t = { "<cmd>ToggleTerm<CR>", "Toggle Terminal" }
}

-- keymappings [vsonokaiiew all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"

lvim.keys.normal_mode["<F2>"] = ":set spell!<CR>" -- toggle spell check
lvim.keys.normal_mode["<F4>"] = ":set spelllang=en<CR>"
lvim.keys.normal_mode["<F3>"] = ":set spelllang=pt_br<CR>"




lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

-- Additional Plugins
lvim.plugins = {
    { "folke/tokyonight.nvim" },
    { "JuliaEditorSupport/julia-vim" },
    { "rafi/awesome-vim-colorschemes" },
}
