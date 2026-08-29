-- Enable blur for xwayland context menus and all windows
hl.window_rule({ match = { class = "^$", title = "^$" }, no_blur = false })
hl.window_rule({ match = { class = ".*" }, no_blur = false })

-- Decoration / blur config
hl.config({
    decoration = {
        active_opacity   = 0.9,
        inactive_opacity = 0.6,
        fullscreen_opacity = 1.0,

        blur = {
            enabled           = true,
            size              = 1,
            passes            = 2,
            new_optimizations = true,
            xray              = false,
            noise             = 0.05,
            contrast          = 1.15,
            brightness        = 0.9,
            special           = false,
            popups            = true,
        },
    },
})

