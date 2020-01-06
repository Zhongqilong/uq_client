--生成ios android下资源
require("utils")
require("cfg")

local platform = args.platform or 'ios'
local platform_file = 'res_' .. platform

src_root = '../../../../wly2_lua_svn/data_project/res_public'
dest_root = '../../../../wly2_lua_svn/data_project/res_' .. platform

os.execute('svn up ' .. src_root)

public_root_md5 = string.format('../../../../wly2_lua_svn/data_project/md5_%s.txt', platform)
if not isExist(public_root_md5) then
    os.execute("touch " .. public_root_md5)
end
print('读取md5文件')
local file_read = io.open(public_root_md5)
local file_list = {}
local line = file_read:read()
while line do
    local strs = string.split(line, ' ')
    file_list[strs[1]] = strs[2]

    line = file_read:read()
end
print('清空md5文件')
os.execute("rm " .. public_root_md5)
os.execute("touch " .. public_root_md5)

print('发布资源')
function recursivePublicFile(path)
    if not isExist(path) then
        return
    end

    for file in lfs.dir(path) do
        if file ~= "." and file ~= ".." and file ~= ".DS_Store" then
            local f = path .. '/' .. file
            if not isDir(f) then
                if file ~= 'readme.md' and file ~= 'unplist.lua' then
                    local str_md5 = fileMd5(f)
                    local path_short = string.gsub(f, '../../../../wly2_lua_svn/data_project/res_public/', '')
                    os.execute(string.format('echo %s >> %s', string.format("%s %s", path_short, str_md5), public_root_md5))

                    local file_name, file_type = getFileType(f)
                    local path_file = string.gsub(f, 'res_public/', platform_file .. '/')
                    local path_pre = string.gsub(path_file, "/[a-zA-Z0-9_-]+[.][a-zA-Z0-9_-]+", '')
                    if not isExist(path_pre) then
                        os.execute('mkdir -p ' .. path_pre)
                    end

                    if not file_list[path_short] or file_list[path_short] ~= str_md5 then
                        if file_type == 'png' then
                            local cmd = ''
                            if string.find(f, '/map/') then
                                local prefix = path_pre .. '/' .. file_name
                                if platform == 'ios' then
                                    cmd = string.format('TexturePacker %s --sheet %s.pvr.ccz --data %s_compress.plist --format cocos2d --texture-format %s --algorithm MaxRects --trim-mode None --opt RGBA8888 --max-size 2048 --extrude 0 --content-protection a0bd368247457c4b2c92fa431f1bad1e --pvr-quality normal', f, prefix, prefix, 'pvr3ccz')
                                    cmd = cmd .. ';' .. 'rm -rf ' .. prefix .. '_compress.plist'
                                    cmd = cmd .. ';' .. string.format('mv %s %s', prefix .. '.pvr.ccz', prefix .. '.png')
                                elseif platform == 'android' then
                                    cmd = string.format('TexturePacker %s --sheet %s.pkm --data %s_compress.plist --format cocos2d --texture-format %s --algorithm MaxRects --trim-mode None --opt ETC1_RGB --max-size 2048 --extrude 0 ', f, prefix, prefix, 'pkm')
                                    cmd = cmd .. ';' .. 'rm -rf ' .. prefix .. '_compress.plist'
                                    cmd = cmd .. ';' .. string.format('mv %s %s', prefix .. '.pkm', prefix .. '.png')

                                    cmd = cmd .. ';' .. string.format('TexturePacker %s --sheet %s.pkm-alpha --data %s_compress-alpha.plist --format cocos2d --texture-format %s --algorithm MaxRects --trim-mode None --opt ETC1_A --max-size 2048 --extrude 0 ', f, prefix, prefix, 'pkm')
                                    cmd = cmd .. ';' .. 'rm -rf ' .. prefix .. '_compress-alpha.plist'
                                    cmd = cmd .. ';' .. string.format('mv %s %s', prefix .. '.pkm-alpha', prefix .. '.png-alpha')
                                end
                                os.execute(cmd)
                            else
                                os.execute(string.format('cp -r %s %s', f, path_pre))
                            end
                        else
                            os.execute(string.format('cp -r %s %s', f, path_pre))
                        end
                    end
                end
            else
                if file ~= 'img' then
                    recursivePublicFile(f)
                end
            end
        end
    end
end
recursivePublicFile(src_root)

print('删除遗留文件 res_public')
--清理遗留文件
function recursiveClearPublicFile(path)
    if not isExist(path) then
        return
    end

    for file in lfs.dir(path) do
        if file ~= "." and file ~= ".." and file ~= ".DS_Store" then
            local f = path .. '/' .. file
            local path = string.gsub(f, platform_file .. '/', 'res_public/')
            path = string.gsub(path, '[.]png[-]alpha', '.png')
            if not isExist(path) then
                os.execute('svn rm ' .. f)
            end

            if isDir(f) then
                if file ~= 'img' then
                    recursiveClearPublicFile(f)
                end
            end
        end
    end
end
recursiveClearPublicFile(dest_root)

print('提交 ' .. dest_root)
os.execute('svn add --force ' .. dest_root .. '/' .. 'res/*')
os.execute('svn add --force ' .. dest_root .. '/' .. 'src/*')
print('commit svn')
os.execute("svn commit -m 'update res' " .. dest_root)
