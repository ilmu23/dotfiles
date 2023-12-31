" =============================================================================
" Author: Patrick Stockwell
" License: MIT License
" Email: longnow@tutanota.com
" =============================================================================

let s:orange = { "cterm": 228, "gui": "#E7DC6D" }
let s:purple = { "cterm": 141, "gui": "#AC7CFF" }
let s:light_green = { "cterm": 148, "gui": "#A4E400" }
let s:light_blue = { "cterm": 81, "gui": "#62D8F1" }
let s:magenta = { "cterm": 197, "gui": "#FC1A70" }
let s:orange = { "cterm": 208, "gui": "#FF9700" }

let s:grey = { "cterm": 245, "gui": "#8a8a8a" }
let s:dark_grey = { "cterm": 59, "gui": "#5f5f5f" }
let s:darkest_grey = { "cterm": 238, "gui": "#444444" }
let s:light_charcoal = { "cterm": 236, "gui": "#303030" }
let s:black = { "cterm": 0, "gui": "#000000" }

function! s:add(fg, bg, style)
  return [ a:fg["gui"], a:bg["gui"], a:fg["cterm"], a:bg["cterm"], a:style ]
endfunction

let s:palette = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}, 'command': {}}

" right
let s:palette.normal.right = [
      \ s:add(s:black, s:orange, 'bold'),
      \ s:add(s:black, s:grey, 'bold'),
      \ s:add(s:black, s:dark_grey, 'bold') ]
let s:palette.inactive.right = [
      \ s:add(s:black, s:grey, 'bold'),
      \ s:add(s:black, s:dark_grey, 'bold'),
      \ s:add(s:black, s:dark_grey, 'bold') ]
let s:palette.command.right = [
      \ s:add(s:black, s:light_blue, 'bold'),
      \ s:add(s:black, s:grey, 'bold'),
      \ s:add(s:black, s:dark_grey, 'bold') ]
let s:palette.insert.right = [
      \ s:add(s:black, s:light_green, 'bold'),
      \ s:add(s:black, s:grey, 'bold'),
      \ s:add(s:black, s:dark_grey, 'bold') ]
let s:palette.visual.right = [
      \ s:add(s:black, s:purple, 'bold'),
      \ s:add(s:black, s:grey, 'bold'),
      \ s:add(s:black, s:dark_grey, 'bold') ]
let s:palette.replace.right = [
      \ s:add(s:black, s:magenta, 'bold'),
      \ s:add(s:black, s:grey, 'bold'),
      \ s:add(s:black, s:dark_grey, 'bold') ]

" left
let s:palette.normal.left = [
      \ s:add(s:orange, s:darkest_grey, 'bold'),
      \ s:add(s:black, s:orange, 'bold') ]
let s:palette.command.left =  [
      \ s:add(s:light_blue, s:darkest_grey, 'bold'),
      \ s:add(s:black, s:light_blue, 'bold') ]
let s:palette.replace.left = [
      \ s:add(s:magenta, s:darkest_grey, 'bold'),
      \ s:add(s:black, s:magenta, 'bold') ]
let s:palette.insert.left = [
      \ s:add(s:light_green, s:darkest_grey, 'bold'),
      \ s:add(s:black, s:light_green, 'bold') ]
let s:palette.visual.left = [
      \ s:add(s:purple, s:darkest_grey, 'bold'),
      \ s:add(s:black, s:purple, 'bold') ]
let s:palette.inactive.left = s:palette.inactive.right[1:]

" middle
let s:palette.normal.middle = [
      \ s:add(s:orange, s:darkest_grey, 'none') ]
let s:palette.insert.middle = [
      \ s:add(s:light_blue, s:darkest_grey, 'none') ]
let s:palette.replace.middle = [
      \ s:add(s:magenta, s:darkest_grey, 'none') ]
let s:palette.visual.middle = [
      \ s:add(s:purple, s:darkest_grey, 'none') ]
let s:palette.inactive.middle = [
      \s:add(s:dark_grey, s:light_charcoal, 'none') ]

" tabs
let s:palette.tabline.left = [ [ '#d0d0d0', '#666666', 252, 242 ] ]
let s:palette.tabline.tabsel = [ [ '#dadada', '#121212', 253, 233 ] ]
let s:palette.tabline.middle = [ [ '#8a8a8a', '#3a3a3a', 245, 237 ] ]
let s:palette.tabline.right = [ [ '#d0d0d0', '#666666', 252, 242 ] ]

let s:palette.normal.error = [ [ '#d0d0d0', '#ff0000', 252, 196 ] ]
let s:palette.normal.warning = [ [ '#262626', '#ffff00', 235, 226 ] ]

let g:lightline#colorscheme#monokai_tasty#palette = s:palette

