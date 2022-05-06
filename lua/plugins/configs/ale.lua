local g = vim.g
local b = vim.bo
--print('configuracion')
g.ale_sig_column_always = 1
g.ale_sign_error = '☠' 
g.ale_sign_warning = '⚠'
g.ale_sign_info = '·'
g.ale_sign_style_error = '·'
g.ale_sign_style_warning = '·'
g['airline#extensions#ale#enabled'] = 1
g.ale_linters = { cs = 'OmniSharp' }


