require("utils")
require("cfg")

svn_root = '../../' --工程目录
dest_root = '../../../../wly2_lua_svn/data_project/res_pc'
public_root = '../../../../wly2_lua_svn/data_project/res_public'

os.execute('cd ' .. svn_root .. ';git pull')

os.execute('svn add --force ' .. svn_root .. 'res/*')
os.execute('svn add --force ' .. svn_root .. 'src/*')

os.execute("svn commit -m 'update res' " .. svn_root .. 'res')
os.execute("svn commit -m 'update src' " .. svn_root .. 'src')

os.execute('svn up ' .. dest_root)

print('删除遗留文件')
--清理遗留文件
function recursiveClearSvnFile(path)
    if not isExist(path) then
        return
    end

    for file in lfs.dir(path) do
        if file ~= "." and file ~= ".." and file ~= ".DS_Store" then
            local f = path .. '/' .. file
            local path = string.gsub(f, '../../../../wly2_lua_svn/data_project/res_pc/', '../../')
			if not isExist(path) then
				os.execute('svn rm ' .. f)
			end
            if isDir(f) then
                recursiveClearSvnFile(f)
            end
        end
    end
end
recursiveClearSvnFile(dest_root)

os.execute('svn add --force ' .. dest_root .. '/' .. 'res/*')
os.execute('svn add --force ' .. dest_root .. '/' .. 'src/*')
os.execute("svn commit -m 'update res' " .. dest_root)

public_root_md5 = '../../../../wly2_lua_svn/data_project/md5_public.txt'
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
                    local path_short = string.gsub(f, '../../../../wly2_lua_svn/data_project/res_pc/', '')
                    os.execute(string.format('echo %s >> %s', string.format("%s %s", path_short, str_md5), public_root_md5))

                    local file_name, file_type = getFileType(f)
                    local path_file = string.gsub(f, 'res_pc/', 'res_public/')
                    local path_pre = string.gsub(path_file, "/[a-zA-Z0-9_-]+[.][a-zA-Z0-9_-]+", '')
                    if not isExist(path_pre) then
                        os.execute('mkdir -p ' .. path_pre)
                    end

                    if not file_list[path_short] or file_list[path_short] ~= str_md5 then
                        if file_type == 'png' then
                            local prefix = path_pre .. '/' .. file_name
                            local cmd = string.format('TexturePacker %s --sheet %s.png --data %s_compress.plist --format cocos2d --texture-format %s --algorithm MaxRects --trim-mode None --opt RGBA8888 --max-size 4096 --extrude 0 --png-opt-level 1', f, prefix, prefix, PNG_FORMAT)
                            cmd = cmd .. ';' .. 'rm -rf ' .. prefix .. '_compress.plist'

                            if  string.find(f, '/common/battle_name/')
                                or string.find(f, '/common/general_body/')
                                or string.find(f, '/common/general_head/')
                                or string.find(f, '/common/general_icon/')
                                or string.find(f, '/common/general_name/')
                                or string.find(f, '/common/general_spirit/')
                                or string.find(f, '/common/half_body/')
                                or string.find(f, '/common/instance_body/')
                                or string.find(f, '/common/instance_name/')
                                or string.find(f, '/common/item/')
                                or string.find(f, '/common/module_title/')
                                or string.find(f, '/common/player_head/')
                                or string.find(f, '/common/soldier/')
                                or string.find(f, '/common/tip_text/')
                                or string.find(f, '/common/ui2/')
                                or string.find(f, '/soldier/')
                                or string.find(f, '/bg/')
                                or string.find(f, '/map/')
                                or string.find(f, '/animation/')
                                or string.find(f, '/font/') then

                                print('pngquant file_name', file_name)
                                cmd = cmd .. ';' .. string.format("../pngquant/pngquant -o %s -f --quality 60-100 --speed 1 %s", path_file, path_file)
                            end
                            os.execute(cmd)
                        else
                            os.execute(string.format('cp -r %s %s', f, path_pre))
                        end
                    end
                end
            else
                if file ~= 'img_local' and file ~= 'ui_local' then
                    recursivePublicFile(f)
                end
            end
        end
    end
end
recursivePublicFile(dest_root)

print('删除遗留文件 res_public')
--清理遗留文件
function recursiveClearPublicFile(path)
    if not isExist(path) then
        return
    end

    for file in lfs.dir(path) do
        if file ~= "." and file ~= ".." and file ~= ".DS_Store" then
            local f = path .. '/' .. file
            local path = string.gsub(f, 'res_public/', 'res_pc/')
            if not isExist(path) then
                print(path)
                os.execute('svn rm ' .. f)
            end
            if isDir(f) then
                recursiveClearPublicFile(f)
            end
        end
    end
end
recursiveClearPublicFile(public_root)

print('提交 ' .. public_root)
os.execute('svn add --force ' .. public_root .. '/' .. 'res/*')
os.execute('svn add --force ' .. public_root .. '/' .. 'src/*')
print('commit svn')
os.execute("svn commit -m 'update res' " .. public_root)
