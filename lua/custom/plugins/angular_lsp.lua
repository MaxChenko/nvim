local root = vim.fs.root(0, { 'angular.json', 'nx.json' }) or vim.uv.cwd()

local ngcmd = {
  'ngserver',
  '--stdio',
  '--tsProbeLocations',
  root .. '/node_modules',
  '--ngProbeLocations',
  root .. '/node_modules',
}

vim.lsp.config('angularls', {
  cmd = ngcmd,
  filetypes = { 'typescript', 'html', 'htmlangular' },
  root_markers = { 'angular.json', 'nx.json' },
})

vim.lsp.enable 'angularls'
