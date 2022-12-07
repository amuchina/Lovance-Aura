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
  nextlayerid = 12,
  nextobjectid = 12,
  properties = {
    ["spawnX"] = 660,
    ["spawnY"] = 300
  },
  tilesets = {
    {
      name = "firstFloorHallTileset",
      firstgid = 1,
      class = "",
      tilewidth = 52,
      tileheight = 52,
      spacing = 0,
      margin = 0,
      columns = 4,
      image = "map-tileset/firstFloorHallTileset.png",
      imagewidth = 208,
      imageheight = 260,
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
      tilecount = 20,
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
      id = 1,
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
        20, 20, 20, 20, 20, 20, 20, 20,
        20, 20, 20, 20, 20, 20, 20, 20,
        20, 20, 20, 20, 20, 20, 20, 20,
        20, 20, 20, 20, 20, 20, 20, 20,
        20, 20, 20, 20, 20, 20, 20, 20,
        20, 20, 20, 20, 20, 20, 20, 20,
        20, 20, 20, 20, 20, 20, 20, 20,
        20, 20, 20, 20, 20, 20, 20, 20
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 8,
      height = 8,
      id = 2,
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
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 3, 2, 2, 2, 2, 2, 0,
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
      id = 3,
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
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 1, 1, 1, 1, 1, 0,
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
      id = 4,
      name = "wallsdetails",
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
        0, 0, 15, 15, 15, 15, 15, 0,
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
      id = 5,
      name = "roomdetails",
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
        0, 0, 9, 0, 0, 0, 10, 0,
        0, 0, 0, 0, 0, 0, 12, 0,
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
      id = 6,
      name = "plant",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 2.1875,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 13, 0, 0,
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
      id = 7,
      name = "doors",
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
        0, 0, 0, 14, 14, 0, 14, 0,
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
      id = 8,
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
        0, 0, 16, 16, 16, 16, 16, 0,
        0, 16, 0, 0, 0, 0, 0, 17,
        18, 0, 0, 0, 0, 0, 0, 17,
        0, 19, 19, 19, 19, 19, 19, 0,
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
      id = 9,
      name = "rmbrdr2",
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
        0, 4, 0, 0, 0, 0, 0, 5,
        4, 18, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        7, 0, 0, 0, 0, 0, 0, 6,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 10,
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
          id = 1,
          name = "wall",
          class = "",
          shape = "rectangle",
          x = 52,
          y = 204,
          width = 317.818,
          height = 3.90909,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2,
          name = "wall",
          class = "",
          shape = "rectangle",
          x = 364,
          y = 204.182,
          width = 6,
          height = 55.8182,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 3,
          name = "wall",
          class = "",
          shape = "rectangle",
          x = 52,
          y = 260.182,
          width = 311.909,
          height = 5.54545,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 4,
          name = "wall",
          class = "",
          shape = "rectangle",
          x = 46.0909,
          y = 207.909,
          width = 5.72727,
          height = 52.3636,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 6,
          name = "lovely plant",
          class = "",
          shape = "rectangle",
          x = 281.957,
          y = 207.565,
          width = 7.13043,
          height = 2.6087,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 11,
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
          id = 7,
          name = "bedroomdoor",
          class = "teleport",
          shape = "rectangle",
          x = 331.813,
          y = 207.938,
          width = 12.125,
          height = 4.3125,
          rotation = 0,
          visible = true,
          properties = {
            ["queryDirection"] = "up",
            ["querySpawnX"] = "450",
            ["querySpawnY"] = "530",
            ["queryTeleport"] = "maps/bedroom/map.lua"
          }
        },
        {
          id = 8,
          name = "lovely plant",
          class = "static",
          shape = "rectangle",
          x = 281.313,
          y = 207.063,
          width = 8.125,
          height = 6.125,
          rotation = 0,
          visible = true,
          properties = {
            ["queryDirection"] = "up",
            ["queryString"] = "A lovely plant. It has a good smell"
          }
        },
        {
          id = 9,
          name = "bathdoor",
          class = "teleport",
          shape = "rectangle",
          x = 228.563,
          y = 207.938,
          width = 10.8125,
          height = 3.6875,
          rotation = 0,
          visible = true,
          properties = {
            ["queryDirection"] = "up",
            ["querySpawnX"] = "270",
            ["querySpawnY"] = "530",
            ["queryTeleport"] = "maps/bathroom/map.lua"
          }
        },
        {
          id = 10,
          name = "bedroom2door",
          class = "static",
          shape = "rectangle",
          x = 177.438,
          y = 208,
          width = 9.5625,
          height = 3.625,
          rotation = 0,
          visible = true,
          properties = {
            ["queryDirection"] = "up",
            ["queryString"] = "This door is locked"
          }
        },
        {
          id = 11,
          name = "goingdownstairs",
          class = "teleport",
          shape = "rectangle",
          x = 51.8182,
          y = 208,
          width = 5.45455,
          height = 52.0909,
          rotation = 0,
          visible = true,
          properties = {
            ["queryDirection"] = "left",
            ["queryTeleport"] = ""
          }
        }
      }
    }
  }
}
