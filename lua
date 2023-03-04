local ESPEnabled = false

local function toggleESP()
    ESPEnabled = not ESPEnabled
    if ESPEnabled then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AzureServicess/ESP/main/Da%20Hood/lua"))()
    else
        esp.enabled = false
    end
end

-- Set the keybind to toggle ESP on and off
local toggleESPKeybind = Enum.KeyCode.X  -- Replace 'E' with your desired keybind
local userInputService = game:GetService("UserInputService")
userInputService.InputBegan:Connect(function(input, isProcessed)
    if not isProcessed and input.KeyCode == toggleESPKeybind then
        toggleESP()
    end
end)
