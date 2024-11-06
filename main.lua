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
      Note = "Here is the key: y3k9h5f2zlq8t7p6nx4g1r8mjd5v2w ",
      FileName = "Key System", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"y3k9h5f2zlq8t7p6nx4g1r8mjd5v2w"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local MainTab = Window:CreateTab("Mng Executor", nil) -- Title, Image
local MainSection = MainTab:CreateSection("Main")

Rayfield:Notify({
   Title = "Key Valid",
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

local Button = MainTab:CreateButton({
   Name = "Murder Mystery 2",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Ethanoj1/EclipseMM2/master/Script", true))()
   end,
})

local Paragraph = MainTab:CreateParagraph({Title = "Updates", Content = "More coming on 20 november 2024.More games,more scripts,more"})


local MiscTab = Window:CreateTab("Anti-ban Tab", nil) -- Title, Image
local MiscSection = MiscTab:CreateSection("Misc")

local Toggle = MiscTab:CreateToggle({
   Name = "Anti-ban",
   CurrentValue = false,
   Flag = "Anti-ban", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
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
protect = "pesaz16" 
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
