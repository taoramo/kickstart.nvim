-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  { "hardyrafael17/norminette42.nvim" },
  {
    "hardyrafael17/norminette42.nvim",
    config = function()
      local norminette = require("norminette")
      norminette.setup({
        runOnSave = true,
        maxErrorsToShow = 5,
        active = true,
      })
    end,
  },
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    config = function()
      local harpoon = require("harpoon")
      ---@diagnostic disable-next-line: missing-parameter
      harpoon:setup()
      local function map(lhs, rhs, opts)
        vim.keymap.set("n", lhs, rhs, opts or {})
      end
      map("<leader>ha", function() harpoon:list():append() end)
      map("<leader>hm", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
      map("<leader>1", function() harpoon:list():select(1) end)
      map("<leader>2", function() harpoon:list():select(2) end)
      map("<leader>3", function() harpoon:list():select(3) end)
      map("<leader>4", function() harpoon:list():select(4) end)
    end
  },
}
