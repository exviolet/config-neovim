require("bufferline").setup{
    options = {
        buffer_close_icon = '',
        mode = 'buffers',
        
        hover = {
            enabled = true,
            delay = 200,
            reveal = {'close'}
        },
        vim.cmd[[
        nnoremap <silent><TAB> :BufferLineCycleNext<CR>
        nnoremap <silent><S-TAB> :BufferLineCyclePrev<CR>
        ]],

        offsets = {
            {
                filetype = "neo-tree",
                text = "FIle Explorer",
                separator = true,
                padding = 1
            }
        },
        separator_style = "slope"
    }
}
