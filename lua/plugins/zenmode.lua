return {
    "folke/zen-mode.nvim",
    config = function()
        vim.keymap.set("n", "<leader>z", function()
            vim.cmd("ZenMode")
        end)
    end
}
