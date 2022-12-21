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
  nextlayerid = 18,
  nextobjectid = 43,
  properties = {
    ["animX"] = 415,
    ["animY"] = 68,
    ["dirPNG"] = "assets/homeAura/fireplace-stilesheet.png",
    ["frameNumber"] = 4,
    ["hasAnimations"] = true,
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
      columns = 4,
      image = "map-tileset/groundFloorHallTileset.png",
      imagewidth = 208,
      imageheight = 416,
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
      tilecount = 32,
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
        0, 0, 2, 2, 2, 2, 0, 0,
        0, 2, 2, 2, 2, 2, 0, 0,
        0, 0, 2, 2, 2, 2, 0, 0,
        0, 0, 2, 2, 2, 2, 0, 0,
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
      id = 4,
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
      id = 5,
      name = "upstairs",
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
        0, 0, 0, 0, 0, 0, 26, 0,
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
      name = "door",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = -21.0763,
      offsety = 11.9737,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 25, 0, 0, 0, 0,
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
      id = 6,
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
        0, 13, 24, 24, 24, 24, 14, 0,
        0, 23, 9, 0, 0, 10, 22, 14,
        13, 23, 0, 0, 0, 0, 0, 22,
        23, 0, 0, 0, 0, 0, 22, 16,
        15, 21, 0, 0, 0, 0, 22, 0,
        0, 23, 11, 0, 0, 12, 22, 0,
        0, 15, 21, 21, 21, 21, 16, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 8,
      height = 8,
      id = 7,
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
        0, 0, 0, 0, 0, 0, 24, 0,
        0, 24, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 21, 0,
        0, 23, 0, 0, 0, 0, 0, 0,
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
      name = "cabinet",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 13,
      offsety = 6.75,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 4, 0, 0,
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
      id = 10,
      name = "clotheshanger",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = -7.5,
      offsety = -19,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 5, 0, 0, 0, 0, 0,
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
      id = 11,
      name = "tv",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 10,
      offsety = 1,
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
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 6, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 8,
      height = 8,
      id = 12,
      name = "sofa",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 35.5,
      offsety = -1.5,
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
        0, 0, 0, 7, 8, 0, 0, 0,
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
      id = 13,
      name = "fireplace",
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
        0, 0, 0, 0, 19, 0, 0, 0,
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
      id = 14,
      name = "carpet",
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
        0, 0, 0, 27, 28, 0, 0, 0,
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
      id = 16,
      name = "plant",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = -5.5,
      offsety = -1,
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
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 29, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 15,
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
          x = 46.1818,
          y = 201.909,
          width = 57.7273,
          height = 5.81818,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2,
          name = "wall",
          class = "",
          shape = "rectangle",
          x = 46.0909,
          y = 202,
          width = 5.81818,
          height = 63.7273,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 3,
          name = "wall",
          class = "",
          shape = "rectangle",
          x = 46.0909,
          y = 260.091,
          width = 57.8182,
          height = 5.72727,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 4,
          name = "wall",
          class = "",
          shape = "rectangle",
          x = 97.7273,
          y = 260.091,
          width = 6.27273,
          height = 109.636,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 5,
          name = "wall",
          class = "",
          shape = "rectangle",
          x = 97.7273,
          y = 364,
          width = 220.273,
          height = 5.72727,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 6,
          name = "wall",
          class = "",
          shape = "rectangle",
          x = 311.909,
          y = 208.091,
          width = 6.09091,
          height = 161.545,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 7,
          name = "wall",
          class = "",
          shape = "rectangle",
          x = 312.091,
          y = 208.273,
          width = 58,
          height = 5.72727,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 8,
          name = "wall",
          class = "",
          shape = "rectangle",
          x = 364.182,
          y = 150.364,
          width = 5.81818,
          height = 63.8182,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 9,
          name = "wall",
          class = "",
          shape = "rectangle",
          x = 312,
          y = 150.455,
          width = 58.1818,
          height = 5.54545,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 10,
          name = "wall",
          class = "",
          shape = "rectangle",
          x = 311.909,
          y = 98.2727,
          width = 6.18182,
          height = 52.0966,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 11,
          name = "wall",
          class = "",
          shape = "rectangle",
          x = 98.0909,
          y = 98.4545,
          width = 220.091,
          height = 5.45455,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 12,
          name = "wall",
          class = "",
          shape = "rectangle",
          x = 97.9091,
          y = 98.4545,
          width = 6.18182,
          height = 109.455,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 15,
          name = "wall",
          class = "",
          shape = "rectangle",
          x = 104.13,
          y = 152.043,
          width = 207.783,
          height = 4,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 17,
          name = "clotheshanger",
          class = "",
          shape = "rectangle",
          x = 107.625,
          y = 144.813,
          width = 21.875,
          height = 33.3125,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 18,
          name = "cabinet",
          class = "",
          shape = "rectangle",
          x = 292,
          y = 229.875,
          width = 17,
          height = 22.875,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 19,
          name = "sofa",
          class = "",
          shape = "rectangle",
          x = 211.438,
          y = 271.375,
          width = 63.125,
          height = 28.125,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 20,
          name = "tv",
          class = "",
          shape = "rectangle",
          x = 218,
          y = 321.063,
          width = 51,
          height = 35.9375,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 21,
          name = "plant",
          class = "",
          shape = "rectangle",
          x = 108.5,
          y = 316.188,
          width = 26.0625,
          height = 45.3125,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 17,
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
          id = 22,
          name = "cabinet",
          class = "static",
          shape = "rectangle",
          x = 288.174,
          y = 231.957,
          width = 3.86957,
          height = 18.5652,
          rotation = 0,
          visible = true,
          properties = {
            ["queryDirection"] = "right",
            ["queryString"] = "There is something similar to peanuts. You can pick it up"
          }
        },
        {
          id = 23,
          name = "cabinet",
          class = "static",
          shape = "rectangle",
          x = 294.727,
          y = 253,
          width = 12.3636,
          height = 2.90909,
          rotation = 0,
          visible = true,
          properties = {
            ["queryDirection"] = "up",
            ["queryString"] = "There is something similar to peanuts. You can pick it up"
          }
        },
        {
          id = 24,
          name = "sofa",
          class = "static",
          shape = "rectangle",
          x = 220.727,
          y = 299.818,
          width = 44.2727,
          height = 5,
          rotation = 0,
          visible = true,
          properties = {
            ["queryDirection"] = "up",
            ["queryString"] = "A cozy sofa. It seems all the pillows disappeared"
          }
        },
        {
          id = 25,
          name = "sofa",
          class = "static",
          shape = "rectangle",
          x = 274.636,
          y = 276.273,
          width = 4.81818,
          height = 20.0909,
          rotation = 0,
          visible = true,
          properties = {
            ["queryDirection"] = "left",
            ["queryString"] = "A cozy sofa. It seems all the pillows disappeared"
          }
        },
        {
          id = 26,
          name = "sofa",
          class = "static",
          shape = "rectangle",
          x = 206,
          y = 276.545,
          width = 5.45455,
          height = 19.7273,
          rotation = 0,
          visible = true,
          properties = {
            ["queryDirection"] = "right",
            ["queryString"] = "A cozy sofa. It seems all the pillows disappeared"
          }
        },
        {
          id = 30,
          name = "clotheshanger",
          class = "static",
          shape = "rectangle",
          x = 114.063,
          y = 178.25,
          width = 12.625,
          height = 3.375,
          rotation = 0,
          visible = true,
          properties = {
            ["queryDirection"] = "up",
            ["queryString"] = "A clothes hanger. There is a hat on"
          }
        },
        {
          id = 32,
          name = "clotheshanger",
          class = "static",
          shape = "rectangle",
          x = 129.625,
          y = 157.188,
          width = 3.75,
          height = 17.3125,
          rotation = 0,
          visible = true,
          properties = {
            ["queryDirection"] = "left",
            ["queryString"] = "A clothes hanger. There is a hat on"
          }
        },
        {
          id = 34,
          name = "kitchendoor",
          class = "teleport",
          shape = "rectangle",
          x = 157.688,
          y = 156.125,
          width = 13.1875,
          height = 4.1875,
          rotation = 0,
          visible = true,
          properties = {
            ["queryDirection"] = "up",
            ["querySpawnX"] = "450",
            ["querySpawnY"] = "200",
            ["queryTeleport"] = "maps/mappadafare/mappadafare.lua"
          }
        },
        {
          id = 35,
          name = "fireplace",
          class = "static",
          shape = "rectangle",
          x = 213.938,
          y = 156,
          width = 40.625,
          height = 4.5625,
          rotation = 0,
          visible = true,
          properties = {
            ["queryDirection"] = "up",
            ["queryString"] = "A comfortable fireplace. You could stare at it for the rest of your life"
          }
        },
        {
          id = 36,
          name = "goingupstairs",
          class = "teleport",
          shape = "rectangle",
          x = 358,
          y = 156.091,
          width = 6.09091,
          height = 52.0909,
          rotation = 0,
          visible = true,
          properties = {
            ["queryDirection"] = "right",
            ["querySpawnX"] = "130",
            ["querySpawnY"] = "330",
            ["queryTeleport"] = "maps/firstFloorHall/map.lua"
          }
        },
        {
          id = 38,
          name = "goingworld",
          class = "teleport",
          shape = "rectangle",
          x = 51.9091,
          y = 207.909,
          width = 6.45455,
          height = 52.0909,
          rotation = 0,
          visible = true,
          properties = {
            ["queryDirection"] = "left",
            ["querySpawnX"] = "450",
            ["querySpawnY"] = "200",
            ["queryTeleport"] = "maps/mappadafare/mappadafare.lua"
          }
        },
        {
          id = 40,
          name = "tv",
          class = "static",
          shape = "rectangle",
          x = 224.545,
          y = 316.545,
          width = 37.5455,
          height = 4.54545,
          rotation = 0,
          visible = true,
          properties = {
            ["queryDirection"] = "down",
            ["queryString"] = "The tv doesn't turn on. It seems to be broken"
          }
        },
        {
          id = 41,
          name = "tv",
          class = "static",
          shape = "rectangle",
          x = 212.909,
          y = 325.727,
          width = 5.18182,
          height = 17.9091,
          rotation = 0,
          visible = true,
          properties = {
            ["queryDirection"] = "right",
            ["queryString"] = "The tv doesn't turn on. It seems to be broken"
          }
        },
        {
          id = 42,
          name = "tv",
          class = "static",
          shape = "rectangle",
          x = 268.909,
          y = 325.545,
          width = 5.63636,
          height = 17.9091,
          rotation = 0,
          visible = true,
          properties = {
            ["queryDirection"] = "left",
            ["queryString"] = "The tv doesn't turn on. It seems to be broken"
          }
        }
      }
    }
  }
}
