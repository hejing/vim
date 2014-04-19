let g:startify_custom_header =
      \ map(split(system('fortune -n 160 -e computers humorists fortunes wisdom work education science pets | cowsay -f small'), '\n'), '" ". v:val') + ['','']

let g:startify_list_order = [
      \ ['   Sessions:'],
      \ 'sessions',
      \ ['   Last recently opened files'],
      \ 'files',
      \ ['   Last recently modified files in the current directory:'],
      \ 'dir',
      \ ['   Bookmarks:'],
      \ 'bookmarks',
      \ ]

let g:startify_bookmarks = [ '~/.vim', '~/.vimrc', '~/.tmux.conf' ]

let g:startify_session_autoload = 1

let g:startify_session_persistence = 1
