local term = require "nvchad.term"

local function code_runner()
  -- Define the commands for each file type
  term.runner {
    id = "code_runner",
    pos = "sp", -- or "vsp" for vertical split
    cmd = function()
      local file = vim.fn.expand "%" -- current file
      local filename_without_ext = vim.fn.expand "%:r" -- filename without extension

      -- Command table for various file types
      local ft_cmds = {
        python = "python3 " .. file,
        c = "gcc -g -Wall -Wextra " .. file .. " -o " .. filename_without_ext .. " && ./" .. filename_without_ext,
        cpp = "g++ -g -Wall -Wextra " .. file .. " -o " .. filename_without_ext .. " && ./" .. filename_without_ext,
        java = "javac " .. file .. " && java " .. filename_without_ext,
        javascript = "node " .. file,
        go = "go run " .. file,
        kt = "kotlinc " .. file .. " -g -Xemit-jvm-type-annotations -Xlint && java " .. filename_without_ext .. "Kt",
        html = "python3 -m http.server 8000 --directory $(pwd) & termux-open http://localhost:8000/" .. file,
        lua = "lua -e 'debugger=require(\"mobdebug\").start()' " .. file,
        sh = "bash -x " .. file, -- `-x` for debug tracing
      }

      return ft_cmds[vim.bo.filetype]
    end,
  }
end

return code_runner
