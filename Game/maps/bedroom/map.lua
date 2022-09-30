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
  nextlayerid = 19,
  nextobjectid = 1,
  properties = {},
  tilesets = {
    {
      name = "bedroomTileset",
      firstgid = 1,
      class = "",
      tilewidth = 52,
      tileheight = 52,
      spacing = 0,
      margin = 0,
      columns = 9,
      image = "../../assets/bedroom/tileset-mappa/bedroomTileset.png",
      imagewidth = 468,
      imageheight = 208,
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
      tilecount = 36,
      tiles = {}
    }
  },
  layers = {
    {
      type = "group",
      id = 18,
      name = "mapdetails",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      layers = {
        {
          type = "tilelayer",
          x = 0,
          y = 0,
          width = 8,
          height = 8,
          id = 1,
          name = "map_background",
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
            1, 1, 0, 0, 0, 0, 1, 1,
            1, 1, 0, 0, 0, 0, 1, 1,
            1, 1, 0, 0, 0, 0, 1, 1,
            1, 1, 0, 0, 0, 0, 1, 1,
            1, 1, 1, 1, 0, 1, 1, 1,
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
          name = "map_ground",
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
            0, 0, 16, 16, 16, 16, 0, 0,
            0, 0, 16, 16, 16, 16, 0, 0,
            0, 0, 16, 16, 16, 16, 0, 0,
            0, 0, 0, 0, 16, 0, 0, 0,
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
          name = "map_roomBorder",
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
            0, 6, 10, 10, 10, 10, 7, 0,
            0, 12, 2, 0, 0, 3, 13, 0,
            0, 12, 0, 0, 0, 0, 13, 0,
            0, 12, 0, 0, 0, 0, 13, 0,
            0, 12, 4, 0, 0, 5, 13, 0,
            0, 8, 11, 14, 0, 15, 9, 0,
            0, 0, 0, 0, 0, 0, 0, 0
          }
        }
      }
    },
    {
      type = "group",
      id = 17,
      name = "objects",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      layers = {
        {
          type = "tilelayer",
          x = 0,
          y = 0,
          width = 8,
          height = 8,
          id = 3,
          name = "object_walls",
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
          id = 4,
          name = "object_walldetails",
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
            0, 0, 18, 18, 18, 18, 0, 0,
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
          name = "object_bed",
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
            0, 0, 19, 0, 0, 0, 0, 0,
            0, 0, 28, 0, 0, 0, 0, 0,
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
          name = "object_bookshelf",
          class = "",
          visible = true,
          opacity = 1,
          offsetx = 37.3333,
          offsety = -2.66667,
          parallaxx = 1,
          parallaxy = 1,
          properties = {},
          encoding = "lua",
          data = {
            0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 20, 21, 0, 0,
            0, 0, 0, 0, 29, 30, 0, 0,
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
          name = "object_window",
          class = "",
          visible = true,
          opacity = 1,
          offsetx = 15.3333,
          offsety = 0.333333,
          parallaxx = 1,
          parallaxy = 1,
          properties = {},
          encoding = "lua",
          data = {
            0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 22, 0, 0, 0, 0,
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
          name = "object_desk",
          class = "",
          visible = true,
          opacity = 1,
          offsetx = 7.66667,
          offsety = 0,
          parallaxx = 1,
          parallaxy = 1,
          properties = {},
          encoding = "lua",
          data = {
            0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 23, 0, 0,
            0, 0, 0, 0, 0, 32, 0, 0,
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
          name = "object_carpet",
          class = "",
          visible = true,
          opacity = 1,
          offsetx = 24.3333,
          offsety = -12.6667,
          parallaxx = 1,
          parallaxy = 1,
          properties = {},
          encoding = "lua",
          data = {
            0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 31, 0, 0, 0, 0,
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
          name = "object_wardrobe",
          class = "",
          visible = true,
          opacity = 1,
          offsetx = -8.33333,
          offsety = 14,
          parallaxx = 1,
          parallaxy = 1,
          properties = {},
          encoding = "lua",
          data = {
            0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 24, 0, 0, 0, 0, 0,
            0, 0, 33, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0
          }
        }
      }
    },
    {
      type = "group",
      id = 16,
      name = "plushies",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      layers = {
        {
          type = "tilelayer",
          x = 0,
          y = 0,
          width = 8,
          height = 8,
          id = 12,
          name = "flamingo_plush",
          class = "",
          visible = true,
          opacity = 1,
          offsetx = -10,
          offsety = -23.6667,
          parallaxx = 1,
          parallaxy = 1,
          properties = {},
          encoding = "lua",
          data = {
            0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 25, 0, 0, 0, 0, 0,
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
          id = 13,
          name = "koala_plush",
          class = "",
          visible = true,
          opacity = 1,
          offsetx = -1.33333,
          offsety = -23.3333,
          parallaxx = 1,
          parallaxy = 1,
          properties = {},
          encoding = "lua",
          data = {
            0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 26, 0, 0, 0,
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
          name = "whale_plush",
          class = "",
          visible = true,
          opacity = 1,
          offsetx = 7.66667,
          offsety = -0.333333,
          parallaxx = 1,
          parallaxy = 1,
          properties = {},
          encoding = "lua",
          data = {
            0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 34, 0, 0,
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
          id = 15,
          name = "fish_plush",
          class = "",
          visible = true,
          opacity = 1,
          offsetx = 10.6667,
          offsety = 11,
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
            0, 0, 0, 0, 0, 35, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0
          }
        }
      }
    }
  }
}
