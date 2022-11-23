
require('bufferline').setup {
    options = {
	separator = true,
	color_icons = true,
	show_buffer_icons = true,
	separator_style = "slant",
	right_mouse_command = "bdelete! %d", -- can be a string | function, see "Mouse actions"
	left_mouse_command = "buffer %d",    -- can be a string | function, see "Mouse actions"
    }
}


