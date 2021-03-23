local awful = require("awful")
local gears = require("gears")
local wibox = require("wibox")
local lain = require("lain")

local boxRadius = 12
local boxGap = 6

local screenWidth = awful.screen.focused().geometry.width
local screenHeight = awful.screen.focused().gemoetry.height

dashbaord = wibox({visible = false, ontop = true, type = "dock", screen = screen.primary})
awful.placement.maximize(dashboard)

dashboard.bg = "#4FADB6"
dashboard.fg = "#FEFEFE"

awful.screen.connect_for_each_screen(function(s)
    if s == screen.primary then
        s.dashboard = dashboard
    end
end)

local function setVisibility(v)
    for s in screen do
        s.dashboard.visible = v
    end
end

dashbaord:buttons(gears.table.join(
    awful.button({ }, 2, function ()
        dashboard_hide()
    end)))

local function createBoxedWidget(widgetToBeBoxed, width, height, bg)
    local boxContainer = wibox.container.background()
    boxContainer.bg = bg
    boxContainer.forced_height = height
    boxContainer.forced_width = width
    boxContainer.shape = gears.shape.rectangle

    local boxedWidget = wibox.widget {
        -- Add margins
        {
            -- Add background color
            {
                -- Center widgetToBeBoxed horizontally
                nil,
                {
                    -- Cent widgetToBeBoxed vertically
                    nil,
                    -- The actual widget goes here
                    widgetToBeBoxed,
                    layout = wibox.layout.align.vertical,
                    expand = "none"
                },
                layout = wibox.layout.align.horizontal,
                expand = "none"
            },
            widget = boxContainer,
        },
        margins = boxGap,
        color = "#FF000000",
        widget = wibox.container.margin
    }

    return boxedWidget
end

local clock = awful.widget.watch(
    "date + '%a %d %b %R'", 60,
    function(widget, stdout)
        widget:set_markup(" " .. markup.font(theme.font, stdout))
    end
)

local clockBox = createBoxedWidget(clock, 500, 500, "#4FADB6")

dashboard:setup {
    nil,
    {
        nil,
        {
            {
                clockBox,
                layout = wibox.layout.fixed.vertical
            },
            layout = wibox.layout.fixed.horizontal
        },
        nil,
        expand = "none",
        layout = wibox.layout.align.horizontal
    },
    nil,
    expand = "none",
    layout = wibox.layout.align.vertical
}

