local header = {
  '                                               ',
  '                                               ',
  '┏┳┓┓┏┏┓┳┓┏┓┳┓┏┓┓┏┓┏┓┳┓┏┓┏┓┏┳┓┏┓┳┓',
  ' ┃ ┣┫┣ ┃┃┣ ┣┫┃┃┗┫┃┫ ┣┫┣┫┣  ┃ ┣ ┣┫',
  ' ┻ ┛┗┗┛┻┛┗┛┛┗┣┛┗┛┛┗┛┛┗┛┗┻  ┻ ┗┛┛┗',
  '                                               ',
  '                                               ',
}

return {
  {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      require('dashboard').setup {
        theme = 'doom',
        config = {
          vim.cmd 'hi DashboardHeader guifg=#7781da',
          vim.cmd 'hi DashboardIcon guifg=#0D5C63',
          vim.cmd 'hi DashboardDesc guifg=#D7D9CE',
          vim.cmd 'hi DashboardKey guifg=#ff8700',
          vim.cmd 'hi DashboardFooter guifg=#00FFCD',
          header = header, -- change header here
          center = {
            {
              icon = '  ',
              desc = 'Recent Files',
              key = 'r',
              key_format = ' %s', -- remove default surrounding `[]`
              action = 'Telescope oldfiles',
            },
            {
              icon = '󱈅  ',
              desc = 'Find Files in Workspace',
              key = 'f',
              key_format = ' %s', -- remove default surrounding `[]`
              action = 'Telescope find_files',
            },
            {
              icon = '  ',
              desc = 'Find Text in Workspace',
              key = 't',
              key_format = ' %s', -- remove default surrounding `[]`
              action = 'Telescope live_grep',
            },
            {
              icon = '󱘢  ',
              desc = 'Find Git Files in Workspace   ',
              key = 'g',
              key_format = ' %s', -- remove default surrounding `[]`
              action = 'Telescope git_files',
            },
            {
              icon = '󰒲  ',
              desc = 'Lazy Package Manager',
              key = 'l',
              key_format = ' %s', -- remove default surrounding `[]`
              action = 'Lazy',
            },
            {
              icon = '  ',
              desc = 'Notes',
              key = 'n',
              key_format = ' %s', -- remove default surrounding `[]`
              -- action = "lua require'telescope.builtin'.find_files({})",
              action = 'Oil ~/Documents/Notes',
            },
            {
              icon = '  ',
              desc = 'NeoVim Config',
              key = 'c',
              key_format = ' %s', -- remove default surrounding `[]`
              --action = 'Telescope find_files cwd=~/.config/nvim',
              action = 'Oil ~/.config/nvim'
            },
            {
              icon = '  ',
              desc = 'Windows NeoVim Config',
              key = 'C',
              key_format = ' %s', -- remove default surrounding `[]`
              --action = 'Telescope find_files cwd=~/.config/nvim',
              action = 'Oil ~/.config/termux-nvim'
            },
            {
              icon = '󰩈  ',
              desc = 'Quit NeoVim',
              key = 'q',
              key_format = ' %s',
              action = 'qa',
            },
          },
          footer = function()
            local stats = require('lazy').stats()
            local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
            return {
              '',
              '⌛' .. stats.loaded .. '/' .. stats.count .. ' plugins' .. '⌛',
              'loaded in ' .. ms .. 'ms',
            }
          end, --your footer
        },
      }
    end,
    dependencies = { { 'nvim-tree/nvim-web-devicons' } },
  },
}
