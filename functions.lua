function get_Chunk_Coords(x, y)
    get_Chunk_Coords = {x = math.floor(x/32), y = math.floor(y/32)}
end

function get_Chunk_BoundingBox(x, y)
    get_Chunk_BoundingBox = { left_top = { x*32, y*32 } , right_bottom = { x*32+32, y*32+32 }
end

function get_Ground_Count(chunkBound)
    game.player.surface.count_tiles_filtered {area = chunkBound, collision_mask="ground-tile"}
end
function get_Water_Count(chunkBound)
    game.player.surface.count_tiles_filtered {area = chunkBound, collision_mask="water-tile"}
end

function chart_Chunk(player, surface, x, y)
    player.chart(surface, {{ (x * 32), (y * 32)}, { (x * 32), (y * 32)}}))
end