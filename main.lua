--
-- Created by IntelliJ IDEA.
-- User: stephen
-- Date: 10/26/2020
-- Time: 9:46 AM
--

local fileLocations = {
    "Interface\\Addons\\WildstarLevels\\Assets\\Audio\\LevelUp.wav",
    "Interface\\Addons\\WildstarLevels\\Assets\\Audio\\LevelUp2.wav",
    "Interface\\Addons\\WildstarLevels\\Assets\\Audio\\LevelUp3.wav",
    "Interface\\Addons\\WildstarLevels\\Assets\\Audio\\LevelUp4.wav",
    "Interface\\Addons\\WildstarLevels\\Assets\\Audio\\LevelUp5.wav",
    "Interface\\Addons\\WildstarLevels\\Assets\\Audio\\LevelUp6.wav",
    "Interface\\Addons\\WildstarLevels\\Assets\\Audio\\LevelUp9.wav",
    "Interface\\Addons\\WildstarLevels\\Assets\\Audio\\LevelUp10.wav",
    "Interface\\Addons\\WildstarLevels\\Assets\\Audio\\LevelUp11.wav",
    "Interface\\Addons\\WildstarLevels\\Assets\\Audio\\LevelUp12.wav",
    "Interface\\Addons\\WildstarLevels\\Assets\\Audio\\LevelUp13.wav",
    "Interface\\Addons\\WildstarLevels\\Assets\\Audio\\LevelUp14.wav",
    "Interface\\Addons\\WildstarLevels\\Assets\\Audio\\LevelUp15.wav",
    "Interface\\Addons\\WildstarLevels\\Assets\\Audio\\LevelUp16.wav",
    "Interface\\Addons\\WildstarLevels\\Assets\\Audio\\LevelUp17.wav",
    "Interface\\Addons\\WildstarLevels\\Assets\\Audio\\LevelUp18.wav",
    "Interface\\Addons\\WildstarLevels\\Assets\\Audio\\LevelUp19.wav",
    "Interface\\Addons\\WildstarLevels\\Assets\\Audio\\LevelUp20.wav",
    "Interface\\Addons\\WildstarLevels\\Assets\\Audio\\LevelUp21.wav",
}

local loginFrame = CreateFrame("Frame")
loginFrame:RegisterEvent("PLAYER_LOGIN")
loginFrame:SetScript("OnEvent",
        function(self, event, ...)
            print("Wildstar Levels Plugin Loaded")
        end)

local levelUpFrame = CreateFrame("Frame")
levelUpFrame:RegisterEvent("PLAYER_LEVEL_UP")
levelUpFrame:SetScript("OnEvent",
        function(self, event, ...)
            print("Congratulations on Level Up Badass!")
            willPlay, soundHandle = PlaySoundFile(fileLocations[math.random(1, 22)], "Dialog")

            if (willPlay == false) then
                print("Sound will not play due to something...")
            end
        end)