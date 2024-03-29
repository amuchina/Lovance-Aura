_G.love = require("love")

local QueryBoxs = {}

function QueryBoxs.new(Map,world)
    local queryBoxs = {}

    if Map.layers["queryBoxs"] then
        for _, obj in pairs(Map.layers["queryBoxs"].objects) do
            local queryBox = world:newRectangleCollider((obj.x * scale) + offsetx * scale, (obj.y * scale) + offsety * scale, obj.width * scale, obj.height * scale)
            queryBox:setType('static')
            if obj.class == 'teleport' then
                queryBox:setCollisionClass('Teleport')
                queryBox.class = obj.class
                queryBox.teleport = obj.properties.queryTeleport
                queryBox.teleportX = obj.properties.querySpawnX
                queryBox.teleportY = obj.properties.querySpawnY
            else
                queryBox:setCollisionClass('Ghost')
                queryBox.queryString = obj.properties.queryString
            end
            queryBox.name = obj.name
            queryBox.queryDirection = obj.properties.queryDirection
            queryBox.destroyed = false
            
            table.insert(queryBoxs, queryBox)
        end
    end
    
    return queryBoxs
end

return QueryBoxs