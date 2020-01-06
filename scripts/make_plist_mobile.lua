require("utils")
require("cfg")

local project = args.project or nil
local platform = args.platform or 'ios'
local platform_file = 'res_' .. platform

local svn_root = ''
local img_path = ''
local img_path_md5 = ''
local temp_path = ''
local temp_dir = ''
local unplist_path = ''
local dest_path = ''
local unplist = nil

if project then
    package.path = package.path .. "../../res/?.lua"
    svn_root = '../../res'
    img_path = '../../res/img_local'
    temp_path = '../../res/temp/img'
    temp_dir = '../../res/temp'
    unplist_path = 'unplist'
    dest_path = '../../res/img'
    unplist = require(unplist_path)
else
    local path = '../../../../wly2_lua_svn/data_project/res_pc/res'
    package.path = string.format(package.path .. "%s/?.lua", path)
    svn_root = path
    img_path = string.format('%s/img_local', path)
    temp_path = string.format('%s/temp/img', path)
    temp_dir = string.format('%s/temp', path)
    unplist_path = 'unplist'
    dest_path = string.format('../../../../wly2_lua_svn/data_project/res_%s/res/img', platform)
    unplist = require(unplist_path)
    print('更新' .. svn_root)
    os.execute('svn up ' .. svn_root)
end

local item_list = {}
local dir_list = {}
function recursiveMd5(path)
    for file in lfs.dir(path) do
        if file ~= "." and file ~= ".." and file ~= ".DS_Store" then
            local f = path .. '/' .. file
            if not isDir(f) then
                item_list[f] = true
            else
                dir_list[f] = true
                recursiveMd5(f)
            end
        end
    end
end
recursiveMd5(img_path)

if not isExist(temp_path) then
    os.execute('mkdir -p ' .. temp_path)
else
    os.execute('rm -rf ' .. temp_path .. '/')
end

if not isExist(dest_path) then
    os.execute('mkdir -p ' .. dest_path)
end

if not project then
    local path = '../../../../wly2_lua_svn/data_project/res_public/res/img/'
    os.execute(string.format('cp -r %s %s', path, dest_path))
else
    os.execute(string.format('cp -r %s/ %s', img_path, dest_path))
end

print('不合图文件')
local unplist_map = {}
for k, item in ipairs(unplist) do
    print(item)
    unplist_map[item] = true
end

--合图处理
function recursiveFile(path)
    for file in lfs.dir(path) do
        if file ~= "." and file ~= ".." and file ~= ".DS_Store" then
            local f = path .. '/' .. file
            if isDir(f) then
                local start_index, end_index = string.find(f, 'img_local/')
                local str = string.sub(f, end_index + 1, #f)
                if not unplist_map[str] then
                    --合图处理
                    print('合图处理', f)
                    os.execute('rm -rf ' .. temp_path)
                    local path1 = string.gsub(f, 'img_local/', 'temp/img/')
                    local path2 = ''
                    if project then
                        path2 = string.gsub(f, 'img_local/', 'img/')
                    else
                        path2 = string.gsub(f, 'img_local/', 'img/')
                        path2 = string.gsub(path2, 'res_pc/', platform_file .. '/')
                    end
                    os.execute('mkdir -p ' .. path1)
                    os.execute(string.format('cp -r %s/ %s', f, path1))
                    --force-squared
                    local cmd = ''
                    if platform == 'ios' then
                        cmd = string.format('TexturePacker %s --sheet %s-{n}.pvr.ccz --data %s-{n}.plist --format cocos2d --texture-format %s --algorithm MaxRects --trim-mode None --opt RGBA8888 --max-size 2048 --prepend-folder-name --extrude 1 --multipack --size-constraints POT --content-protection a0bd368247457c4b2c92fa431f1bad1e --pvr-quality normal', temp_path, path2, path2, 'pvr3ccz')
                    else
                        cmd = string.format('TexturePacker %s --sheet %s-{n}.pkm --data %s-{n}.plist --format cocos2d --texture-format %s --algorithm MaxRects --trim-mode None --opt ETC1_RGB --max-size 2048 --prepend-folder-name --extrude 1 --multipack --size-constraints POT --disable-auto-alias', temp_path, path2, path2, 'pkm')
                        cmd = cmd .. '; ' .. string.format('TexturePacker %s --sheet %s-{n}.pkm-alpha --data %s-{n}.plist-alpha --format cocos2d --texture-format %s --algorithm MaxRects --trim-mode None --opt ETC1_A --max-size 2048 --prepend-folder-name --extrude 1 --multipack --size-constraints POT --disable-auto-alias', temp_path, path2, path2, 'pkm')
                    end
                    os.execute(cmd)
                end
                recursiveFile(f)
            end
        end
    end
end
recursiveFile(img_path)

-- 清理已经合图文件夹
function recursiveClearFile(path)
    if not isExist(path) then
        return
    end
    for file in lfs.dir(path) do
        if file ~= "." and file ~= ".." and file ~= ".DS_Store" then
            local f = path .. '/' .. file
            if isDir(f) then
                if isExist(f .. '-0.plist') then
                    os.execute('rm -rf ' .. f)
                end
                recursiveClearFile(f)
            end
        end
    end
end
recursiveClearFile(dest_path)

--清理遗留文件
function recursiveClearSvnFile(path)
    if not isExist(path) then
        return
    end

    for file in lfs.dir(path) do
        if file ~= "." and file ~= ".." and file ~= ".DS_Store" then
            local f = path .. '/' .. file
            if not isDir(f) then
                local name, file_type = getFileType(f)
                if file_type == 'png' or file_type == 'ccz' or file_type == 'pkm' then
                    if file_type == 'ccz' then
                        name = string.gsub(name, 'pvr', '')
                    end
                    local plist_path = path .. '/' .. name .. '.plist'
                    if isExist(plist_path) then
                        --合图文件
                        if file_type == 'png' then
                            os.execute('rm -rf ' .. f)
                            if not isExist(string.gsub(f, ".png", ".pvr.ccz")) and not isExist(string.gsub(f, ".png", ".pkm")) then
                                os.execute('rm -rf ' .. plist_path)
                            end
                        else
                            local strs = string.split(name, '-')
                            local path1 = string.gsub(path .. '/' .. strs[1], 'img/', 'img_local/')
                            path1 = string.gsub(path1, platform_file, 'res_pc')
                            if not dir_list[path1] then
                                print('remove plist', f)
                                if not project then
                                    os.execute('svn rm ' .. f)
                                    os.execute('svn rm ' .. plist_path)
                                else
                                    os.execute('rm -rf ' .. f)
                                    os.execute('rm -rf ' .. plist_path)
                                end
                                if file_type == 'pkm' then
                                    if not project then
                                        os.execute('svn rm ' .. f .. '-alpha')
                                    else
                                        os.execute('rm -rf ' .. f .. '-alpha')
                                    end
                                end
                            end
                        end
                    else
                        local path1 = string.gsub(f, 'img/', 'img_local/')
                        path1 = string.gsub(path1, platform_file, 'res_pc')
                        if not item_list[path1] and not string.find(path1, '-alpha') then
                            print('remove png', f, path1)
                            if not project then
                                os.execute('svn rm ' .. f)
                            else
                                os.execute('rm -rf ' .. f)
                            end
                        end
                    end
                elseif file_type == 'plist-alpha' then
                    os.execute('rm -rf ' .. f)
                end
            else
                local path1 = string.gsub(f, 'img/', 'img_local/')
                path1 = string.gsub(path1, platform_file, 'res_pc')
                if not dir_list[path1] then
                    print('remove dir', f)
                    if not project then
                        os.execute('svn rm ' .. f)
                    else
                        os.execute('rm -rf ' .. f)
                    end
                end
                recursiveClearSvnFile(f)
            end
        end
    end
end
recursiveClearSvnFile(dest_path)

os.execute('rm -rf ' .. temp_dir)

if not project then
    --svn commit
    os.execute('svn add --force ' .. dest_path .. '/*')
    os.execute("svn commit -m 'git to svn sync src' " .. dest_path)
end
