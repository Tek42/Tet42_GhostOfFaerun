modGuid = "055a9471-1df5-45ab-8935-1e19102cc1a8"
subClassGuid = "61e03948-5bd2-4680-9869-9d2d25389003"

if Ext.Mod.IsModLoaded("67fbbd53-7c7d-4cfa-9409-6d737b4d92a9") then
  local subClasses = {
    Tet42_GhostOfFaerun = {
      modGuid = modGuid,
      subClassGuid = subClassGuid,
      class = "fighter",
      subClassName = "GhostOfFaerun"
    }
  }

  local function OnStatsLoaded()
    Mods.SubclassCompatibilityFramework.Api.InsertSubClasses(subClasses)
  end

  Ext.Events.StatsLoaded:Subscribe(OnStatsLoaded)
end