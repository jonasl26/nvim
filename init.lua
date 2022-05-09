local core_modules = {
	"core.options",
        "plugins",
        "colors"}

for _, module in ipairs(core_modules) do
       -- print(module)
	local ok, err = pcall(require,module)
	if not ok then
		error("Error loading " .. module .. "\n\n" .. err)
        end
end
