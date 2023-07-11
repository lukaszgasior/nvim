return {
  "olimorris/onedarkpro.nvim",
  priority = 1000, -- Ensure it loads first
  config = function()
    require("onedarkpro").setup({
        options = {
          cursorline = true, -- Use cursorline highlighting?
          transparency = false, -- Use a transparent background?
        }
    })
  end
}
