local function path() return vim.fn.expand('%:p'):gsub(vim.env.HOME, '~') end

local my_sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
	lualine_c = {path},
    lualine_x = {'encoding','filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  }

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'gruvbox',
    component_separators = '|',
    section_separators = '',
    disabled_filetypes = {},
    always_divide_middle = true,
  },
  sections = vim.deepcopy(my_sections),
  inactive_sections = vim.deepcopy(my_sections),
  tabline = {},
  extensions = {}
}



--[[
require('lualine').setup {
    options = {
        disabled_filetypes = {'NvimTree'}
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', {'diagnostics', sources={'nvim_diagnostic'}}},
    lualine_c = {{'filename', path = 2,file_status = true}},
		
        lualine_c = {},
        lualine_x = {'filetype'},
        lualine_y = {'location'},
        lualine_z = {'encoding'}
    }
}

local my_sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch'},
    lualine_c = {{'filename', full_path = true}},
    lualine_x = {
        {
            'diagnostics',
            sources = {'nvim_lsp'},
            symbols = {error = 'E:', warn = 'W:', info = 'I:'},
            color_error = '#E06C75',
            color_warn = '#E5C07B',
            color_info = '#ABB2BF'
        }
    },
    lualine_y = {'filetype'},
    lualine_z = {'location'}
}

--]]
