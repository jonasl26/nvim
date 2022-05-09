local g = vim.g
g.OmniSharp_popup_position = 'peek'

--Resaltado automatico en todo momento
--g.OmniSharp_highlighting = 3
g.OmniSharp_highlighting = 3
g.OmniSharp_diagnostic_showid = 1
if neovim then
  g.OmniSharp_popup_options = {
    winblend = 30,
    winhl = { Normal = 'Normal', FloatBorder = 'ModeMsg'},
    border = 'rounded'
  }
else
 g.OmniSharp_popup_options = {
   highlight = 'Normal',
  padding = 0,
  border = 1,
  borderchars = {'─', '│', '─', '│', '╭', '╮', '╯', '╰'},
  borderhighlight = 'ModeMsg'
  }
end
g.OmniSharp_popup_mappings = {
    sigNext = '<C-n>',
    sigPrev = '<C-p>',
    pageDown = { {'<C-f>'}, {'<PageDown>'}},
    pageUp= {{'<C-b>'}, {'<PageUp>'}},
}

--if s:using_snippets then
--  g.OmniSharp_want_snippet = 1
--end

--g.OmniSharp_highlight_groups = {
--  ExcludedCode = 'NonText' 
--}
