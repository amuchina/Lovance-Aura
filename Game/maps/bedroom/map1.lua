return {
  version = "1.9",
  luaversion = "5.1",
  tiledversion = "1.9.2",
  class = "",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 8,
  height = 8,
  tilewidth = 100,
  tileheight = 75,
  nextlayerid = 2,
  nextobjectid = 1,
  properties = {},
  tilesets = {
    {
      name = "bedroomTileset",
      firstgid = 1,
      class = "",
      tilewidth = 100,
      tileheight = 75,
      spacing = 0,
      margin = 0,
      columns = 8,
      image = "map1.png",
      imagewidth = 800,
      imageheight = 600,
      objectalignment = "unspecified",
      tilerendersize = "tile",
      fillmode = "stretch",
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 100,
        height = 75
      },
      properties = {},
      wangsets = {},
      tilecount = 64,
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
      name = "Livello tile 1",
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
        1, 2, 3, 4, 5, 6, 7, 8,
        9, 10, 11, 12, 13, 14, 15, 15,
        9, 18, 19, 20, 21, 22, 15, 15,
        9, 26, 27, 28, 29, 30, 15, 15,
        9, 34, 35, 36, 37, 38, 15, 15,
        9, 42, 43, 45, 45, 46, 15, 15,
        9, 50, 51, 52, 53, 54, 62, 62,
        9, 62, 62, 60, 61, 62, 62, 62
      }
    }
  }
}
