local LoginRegisterPopCommon = class("LoginRegisterPopCommon", require('app.base.PopupBase'))

local Lang = uq.Language.common

function LoginRegisterPopCommon:ctor(name, params)
	LoginRegisterPopCommon.super.ctor(self, name, params)
end

function LoginRegisterPopCommon:init()
	self._view = uq.parseView(cc.CSLoader:createNode("login/LoginRegisterPop.csb"))
	self._view:setPosition(cc.p(display.width / 2, display.height / 2))
	self:autoScale(self._view)
	self:setLayerColor(0.4)

	local btn_back = self._view:getChildByName("btn_back")
	btn_back:addClickEventListenerWithSound(handler(self, self.closeModule))
	
	local btn_submit = self._view:getChildByName("btn_submit")
	btn_submit:addClickEventListenerWithSound(handler(self, self._onSubmit))
end

function LoginRegisterPopCommon:_onSubmit()
	local tf_user = self._view:getChildByName("tf_user")
	local tf_passwd = self._view:getChildByName("tf_passwd")
	local tf_sure_passwd = self._view:getChildByName("tf_sure_passwd")
	local user = tf_user:getString()
	local passwd = tf_passwd:getString()
	local surePasswd = tf_sure_passwd:getString()
	
	local loginErr = uq.Language.login
	if user == "" then
		uq.TipLayer:createTipLayer(loginErr.input_account):show()
		return
	end
	if passwd == "" then
		uq.TipLayer:createTipLayer(loginErr.input_password):show()
		return
	end
	if surePasswd == "" then
		uq.TipLayer:createTipLayer(loginErr.input_sure_password):show()
		return
	end
	if passwd ~= surePasswd then
		tf_passwd:setString("")
		tf_sure_passwd:setString("")
		uq.TipLayer:createTipLayer(loginErr.diff_password):show()
		return
	end
	
	uq.http_register(user, passwd, function(data)
		if not uq.check_response_data(data) then
			return
		end
		cc.UserDefault:getInstance():setStringForKey("USER", user)
		cc.UserDefault:getInstance():setStringForKey("PASSWD", passwd)
		uq.TipLayer:createTipLayer(uq.Language.text[499]):show()
		loginMod = uq.ModuleManager:getInstance():getModule(uq.ModuleManager.SDK_LOGIN_MODULE)
		if loginMod then
			loginMod._user.username = user
			loginMod._user.passwd = passwd
			loginMod:updateAccount()
		end
		self:closeModule()

		if uq.sdk.platform and uq.SdkHelper then
			local pf = uq.sdk.platform or tostring(uq.sdk.platform_id)
	 		local deviceId = uq.SdkHelper:getInstance():getUniqueIdentification()
	 		local ip = uq.SdkHelper:getInstance():getIpAddress()
			uq.http_uqee_report_register(user, deviceId, ip, pf, function(data)
				uq.log("=====http_uqee_report_register=======!", data)
			end)
 		end
	end)
end

return LoginRegisterPopCommon