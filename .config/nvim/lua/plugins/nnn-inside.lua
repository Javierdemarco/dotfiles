return {
    "luukvbaal/nnn.nvim",
    config = function()
        require("nnn").setup({
            explorer = {
                cmd = "nnn -Hi", -- command override (-F1 flag is implied, -a flag is invalid!)
                session = "local", -- or "global" / "local" / "shared"
            },
            picker = {
                cmd = "nnn -Hi -Pp", -- command override (-p flag is implied)
                session = "local", -- or "global" / "local" / "shared"
            },
            replace_netrw = "explorer", -- or "explorer" / "picker"
            buflisted = false, -- whether or not nnn buffers show up in the bufferlist
            quitcd = nil, -- or "cd" / tcd" / "lcd", command to run on quitcd file if found
            offset = true,
        })
    end,
    keys = {
        { "<leader>Fn", "<cmd>NnnExplorer<cr>", desc = "NnnExplorer" },
        { "<leader>FN", "<cmd>NnnPicker<cr>", desc = "NnnPicker" },
    },
}
