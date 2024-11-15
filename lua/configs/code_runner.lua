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
        c = "gcc -g " .. file .. " -o " .. filename_without_ext .. " && ./" .. filename_without_ext,
        cpp = "g++ -g " .. file .. " -o " .. filename_without_ext .. " && ./" .. filename_without_ext,
        java = "javac " .. file .. " && java " .. filename_without_ext,
        javascript = "node " .. file,
        go = "go run " .. file,
        -- Add more file types as needed
      }

      return ft_cmds[vim.bo.filetype]
    end,
  }
end

return code_runner
