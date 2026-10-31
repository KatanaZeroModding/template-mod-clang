local Mod = require("kzm.sdk.mod")

return Mod.define({
  id = "my-mod",

  onLoad = function(ctx)
    ctx.log("[my-mod] lua loaded")
    ctx.on("kzm:mods_loaded", function()
      ctx.log("[my-mod] all mods loaded")
    end)
  end,

  hooks = {
    scripts = {},
    objects = {},
  },
})
