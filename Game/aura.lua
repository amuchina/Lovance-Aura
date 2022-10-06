_G.love = require("love")
_G.anim8 = require 'libs/anim8'
_G.sti = require 'libs/sti'
local Aura = {}

function Aura.new(x, y, world)
    local aura = {
        x = x,
        y = y,
        canInteract = false,
        interact = { name = '', dir = '', class = ''},
        interactTextTable = {},
        showInteractBox = false,
        dir = "down",
        speed = 150,
    }

    aura.collider = world:newBSGRectangleCollider(aura.x, aura.y, 32, 20, 0)
    aura.collider:setFixedRotation(true)
    aura.collider:setCollisionClass('Player')

    aura.spritesheet = love.graphics.newImage('assets/homeAura/HomeAura-spritesheet.png')
    aura.grid = anim8.newGrid(32, 50, aura.spritesheet:getWidth(), aura.spritesheet:getHeight())

    aura.moveAnimations = {
        down = anim8.newAnimation(aura.grid('1-4', 1), 0.2),
        left = anim8.newAnimation(aura.grid('1-4', 2), 0.2),
        right = anim8.newAnimation(aura.grid('1-4', 3), 0.2),
        up = anim8.newAnimation(aura.grid('1-4', 4), 0.2)
    }

    aura.animate = aura.moveAnimations.down
    return aura
end

return Aura