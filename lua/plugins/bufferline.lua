return {
  {
    "akinsho/bufferline.nvim",
    opts = function(_, opts)
      -- keep default opts; just add mappings elsewhere if you prefer
      return opts
    end,
    keys = (function()
      local keys = {}
      for i = 1, 9 do
        keys[#keys + 1] = {
          "<leader>" .. i,
          function()
            require("bufferline").go_to_buffer(i, true)
          end,
          desc = "Go to buffer " .. i,
        }
      end
      return keys
    end)(),
  },
}
