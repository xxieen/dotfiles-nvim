
-- configuration for neovide
if vim.g.neovide then
	-- Put anything you want to happen only in Neovide here
	-- configuration for fonts
	vim.o.guifont = "Cartograph CF:h18"
	vim.opt.linespace = 5
	vim.g.neovide_scale_factor = 1.0
	-- Controls the space between the window border and the actual Neovim, which is filled with the background color instead.
	vim.g.neovide_padding_top = 0
	vim.g.neovide_padding_bottom = 0
	vim.g.neovide_padding_right = 0
	vim.g.neovide_padding_left = 0
	-- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
	vim.g.neovide_transparency = 1
	--vim.g.neovide_window_blurred = true
	vim.g.neovide_floating_blur_amount_x = 2.0
	vim.g.neovide_floating_blur_amount_y = 2.0
	-- floating shadow
	vim.g.neovide_floating_shadow = true
	vim.g.neovide_floating_z_height = 10
	vim.g.neovide_light_angle_degrees = 45
	vim.g.neovide_light_radius = 5
	-- scoll animation
	vim.g.neovide_scroll_animation_length = 0.3
	vim.g.neovide_scroll_animation_far_lines = 5
	-- hiding mouse when typing
	vim.g.neovide_hide_mouse_when_typing = false
	--theme
	-- vim.g.neovide_theme = "auto"
	--cursor
	vim.g.neovide_cursor_animation_length = 0.08
	vim.g.neovide_cursor_trail_size = 0.5
	vim.g.neovide_cursor_vfx_mode = "railgun"
	vim.g.neovide_cursor_vfx_particle_lifetime = 3
	vim.g.neovide_cursor_vfx_particle_density = 10
	vim.g.neovide_cursor_vfx_particle_speed = 5.0
	vim.g.neovide_cursor_vfx_particle_phase = 2.5
	vim.g.neovide_cursor_vfx_particle_curl = 0.5
	--functionality
	vim.g.neovide_refresh_rate_idle = 5
	vim.keymap.set("n", "<D-s>", ":w<CR>") -- Save
	vim.keymap.set("i", "<D-s>", "<ESC>:w<CR>") -- Save
	vim.keymap.set("v", "<D-c>", '"+y') -- Copy
	vim.keymap.set("n", "<D-v>", '"+P') -- Paste normal mode
	vim.keymap.set("v", "<D-v>", '"+P') -- Paste visual mode
	vim.keymap.set("c", "<D-v>", "<C-R>+") -- Paste command mode
	vim.keymap.set("i", "<D-v>", '<ESC>l"+Pli') -- Paste insert mode
	vim.g.neovide_scale_factor = 1.0
	local change_scale_factor = function(delta)
		vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
	end
	vim.keymap.set("n", "<C-=>", function()
		change_scale_factor(1.25)
	end)
	vim.keymap.set("n", "<C-->", function()
		change_scale_factor(1 / 1.25)
	end)
end
