hl.workspace_rule({
    workspace = "special:special",
    gaps_out = 12,
})

-- Unset all window rules
hl.window_rule({
    match = { class = ".*" },
    -- unset = true,
})
