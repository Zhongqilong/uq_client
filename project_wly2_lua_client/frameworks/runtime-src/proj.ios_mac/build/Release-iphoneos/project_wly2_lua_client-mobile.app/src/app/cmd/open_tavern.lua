local cmd = {}

function cmd.run()
    uq.ModuleManager:getInstance():show(uq.ModuleManager.RECRUIT_MAIN, {moduleType = uq.ModuleManager.SHOW_TYPE_REPLACE})
end

return cmd