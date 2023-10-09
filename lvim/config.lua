-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
--
--
-- lvim.lsp.buffer_mappings.normal_mode['gt'] = { vim.cmd("BufferLineCyclePrev"), "Prev tab" }
-- lvim.lsp.buffer_mappings.normal_mode['gT'] = { vim.cmd("BufferLineCycleNext"), "Next tab" }


lvim.keys.normal_mode["gtp"] = ":BufferLineCyclePrev<CR>"
lvim.keys.normal_mode["gtn"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["gtb"] = ":BufferLineGoToBuffer"


lvim.plugins = {
  {
    "dccsillag/magma-nvim",
  },
  {
    "iamcco/markdown-preview.nvim",
     build = function() vim.fn["mkdp#util#install"]() end,
  }
}

require("magma")
require("markdown")
