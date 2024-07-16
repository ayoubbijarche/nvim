return {
    "pocco81/auto-save.nvim",
    enabled = true,
    trigger_events = {"InsertLeave", "TextChanged"},
	condition = function(buf)
		local fn = vim.fn
		local utils = require("auto-save.utils.data")

		if
			fn.getbufvar(buf, "&modifiable") == 1 and
			utils.not_in(fn.getbufvar(buf, "&filetype"), {}) then
			return true
		end
		return false -- can't save
	end,
    write_all_buffers = false,
    debounce_delay = 400,
	callbacks = { 
		enabling = nil,
		disabling = nil,
		before_asserting_save = nil,
		before_saving = nil,
		after_saving = nil
	}
}
