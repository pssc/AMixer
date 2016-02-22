--[[

AMixer - interface for amixer

(c) 2012, Will Szumski will@cowboycoders.org
(c) 2012, Adrian Smith, triode1@btinternet.com (several functions used from his EnhancedDigitalOuput)
(c) 2016, Phillip Camp, Add Custom Mixer

--]]

local oo            = require("loop.simple")
local AppletMeta    = require("jive.AppletMeta")
local System        = require("jive.System")
local Icon          = require("jive.ui.Icon")
local appletManager = appletManager

local jiveMain, jnt, string, tonumber = jiveMain, jnt, string, tonumber

--local debug = require("jive.utils.debug")

module(...)
oo.class(_M, AppletMeta)



function jiveVersion(meta)
	return 1, 1
end


function defaultSettings(self)
	return {
		custom='equal',
	}
end


function registerApplet(meta)
	local settings = meta:getSettings()

	-- register menus
	jiveMain:addItem(
		meta:menuItem('appletAMixer', 'settingsAudio', meta:string("APPLET_NAME"), 
			function(applet, ...) applet:startMenu(...) end
		)
	)

end

