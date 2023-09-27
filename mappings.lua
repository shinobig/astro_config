-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
    -- first key is the mode
    n = {
        -- second key is the lefthand side of the map
        -- mappings seen under group name "Buffer"
        ["<leader>bn"] = {
            "<cmd>tabnew<cr>",
            desc = "New tab"
        },
        ["<leader>bD"] = {
            function()
                require("astronvim.utils.status").heirline.buffer_picker(function(bufnr)
                    require("astronvim.utils.buffer").close(bufnr)
                end)
            end,
            desc = "Pick to close"
        },
        ["<leader>gdt"] = {
            "|gd",
            desc = "Open definition in a new tab"
        },
        -- tables with the `name` key will be registered with which-key if it's installed
        -- this is useful for naming menus
        ["<leader>b"] = {
            name = "Buffers"
        },
        ["<S-DOWN>"] = {
            "10j",
            desc = "Move down fast"
        },
        ["<S-UP>"] = {
            "10k",
            desc = "Move up fast"
        },
        ["<leader>sa"] = {
            "ggVG",
            desc = "Select All"
        },
        ['<S-Tab>'] = {
            ':bprev<CR>',
            desc = "move in tabs"
        },
        ['<Tab>'] = {
            ':bnext<CR>',
            desc = "move in tabs"
        },
        ['<leader>ye'] = {
            "y$",
            desc = 'copy to the end of line'
        },
        ['<leader>ra'] = {
            ":%s/",
            desc = 'copy to the end of line'
        }

        -- quick save
        -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    },
    t = {
        -- setting a mapping to false will disable it
        -- ["<esc>"] = false,
    }
}
