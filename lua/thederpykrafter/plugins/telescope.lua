return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.6',
  opts = {
    defaults = {
     mappings = {
       i = {
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
         ["<C-h>"] = "which_key"
        }
      }
    },
   pickers = {
     -- Default configuration for builtin pickers goes here:
      -- picker_name = {
      --   picker_config_key = value,
      --   ...
      -- }
      -- Now the picker_config_key will be applied every time you call this
      -- builtin picker
    },
   extensions = {
     -- Your extension configuration goes here:
     -- extension_name = {
     --   extension_config_key = value,
     -- }
      -- please take a look at the readme of the extension you want to configure
    }
  }
}

