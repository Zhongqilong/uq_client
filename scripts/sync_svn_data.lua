require("utils")
require("cfg")

local paths = {'../../cocosstudio', '../../res/ui_local', '../../res/img_local', '../../res/animation/partice'}

os.execute('svn add --force ' .. '../../cocosstudio/*')
os.execute('svn add --force ' .. '../../res/ui_local/*')
os.execute('svn add --force ' .. '../../res/img_local/*')
os.execute('svn add --force ' .. '../../res/animation/partice/*')
os.execute("svn commit -m 'git to svn sync src' ../.. ")

local item_list = {}
local dir_list = {}

dir_list['../../res/animation'] = true
dir_list['../../res/animation/partice'] = true
dir_list['../../res/ui_local'] = true
dir_list['../../res/img_local'] = true

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

for k, item in pairs(paths) do
    recursiveMd5(item)
end

local dest_path = '../../../../wly2_lua_svn/data_project/plist/zhongqilong/project_wly2_lua_client'

local dest_paths = { '../../../../wly2_lua_svn/data_project/plist/zhongqilong/project_wly2_lua_client/res',
                    '../../../../wly2_lua_svn/data_project/plist/zhongqilong/project_wly2_lua_client/cocosstudio',
                    }
os.execute('svn up ' .. dest_path)

function recursiveClearSvnFile(path)
    if not isExist(path) then
        return
    end

    for file in lfs.dir(path) do
        if file ~= "." and file ~= ".." and file ~= ".DS_Store" then
            local f = path .. '/' .. file
            if not isDir(f) then
                local name, file_type = getFileType(f)
                local path1 = string.gsub(f, '/../../wly2_lua_svn/data_project/plist/zhongqilong/project_wly2_lua_client', '')
                if not item_list[path1] then
                    print('rm file', f)
                    os.execute('svn rm ' .. f)
                end
            else
                local path1 = string.gsub(f, '/../../wly2_lua_svn/data_project/plist/zhongqilong/project_wly2_lua_client', '')
                if not dir_list[path1] then
                    print('rm dir', path1)
                    os.execute('svn rm ' .. f)
                end
                recursiveClearSvnFile(f)
            end
        end
    end
end

for k, item in pairs(dest_paths) do
    recursiveClearSvnFile(item)
end

os.execute('svn add --force ' .. dest_path)
os.execute("svn commit -m 'git to svn sync src' " .. dest_path)

