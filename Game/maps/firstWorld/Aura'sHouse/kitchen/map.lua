return {
  version = "1.9",
  luaversion = "5.1",
  tiledversion = "1.9.2",
  class = "",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 8,
  height = 8,
  tilewidth = 52,
  tileheight = 52,
  nextlayerid = 36,
  nextobjectid = 35,
  properties = {
    ["spawnX"] = 300,
    ["spawnY"] = 300
  },
  tilesets = {
    {
      name = "tileset",
      firstgid = 1,
      class = "",
      tilewidth = 52,
      tileheight = 52,
      spacing = 0,
      margin = 0,
      columns = 5,
      image = "map-tileset/kitchenTileset.png",
      imagewidth = 260,
      imageheight = 312,
      objectalignment = "unspecified",
      tilerendersize = "tile",
      fillmode = "stretch",
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 52,
        height = 52
      },
      properties = {},
      wangsets = {},
      tilecount = 30,
      tiles = {}
    }
  },
  layers = {
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 8,
      height = 8,
      id = 20,
      name = "background",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 8,
      height = 8,
      id = 21,
      name = "ground",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 2, 2, 2, 2, 0, 0,
        0, 0, 2, 2, 2, 2, 0, 0,
        0, 0, 2, 2, 2, 2, 0, 0,
        0, 0, 2, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 8,
      height = 8,
      id = 22,
      name = "walls",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 3, 3, 3, 3, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 8,
      height = 8,
      id = 23,
      name = "walldetails",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 17, 17, 17, 17, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 8,
      height = 8,
      id = 24,
      name = "roomborder",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 18, 14, 14, 14, 14, 19, 0,
        0, 12, 21, 0, 0, 22, 11, 0,
        0, 12, 0, 0, 0, 0, 11, 0,
        0, 12, 0, 0, 0, 0, 11, 0,
        0, 12, 0, 0, 0, 0, 11, 0,
        0, 12, 0, 11, 10, 10, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 8,
      height = 8,
      id = 25,
      name = "roomborder",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 27, 0, 0,
        0, 0, 0, 10, 0, 0, 24, 0,
        0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 8,
      height = 8,
      id = 26,
      name = "table",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 7.08333,
      offsety = 9.33333,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 4, 5, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 8,
      height = 8,
      id = 27,
      name = "oven",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 7.90625,
      offsety = 25,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 7, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 8,
      height = 8,
      id = 28,
      name = "oven",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = -10.25,
      offsety = 25,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 6, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 8,
      height = 8,
      id = 29,
      name = "stove",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 6.25,
      offsety = -27,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 8, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 8,
      height = 8,
      id = 30,
      name = "stove",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = -9.74964,
      offsety = 25.0011,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 7, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 8,
      height = 8,
      id = 31,
      name = "stove",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 6,
      offsety = -7.75,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 9, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 8,
      height = 8,
      id = 32,
      name = "knife",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = -11.25,
      offsety = 12.5,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 16, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 8,
      height = 8,
      id = 33,
      name = "pan",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = -1.87778,
      offsety = 13.9611,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 15, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 34,
      name = "objects",
      class = "",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 21,
          name = "wall",
          class = "",
          shape = "rectangle",
          x = 98,
          y = 98.0155,
          width = 6.04348,
          height = 265.985,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 22,
          name = "wall",
          class = "",
          shape = "rectangle",
          x = 97.9778,
          y = 97.9556,
          width = 220.007,
          height = 6,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 23,
          name = "wall",
          class = "",
          shape = "rectangle",
          x = 312,
          y = 97.9531,
          width = 6,
          height = 220.009,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 24,
          name = "wall",
          class = "",
          shape = "rectangle",
          x = 156.037,
          y = 312.016,
          width = 161.931,
          height = 5.92188,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 25,
          name = "wall",
          class = "",
          shape = "rectangle",
          x = 156.022,
          y = 312.044,
          width = 5.97778,
          height = 51.6121,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 26,
          name = "walldetails",
          class = "",
          shape = "rectangle",
          x = 104.125,
          y = 152,
          width = 207.58,
          height = 3.9375,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 27,
          name = "table",
          class = "",
          shape = "rectangle",
          x = 176.091,
          y = 220.364,
          width = 78,
          height = 39.9091,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 28,
          name = "oven",
          class = "",
          shape = "rectangle",
          x = 119.813,
          y = 139,
          width = 68,
          height = 28.875,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 29,
          name = "stove",
          class = "",
          shape = "rectangle",
          x = 224.091,
          y = 138.818,
          width = 68.0909,
          height = 29.0909,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 30,
          name = "pan",
          class = "Pickable",
          shape = "rectangle",
          x = 226.909,
          y = 142,
          width = 12.1818,
          height = 9.81818,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 31,
          name = "knife",
          class = "Pickable",
          shape = "rectangle",
          x = 165.545,
          y = 143.455,
          width = 10.2727,
          height = 2.90909,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 35,
      name = "queryBoxs",
      class = "",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 32,
          name = "groundFloorHall",
          class = "teleport",
          shape = "rectangle",
          x = 104.125,
          y = 354.375,
          width = 51.9375,
          height = 9.625,
          rotation = 0,
          visible = true,
          properties = {
            ["queryDirection"] = "down",
            ["querySpawnX"] = "310",
            ["querySpawnY"] = "200",
            ["queryTeleport"] = "maps/firstWorld/Aura'sHouse/groundFloorHall/map.lua"
          }
        },
        {
          id = 33,
          name = "knife",
          class = "",
          shape = "rectangle",
          x = 159.813,
          y = 167.938,
          width = 22.75,
          height = 4.0625,
          rotation = 0,
          visible = true,
          properties = {
            ["queryDirection"] = "up",
            ["queryString"] = "A sharpen knife. Even if it's dangerous, you can pick it up"
          }
        },
        {
          id = 34,
          name = "pan",
          class = "",
          shape = "rectangle",
          x = 227.563,
          y = 167.938,
          width = 27.5,
          height = 4.25,
          rotation = 0,
          visible = true,
          properties = {
            ["queryDirection"] = "up",
            ["queryString"] = "A good-looking pan. You can pick it up"
          }
        }
      }
    }
  }
}