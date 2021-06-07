--[[

     A simple Awesome WM theme
     Evanescent colorscheme

--]]

local gears = require("gears")
local lain  = require("lain")
local awful = require("awful")
local wibox = require("wibox")

local math, string, os = math, string, os
local my_table = awful.util.table or gears.table -- 4.{0,1} compatibility

local theme = {}
theme.dir = os.getenv("HOME") .. "/.config/awesome/themes/celestial"
theme.wallpaper = os.getenv("HOME") .. "/.config/awesome/walls/green_nebula.jpg"
theme.font = "Icomoon 13"
theme.taglist_font = "Icomoon 16"
theme.sysFont = "Futura 12"
theme.font_hack = "hack 14"

--[[ EVANESCENT COLORS ]]--

theme.dark_bg = "#2e333c"
theme.light_fg = "#c8c8c8"
theme.light_bg = "#e9e6e9"
theme.dark_fg = "#5f5f5f"

theme.green_fg = "#acdabd"

theme.blue_fg = "#6182ce"

theme.purple_fg = "#eda2ed"
theme.white = "#ffffff"

theme.fg_normal = theme.white
theme.fg_focus = theme.green_fg
theme.fg_urgent = theme.dark_bg
theme.bg_normal = "#1C00ff00"
theme.bg_focus = theme.dark_bg
theme.bg_urgent = "alpha"
theme.taglist_fg_focus = theme.green_fg
theme.taglist_fg_occupied = theme.purple_fg
theme.taglist_shape = theme.rounded_bar
theme.taglist_bg_empty = theme.dark_bg
theme.taglist_bg_occupied = theme.dark_bg
theme.taglist_bg_focus = "alpha"
theme.tasklist_bg_normal = "alpha"
theme.tasklist_bg_focus = "alpha"
theme.tasklist_fg_normal = theme.light_fg
theme.tasklist_fg_focus = theme.green_fg
theme.tasklist_shape_border_color_focus = "alpha"
theme.tasklist_shape_border_color_urgent = theme.green_fg
theme.tasklist_shape_border_width_focus = 2.5
theme.tasklis_shape_border_width_minimized = 0
theme.hotkeys_bg = theme.dark_bg
theme.hotkeys_fg = theme.white
theme.hotkeys_modifiers_fg = theme.green_fg
theme.hotkeys_font = theme.sysFont
theme.hotkeys_description_font = theme.sysFont
theme.hotkeys_border_color = theme.green_fg
theme.menu_bg_focus = "alpha"
theme.menu_fg_focus = theme.green_fg
theme.menu_bg_normal = theme.dark_bg
theme.menu_fg_normal = theme.dark_bg
theme.border_width = 2
theme.border_normal = theme.dark_bg
theme.border_focus = theme.green_fg
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
theme.notification_border_color	= theme.green_fg
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

local screen_width = awful.screen.focused().geometry.width
local screen_height = awful.screen.focused().geometry.height

-- Textclock
local clock = awful.widget.watch(
    "date +'%a %d %b %R'", 60,
    function(widget, stdout)
        widget:set_markup(" " .. markup.font(theme.font_hack, stdout))
    end
)

-- Calendar
theme.cal = lain.widget.cal({
    attach_to = { clock },
    notification_preset = {
        font = theme.font_hack,
        fg   = theme.purple_fg,
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
            widget:set_markup(markup.font(theme.font, markup(theme.lght_bg, artist) .. " " .. title))
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
        widget:set_markup(markup.font("hack 20", "   " .. mem_now.used .. "MB "))
    end
})

-- CPU
local cpu = lain.widget.cpu({
    settings = function()
        widget:set_markup(markup.font("hack 20", "    " .. cpu_now.usage .. "% "))
    end
})

-- Coretemp (lain, average)
local tempr = lain.widget.temp({
    settings = function()
        widget:set_markup(markup.font("hack 20", "    " .. coretemp_now .. "°C "))
    end
})

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

-- Battery
local baticon = wibox.widget.imagebox(theme.widget_battery)

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
	widget:set_markup(markup.font("hack 20", "    " .. volume_now.level .. "% "))
    end
})

local bar


local create_rect = function(radius)
    return function(cr, width, height)
        gears.shape.rectangle(cr, width, height, radius)
    end
end

local function new_widget(boxable_widget, bg, fg, height, width)
    local box = wibox.container.background()
    box.bg = bg
    box.fg = fg
    box.forced_height = height
    box.forced_width = width

    local widget_box = wibox.widget {
        { -- Margins
            { -- Background color?
                nil,
                {
                    nil,
                    boxable_widget,
                    layout = wibox.layout.align.vertical,
                    expand = "none"
                },
                layout = wibox.layout.align.horizontal,
                expand = "none"
            },
            widget = box,
        },
        margins = 12,
        color = "#FF000000",
        widget = wibox.container.margin
    }

    return widget_box
end



function theme.at_screen_connect(s)
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

    -- Create the dashboard wibox
    dashwibox = awful.wibox({
--        x = awful.screen.focused().geometry.x,
--        y = awful.screen.focused().geometry.y,
        x = 100,
        y = 100,
        screen = awful.screen.focused(),
        visible = false,
        ontop = true,
        type = "dock",
        bg = "alpha",
        height = screen_height,
        width = screen_width
    })

--    awful.placement.maximize(dashwibox)

    local hour = wibox.widget.textclock("<span foreground='" .. theme.green_fg .."'>%H</span>")
    hour.font = "Futura Bold 56"
    hour.align = "center"
    hour.valign = "center"

    local minute = wibox.widget.textclock("<span foreground='" .. theme.purple_fg .."'>:%M</span>")
    minute.font = "Futura 56"
    minute.align = "center"
    minute.valign = "center"

    local apps = wibox.widget {
        text = "                 ",
        font = "Icomoon 20",
        widget = wibox.widget.textbox
    }

    local locations = wibox.widget {
        text = "documents\ndownloads\npictures\nwallpapers\nresearch\n.config",
        font = "Futura 24",
        align = "center",
        widget = wibox.widget.textbox
    }

    local sys_ctrl = wibox.widget {
        text = "       ",
        font = "Icomoon 20",
        widget = wibox.widget.textbox
    }

    local month = awful.widget.watch(
        "date +'%b'", "60",
        function(widget, stdout)
            widget:set_markup(" " .. markup.font("Futura 52", stdout))
        end
    )

    local day = awful.widget.watch(
        "date +'%d'", "60",
        function(widget, stdout)
            widget:set_markup(" " .. markup.font("Futura 52", stdout))
        end
    )

    local date = wibox.widget {
        month,
        day,
        layout = wibox.layout.fixed.vertical
    }

    local time = wibox.widget {
        hour,
        minute,
        layout = wibox.layout.fixed.vertical
    }

    local spacer = wibox.widget {{
        layout = wibox.layout.align.horizontal,
        expand = "none",
        {
            {
                layout = wibox.layout.fixed.horizontal,
            },
            widget = wibox.container.margin,
            },
        },
        shape = gears.shape.rectangle,
        bg = "alpha",
        widget = wibox.container.background,
    }

    local processor = wibox.widget {
        text = "CPU",
        font = "Futura Bold 64",
        opacity = .2,
        align = "center",
        valign = "center",
        widget = wibox.widget.textbox
    }

    local ram = wibox.widget {
        text = "RAM",
        font = "Futura Bold 64",
        opacity = .2,
        align = "center",
        valign = "center",
        widget = wibox.widget.textbox
    }

    local temp = wibox.widget {
        text = "TEMP",
        font = "Futura Bold 64",
        opacity = .2,
        align = "center",
        valign = "center",
        widget = wibox.widget.textbox
    }

    local vol = wibox.widget {
        text = "VOL",
        font = "Futura Bold 64",
        opacity = .2,
        align = "center",
        valign = "center",
        widget = wibox.widget.textbox
    }

    local memory = wibox.widget {
        ram,
        mem,
        layout = wibox.layout.stack
    }

    local chip = wibox.widget {
        processor,
        cpu,
        align = "center",
        valign = "center",
        layout = wibox.layout.stack
    }

    local temperature = wibox.widget {
        temp,
        tempr,
        layout = wibox.layout.stack
    }

    local taglist = wibox.widget {
        s.mytaglist,
        layout = wibox.layout.fixed.vertical
    }

    local volume = wibox.widget {
        vol,
        theme.volume.widget,
        layout = wibox.layout.stack
    }

    local taglist_box = new_widget(taglist, theme.dark_bg, theme.dark_fg, 100, screen_width / 5)
    local apps_box = new_widget(apps, theme.dark_bg, theme.green_fg, 128, screen_width / 5)
    local tiempo_box = new_widget(time, theme.dark_bg, theme.green_fg, 250, screen_width / 10)
    local date_box = new_widget(date, theme.dark_bg, theme.green_fg, 250, screen_width / 10)
    local ram_box = new_widget(memory, theme.dark_bg, theme.purple_fg, 113, screen_width / 10)
    local cpu_box = new_widget(chip, theme.dark_bg, theme.green_fg, 100, screen_width / 10)
    local temp_box = new_widget(temperature, theme.dark_bg, theme.green_fg, 113, screen_width / 10)
    local vol_box = new_widget(volume, theme.dark_bg, theme.purple_fg, 128, screen_width / 10)
    local locations_box = new_widget(locations, theme.dark_bg, theme.green_fg, 374, screen_width / 10)
    local horizontal_spacer_box = new_widget(spacer, "alpha", "alpha", 10, screen_width / 4)
    local vertical_spacer_box = new_widget(spacer, "alpha", "alpha", screen_height / 4, 10)
    local sys_ctrl_box = new_widget(sys_ctrl, theme.dark_bg, theme.purple_fg, 128, screen_width / 10)

    dashwibox:setup {
        {
            horizontal_spacer_box,
            layout = wibox.layout.fixed.vertical,
        },
        {
            vertical_spacer_box,
            locations_box,
            sys_ctrl_box,
            layout = wibox.layout.fixed.vertical,
        },
        {
            vertical_spacer_box,
            taglist_box,
            {
                tiempo_box,
                date_box,
                layout = wibox.layout.fixed.horizontal,
            },
            apps_box,
            layout = wibox.layout.fixed.vertical,
        },
        {
            vertical_spacer_box,
            cpu_box,
            ram_box,
            temp_box,
            vol_box,
            layout = wibox.layout.fixed.vertical,
        },
        expand = "none",
        layout = wibox.layout.fixed.horizontal,
        widget = wibox.container.background
    }
end

function dashboard_hide()
    awful.keygrabber.stop(dashboard_grabber)
    dashwibox.visible = false
end

function dashboard_show()
    dashboard_grabber = awful.keygrabber.run(
                            function(_, key, event)
            if event == 'release' then return end

            if key == "b" then
                awful.spawn("firefox")
            elseif key == "r" then
                awful.spawn("firefox https://www.reddit.com/")
            elseif key == "g" then
                awful.spawn("firefox https://github.com/")
            elseif key == "m" then
                awful.spawn("thunderbird")
            elseif key == "k" then
                awful.spawn("kitty")
            elseif key == "t" then
                awful.spawn("telegram")
            elseif key == "s" then
                awful.spawn("spotify")
            elseif key == "a" then
                awful.spawn("apostrophe")
            elseif key == "f" then
                awful.spawn("firefox https://docs.fedoraproject.org/en-US/docs/")
            elseif key == "d" then
                awful.spawn("thunar Documents")
            elseif key == "Down" then
                awful.spawn("thunar Downloads")
            elseif key == "p" then
                awful.spawn("thunar Pictures")
            elseif key == "o" then
                awful.spawn("thunar ~/Pictures/screenshots")
            elseif key == "w" then
                awful.spawn("thunar ~/Pictures/wallpapers")
            elseif key == "j" then
                awful.spawn("thunar ~/Documents/research")
            elseif key == "c" then
                awful.spawn("thunar ~/.config")
            elseif key == "1" then
                awful.spawn.with_shell("systemctl poweroff")
            elseif key == "2" then
                awful.spawn.with_shell("systemctl reboot")
            --[[elseif key == "e" then
                awesome.quit()]]--
            elseif key == "n" then
                awful.spawn.with_shell("redshift -l 00:00")
            elseif key == "v" then
                awful.spawn("kitty vtop")
            end

            if key == "Tab" or "esc" then
                dashboard_hide()
            end
        end)
    dashwibox.visible = true
end

return theme
