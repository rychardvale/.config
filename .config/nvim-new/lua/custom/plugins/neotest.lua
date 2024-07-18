return {
    "nvim-neotest/neotest",
    dependencies = {
        "nvim-neotest/nvim-nio",
        "nvim-lua/plenary.nvim",
        "antoinemadec/FixCursorHold.nvim",
        "nvim-treesitter/nvim-treesitter",
        "fredrikaverpil/neotest-golang",
        "nvim-neotest/neotest-go",
        "nvim-neotest/neotest-plenary",
        "nvim-neotest/neotest-vim-test",
    },

    config = function()
        require("neotest").setup({
            discovery = {
                enabled = false,
                concurrent = 1,
            },
            running = {
                concurrent = true,
            },
            summary = {
                animated = false,
            },
            adapters = {
                require("neotest-go")({
                    experimental = {
                        test_table = true,
                    },
                    args = { "-count=1", "-timeout=60s", "-race", "-coverprofile=/tmp/coverage.out" },
                }),
            },
        })

        vim.api.nvim_create_user_command("TestSummary", function()
            require("neotest").summary.toggle()
        end, {})

        vim.api.nvim_create_user_command("Test", function()
            require("neotest").run.run()
        end, {})

        vim.api.nvim_create_user_command("TestDbg", function()
            require("neotest").run.run({ suite = false, strategy = "dap" })
        end, {})

        vim.api.nvim_create_user_command("TestAll", function()
            require("neotest").run.run(vim.uv.cwd())
        end, {})

        vim.api.nvim_create_user_command("TestFile", function()
            require("neotest").run.run(vim.fn.expand("%"))
        end, {})
    end,
}
