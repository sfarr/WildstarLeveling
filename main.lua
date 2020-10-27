--
-- Created by IntelliJ IDEA.
-- User: stephen
-- Date: 10/26/2020
-- Time: 9:46 AM
--

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
            willPlay, soundHandle = PlaySoundFile("Interface\\Addons\\WildstarLevels\\Assets\\Audio\\LevelUp.wav", "Dialog")

            if (willPlay == false) then
                print("Sound will not play due to something...")
            end
        end)