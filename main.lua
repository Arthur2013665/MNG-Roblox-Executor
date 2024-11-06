local Slider = MiscTab:CreateSlider({
   Name = "Speed",
   Range = {0, 1000},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "Speed", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
-- Define initial speed and increment value
local speed = 16  -- Starting speed (default walk speed in Roblox)
local increment = 1  -- Speed increment per function call

-- Function to increase speed
local function increaseSpeed()
    speed = speed + increment
    print("Speed increased! Current Speed: " .. speed)
end

-- Bind the function to a key press or event
local UserInputService = game:GetService("UserInputService")
UserInputService.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.Space then  -- Increase speed on Spacebar press
        increaseSpeed()
    end
end)

-- Applying the speed to the player character (Roblox-specific)
local player = game.Players.LocalPlayer
player.CharacterAdded:Connect(function(character)
    local humanoid = character:WaitForChild("Humanoid")
    humanoid.WalkSpeed = speed
    humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
        humanoid.WalkSpeed = speed  -- Keeps speed consistent with variable
    end)
end)

local Slider = MiscTab:CreateSlider({
   Name = "JumpPower",
   Range = {0, 1000},
   Increment = 10,
   Suffix = "JumpPower",
   CurrentValue = 10,
   Flag = "JumpPower", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
      -- Jump Script with Mouse Input

-- Define initial jump power and increment value
local jumpPower = 50  -- Starting jump power
local increment = 1  -- Jump power increment per function call

-- Function to increase jump power
local function increaseJumpPower()
    jumpPower = jumpPower + increment
end

-- Detect mouse input to increase jump power
local UserInputService = game:GetService("UserInputService")
UserInputService.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then  -- Detect left mouse click
        increaseJumpPower()
    end
end)

-- Applying the jump power to the player character (if applicable)
local player = game.Players.LocalPlayer
player.CharacterAdded:Connect(function(character)
    local humanoid = character:WaitForChild("Humanoid")
    humanoid.JumpPower = jumpPower
    humanoid:GetPropertyChangedSignal("JumpPower"):Connect(function()
        humanoid.JumpPower = jumpPower  -- Keeps jump power consistent with variable
    end)
end)

   end,
})
