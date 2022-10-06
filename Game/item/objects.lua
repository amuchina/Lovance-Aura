_G.love = require("love")

local Objects = {}

function Objects.new(bedroomMap,world)
    local objects = {}

    if bedroomMap.layers["objects"] then
        for _, obj in pairs(bedroomMap.layers["objects"].objects) do
            local object = world:newRectangleCollider((obj.x * scale) + offsetx * scale, (obj.y * scale) + offsety * scale, obj.width * scale, obj.height * scale)
            object:setType('static')
            if obj.class == "Pickable" then 
                object:setCollisionClass('Pickable')
                object.class = obj.class
            end
            object.name = obj.name

            table.insert(objects, object)
        end
    end
    
    return objects
end

return Objects