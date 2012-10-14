"выключаем режим совместимости с VI
set nocompatible
"включаем распознование файлов и типо-специфичные плагины
filetype on
filetype plugin on
"игнорировать регистри при поиске
set ic
"подсвечивать поиск
set hls
"использовать инкрементный поиск
set is

"задать табуляцию в 4 пробела
set ai
set ts=4
set sts=4
set et
set sw=4
"Подсветка python'a
let python_highlight_all = 1
set t_Co=256
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

"Перед сохранением вырезаем пробелы на концах (только в .py файлах)
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``
"В .py файлах включаем умные отступы после ключевых слов
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

let g:snippetsEmu_key = "<C-j>"

" Копи/паст по Ctrl+C/Ctrl+V
vmap <C-c> "+yi
imap <C-v> "+gPi

"Цвутовая схема
colorscheme wombat256
"Включить подсветку синтаксиса
syntax on 
"Включить нумерацию строк
set nu
"Спрятать курсоро мыши когда набирается текст
set mousehide
"Включить поддержку мыши
set mouse=a
"Кодирова терминала
set termencoding=utf-8
set novisualbell 

"Удобное поведение backspace
set backspace=indent,eol,start whichwrap+=<,>,[,]
"Вырубаем черточки на табах
set showtabline=0
"Колоночка, чтобы показывать плюсики для скрытия блоков кода:
set foldcolumn=1

"Переносим на другую строчку, разрываем строки
set wrap
set linebreak

"Вырубаем .swp и ~ (резервные) файлы
set nobackup
set noswapfile
set encoding=utf-8 " Кодировка файлов по умолчанию
set fileencodings=utf8,cp1251 " Возможные кодировки файлов, если файл не в
                              " unicode кодировке, то будет использоваться 
                              " cp1251

nmap <C-n>v :NERDTree<cr>
vmap <C-n>v <esc>:NERDTree<cr>i
imap <C-n>v <esc>:NERDTree<cr>i

nmap <C-n>x :NERDTreeClose<cr>
vmap <C-n>x <esc>:NERDTreeClose<cr>i
imap <C-n>x <esc>:NERDTreeClose<cr>i

"Добавляем словарь для pydiction
let g:pydiction_location = '/home/zapix/.vim/pydiction/complete-dict'

"autocmd FileType python compiler pylint
autocmd VimEnter * NERDTree

"au BufNewFile,BufRead *.xml,*.htm,*.html so XMLFolding 
autocmd BufNewFile,BufRead *.html set ft=htmldjango.html
autocmd BufNewFile,BufRead *.py set ft=python.django
