local lsp_zero = require('lsp-zero')
local cmp = require('cmp')
local cmp_format = lsp_zero.cmp_format({details = true})
cmp.setup({
  sources = {
    {name = 'nvim_lsp'},
    {name = 'buffer'},
    {name = 'luasnip'},
  },
  --- (Optional) Show source name in completion menu
  formatting = cmp_format,

  mapping = cmp.mapping.preset.insert({
    ['<CR>'] = cmp.mapping.confirm({select = true}),
  }),

  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
})

local lsp_attach = function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end

lsp_zero.extend_lspconfig({
  capabilities = require('cmp_nvim_lsp').default_capabilities(),
  lsp_attach = lsp_attach,
  float_border = 'rounded',
  sign_text = true,
})

require("mason").setup({})
require("mason-lspconfig").setup({
    ensure_installed = {'jedi_language_server', 'lua_ls'},
    handlers = {
        function(server_name)
            require('lspconfig')[server_name].setup({})
        end,
    },
})
