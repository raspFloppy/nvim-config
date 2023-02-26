--- PRESETS
vim.g.coq_settings = {auto_start = 'shut-up'}    -- Automatically start coq


--- GLOBAL VARIABLES
local lspconfig = require'lspconfig'
local coq = require'coq'
local coq_3p = require'coq_3p'


--- LANGUAGE SERVERS
lspconfig.clangd.setup{}        -- C/C++
lspconfig.pyright.setup{}       -- Python
lspconfig.html.setup{}          -- HTML
lspconfig.tsserver.setup{}      -- Javascript/Typescript
lspconfig.rust_analyzer.setup{} -- Rust

local servers = { 'pyright', 'tsserver', 'rust_analyzer', 'clangd'}


--- COQ
for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup(coq.lsp_ensure_capabilities({
    }))
end


--- COQ_3P
coq_3p {
    { src = "nvimlua", short_name = "nLUA" },
    { src = "vimtex",  short_name = "vTEX" },
    { src = "copilot", short_name = "COP", accept_key = "<c-f>" },
}
