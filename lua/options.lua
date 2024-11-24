require "nvchad.options" -- Load default NVChad options

local o = vim.o

-- Cursor and Navigation
o.scrolloff = 8 -- Keep 8 lines visible above/below the cursor when scrolling
o.sidescrolloff = 8 -- Keep 8 columns visible to the left/right of the cursor when scrolling horizontally
o.wrap = false -- Disable line wrapping; long lines won't wrap to the next line

-- Mouse and Numbers
o.mouse = "a" -- Enable mouse support in all modes
-- o.number = true -- Show absolute line number for the current line
o.relativenumber = true -- Show relative line numbers for other lines, useful for quick navigation

-- Clipboard
o.clipboard = "unnamedplus" -- Use system clipboard for copy/paste operations

-- Tabs and Indentation
-- o.tabstop = 4 -- Set the width of a tab character to 4 spaces
-- o.shiftwidth = 4 -- Set indentation width to 4 spaces for auto-indent
-- o.expandtab = true -- Convert tabs to spaces when typing
-- o.smartindent = true -- Enable smart indentation based on code context

-- Persistent Undo
-- o.undofile = true -- Save undo history to an undo file, allowing persistent undo across sessions

-- Search
-- o.ignorecase = true -- Ignore case in search patterns
-- o.smartcase = true -- Override 'ignorecase' if search pattern contains uppercase letters
-- o.incsearch = true -- Show incremental search matches as you type
-- o.hlsearch = true -- Highlight all search matches

-- Performance
-- o.lazyredraw = true -- Redraw only when necessary, improves performance during macros and command execution
-- o.updatetime = 300 -- Shorten time before CursorHold event triggers, good for plugins like LSP
-- o.timeoutlen = 500 -- Reduce timeout for mapped sequences, making key mappings faster
