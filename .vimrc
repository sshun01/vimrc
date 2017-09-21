"--------------------
" Basic configuration
"--------------------
" viとの互換性を取らない(vimの独自拡張機能を使うため)
set nocompatible
" 改行コードの自動認識
set fileformats=unix,dos,mac
" バックスペースキーで削除できるものを追加(indent,eol,start)
" indent: 行頭の空白
" eol: 改行
" start: 挿入モード開始位置より手前の文字
set backspace=indent,eol,start
" カーソルを行頭•行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,[,]
" □や○の文字があってもカーソル位置がずれないようにする
set ambiwidth=double

"----------------
" Character code
"----------------
set showmatch
set encoding=utf-8
set fileformats=unix,dos,mac
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8

"---------------------------
" Start Neobundle Settings
"---------------------------
" bundleで管理するディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'

" NERDTreeを設定
NeoBundle 'scrooloose/nerdtree'

""" 表示・入力補完系
NeoBundle 'Townk/vim-autoclose'
NeoBundle 'mattn/emmet-vim'

""" ツール・ユーティリティ系
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'grep.vim'

" コメントON/OFFを手軽に実行
NeoBundle 'tomtom/tcomment_vim'

" Vimから特定のURLをブラウザで開く
NeoBundle 'open-browser.vim'

" 各モードをハイライト
NeoBundle 'itchyny/lightline.vim'

" Emmet 
NeoBundle 'mattn/emmet-vim'

" Unite.vim
NeoBundle 'Shougo/unite.vim'

" Lightline.vim
NeoBundle 'itchyny/lightline.vim'

" Color scheme hybrid 
NeoBundle 'w0ng/vim-hybrid'

" インデントに色を付けて見やすくする
" NeoBundle 'nathanaelkane/vim-indent-guides'

" vimを立ち上げたときに、自動的にvim-indent-guidesをオンにする
" let g:indent_guides_enable_on_vim_startup = 1

call neobundle#end()
nnoremap <silent><C-e> :NERDTreeToggle<CR>

"----------------
" Search setting
"----------------
" 検索の時に大文字と小文字を区別しない
set ignorecase
" 検索の時に大文字が含まれている場合は区別して検索する
set smartcase
" 最後まで検索したら先頭に戻る
set wrapscan
" 検索結果の文字列のハイライトを有効にする
set hlsearch
" インクリメンタルサーチを使用する
set incsearch
" インクリメンタルサーチを使用しない
" set noincsearch

"-------------------
" Display setting
"-------------------
" カラー設定の有効
syntax on 
" タイトルを表示
set title
" 行数の表示
set number
" 長い行は改行して表示
set wrapscan
" hybrid
colorscheme hybrid
" 背景を黒に指定
set background=dark
hi Comment ctermfg=2
hi LineNr ctermbg=0 ctermfg=0
hi CursorLineNr ctermbg=4 ctermfg=0
set cursorline
hi clear CursorLine

"-------------------
" Indent setting
"-------------------
" タブが対応する空白の数を指定
set tabstop=4
" インデントの各段階に使われる空白の数
set shiftwidth=4
" タブを挿入するとき、代わりに空白を使用する
set expandtab
" タブやバックスペースの使用時に、タブが対応する空白の数を指定
set softtabstop=4
" 改行時に自動でインデント
set autoindent
" 改行時にいい感じにインデントしてくれる(らしい)
set smartindent

"------------------------
" Each language settings
"------------------------
filetype plugin on
" for PHP edit settings.
autocmd FileType php setl autoindent
autocmd FileType php setl expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd FileType php setl smartindent cinwords=if,elseif,else,for,foreach,while,try,catch,class,function,switch,case

" for JavaScript edit settings.
autocmd FileType js setl autoindent
autocmd FileType js setl expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd FileType js setl smartindent cinwords=if,elseif,else,for,foreach,while,try,catch,function,switch,case

"---------------
" Copy & paste
"---------------
" yankしたテキストを無名レジスタだけでなく、*レジスタにも入るようにする
set clipboard+=unnamed
" CUI版vimエディタでビジュアルモードで選択したテキストをクリップボードに入れる
set clipboard+=autoselect
" GUI版vimエディタでビジュアルモードで選択したテキストをクリップボードに入れる








