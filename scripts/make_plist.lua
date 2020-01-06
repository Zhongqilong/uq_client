require("utils")
require("cfg")

local svn_root = ''
local img_path = ''
local img_path_md5 = ''
local temp_path = ''
local temp_dir = ''
local unplist_path = ''
local dest_path = ''
local unplist = nil

if not args.commit_name then
    package.path = package.path .. "../../res/?.lua"
    svn_root = '../../res'
    img_path = '../../res/img_local'
    temp_path = '../../res/temp/img'
    temp_dir = '../../res/temp'
    unplist_path = 'unplist'
    dest_path = '../../res/img'
    unplist = require(unplist_path)
else
    local path = '../../../../wly2_lua_svn/data_project/plist/' .. args.commit_name
    package.path = string.format(package.path .. "%s/res/?.lua", path)
    svn_root = string.format('%s/res', path)
    img_path = string.format('%s/res/img_local', path)
    temp_path = string.format('%s/res/temp/img', path)
    temp_dir = string.format('%s/res/temp', path)
    unplist_path = 'unplist'
    dest_path = string.format('%s/res/img', path)
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
os.execute(string.format('cp -r %s/ %s', img_path, dest_path))

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
                    local path2 = string.gsub(f, 'img_local/', 'img/')
                    os.execute('mkdir -p ' .. path1)
                    os.execute(string.format('cp -r %s/ %s', f, path1))
                    local cmd = string.format('TexturePacker %s --sheet %s-{n}.png --data %s-{n}.plist --format cocos2d --texture-format %s --algorithm MaxRects --trim-mode None --opt RGBA8888 --max-size 2048 --prepend-folder-name --png-opt-level 1 --extrude 1 --multipack', temp_path, path2, path2, PNG_FORMAT)
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
                if file_type == 'png' then
                    local plist_path = path .. '/' .. name .. '.plist'
                    if isExist(plist_path) then
                        --合图文件
                        local strs = string.split(name, '-')
                        local path1 = string.gsub(path .. '/' .. strs[1], 'img/', 'img_local/')
                        if not dir_list[path1] then
                            print('remove plist', f)
                            if args.commit_name then
                                os.execute('svn rm ' .. f)
                                os.execute('svn rm ' .. plist_path)
                            else
                                os.execute('rm -rf ' .. f)
                                os.execute('rm -rf ' .. plist_path)
                            end
                        end
                    else
                        local path1 = string.gsub(f, 'img/', 'img_local/')
                        if not item_list[path1] then
                            print('remove png', f, path1)
                            if args.commit_name then
                                os.execute('svn rm ' .. f)
                            else
                                os.execute('rm -rf ' .. f)
                            end
                        end
                    end
                end
            else
                local path1 = string.gsub(f, 'img/', 'img_local/')
                if not dir_list[path1] then
                    print('remove dir', f)
                    if args.commit_name then
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

if args.commit_name then
    --svn commit
    os.execute('svn add --force ' .. dest_path .. '/*')
    os.execute("svn commit -m 'git to svn sync src' " .. dest_path .. '/*')
end
