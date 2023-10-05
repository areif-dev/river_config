local map = function(mode, lhs, rhs) 
  vim.api.nvim_set_keymap(mode, lhs, rhs, { noremap = true, silent = false })
end

local keybinds = {
  i = {
    {'"', '""<left>'},
    {"'", "''<left>"},
    {"`", "``<left>"},
    {"(", "()<left>"},
    {"(<CR>)", "(<CR>)<ESC>O"},
    {"[", "[]<left>"},
    {"[<CR>", "[<CR>]<ESC>O"},
    {"{", "{}<left>"},
    {"{<CR>", "{<CR>}<ESC>O"},
    {"{;<CR>}", "{<CR>};<ESC>O"},
    {"<C-s>", "<ESC>:w<CR>"},
    {"<C-t>", "<ESC>:tabnew<CR>"},
  },
  n = {
    {"<C-l>", ":wincmd l<CR>"},
    {"<C-h>", ":wincmd h<CR>"},
    {"<C-j>", ":wincmd j<CR>"},
    {"<C-k>", ":wincmd k<CR>"},
    {"<C-w>", ":q<CR>"},
    {"<C-s>", ":w<CR>"},
    {"<C-f>", ":Neotree toggle<CR>"},
    {"<C-t>", ":tabnew<CR>"},
    {"<C-[>", ":tabNext<CR>"},
    {"<C-]>", ":tabnext<CR>"},
    {"<C-e>", ":tabnew<CR>:terminal<CR>A"},
  }
}

for mode, mode_list in pairs(keybinds) do
  for i, bind in pairs(mode_list) do 
    map(mode, bind[1], bind[2])
  end
end

-- Set the carriage return to accept the next coc completion suggestion
local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}
vim.keymap.set("i", "<cr>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], opts)
