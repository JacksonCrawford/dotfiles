--[[

     Simple Awesome WM theme
     Ethereal colorscheme

--]]

local gears = require("gears")
local lain  = require("lain")
local awful = require("awful")
local wibox = require("wibox")

local math, string, os = math, string, os
local my_table = awful.util.table or gears.table -- 4.{0,1} compatibility

local theme                                     = {}
theme.dir                                       = os.getenv("HOME") .. "/.config/awesome/themes/ethereal"
theme.wallpaper                                 = "~/Pictures/wallpapers/fogRock.jpg"
theme.font                                      = "Icomoon 12"
theme.taglist_font                              = "Microns 13"
theme.sysFont					= "Futura 12"
theme.mint					= "#acdabd"
theme.dmint					= "#65a97e"
theme.lg					= "#d9d9d9"
theme.navy					= "#43566c"
theme.lightNavy					= "#7B97B5"
theme.ln					= "#96B1CF"
theme.yellow					= "#d9df8d"
theme.purple					= "#d98eda"
theme.green					= "#6ED6A5"
theme.cotton					= "#7AF7F7"
theme.orange					= "#F3BB72"
theme.red					= "#F65757"
theme.dg					= "#4d4d4d"
theme.color0					= "#2e3440"
theme.color1					= "alpha"
theme.color2					= "#6f5b5a"
theme.color3					= "#4c566a"
theme.fg_normal                                 = "#d8dee9"
theme.fg_focus                                  = theme.mint
theme.fg_urgent                                 = theme.purple
theme.bg_normal                                 = "#1C00ff00"
theme.bg_focus                                  = theme.navy
theme.bg_urgent                                 = "alpha"
theme.taglist_fg_focus                          = theme.mint
theme.taglist_default				= theme.ln..85
theme.taglist_fg_occupied			= theme.ln
theme.tasklist_bg_focus                         = "#000000"
theme.tasklist_fg_focus                         = "alpha"
theme.hotkeys_bg                                = theme.navy
theme.hotkeys_fg                                = theme.lg
theme.hotkeys_modifiers_fg                      = theme.mint
theme.hotkeys_font                              = theme.sysFont
theme.hotkeys_description_font                  = theme.sysFont
theme.menu_bg_focus                             = "alpha"
theme.menu_fg_focus                             = theme.mint
theme.menu_bg_normal                            = theme.navy
theme.menu_fg_normal                            = theme.lg
theme.border_width                              = 2
theme.border_normal                             = theme.navy
theme.border_focus                              = theme.mint
theme.border_marked                             = theme.color0
theme.titlebar_bg_focus                         = "#3F3F3F"
theme.titlebar_bg_normal                        = "#3F3F3F"
theme.titlebar_bg_focus                         = theme.bg_focus
theme.titlebar_bg_normal                        = theme.bg_normal
theme.titlebar_fg_focus                         = theme.fg_focus
theme.menu_height                               = 20
theme.menu_width                                = 140
theme.notification_bg				= theme.navy
theme.notification_fg				= theme.lg
theme.notification_border_color			= theme.mint
theme.notification_font				= theme.sysFont
theme.menu_submenu_icon                         = theme.dir .. "/icons/submenu.png"
theme.awesome_icon                              = theme.dir .. "/icons/awesome.png"
theme.taglist_squares_sel                       = theme.dir .. "/icons/emptySquareSel.png"
theme.taglist_squares_unsel                     = theme.dir .. "/icons/emptySquareUnsel.png"
theme.layout_fairv                              = theme.dir .. "/icons/fairv.png"
theme.layout_fairh                              = theme.dir .. "/icons/fairh.png"
theme.layout_spiral                             = theme.dir .. "/icons/spiral.png"
theme.layout_dwindle                            = theme.dir .. "/icons/dwindle.png"
theme.layout_max                                = theme.dir .. "/icons/max.png"
theme.layout_fullscreen                         = theme.dir .. "/icons/fullscreen.png"
theme.layout_magnifier                          = theme.dir .. "/icons/magnifier.png"
theme.layout_floating                           = theme.dir .. "/icons/floating.png"
theme.widget_ac                                 = theme.dir .. "/icons/ac.png"
theme.widget_battery                            = theme.dir .. "/icons/battery.png"
theme.widget_battery_low                        = theme.dir .. "/icons/battery_low.png"
theme.widget_battery_empty                      = theme.dir .. "/icons/battery_empty.png"
theme.widget_mem                                = theme.dir .. "/icons/mem.png"
theme.widget_cpu                                = theme.dir .. "/icons/cpu.png"
theme.widget_temp                               = theme.dir .. "/icons/temp.png"
theme.widget_net                                = theme.dir .. "/icons/net.png"
theme.widget_hdd                                = theme.dir .. "/icons/hdd.png"
theme.widget_music                              = theme.dir .. "/icons/note.png"
theme.widget_music_on                           = theme.dir .. "/icons/note.png"
theme.widget_music_pause                        = theme.dir .. "/icons/pause.png"
theme.widget_music_stop                         = theme.dir .. "/icons/stop.png"
theme.widget_vol                                = theme.dir .. "/icons/vol.png"
theme.widget_vol_low                            = theme.dir .. "/icons/vol_low.png"
theme.widget_vol_no                             = theme.dir .. "/icons/vol_no.png"
theme.widget_vol_mute                           = theme.dir .. "/icons/vol_mute.png"
theme.widget_mail                               = theme.dir .. "/icons/mail.png"
theme.widget_mail_on                            = theme.dir .. "/icons/mail_on.png"
theme.widget_task                               = theme.dir .. "/icons/task.png"
theme.widget_scissors                           = theme.dir .. "/icons/scissors.png"
theme.widget_weather                            = theme.dir .. "/icons/dish.png"
theme.tasklist_plain_task_name                  = true
theme.tasklist_disable_icon                     = true
theme.useless_gap                               = 4
theme.titlebar_close_button_focus               = theme.dir .. "/icons/titlebar/close_focus.png"
theme.titlebar_close_button_normal              = theme.dir .. "/icons/titlebar/close_normal.png"
theme.titlebar_ontop_button_focus_active        = theme.dir .. "/icons/titlebar/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active       = theme.dir .. "/icons/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_inactive      = theme.dir .. "/icons/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_inactive     = theme.dir .. "/icons/titlebar/ontop_normal_inactive.png"
theme.titlebar_sticky_button_focus_active       = theme.dir .. "/icons/titlebar/sticky_focus_active.png"
theme.titlebar_sticky_button_normal_active      = theme.dir .. "/icons/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_inactive     = theme.dir .. "/icons/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_inactive    = theme.dir .. "/icons/titlebar/sticky_normal_inactive.png"
theme.titlebar_floating_button_focus_active     = theme.dir .. "/icons/titlebar/floating_focus_active.png"
theme.titlebar_floating_button_normal_active    = theme.dir .. "/icons/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_inactive   = theme.dir .. "/icons/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_inactive  = theme.dir .. "/icons/titlebar/floating_normal_inactive.png"
theme.titlebar_maximized_button_focus_active    = theme.dir .. "/icons/titlebar/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active   = theme.dir .. "/icons/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_inactive  = theme.dir .. "/icons/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = theme.dir .. "/icons/titlebar/maximized_normal_inactive.png"

local markup = lain.util.markup
local separators = lain.util.separators


-- Textclock
local clock = awful.widget.watch(
    "date +'%a %d %b %R'", 60,
    function(widget, stdout)
        widget:set_markup(" " .. markup.font(theme.font, stdout))
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
        font = theme.sysFont,
        fg   = theme.purple,
        bg   = theme.navy,
    }
})

-- ALSA volume
theme.volume = lain.widget.alsabar({
    --togglechannel = "IEC958,3",
    notification_preset = { font = theme.font, fg = theme.cotton },
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
            widget:set_markup(markup.font(theme.font, markup(theme.navy, artist) .. " " .. title))
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
        widget:set_markup(markup.font(theme.font, " " .. mem_now.used .. "MB "))
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
        widget:set_markup(markup.font(theme.font, " " .. cpu_now.usage .. "% "))
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
        widget:set_markup(markup.font(theme.font, " " .. coretemp_now .. "°C "))
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
        widget:set_markup(markup.fontfg(theme.font, theme.orange, descr .. " " .. units .. "°F "))
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
            widget:set_markup(markup.font(theme.font, " " .. bat_now.perc .. "% "))
        else
            widget:set_markup()
            baticon:set_image(theme.widget_ac)
        end
    end
})

-- ALSA volume
theme.volume = lain.widget.alsa({
    settings = function()
	widget:set_markup(markup.font(theme.font, " " .. volume_now.level .. "% "))
    end
})

-- Fixed volume icon
local volIcon = wibox.widget {
	text="",
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
--[[
awful.screen.connect_for_each_screen(function(s)
    -- Create a taglist for every screen
    s.mytaglist = awful.widget.taglist {
        screen  = s,
        filter  = awful.widget.taglist.filter.all,
        buttons = keys.taglist_buttons,
        layout = {
            spacing = 10,
            spacing_widget = {
                color  = '#00ff00',
                shape  = gears.shape.circle,
                widget = wibox.widget.separator,
            },
            layout = wibox.layout.flex.horizontal,
        },
        widget_template = {
            widget = wibox.container.background,
            create_callback = function(self, tag, index, _)
                update_taglist(self, tag, index)
            end,
            update_callback = function(self, tag, index, _)
                update_taglist(self, tag, index)
            end,
        }
    }
    ]]--



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
--    s.mytaglist = awful.widget.taglist(s, awful.widget.taglist.filter.all, awful.util.taglist_buttons)

    s.mytaglist = awful.widget.taglist {
        screen = s,
        filter = awful.widget.taglist.filter.all,
        buttons = taglist_buttons,
--	taglist_bg_occupied = theme.cotton,
        layout = {
            spacing = 1,
            shape = gears.shape.circle,
            layout = wibox.layout.fixed.horizontal
        },
    }

    -- Create a taglist for every screen
--[[    s.newtaglist = awful.widget.taglist {
          screen  = s,
          filter  = awful.widget.taglist.filter.all,
          buttons = taglist_buttons,
          layout = wibox.layout.flex.horizontal,
          widget_template = {
              widget = wibox.container.background,
              create_callback = function(self, tag, index, _)
                  update_taglist(self, tag, index)
              end,
              update_callback = function(self, tag, index, _)
                  update_taglist(self, tag, index)
              end,
          }
      }]]--

    -- Create a tasklist widget
    --s.mytasklist = awful.widget.tasklist(s, awful.widget.tasklist.filter.currenttags, awful.util.tasklist_buttons)

    -- Create the wibox
    s.mywibox = awful.wibar({ position = "top", screen = s, height = 20, bg = theme.navy, fg = theme.fg_normal, shape = gears.shape.rectangle })

    --[[s.topwibox = awful.wibar({ position = "top", screen = s, height = 5, bg = "alpha", visible = true })
    awful.placement.maximize_horizontally(s.topwibox)

    s.topwibox:setup {
	widget = s.newtaglist,
    }]]--

    -- Separator
    local arro = wibox.widget {{
	layout = wibox.layout.align.horizontal,
	expand = "none",
	{
	    {
		layout = wibox.layout.fixed.horizontal,
		spacing = 2,
	    },
	    left = 4,
	    right = 5,
	    widget = wibox.container.margin,
    	    },
	},
	shape = gears.shape.powerline,
	bg = theme.lg,
	widget = wibox.container.background,
    }

    local clock = wibox.widget {{
        layout = wibox.layout.align.horizontal,
        expand = "none",
        {
            {
                layout = wibox.layout.fixed.horizontal,
                spacing = 5,
                clockIcon,
		clock,
            },
            left = 5,
            right = 5,
            widget = wibox.container.margin,
            },
        },
        shape = gears.shape.rectangle,
        bg = "alpha",
	fg = theme.purple,
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
            left = 5,
            right = 2,
            widget = wibox.container.margin,
            },
        },
        shape = gears.shape.rectangle,
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
	fg = theme.orange,
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
        bg = "alpha",
	fg = theme.red,
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
        bg = "alpha",
	fg = theme.green,
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
        bg = "#alpha",
	fg = theme.yellow,
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
        bg = theme.color0,
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
        shape = gears.shape.rounded_rect,
        bg = "alpha",
	fg = theme.cotton,
        widget = wibox.container.background,
    }

    local battery = wibox.widget {{
	layout = wibox.layout.align.horizontal,
	expand = "none",
	{
	    {
		layout = wibox.layout.fixed.horizontal,
		spacing = 5,
		batIcon,
		bat,
	    },
	    left = 5,
	    right = 5,
	    widget = wibox.container.margin,
	},
	},
	shape = gears.shape.rectangle,
	bg = "alpha",
	fg = theme.mint,
	widget = wibox.container.background,
    }

    -- Add widgets to the wibox
    s.mywibox:setup {
        layout = wibox.layout.align.horizontal,
        { -- Left widgets
            layout = wibox.layout.fixed.horizontal,
            s.mypromptbox,
	    taglist,
	    spacer,
	    arro,
	    spacer,
	    timeIcon,
	    clock,
	    spacer,
	    arro,
	    spacer,
	    weather,
	    spacer,
	    arro,
	    spacer,
	    cpu,
	    spacer,
	    arro,
	    spacer,
	    temp,
	    spacer,
	    arro,
	    spacer,
	    ram,
	    spacer,
	    arro,
	    spacer,
	    volume,
	    spacer,
	    arro,
        },
	{
            layout = wibox.layout.fixed.horizontal,
	},
        { -- Right widgets
            layout = wibox.layout.fixed.horizontal,
--            wibox.widget.systray(),
	    battery,
--            s.mylayoutbox,
        },
    }
end

return theme
