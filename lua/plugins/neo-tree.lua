return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    -- Others dependencies
    "saifulapm/neotree-file-nesting-config", -- add plugin as dependency. no need any other config or setup call
  },
  opts = {
    window = { position = "right" },
    -- recommanded config for better UI
    hide_root_node = true,
    retain_hidden_root_indent = true,
    filesystem = {
      filtered_items = {
        show_hidden_count = false,
        never_show = {
          ".DS_Store",
        },
        always_show = {
          ".gitignore",
        },
      },
    },
    default_component_configs = {
      indent = {
        with_expanders = true,
        expander_collapsed = "",
        expander_expanded = "",
      },
    },
    -- others config
  },
  config = function(_, opts)
    -- Adding rules from plugin
    opts.nesting_rules = require("neotree-file-nesting-config").nesting_rules
    require("neo-tree").setup(opts)
  end,
}
