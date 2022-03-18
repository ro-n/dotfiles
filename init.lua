vim.o.mouse = 'a'

vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.tabstop = 4

vim.wo.number = true
vim.wo.relativenumber = true


return require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            require('rose-pine').setup({
                dark_variant = 'moon',
                disable_background = true
            })
            vim.cmd('colorscheme rose-pine')
        end
    })

end)
