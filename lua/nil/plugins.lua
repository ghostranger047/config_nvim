local status, packer = pcall(require, "packer")
if not status then
	print("Packer is not installed")
	return
end

-- Reloads Neovim after whenever you save plugins.lua
vim.cmd([[
    augroup packer_user_config
      autocmd!
     autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup END
]])



return require('packer').startup(function(use)
  -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use "nvim-lua/plenary.nvim"

    use 'nvim-tree/nvim-web-devicons'

    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
        'nvim-tree/nvim-web-devicons', -- optional, for file icons
            },
  
        }

end)
