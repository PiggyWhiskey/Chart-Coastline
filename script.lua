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
    
    
    for iChunk = -10, max_Search, -1
    do
        chunkBound = get_Chunk_BoundingBox(0, iChunk)
        --It's either water-tile or ground-tile, doesn't require both (Unless Void?)
        ground_Count = get_Ground_Count(chunkBound)

        if ground_Count > 0 and ground_Count < 512 then
            --Less than 50% Ground, Valid Chunk
            chart_Coastline(0, ichunk)
            iChunk = max_Search
        end
    end
end


function chart_Coastline(x, y)
    local player = game.forces.player
    local ground_Count

    --Chart 3x3
    for i = -1, 1, 1
    do
        for j = -1, 1, 1
        do

            --Reveal Chunk
            chart_Chunk(player, game.player.surface, x + i , y + j )

            --Count ground-tile
            ground_Count get_Ground_Count(get_Chunk_BoundingBox( x + i, y + j ))

            --Ground between 0% and 50%, recurse
            if ground_Count > 0 and ground_Count < 512 then
                chart_Coastline(x + i, y + j)
                    
            end
        end
    end
end