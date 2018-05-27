--[[
	-- Controls --
	https://wiki.fivem.net/wiki/Controls
	
	-- Colors --
	r: Red (0 - 255)
	g: Green (0 - 255)
	b: Blue (0 - 255)
	a: Alpha (0.0 - 1.0)
	From Left to Right
]]--

config = {
	controls = {
		{control = {167}, action = "toggle", alwayslisten = true}, -- Open/Close Menu (F6 by default)
		{control = {206, 47}, action = "toggle", alwayslisten = true}, -- Open/Close Menu with Controller (RB + DPAD Left by default)
		{control = {172}, action = "up"}, -- Up
		{control = {173}, action = "down"}, -- Down
		{control = {174}, action = "left"}, -- Previous Page
		{control = {175}, action = "right"}, -- Next Page
		{control = {176}, action = "enter"}, -- Enter
		{control = {177}, action = "back"} -- Back
	},
	
	title = {
		text = "Universal Menu", -- Header Default Text
		color = {
			from = {
				r = 2,
				g = 136,
				b = 209,
				a = 0.9
			},
			
			to = {
				r = 1,
				g = 87,
				b = 155,
				a = 0.8
			},
			
			font = {
				r = 255,
				g = 255,
				b = 255
			},
			
			subtitle = {
				from = {
					r = 33,
					g = 33,
					b = 33,
					a = 0.9
				},
				
				to = {
					r = 0,
					g = 0,
					b = 0,
					a = 0.8
				},
				
				font = {
					r = 207,
					g = 216,
					b = 220
				}
			}
		}
	},
	
	description = {
		color = {
			from = {
				r = 33,
				g = 33,
				b = 33,
				a = 0.8
			},
			
			to = {
				r = 0,
				g = 0,
				b = 0,
				a = 0.7
			},
			
			font = {
				r = 245,
				g = 245,
				b = 245
			}
		}
	},
	
	scrolling = {
		cooldown = 25, -- Time after holding an arrow key to start continous scrolling
		continouscooldown = 5 -- Time between scrolls in continous scrolling mode
	},
	
	items = {
		maxnamelength = 25, -- Maximum length a name can be
		pagelimit = 10, -- Max amount of items on one page (before auto-paging kicks in)
		maxdesclength = 125, -- Maximum length a description can be
		righttextlength = 6 -- Maximum length of right text
	}
}
