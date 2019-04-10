--Chart Coastline Script

function getChunkCoords(x, y)
    getChunkCoords = { math.floor(x/32),  math.floor(y/32)}
end

local chunkPos
local surf = game.player.surface 

local waterCount
local groundCount

local debug = false

--Set Chunk location
chunkPos = getChunkCoords(game.player.position.x, game.player.position.y)

waterCount = game.player.surface.count_tiles_filtered {area={{chunkPos.x*32, chunkPos.y*32},{chunkPos.x*32+32, chunkPos.y*32+32}}, collision_mask="water-tile"}
groundCount = game.player.surface.count_tiles_filtered {area={{chunkPos.x*32, chunkPos.y*32},{chunkPos.x*32+32, chunkPos.y*32+32}}, collision_mask="ground-tile"}

if debug then
    --Print Chunk location
    game.print("X-Y: "..chunkPos.x.."-"..chunkPos.y)
    --Print Water Tile count in Chunk
    game.print("Water = "..waterCount.." Ground = "..groundCount)
    game.print((math.floor((groundCount/1024)*10000)/100).."% Ground")
end