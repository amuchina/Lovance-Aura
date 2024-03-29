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
  nextlayerid = 15,
  nextobjectid = 38,
  properties = {
    ["spawnX"] = 660,
    ["spawnY"] = 300
  },
  tilesets = {
    {
      name = "bathroomTileset",
      firstgid = 1,
      class = "",
      tilewidth = 52,
      tileheight = 52,
      spacing = 0,
      margin = 0,
      columns = 4,
      image = "map-tileset/bathroomTileset.png",
      imagewidth = 208,
      imageheight = 364,
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
      tilecount = 28,
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
      offsetx = 3.33333e-07,
      offsety = 0.666633,
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
      offsetx = 14,
      offsety = 52,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 2, 2, 2, 0, 0, 0,
        0, 0, 2, 2, 2, 0, 0, 0,
        0, 0, 2, 2, 2, 0, 0, 0,
        0, 0, 2, 0, 0, 0, 0, 0,
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
      offsetx = 14,
      offsety = 52,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 3, 3, 3, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
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
      name = "roomborder",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 14,
      offsety = 52,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 21, 25, 25, 25, 22, 0, 0,
        0, 27, 0, 0, 0, 28, 0, 0,
        0, 27, 0, 0, 0, 28, 0, 0,
        0, 27, 0, 0, 0, 28, 0, 0,
        0, 27, 0, 0, 0, 28, 0, 0,
        0, 27, 0, 28, 26, 24, 0, 0,
        0, 1, 1, 1, 0, 0, 0, 0,
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
      name = "rmbd2",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 14,
      offsety = 52,
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
        0, 0, 0, 26, 0, 0, 0, 0,
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
      name = "wc",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 24.9773,
      offsety = 17.25,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 6, 0, 0, 0,
        0, 0, 0, 0, 10, 0, 0, 0,
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
      name = "sink",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 14.4659,
      offsety = 63.4091,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 7, 0, 0, 0, 0,
        0, 0, 0, 11, 0, 0, 0, 0,
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
      id = 8,
      name = "mirror",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 10.7614,
      offsety = 41.4886,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 8, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
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
      id = 9,
      name = "bathtub",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 20.3636,
      offsety = 58.5455,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 5, 0, 0, 0,
        0, 0, 0, 0, 9, 0, 0, 0,
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
      name = "duck",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 18,
      offsety = 63.3333,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 4, 0, 0, 0,
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
      id = 10,
      name = "cabinet",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 2.90913,
      offsety = 54,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 12, 0, 0, 0, 0, 0,
        0, 0, 16, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 13,
      name = "objects",
      class = "",
      visible = false,
      opacity = 1,
      offsetx = 2.83337,
      offsety = 0.416667,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 1,
          name = "wall",
          class = "",
          shape = "rectangle",
          x = 167.031,
          y = 316,
          width = 5.18182,
          height = 51.9091,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2,
          name = "wall",
          class = "",
          shape = "rectangle",
          x = 167.034,
          y = 311.667,
          width = 109,
          height = 5.25,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 3,
          name = "wall",
          class = "",
          shape = "rectangle",
          x = 110.818,
          y = 154.455,
          width = 5,
          height = 213.284,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 5,
          name = "wall",
          class = "",
          shape = "rectangle",
          x = 111,
          y = 152.181,
          width = 65.2727,
          height = 3.63636,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 6,
          name = "wall",
          class = "",
          shape = "rectangle",
          x = 214.637,
          y = 153.091,
          width = 62.4545,
          height = 3.09091,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 7,
          name = "wall",
          class = "",
          shape = "rectangle",
          x = 271.58,
          y = 153.295,
          width = 4.8125,
          height = 163.521,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 8,
          name = "wall",
          class = "",
          shape = "rectangle",
          x = 110.818,
          y = 363.515,
          width = 62.0909,
          height = 4.63636,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 11,
          name = "sink",
          class = "",
          shape = "rectangle",
          x = 185.018,
          y = 143.83,
          width = 19.9375,
          height = 37.0625,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 12,
          name = "sink",
          class = "",
          shape = "rectangle",
          x = 205.318,
          y = 148.83,
          width = 8.9375,
          height = 13.125,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 13,
          name = "sink",
          class = "",
          shape = "rectangle",
          x = 176.011,
          y = 148.71,
          width = 9.125,
          height = 12.9375,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 14,
          name = "cabinet",
          class = "",
          shape = "rectangle",
          x = 117.273,
          y = 183.091,
          width = 28,
          height = 51.8182,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 17,
          name = "wc",
          class = "",
          shape = "rectangle",
          x = 241.182,
          y = 268.637,
          width = 27.9091,
          height = 23,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 18,
          name = "wc",
          class = "",
          shape = "rectangle",
          x = 255.273,
          y = 256.83,
          width = 13.9375,
          height = 12,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 19,
          name = "bathtub",
          class = "",
          shape = "rectangle",
          x = 231.886,
          y = 178.591,
          width = 38.125,
          height = 72.125,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 20,
          name = "duck",
          class = "Pickable",
          shape = "rectangle",
          x = 244.511,
          y = 188.068,
          width = 13.9375,
          height = 10,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 14,
      name = "queryBoxs",
      class = "",
      visible = false,
      opacity = 1,
      offsetx = 0.590876,
      offsety = 0.0227939,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 22,
          name = "firstFloorHall",
          class = "teleport",
          shape = "rectangle",
          x = 117.667,
          y = 357.545,
          width = 51.9091,
          height = 5.45455,
          rotation = 0,
          visible = true,
          properties = {
            ["queryDirection"] = "down",
            ["querySpawnX"] = "452",
            ["querySpawnY"] = "300",
            ["queryTeleport"] = "maps/firstWorld/Aura'sHouse/firstFloorHall/map.lua"
          }
        },
        {
          id = 23,
          name = "wc",
          class = "static",
          shape = "rectangle",
          x = 247,
          y = 293.105,
          width = 21.625,
          height = 4.5,
          rotation = 0,
          visible = true,
          properties = {
            ["queryDirection"] = "up",
            ["queryString"] = "A wc"
          }
        },
        {
          id = 24,
          name = "wc",
          class = "static",
          shape = "rectangle",
          x = 238.605,
          y = 271.355,
          width = 3.9375,
          height = 20.8125,
          rotation = 0,
          visible = true,
          properties = {
            ["queryDirection"] = "right",
            ["queryString"] = "A wc"
          }
        },
        {
          id = 25,
          name = "bathtub",
          class = "static",
          shape = "rectangle",
          x = 235.792,
          y = 252.292,
          width = 22,
          height = 3.75,
          rotation = 0,
          visible = true,
          properties = {
            ["queryDirection"] = "up",
            ["queryString"] = "A bathtub. It seems to be already filled."
          }
        },
        {
          id = 26,
          name = "bathtub",
          class = "static",
          shape = "rectangle",
          x = 228.23,
          y = 214.188,
          width = 4.625,
          height = 33.1875,
          rotation = 0,
          visible = true,
          properties = {
            ["queryDirection"] = "right",
            ["queryString"] = "A baththub. It seems to be already filled"
          }
        },
        {
          id = 27,
          name = "duck",
          class = "",
          shape = "rectangle",
          x = 228.083,
          y = 185.188,
          width = 4.5625,
          height = 18.9375,
          rotation = 0,
          visible = true,
          properties = {
            ["queryDirection"] = "right",
            ["queryString"] = "A yellow duck. You can pick it up"
          }
        },
        {
          id = 28,
          name = "bathtub",
          class = "static",
          shape = "rectangle",
          x = 235.771,
          y = 174.708,
          width = 33.1875,
          height = 4.0625,
          rotation = 0,
          visible = true,
          properties = {
            ["queryDirection"] = "down",
            ["queryString"] = "A baththub. It seems to be already filled"
          }
        },
        {
          id = 30,
          name = "sink",
          class = "static",
          shape = "rectangle",
          x = 189.583,
          y = 181.167,
          width = 14.375,
          height = 3.25,
          rotation = 0,
          visible = true,
          properties = {
            ["queryDirection"] = "up",
            ["queryString"] = "A marble washbasin. You look inside the mirror and you see your beautiful face"
          }
        },
        {
          id = 37,
          name = "cabinet",
          class = "static",
          shape = "rectangle",
          x = 148.208,
          y = 199.917,
          width = 4.8125,
          height = 28.625,
          rotation = 0,
          visible = true,
          properties = {
            ["queryDirection"] = "left",
            ["queryString"] = "There is something similar to candies inside the cabinet. You can pick them up"
          }
        }
      }
    }
  }
}
