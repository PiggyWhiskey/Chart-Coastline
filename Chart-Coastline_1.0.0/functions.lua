function get_Chunk_Coords(x, y)
    get_Chunk_Coords = {x = math.floor(x/32), y = math.floor(y/32)}
end

function get_3x_Chunk_BoundingBox(x, y)
    get_Chunk_BoundingBox = { left_top = {((x - 1) * 32), ((y - 1) * 32)} , right_bottom = { ((x + 1) * 32), ((y + 1) * 32)}}
end

function get_Ground_Count(chunkBound)
    game.player.surface.count_tiles_filtered {area = chunkBound, collision_mask="ground-tile"}
end
function get_Water_Count(chunkBound)
    game.player.surface.count_tiles_filtered {area = chunkBound, collision_mask="water-tile"}
end

function chart_Chunk_x3(player, surface, x, y)
    player.chart(surface, {{ ((x - 1) * 32), ((y - 1) * 32)}, { ((x + 1) * 32), ((y + 1) * 32)}})
end