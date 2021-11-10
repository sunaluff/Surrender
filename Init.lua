-------------------------------
-- Namespaces
-------------------------------
local _, core = ...
-------------------------------
-- Commands
-------------------------------
function core:OnLoadCommandHandler (event, name)
    --on load assign commands
    SLASH_SURRENDERGG1 = "/gg"
    SlashCmdList.SURRENDERGG = SurrenderArena;

    SLASH_SURRENDERSR1 = "/sr"
    SlashCmdList.SURRENDERSR = SurrenderArena;

    SLASH_SURRENDERTEST1 = "/SRTEST"
    SlashCmdList.SURRENDERTEST = function ()
        local isArena = C_PvP.GetActiveMatchDuration();
        local arenaCheck = C_PvP.GetActiveMatchState();
        print(isArena);
        print(arenaCheck);
    end

    --these debug functions arent part of the addon functionality
    --i just like having them and this addon feels most appropriate for keeping two commands worth of bloat
    SLASH_RELOADUI1 = "/rl" -- For quicker reloading whilst debugg
    SlashCmdList.RELOADUI = ReloadUI

    SLASH_FRAMESTK1 = "/fs" -- For quicker access to frame stack
    SlashCmdList.FRAMESTK = function()
        LoadAddOn('Blizzard_DebugTools')
        FrameStackTooltip_Toggle()
    end
end

local events = CreateFrame("Frame")
events:RegisterEvent("ADDON_LOADED")
events:SetScript("OnEvent",core.OnLoadCommandHandler)