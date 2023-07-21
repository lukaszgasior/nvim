return {
  "nvim-neo-tree/neo-tree.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  init = function() vim.g.neo_tree_remove_legacy_commands = true end,
  config = function()
    require('neo-tree').setup {}
  end,
}
