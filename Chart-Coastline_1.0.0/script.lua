--Actual Script (Callable)
require("functions")

function find_Coastline(debug)

    --Start 10 Chunks North, and move 90 more chunks. 100 Chunks from Start
    --  1,  1 = South East
    --  1, -1 = North East
    -- -1,  1 = South West
    -- -1, -1 = North West
    local max_Search = -100
    local chunkBound
    local ground_Count
    
    
    for iChunk = -10, max_Search, -3
    do
        chunkBound = get_3x_Chunk_BoundingBox(0, iChunk)
        --It's either water-tile or ground-tile, doesn't require both (Unless Void?)
        ground_Count = get_Ground_Count(chunkBound)

        if ground_Count > 921 and ground_Count < 4608 then
            --Ground between 10% and 50%, recurse, Valid Chunk
            chart_Coastline(0, ichunk)
            iChunk = max_Search
        end
    end
end


function chart_Coastline(x, y)
    local player = game.forces.player
    local ground_Count

    --Chart 3x3

    --Reveal Chunk
    chart_Chunk_x3(player, game.player.surface, x , y )

    --Count ground-tile
    ground_Count = get_Ground_Count(get_3x_Chunk_BoundingBox(x, y))

    --Ground between 10% and 50%, recurse
    if ground_Count > 921 and ground_Count < 4608 then



        chart_Coastline(x, y)


    end
end