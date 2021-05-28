--[[

     A simple Awesome WM theme
     Fedora inspired colorscheme

--]]

local gears = require("gears")
local lain  = require("lain")
local awful = require("awful")
local wibox = require("wibox")

local math, string, os = math, string, os
local my_table = awful.util.table or gears.table -- 4.{0,1} compatibility

local theme = {}
theme.dir = os.getenv("HOME") .. "/.config/awesome/themes/fedora"
theme.wallpaper = os.getenv("HOME") .. "/.config/awesome/walls/f34-01-day.png"
theme.font = "Icomoon 13"
theme.taglist_font = "Icomoon 13"
theme.sysFont = "Futura 12"
theme.font_hack = "hack 14"

--[[ FEDORA COLORS ]]--

theme.fedora_blue = "#51a2da"
theme.fedora_alt_blue = "#4397ae"

theme.dark_bg = "#222222"
theme.light_fg = "#c8c8c8"
theme.light_bg = "#dddddd"
theme.dark_fg = "#545454"

theme.white = "#ffffff"

theme.fg_normal = theme.white
theme.fg_focus = theme.fedora_blue
theme.fg_urgent = theme.dark_bg
theme.bg_normal = "#1C00ff00"
theme.bg_focus = theme.dark_bg
theme.bg_urgent = "alpha"
theme.taglist_fg_focus = theme.white
theme.taglist_default = theme.light_fg
theme.taglist_fg_occupied = theme.fedora_alt_blue
theme.taglist_shape = theme.rounded_bar
theme.taglist_bg_empty = theme.dark_bg
theme.taglist_bg_occupied = theme.dark_bg
theme.taglist_bg_focus = "alpha"
theme.tasklist_bg_normal = "alpha"
theme.tasklist_bg_focus = "alpha"
theme.tasklist_fg_focus = theme.fedora_blue
theme.tasklist_shape_border_color_focus = "alpha"
theme.tasklist_shape_border_color_urgent = theme.fedora_blue
theme.tasklist_shape_border_width_focus = 2.5
theme.tasklis_shape_border_width_minimized = 0
theme.hotkeys_bg = theme.dark_bg
theme.hotkeys_fg = theme.white
theme.hotkeys_modifiers_fg = theme.fedora_blue
theme.hotkeys_font = theme.sysFont
theme.hotkeys_description_font = theme.sysFont
theme.hotkeys_border_color = theme.fedora_blue
theme.menu_bg_focus = "alpha"
theme.menu_fg_focus = theme.fedora_blue
theme.menu_bg_normal = theme.dark_bg
theme.menu_fg_normal = theme.white
theme.border_width = 2
theme.border_normal = theme.dark_bg
theme.border_focus = theme.fedora_blue
theme.border_marked = theme.dark_bg
theme.titlebar_bg_focus = "#3F3F3F"
theme.titlebar_bg_normal = "#3F3F3F"
theme.titlebar_bg_focus = theme.bg_focus
theme.titlebar_bg_normal = theme.bg_normal
theme.titlebar_fg_focus = theme.fg_focus
theme.menu_height = 20
theme.menu_width = 140
theme.notification_bg = theme.dark_bg
theme.notification_fg = theme.white
theme.notification_border_color	= theme.fedora_blue
theme.notification_font	= theme.sysFont
theme.menu_submenu_icon = theme.dir .. "/icons/submenu.png"
theme.awesome_icon = theme.dir .. "/icons/awesome.png"
theme.layout_fairv = theme.dir .. "/icons/fairv.png"
theme.layout_fairh = theme.dir .. "/icons/fairh.png"
theme.layout_spiral = theme.dir .. "/icons/spiral.png"
theme.layout_dwindle = theme.dir .. "/icons/dwindle.png"
theme.layout_max = theme.dir .. "/icons/max.png"
theme.layout_fullscreen = theme.dir .. "/icons/fullscreen.png"
theme.layout_magnifier = theme.dir .. "/icons/magnifier.png"
theme.layout_floating = theme.dir .. "/icons/floating.png"
theme.widget_ac = theme.dir .. "/icons/ac.png"
theme.widget_battery = theme.dir .. "/icons/battery.png"
theme.widget_battery_low = theme.dir .. "/icons/battery_low.png"
theme.widget_battery_empty = theme.dir .. "/icons/battery_empty.png"
theme.widget_mem = theme.dir .. "/icons/mem.png"
theme.widget_cpu = theme.dir .. "/icons/cpu.png"
theme.widget_temp = theme.dir .. "/icons/temp.png"
theme.widget_net = theme.dir .. "/icons/net.png"
theme.widget_hdd = theme.dir .. "/icons/hdd.png"
theme.widget_music = theme.dir .. "/icons/note.png"
theme.widget_music_on = theme.dir .. "/icons/note.png"
theme.widget_music_pause = theme.dir .. "/icons/pause.png"
theme.widget_music_stop = theme.dir .. "/icons/stop.png"
theme.widget_vol = theme.dir .. "/icons/vol.png"
theme.widget_vol_low = theme.dir .. "/icons/vol_low.png"
theme.widget_vol_no = theme.dir .. "/icons/vol_no.png"
theme.widget_vol_mute = theme.dir .. "/icons/vol_mute.png"
theme.widget_mail = theme.dir .. "/icons/mail.png"
theme.widget_mail_on = theme.dir .. "/icons/mail_on.png"
theme.widget_task = theme.dir .. "/icons/task.png"
theme.widget_scissors = theme.dir .. "/icons/scissors.png"
theme.widget_weather = theme.dir .. "/icons/dish.png"
theme.tasklist_plain_task_name = true
theme.tasklist_disable_icon = true
theme.tasklist_disable_task_name = false
theme.useless_gap = 4
theme.titlebar_close_button_focus = theme.dir .. "/icons/titlebar/close_focus.png"
theme.titlebar_close_button_normal = theme.dir .. "/icons/titlebar/close_normal.png"
theme.titlebar_ontop_button_focus_active = theme.dir .. "/icons/titlebar/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active = theme.dir .. "/icons/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_inactive = theme.dir .. "/icons/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_inactive = theme.dir .. "/icons/titlebar/ontop_normal_inactive.png"
theme.titlebar_sticky_button_focus_active = theme.dir .. "/icons/titlebar/sticky_focus_active.png"
theme.titlebar_sticky_button_normal_active = theme.dir .. "/icons/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_inactive = theme.dir .. "/icons/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_inactive = theme.dir .. "/icons/titlebar/sticky_normal_inactive.png"
theme.titlebar_floating_button_focus_active = theme.dir .. "/icons/titlebar/floating_focus_active.png"
theme.titlebar_floating_button_normal_active = theme.dir .. "/icons/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_inactive = theme.dir .. "/icons/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_inactive = theme.dir .. "/icons/titlebar/floating_normal_inactive.png"
theme.titlebar_maximized_button_focus_active = theme.dir .. "/icons/titlebar/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active = theme.dir .. "/icons/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_inactive = theme.dir .. "/icons/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = theme.dir .. "/icons/titlebar/maximized_normal_inactive.png"

local markup = lain.util.markup
local separators = lain.util.separators


-- Textclock
local clock = awful.widget.watch(
    "date +'%a %d %b %R'", 60,
    function(widget, stdout)
        widget:set_markup(" " .. markup.font(theme.font_hack, stdout))
    end
)

local clockIcon = wibox.widget {
	text = "",
	font = theme.font,
	widget = wibox.widget.textbox
}

-- Calendar
theme.cal = lain.widget.cal({
    attach_to = { clock },
    notification_preset = {
        font = theme.font_hack,
        fg   = theme.light_fg,
        bg   = theme.dark_bg,
    }
})

-- ALSA volume
theme.volume = lain.widget.alsabar({
    --togglechannel = "IEC958,3",
    notification_preset = { font = theme.font, fg = theme.white },
})

-- MPD
local musicplr = "spotify"
local mpdicon = wibox.widget.imagebox(theme.widget_music)
mpdicon:buttons(my_table.join(
    awful.button({ modkey }, 1, function () awful.spawn.with_shell(musicplr) end),
    --[[awful.button({ }, 1, function ()
        awful.spawn.with_shell("mpc prev")
        theme.mpd.update()
    end),
    --]]
    awful.button({ }, 2, function ()
        awful.spawn.with_shell("mpc toggle")
        theme.mpd.update()
    end),
    awful.button({ modkey }, 3, function () awful.spawn.with_shell("pkill ncmpcpp") end),
    awful.button({ }, 3, function ()
        awful.spawn.with_shell("mpc stop")
        theme.mpd.update()
    end)))
theme.mpd = lain.widget.mpd({
    settings = function()
        if mpd_now.state == "play" then
            artist = " " .. mpd_now.artist .. " "
            title  = mpd_now.title  .. " "
            mpdicon:set_image(theme.widget_music_on)
            widget:set_markup(markup.font(theme.font, markup(theme.dark_bg, artist) .. " " .. title))
        elseif mpd_now.state == "pause" then
            widget:set_markup(markup.font(theme.font, " mpd paused "))
            mpdicon:set_image(theme.widget_music_pause)
        else
            widget:set_text("")
            mpdicon:set_image(theme.widget_music)
        end
    end
})

-- MEM
local mem = lain.widget.mem({
    settings = function()
        widget:set_markup(markup.font(theme.font_hack, " " .. mem_now.used .. "MB "))
    end
})

local memIcon = wibox.widget {
	text = "",
	font = theme.font,
	widget = wibox.widget.textbox
}

-- CPU
local cpu = lain.widget.cpu({
    settings = function()
        widget:set_markup(markup.font(theme.font_hack, " " .. cpu_now.usage .. "% "))
    end
})

local cpuIcon = wibox.widget {
	text = "",
	font = theme.font,
	widget = wibox.widget.textbox
}

-- Coretemp (lain, average)
local temp = lain.widget.temp({
    settings = function()
        widget:set_markup(markup.font(theme.font_hack, " " .. coretemp_now .. "°C "))
    end
})
--]]

local tempIcon = wibox.widget {
	text="",
	font = theme.font,
	widget=wibox.widget.textbox
}

local weathericon = wibox.widget.imagebox(theme.widget_weather)
theme.weather = lain.widget.weather({
    city_id = 4460243, -- Charlotte
--    city_id = 5391959, -- San Francisco
    notification_preset = { font = theme.sysFont, fg = theme.fg_normal },
    weather_na_markup = markup.fontfg(theme.font, "#ffffff", "N/A "),
    settings = function()
        descr = weather_now["weather"][1]["description"]:lower()
        units = math.floor(weather_now["main"]["temp"])
        widget:set_markup(markup.fontfg(theme.font, theme.white, descr .. " " .. units .. "°F "))
    end
})

local weatherIcon = wibox.widget {
	text="",
	font = theme.font,
	widget=wibox.widget.textbox
}

-- Battery
local baticon = wibox.widget.imagebox(theme.widget_battery)

local batIcon = wibox.widget {
	text = "",
	font = "Icomoon 10",
	widget = wibox.widget.textbox
}

local bat = lain.widget.bat({
    settings = function()
        if bat_now.status and bat_now.status ~= "N/A" then
            if bat_now.ac_status == 1 then
                widget:set_markup(markup.font("Icomoon 10", "  "))
                baticon:set_image(theme.widget_ac)
                return
            elseif not bat_now.perc and tonumber(bat_now.perc) <= 5 then
                baticon:set_image(theme.widget_battery_empty)
            elseif not bat_now.perc and tonumber(bat_now.perc) <= 15 then
                baticon:set_image(theme.widget_battery_low)
            else
                baticon:set_image(theme.widget_battery)
            end
            widget:set_markup(markup.font(theme.font_hack, " " .. bat_now.perc .. "% "))
        else
            widget:set_markup()
            baticon:set_image(theme.widget_ac)
        end
    end
})

-- ALSA volume
theme.volume = lain.widget.alsa({
    settings = function()
	widget:set_markup(markup.font(theme.font_hack, " " .. volume_now.level .. "% "))
    end
})

-- Fixed volume icon
local volIcon = wibox.widget {
	text="",
	font = theme.font,
	widget = wibox.widget.textbox
}

local sepIcon = wibox.widget {
    text = "|",
    fg = theme.light_fg,
    font = theme.font,
    widget = wibox.widget.textbox
}

local bar

occupiedColors = {"#D7822D", "#6ED6A5", "#D7822D", "#D7822D", "#D7822D", "#D7822D", "#D7822D", "#D7822D", "#D7822D", "#D7822D"}

-- Helper function that updates a taglist item
local update_taglist = function (item, tag, index)
    if tag.selected then
        theme.taglist_fg_focus = occupiedColors[index]
    elseif tag.urgent then
        theme.taglist_fg_focus = occupiedColors[index]
    elseif #tag:clients() > 0 then
        theme.taglist_fg_focus = occupiedColors[index]
    else
        item.bg = tag_colors_empty[index]
    end
end

local function pl(widget, bgcolor, padding)
--    return wibox.container.background(wibox.container.margin(widget, 16, 16), bgcolor, theme.powerline_rl)
    return wibox.container.background(wibox.container.margin(widget, 16, 16), bgcolor, gears.shape.rectangle)
end

function theme.at_screen_connect(s)
    -- Quake application
   -- s.quake = lain.util.quake({ app = awful.util.terminal })
   s.quake = lain.util.quake({ app = "termite", height = 0.50, argname = "--name %s" })



    -- If wallpaper is a function, call it with the screen
    local wallpaper = theme.wallpaper
    if type(wallpaper) == "function" then
        wallpaper = wallpaper(s)
    end
    gears.wallpaper.maximized(wallpaper, s, true)

    -- All tags open with layout 1
    awful.tag(awful.util.tagnames, s, awful.layout.layouts[1])

    -- Create a promptbox for each screen
    s.mypromptbox = awful.widget.prompt()
    -- Create an imagebox widget which will contains an icon indicating which layout we're using.
    -- We need one layoutbox per screen.
    s.mylayoutbox = awful.widget.layoutbox(s)
    s.mylayoutbox:buttons(my_table.join(
                           awful.button({ }, 1, function () awful.layout.inc( 1) end),
                           awful.button({ }, 3, function () awful.layout.inc(-1) end),
                           awful.button({ }, 4, function () awful.layout.inc( 1) end),
                           awful.button({ }, 5, function () awful.layout.inc(-1) end)))

    -- Create a taglist widget
    s.mytaglist = awful.widget.taglist {
        screen = s,
        filter = awful.widget.taglist.filter.all,
        buttons = taglist_buttons,
        layout = {
            spacing = 0,
            layout = wibox.layout.fixed.horizontal
        },
    }

    -- Create a tasklist widget
    s.mytasklist = awful.widget.tasklist {
    screen   = s,
    filter   = awful.widget.tasklist.filter.currenttags,
    buttons  = tasklist_buttons,
    style    = {
        shape_border_width = 1,
        shape_border_color = "alpha",
        shape  = gears.shape.rectangle,
    },
    layout   = {
        spacing = 15,
        layout  = wibox.layout.flex.horizontal
    },
    -- Notice that there is *NO* wibox.wibox prefix, it is a template,
    -- not a widget instance.
    widget_template = {
        {
            {
                {
                    {
                        id     = 'icon_role',
                        widget = wibox.widget.imagebox,
                    },
                    margins = 2,
                    widget  = wibox.container.margin,
                },
                {
                    id     = 'text_role',
                    widget = wibox.widget.textbox,
                },
                layout = wibox.layout.fixed.horizontal,
            },
            left  = 10,
            right = 10,
            widget = wibox.container.margin
        },
        id     = 'background_role',
        widget = wibox.container.background,
    },
}

    -- Create the wibox
    s.mywibox = awful.wibar({ position = "top", screen = s, height = 28, bg = "alpha", fg = theme.light_fg, shape = gears.shape.rectangle })

    local sep = wibox.widget {{
        layout = wibox.layout.align.horizontal,
        expand = "none",
        {
            {
                layout = wibox.layout.fixed.horizontal,
                spacing = 2,
                sepIcon,
            },
            left = 3,
            right = 3,
            widget = wibox.container.margin,
            },
        },
        shape = gears.shape.rectangle,
        bg = theme.dark_bg,
        widget = wibox.container.background,
    }

    local middle_rect = wibox.widget {{
        layout = wibox.layout.align.horizontal,
        expand = "none",
        {
            {
                layout = wibox.layout.fixed.horizontal,
                spacing = 0,
            },
            left = 1600,
            widget = wibox.container.margin,
            },
        },
        shape = gears.shape.rectangle,
        bg = theme.dark_bg,
        widget = wibox.container.background,
    }

    local tasklist = wibox.widget {{
        layout = wibox.layout.align.horizontal,
        expand = "none",
        {
            {
                layout = wibox.layout.flex.horizontal,
                spacing = 2,
                s.mytasklist,
            },
            left = 5,
            right = 5,
            widget = wibox.container.margin,
            },
        },
        shape = gears.shape.rectangle,
        bg = theme.dark_bg,
        fg = theme.light_fg,
        widget = wibox.container.background,
    }


    local clock = wibox.widget {{
        layout = wibox.layout.align.horizontal,
        expand = "none",
        {
            {
                layout = wibox.layout.fixed.horizontal,
                spacing = 0,
                clockIcon,
		clock,
            },
            left = 5,
            right = 5,
            widget = wibox.container.margin,
            },
        },
        shape = gears.shape.rectangle,
        bg = theme.dark_bg,
	fg = theme.fedora_alt_blue,
        widget = wibox.container.background,
    }

    local taglist = wibox.widget {{
        layout = wibox.layout.align.horizontal,
        expand = "none",
        {
            {
                layout = wibox.layout.fixed.horizontal,
                s.mytaglist,
            },
            left = 0,
            right = 0,
            widget = wibox.container.margin,
            },
        },
        bg = "alpha",
	fg = theme.taglist_default,
        widget = wibox.container.background,
    }

    local spacer = wibox.widget {{
	layout = wibox.layout.align.horizontal,
	expand = "none",
	{
	    {
		layout = wibox.layout.fixed.horizontal,
	    },
	    left = 3,
	    right = 3,
	    widget = wibox.container.margin,
    	    },
	},
	shape = gears.shape.rectangle,
	bg = "alpha",
	widget = wibox.container.background,
    }

    local weather = wibox.widget {{
        layout = wibox.layout.align.horizontal,
        expand = "none",
        {
            {
                layout = wibox.layout.fixed.horizontal,
                spacing = 5,
                weatherIcon,
                theme.weather.widget,
            },
            left = 5,
            right = 5,
            widget = wibox.container.margin,
            },
        },
        shape = gears.shape.rectangle,
        bg = "alpha",
	fg = theme.white,
        widget = wibox.container.background
    }

    local temp = wibox.widget {{
        layout = wibox.layout.align.horizontal,
        expand = "none",
        {
            {
                layout = wibox.layout.fixed.horizontal,
                spacing = 5,
                tempIcon,
                temp.widget,
            },
            left = 5,
            right = 5,
            widget = wibox.container.margin,
            },
        },
        shape = gears.shape.rectangle,
        bg = theme.dark_bg,
	fg = theme.light_fg,
        widget = wibox.container.background
    }

    local cpu = wibox.widget {{
        layout = wibox.layout.align.horizontal,
        expand = "none",
        {
            {
                layout = wibox.layout.fixed.horizontal,
                spacing = 5,
                cpuIcon,
                cpu.widget,
            },
            left = 5,
            right = 5,
            widget = wibox.container.margin,
            },
        },
        shape = gears.shape.rectangle,
        bg = theme.dark_bg,
	fg = theme.fedora_alt_blue,
        widget = wibox.container.background
    }

    local ram = wibox.widget {{
        layout = wibox.layout.align.horizontal,
        expand = "none",
        {
            {
                layout = wibox.layout.fixed.horizontal,
                spacing = 5,
                memIcon,
                mem.widget,
            },
            left = 5,
            right = 5,
            widget = wibox.container.margin,
            },
        },
        shape = gears.shape.rectangle,
        bg = theme.dark_bg,
	fg = theme.light_fg,
        font = theme.sysFont,
	widget = wibox.container.background
    }

    local music = wibox.widget {{
        layout = wibox.layout.align.horizontal,
        expand = "none",
        {
            {
                layout = wibox.layout.fixed.horizontal,
                spacing = 5,
                mpdicon,
                theme.mpd.widget,
            },
            left = 5,
            right = 5,
            widget = wibox.container.margin,
            },
        },
        shape = gears.shape.rounded_bar,
        bg = theme.dark_bg,
        widget = wibox.container.background
    }

    local volume = wibox.widget {{
        layout = wibox.layout.align.horizontal,
        expand = "none",
        {
            {
                layout = wibox.layout.fixed.horizontal,
                spacing = 5,
                volIcon,
                theme.volume.widget,
            },
            left = 5,
            right = 5,
            widget= wibox.container.margin,
        },
        },
        shape = gears.shape.rectangle,
	bg = theme.dark_bg,
	fg = theme.fedora_alt_blue,
        widget = wibox.container.background,
    }

    local battery = wibox.widget {{
	layout = wibox.layout.align.horizontal,
	expand = "none",
	{
	    {
		layout = wibox.layout.fixed.horizontal,
		spacing = 0,
		batIcon,
		bat,
	    },
	    left = 5,
	    right = 5,
	    widget = wibox.container.margin,
	},
	},
	shape = gears.shape.rectangle,
        bg = theme.dark_bg,
	fg = theme.light_fg,
	widget = wibox.container.background,
    }

    -- Add widgets to the wibox
    s.mywibox:setup {
        layout = wibox.layout.align.horizontal,
        spacing = 0,
        { -- Left widgets
            layout = wibox.layout.fixed.horizontal,
            s.mypromptbox,
	    taglist,
            sep,
        },
	{
            layout = wibox.layout.fixed.horizontal,
            spacing = theme.wibar_spacing,
            tasklist,
            middle_rect,
	},
        { -- Right widgets
            layout = wibox.layout.fixed.horizontal,
--            wibox.widget.systray(),
            spacing = 0,
            volume,
            sep,
            ram,
            sep,
            cpu,
            sep,
            temp,
            sep,
            clock,
            sep,
	    battery,
        },
    }
end

return theme
