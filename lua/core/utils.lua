local M = {}

local cmd = vim.cmd

M.load_config = function ()
   return require "core.global_config" 
end 

--M.override_req = function(name, default_config, config_function)
  -- local override, apply_table_override =
    --  require("core.utils").load_config().plugins.default_plugin_config_replace[name], "false"
   --local result = default_config
   --if type(override) == "string" and override ~= "" then
      --return "require('" .. override .. "')"
   --elseif type(override) == "table" then
      --apply_table_override = "true"
   --elseif type(override) == "function" then
      --return override
   --end

   --result = "('" .. result .. "')"
   --if type(config_function) == "string" and config_function ~= "" then
      -- add the . to call the functions and concatenate true or false as argument
      --result = result .. "." .. config_function .. "(" .. apply_table_override .. ")"
   --end

   --return "require" .. result
--end

return M

