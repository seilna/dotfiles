set background=dark
highlight clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "seil"

hi Statement            guifg=#ffdd88
hi LineNr               guifg=#FFDD88
hi String               guifg=#EE5577
hi Special              guifg=#FF77CC
hi Identifier           guifg=#44EEEE
hi Number               guifg=#EE5577
hi ConflictMarkerBegin  guibg=#2f7366
hi ConflictMarkerOurs   guibg=#2e5049
hi ConflictMarkerTheirs guibg=#344f69
hi ConflictMarkerEnd    guibg=#2f628e
hi ConflictMarkerSeparator guifg=white guibg=NONE
hi Search               guibg=#ffdd88
hi Pmenu                guibg=#ee5577 guifg=black
