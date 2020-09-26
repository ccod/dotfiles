map <C-o> :NERDTreeToggle<CR>

" navigating between panes
nnoremap <leader>wj <C-W><C-J>
nnoremap <leader>wk <C-W><C-K>
nnoremap <leader>wl <C-W><C-L>
nnoremap <leader>wh <C-W><C-H>

" window split
nnoremap <leader>ws :split<CR>
nnoremap <leader>wv :vsplit<CR>

" resizing panes
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" alternating resent buffers
nnoremap <leader><leader> <C-^>

" easily run testing suite (in this case, mocha)
nmap <silent> <leader>tn :TestNearest<CR>
nmap <silent> <leader>tf :TestFile<CR>
nmap <silent> <leader>tt :TestSuite<CR>
nmap <silent> <leader>tl :TestLast<CR>
nmap <silent> <leader>tg :TestVisit<CR>

" habits I am used to from doom emacs
nmap <silent> <leader>bs :w<CR>
nmap <silent> <leader>qq :q<CR>
nmap <silent> <leader>ff :CtrlP<CR>
nmap <silent> <leader>fr :CtrlPClearCache<CR>

" one off npm scripts
nmap <silent> <leader>rb :! npm run-script build<CR>
nmap <silent> <leader>rm :! make<CR>
