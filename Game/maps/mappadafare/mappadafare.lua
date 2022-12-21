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
  nextlayerid = 5,
  nextobjectid = 6,
  properties = {},
  tilesets = {
    {
      name = "groundFloorHallTileset",
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
        0, 2, 2, 0, 0, 2, 0, 0,
        0, 2, 0, 2, 0, 0, 0, 0,
        0, 2, 2, 3, 3, 0, 2, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        2, 2, 0, 2, 0, 2, 0, 2,
        2, 0, 2, 0, 2, 2, 2, 2,
        0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 4,
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
          x = 259.75,
          y = 156.125,
          width = 12,
          height = 51.875,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2,
          name = "wall",
          class = "",
          shape = "rectangle",
          x = 156,
          y = 208,
          width = 103.5,
          height = 11.25,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 3,
          name = "wall",
          class = "",
          shape = "rectangle",
          x = 144,
          y = 155.875,
          width = 11.625,
          height = 52.125,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 4,
          name = "wall",
          class = "",
          shape = "rectangle",
          x = 155.75,
          y = 145.75,
          width = 103.875,
          height = 10.375,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 3,
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
          id = 5,
          name = "wall",
          class = "teleport",
          shape = "rectangle",
          x = 155.75,
          y = 156,
          width = 6.875,
          height = 51.875,
          rotation = 0,
          visible = true,
          properties = {
            ["queryDirection"] = "left",
            ["querySpawnX"] = "300",
            ["querySpawnY"] = "300",
            ["queryTeleport"] = "maps/groundFloorHall/map.lua"
          }
        }
      }
    }
  }
}
