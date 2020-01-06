require("utils")
require("cfg")

print('version apk', args.version)
print('mode apk', args.mode)
print('country apk', args.country)

local name_cofig_path = PROJECT_PATH .. "frameworks/runtime-src/proj.android/app/res/values/strings.xml"
local text = loadText(name_cofig_path)
text = string.gsub(text, '<string name=\"app_name\">(.*)</string>', string.format('<string name=\"app_name\">%s</string>', app_name))
saveTo(name_cofig_path, text)

-- local mode = " -c Release"
-- local libs = {
-- 	"tools/simulator/libsimulator/proj.ios_mac",
-- 	"cocos/quick_libs/proj.ios_mac",
-- 	"cocos/scripting/lua-bindings/proj.ios_mac",
-- }

-- print("--------- build libs -----------")
-- for k, v in ipairs(libs) do
-- 	local dir = PROJECT_PATH .. "frameworks/cocos2d-x/" .. v
-- 	os.execute(PROJECT_PATH.."build/ios/ipa-build " .. dir ..mode)
-- end

-- print("--------- build ipa -----------")
-- print("execute:".."ipa-build " .. projDir ..mode)
-- os.execute(PROJECT_PATH .. "build/ios/ipa-build " .. projDir .. mode)

-- print("--------- copy ipa -----------")
-- for f in lfs.dir(ipaFolder) do
--     local str = string.format(PROJECT_PATH .. "publish/%s/%s/pack/%s.ipa", args.country, args.mode, shortName)
-- 	os.rename(ipaFolder .. f, str)
-- end

local output_path = string.format(PROJECT_PATH .. "publish/%s/%s/android/pack", args.country, args.mode)
local cmd = string.format("cocos compile -s %s -p android -m release --compile-script 0 -o %s", PROJECT_PATH, output_path)
os.execute(cmd)

for f in lfs.dir(output_path) do
    if f ~= '.' and f ~= '..' then
        local str = string.format(PROJECT_PATH .. "publish/%s/%s/android/pack/%s.apk", args.country, args.mode, shortName)
        os.execute(string.format('mv %s %s', output_path .. '/' .. f, str))
    end
end
