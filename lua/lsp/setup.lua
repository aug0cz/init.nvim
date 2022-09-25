require("nvim-lsp-installer").setup({
	automatic_installation = true,
})

require('lspconfig')['pyright'].setup{}
require('lspconfig')['tsserver'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
}
require('lspconfig')['volar'].setup{}
