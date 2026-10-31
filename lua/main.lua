local Mod = require("kzm.sdk.mod")
local Dialogue = require("kzm.sdk.dialogue")

return Mod.define({
  id = "my-mod",

  onLoad = function(ctx)
    ctx.log("[my-mod] " .. ctx.t("demo.greeting"))
    ctx.on("kzm:mods_loaded", function()
      ctx.log("[my-mod] all mods loaded")
    end)
  end,

  hooks = function(ctx)
    local dialogue = Dialogue.for_mod(ctx)
    return {
      scripts = dialogue.script_hooks({ "get_line_text", "get_choice_text" }),
      objects = {},
    }
  end,
})
