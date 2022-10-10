_G.love = require("love")

local Objects = {}

function Objects.new(Map,world)
    local objects = {}

    if Map.layers["objects"] then
        for _, obj in pairs(Map.layers["objects"].objects) do
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