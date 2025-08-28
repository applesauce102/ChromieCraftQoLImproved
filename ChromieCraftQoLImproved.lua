local frame = CreateFrame("Frame")
frame:RegisterEvent("PLAYER_LOGIN")
frame:RegisterEvent("PLAYER_ENTERING_WORLD")

frame:SetScript("OnEvent", function(self, event, ...)
    -- Execute commands on login or UI reload
--    SendChatMessage(".weekendxp rate 3", "SAY")
    SendChatMessage(".set ann bg off", "SAY")

    -- Display a message in the chat log to confirm the addon loaded
    print("loaded CCQi")

    -- Unregister the events after they fire once per session to prevent spam.
    -- The events will be re-registered automatically on the next login or reload.
    self:UnregisterAllEvents()
end)
