local M = {}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd>DapToggleBreakpoint<CR>",
      "Add breakpoint at line",
    },
    ["<leader>dus"] = {
      function()
        local widgets = require("dap.ui.widgets");
        local sidebar = widgets.sidebar(widgets.scopes);
        sidebar.open();
      end,
      "Open debugging sidebar",
    },
  },
}

M.dap_go = {
  plugin = true,
  n = {
    ["<leader>dgt"] = {
      function()
        require("dap-go").debug_test()
      end,
      "Debug go test",
    },
    ["<leader>dgl"] = {
      function()
        require("dap-go").debug_last()
      end,
      "Debug last go test",
    }
  }
}

M.gopher = {
  plugin = true,
  n = {
    ["<leader>gsj"] = {
      "<cmd>GoTagAdd json<CR>",
      "Add json struct tags",
    },
    ["<leader>gsy"] = {
      "<cmd>GoTagAdd yaml<CR>",
      "Add yaml struct tags",
    },
  },
}

M.common = {
  plugin = false,
  n = {
    ["<leader>."] = { "<cmd>tabn<CR>", "Next Tab", },
    ["<leader>,"] = { "<cmd>tabp<CR>", "Previous Tab", },
    ["<leader>n"] = { "<cmd>tabnew<CR>", "New Tab", },
    ["<C-x><C-x>"] = { "<cmd>tabc<CR>", "Close Tab", },
    ["n"] = { "nzzzv", "Next Item", },
    ["N"] = { "Nzzzv", "Previous Item", },
    ["<C-Up>"] = { ":resize -2<CR>", "Decrease window height", },
    ["<C-Down>"] = { ":resize +2<CR>", "Increase window height", },
    ["<C-Left>"] = { ":vertical resize -2<CR>", "Decrease window width", },
    ["<C-Right>"] = { ":vertical resize +2<CR>", "Increase window width", },
    ["<leader>mm"] = { "mmggVG='m", "Format file without LSP", },

    -- ["<leader>o"] = { "\"+p", "Paste from Clipboard", },
    -- ["<leader>O"] = { "\"+P", "Paste from Clipboard before cursor", },

    -- ["<leader>Y"] = { "\"+Y", "Yank to clipboard", },

    ["<C-f>"] = { "<cmd>NvimTreeToggle<CR>", "<->", },
    ["<C-n>"] = { "<cmd>bn<CR>", "<->", },
    ["<C-p>"] = { "<cmd>bp<CR>", "<->", },

    ["<C-C>"] = { "<Esc>", "<->", },
    ["<C-z>"] = { "<Esc>", "<->", },
    -- ["<leader>y"] = { "\"+y", "<->", },
    -- ["<leader>d"] = { "\"_d", "<->", },
  },
  i = {
    ["<C-C>"] = { "<Esc>", "<->", },
    ["<C-z>"] = { "<Esc>", "<->", },
    ["<C-e>"] = { "<C-o>e<Right>", "<->", },
    ["<C-S>"] = { "<C-O>:update<CR>", "<->", },
  },
  v = {
    ["<"] = { "<gv", "<->", },
    [">"] = { ">gv", "<->", },
    -- ["<leader>y"] = { "\"+y", "<->", },
    -- ["<leader>d"] = { "\"_d", "<->", },
  },
  x = {
    ["<C-C>"] = { "<Esc>", "<->", },
    ["<C-z>"] = { "<Esc>", "<->", },
    -- ["<leader>y"] = { "\"+y", "<->", },
    -- ["<leader>d"] = { "\"_d", "<->", },
    -- ["<leader>p"] = { "\"_dP", "<->", },
  },
  c = {
    ["<C-C>"] = { "<Esc>", "<->", },
    ["<C-z>"] = { "<Esc>", "<->", },
    ["<C-e>"] = { "<C-o>e<Right>", "<->", },
    ["<C-S>"] = { "<C-O>:update<CR>", "<->", },
  }
}

return M
