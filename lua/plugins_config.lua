local Plug = vim.fn["plug#"]

vim.call("plug#begin", "~/.config/nvim/plugged")

	Plug("ayu-theme/ayu-vim")
	Plug("rafamadriz/friendly-snippets")
	Plug("Saghen/blink.cmp", { tag = "v1.6.0" })
    Plug("nvim-lua/plenary.nvim")
	Plug("nvim-telescope/telescope.nvim")
<<<<<<< Updated upstream
=======
    Plug("fsouza/prettierd")
    Plug("stevearc/conform.nvim")
    Plug("justinmk/vim-dirvish")
>>>>>>> Stashed changes

vim.call("plug#end")

--vim.lsp.config("ts_ls")
vim.lsp.enable("ts_ls")

require("blink.cmp").setup({
    -- use a release tag to download pre-built binaries
    -- AND/OR build from source, requires nightly: https://rust-lang.github.io/rustup/concepts/channels.html#working-with-nightly-rust
    -- build = 'cargo build --release',
    -- If you use nix, you can build from source using latest nightly rust with:
    -- build = 'nix run .#build-plugin',

    ---@module 'blink.cmp'
    ---@type blink.cmp.Config

    -- 'default' (recommended) for mappings similar to built-in completions (C-y to accept)
    -- 'super-tab' for mappings similar to vscode (tab to accept)
    -- 'enter' for enter to accept
    -- 'none' for no mappings
    --
    -- All presets have the following mappings:
    -- C-space: Open menu or open docs if already open
    -- C-n/C-p or Up/Down: Select next/previous item
    -- C-e: Hide menu
    -- C-k: Toggle signature help (if signature.enabled = true)
    --
    -- See :h blink-cmp-config-keymap for defining your own keymap
    keymap = { preset = 'super-tab' },

    appearance = {
      -- 'mono' (default) for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
      -- Adjusts spacing to ensure icons are aligned
      nerd_font_variant = 'mono'
    },

    -- (Default) Only show the documentation popup when manually triggered
    completion = { documentation = { auto_show = true } },

    -- Default list of enabled providers defined so that you can extend it
    -- elsewhere in your config, without redefining it, due to `opts_extend`
    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },
    },

    -- (Default) Rust fuzzy matcher for typo resistance and significantly better performance
    -- You may use a lua implementation instead by using `implementation = "lua"` or fallback to the lua implementation,
    -- when the Rust fuzzy matcher is not available, by using `implementation = "prefer_rust"`
    --
    -- See the fuzzy documentation for more information
    fuzzy = {
        implementation = "prefer_rust_with_warning",
        prebuilt_binaries = {
            download = true,
            ignore_version_mismatch = false
        }
    },
})

require("telescope").setup({})


vim.cmd([[
    let ayucolor="dark"

    colorscheme ayu
]])
