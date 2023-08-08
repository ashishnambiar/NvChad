local gopher = require("gopher")
local gopath = "/home/ashish/go/bin/"

gopher.setup {
  commands = {
    go = "go",
    gomodifytags = gopath .. "gomodifytags",
    gotests = gopath .. "gotests",
    impl = gopath .. "impl",
    iferr = gopath .. "iferr",
  }
}
