PROJECT_PATH = "../../"
VERSION_PATH = PROJECT_PATH .. "src/version.lua"
OUTPUT_FOLDER = PROJECT_PATH .. "build/output/"
PNG_FORMAT = 'png'


args = {}
for k, v in ipairs(arg) do
    local arr = string.split(v, "=")
    if #arr == 2 then
        args[arr[1]] = arr[2]
    end
end

args.mode = args.mode and args.mode or 'test'

packageNames = {
    ["test"] = "newwl_test",
    ["online"] = "newwl_online",
}
local appNames = {
    ["test"] = "新卧龙吟(内部)",
    ["online"] = "新卧龙吟",
}
app_name = appNames[args.mode]
packageName = packageNames[args.mode]
shortName = "newwl_" .. args.mode