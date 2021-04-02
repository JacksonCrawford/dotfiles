--[[
	
      Widget that returns system storage

]]--

local helpers = require("lain.helpers")
local wibox = require("wibox")
local awful = require("awful")

local script = [[
	sh -c "
	df -h /dev/nvme0n1p3 --output=source,avail | awk 'FNR == 2 {print $2}'
	"]]

--awful.widget.watch(script, 300, ) 

--awful.spawn(script)

awful.spawn.with_line_callback(script, {
    stdout = function(line)
    	naughty.notify { text = "LINE:"..line }
    end,
    stderr = function(line)
        naughty.notify { text = "ERR:"..line}
    end,
})
