_G.love = require("love")

local QueryBoxs = {}

function QueryBoxs.new(bedroomMap,world)
    local queryBoxs = {}

    if bedroomMap.layers["queryBoxs"] then
        for _, obj in pairs(bedroomMap.layers["queryBoxs"].objects) do
            local queryBox = world:newRectangleCollider((obj.x * scale) + offsetx * scale, (obj.y * scale) + offsety * scale, obj.width * scale, obj.height * scale)
            queryBox:setType('static')
            queryBox:setCollisionClass('Ghost')
            queryBox.name = obj.name
            queryBox.queryDirection = obj.properties.queryDirection
            queryBox.queryString = obj.properties.queryString
            queryBox.destroyed = false
            
            table.insert(queryBoxs, queryBox)
        end
    end
    
    return queryBoxs
end

return QueryBoxs