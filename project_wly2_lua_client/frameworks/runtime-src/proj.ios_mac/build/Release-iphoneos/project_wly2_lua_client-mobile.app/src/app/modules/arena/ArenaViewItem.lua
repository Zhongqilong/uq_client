local ArenaViewItem = class("ArenaViewItem", require('app.base.ChildViewBase'))

ArenaViewItem.RESOURCE_FILENAME = "arena/ArenaViewItem.csb"
ArenaViewItem.RESOURCE_BINDING = {
    ["Image_8"]        = {["varname"] = "_imgCountry"},
    ["Text_16_1"]      = {["varname"] = "_txtName"},
    ["Button_3"]       = {["varname"] = "_btnFightOnce",["events"] = {{["event"] = "touch",["method"] = "onFightOnce"}}},
    ["Text_18"]        = {["varname"] = "_txtFightOnce"},
    ["Image_2"]        = {["varname"] = "_imgBg"},
    ["Image_6"]        = {["varname"] = '_imgRole'},
    ["Text_16"]        = {["varname"] = "_txtFight"},
    ["Text_16_0"]      = {["varname"] = "_txtRank"},
    ["Node_1"]         = {["varname"] = "_imgLord"},
    ["Text_5"]         = {["varname"] = "_txtState"},
}

function ArenaViewItem:onCreate()
    ArenaViewItem.super.onCreate(self)
    self._imgBg:setTouchEnabled(true)
    self._imgBg:setSwallowTouches(false)
    self:parseView()
end

function ArenaViewItem:getData()
    return self._data
end

function ArenaViewItem:setData(data, index)
    if data then
        self:setVisible(true)
    else
        self:setVisible(false)
    end
    self._data = data
    local is_self = data.add_self == 1
    self._imgLord:setVisible(is_self)
    local txt_state = index <= 10 and (uq.cache.role.rank > 20 or uq.cache.role.rank < 1)
    self._txtState:setVisible(txt_state)
    self._btnFightOnce:setVisible(not is_self and not txt_state)

    if data.rank > uq.cache.role.rank and uq.cache.role.rank > 0 then
        self._txtFightOnce:setString(StaticData['local_text']['general.sweep.away'])
    else
        self._txtFightOnce:setString(StaticData['local_text']['label.common.find.fight'])
    end

    if data then
        self._txtName:setString(data.name)
        self._txtFight:setString(self._data.power)
        local country_data = StaticData['types'].Country[1].Type[self._data.country]
        if country_data and country_data.icon then
            self._imgCountry:loadTexture("img/common/ui/" .. country_data.icon)
        end
        self:setRank(self._data.rank)

        local img_res = uq.dealHeadName(self._data.img_id, self._data.img_type, "img/common/general_head/", "icon")
        self._imgRole:loadTexture(img_res)
    end
end

function ArenaViewItem:setRank(rank)
    if rank <= 0 then
        self._txtRank:setString(StaticData['local_text']['arena.out'])
    else
        self._txtRank:setString(rank)
    end
end

function ArenaViewItem:onRoleInfo(event)
    if event.name == "ended" then
        if self._data.id ~= uq.cache.role.id then
            local panel = uq.ModuleManager:getInstance():show(uq.ModuleManager.ARENA_INFO, {moduleType = uq.ModuleManager.SHOW_TYPE_REPLACE})
            if panel then
                panel:setData(self._data)
            end
        end
    end
end

function ArenaViewItem:onFightOnce(event)
    if event.name ~= "ended" then
        return
    end
    local info = uq.cache.arena:getArenaInfo()
    if (info.buy_times + 1) * 5 - info.challenge_times <= 0 then
        uq.fadeInfo(StaticData['local_text']['daily.instance.des12'])
        return
    end

    if self._data.rank < uq.cache.role.rank or uq.cache.role.rank == 0 then
        local army_data = {
            ids = {info.formation_id},
            array = {'army_1'},
            army_1 = info.general_loc
        }
        local callback = function()
            network:sendPacket(Protocol.C_2_S_ATHLETICS_CHALLENGE_PLAYER, {is_five = 0, rank_pos = self._data.rank})
        end
        local data = {
            enemy_data = {},
            army_data = {army_data},
            embattle_type = uq.config.constant.TYPE_EMBATTLE.ATHLETIC_EMBATTLE,
            confirm_callback = callback,
            rank = self._data.rank
        }
        uq.ModuleManager:getInstance():show(uq.ModuleManager.ARRANGED_BEFORE_WAR, data)
    else
        network:sendPacket(Protocol.C_2_S_ATHLETICS_SWEEP, {rank = self._data.rank})
    end
end

return ArenaViewItem