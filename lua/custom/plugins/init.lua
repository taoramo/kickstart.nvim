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
}
