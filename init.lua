local nodes_of_corners = {
			{"default:clay","default_clay", "Clay", {cracky = 3,not_in_creative_inventory=1}},
			{"default:coalblock","default_coal_block", "Coal Block", {cracky = 3,not_in_creative_inventory=1}},
			{"default:cobble","default_cobble", "Cobble", {cracky = 3,not_in_creative_inventory=1}},
			{"default:desert_stone","default_desert_stone", "Desert Stone", {cracky = 3,not_in_creative_inventory=1}},
			{"default:junglewood","default_junglewood", "Jungle Wood", {choppy = 3,not_in_creative_inventory=1}},
			{"default:pine_wood","default_pine_wood", "Pine Wood", {choppy = 3,not_in_creative_inventory=1}},
			{"default:acacia_wood","default_acacia_wood", "Acacia Wood", {choppy = 3,not_in_creative_inventory=1}},
			{"default:sandstone","default_sandstone", "Sandstone", {cracky = 3,not_in_creative_inventory=1}},
			{"default:stone","default_stone", "Stone", {cracky = 3,not_in_creative_inventory=1}},
			{"default:wood","default_wood", "Wood", {choppy = 3,not_in_creative_inventory=1}},
			}

for i in ipairs (nodes_of_corners) do
	local material = nodes_of_corners[i][1]
	local image = nodes_of_corners[i][2]
	local descr = nodes_of_corners[i][3]
	local gro = nodes_of_corners[i][4]

local dye_colors = {
		{"dye:brown","brown"},
		{"dye:green","green"},
		{"dye:red","red"},
		{"dye:white","white"},
		}

for i in ipairs (dye_colors) do
	local dye = dye_colors[i][1]
	local dcol = dye_colors[i][2]

local cornerblock = {
		{"wood_brown", 	       	"corners_wood_brown.png",          "Brown Wood"},
		{"wood_green",         	"corners_wood_green.png",          "Green Wood"},
		{"wood_red", 	       	"corners_wood_red.png",            "Red Wood"},
		{"wood_white", 	       	"corners_wood_white.png",          "White Wood"},
		{"stone_brown",        	"corners_stone_brown.png",         "Brown Stone"},
		{"stone_green",      	"corners_stone_green.png",         "Green Stone"},
		{"stone_red", 	      	"corners_stone_red.png",           "Red Stone"},
		{"stone_white",        	"corners_stone_white.png",         "White Stone"},
		{"stonebrick_brown", 	"corners_stonebrick_brown.png",    "Brown Stone Brick"},
		{"stonebrick_green",  	"corners_stonebrick_green.png",    "Green Stone Brick"},
		{"stonebrick_red", 	"corners_stonebrick_red.png",      "Red Stone Brick"},
		{"stonebrick_white", 	"corners_stonebrick_white.png",    "White Stone Brick"},
		}

for i in ipairs(cornerblock) do
	local mat = cornerblock[i][1]
	local img = cornerblock[i][2]
	local desc = cornerblock[i][3]


local other_images = {
		{"top","bottom"},
		}
for i in ipairs (other_images) do
	local top = other_images[i][1]
	local bottom = other_images[i][2]


--Makes the craft item corner
minetest.register_craftitem("mycorners_light:corner_"..mat, {
	description = desc.." Corner",
	inventory_image = img,
	groups = {not_in_creative_inventory=1},

})

minetest.register_craft({
    output = "mycorners_light:corner_wood_"..dcol.." 8";
    recipe = {
        { "default:wood", dye, "", },
        { "", "", "", },
        { "", "", "", },
    }
})
minetest.register_craft({
    output = "mycorners_light:corner_stone_"..dcol.." 8";
    recipe = {
        { "default:stone", dye, "", },
        { "", "", "", },
        { "", "", "", },
    }
})
minetest.register_craft({
    output = "mycorners_light:corner_stonebrick_"..dcol.." 8";
    recipe = {
        { "default:stonebrick", dye, "", },
        { "", "", "", },
        { "", "", "", },
    }
})

--Nodes
minetest.register_node("mycorners_light:cornerblock_"..image.."_"..mat, {
	description = descr.."_Corner"..desc,
	drawtype = "normal",
	paramtype = "light",
	tiles = {
		image..".png^corners_"..mat.."_"..top..".png",
		image..".png^corners_"..mat.."_"..bottom..".png",
		image..".png",
		image..".png^"..img.."^[transformFX",
		image..".png",
		image..".png^"..img,
		},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = gro,

})

dofile(minetest.get_modpath("mycorners_light").."/cornertool.lua")
end
end
end
end









