local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "VisualSense™",
   LoadingTitle = "VisualSense™",
   LoadingSubtitle = "by roll",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = 'VSFolder', -- Create a custom folder for your hub/game
      FileName = "VS"
   },
   Discord = {
      Enabled = true,
      Invite = "KYZ729HW4", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   }
})
local t1 = Window:CreateTab("Character Modifications") -- Title, Image
local s1 = t1:CreateSection("Hats")
local tb1 = t1:CreateInput({
   Name = "Hat Adder",
   PlaceholderText = "Paste Hat ID here...",
   RemoveTextAfterFocusLost = true,
   Callback = function(Text)
function l(a, _)
local b = Instance.new("Weld")
b.Part0 = a.Parent
b.Part1 = _.Parent
b.C0 = a.CFrame
b.C1 = _.CFrame
b.Parent = a.Parent
return b
end
local function b(c, b, _, a, d, e)
local f = Instance.new("Weld")
f.Name = c
f.Part0 = _
f.Part1 = a
f.C0 = d
f.C1 = e
f.Parent = b
return f
end
local function a(_, b)
for _, _ in pairs(_:GetChildren()) do
if _:IsA("Attachment") and _.Name == b then
return _
elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
local _ = a(_, b)
if _ then
return _
end
end
end
end
function k(_, d)
d.Parent = _
local e = d:FindFirstChild("Handle")
if e then
local c = e:FindFirstChildOfClass("Attachment")
if c then
local _ = a(_, c.Name)
if _ then
l(_, c)
end
else
local c = _:FindFirstChild("Head")
if c then
local a = CFrame.new(0, 0, 0)
local _ = d.AttachmentPoint
b("HeadWeld", c, c, e, a, _)
end
end
end
end
local _ = Text
local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
k(game.Players.LocalPlayer.Character, _)
   end,
})
local tb2 = t1:CreateInput({
   Name = "Hat Adder (EFFECT)",
   PlaceholderText = "Paste Hat ID here...",
   RemoveTextAfterFocusLost = true,
   Callback = function(Text)
function l(a, _)
local b = Instance.new("Weld")
b.Part0 = a.Parent
b.Part1 = _.Parent
b.C0 = a.CFrame
b.C1 = _.CFrame
b.Parent = a.Parent
return b
end
local function b(c, b, _, a, d, e)
local f = Instance.new("Weld")
f.Name = c
f.Part0 = _
f.Part1 = a
f.C0 = d
f.C1 = e
f.Parent = b
return f
end
local function a(_, b)
for _, _ in pairs(_:GetChildren()) do
if _:IsA("Attachment") and _.Name == b then
return _
elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
local _ = a(_, b)
if _ then
return _
end
end
end
end
function k(_, d)
d.Parent = _
local e = d:FindFirstChild("Handle")
if e then
local c = e:FindFirstChildOfClass("Attachment")
if c then
local _ = a(_, c.Name)
if _ then
l(_, c)
end
else
local c = _:FindFirstChild("Head")
if c then
local a = CFrame.new(0, 0.5, 0)
local _ = d.AttachmentPoint
b("HeadWeld", c, c, e, a, _)
end
end
end
end
local _ = Text
local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
k(game.Players.LocalPlayer.Character, _)
   end,
})
local s2 = t1:CreateSection("Clothing (TEXTUREID ONLY)")
local tb3 = t1:CreateInput({
   Name = "Shirt",
   PlaceholderText = "Paste Shirt TXID here...",
   RemoveTextAfterFocusLost = true,
   Callback = function(Text)
game.Players.LocalPlayer.Character.Shirt.ShirtTemplate = 'rbxassetid://'..Text
   end,
})
local tb4 = t1:CreateInput({
   Name = "Pants",
   PlaceholderText = "Paste Pants TXID here...",
   RemoveTextAfterFocusLost = true,
   Callback = function(Text)
game.Players.LocalPlayer.Character.Pants.PantsTemplate = 'rbxassetid://'..Text
   end,
})
local s3 = t1:CreateSection("Other Body Modifications")
local tb5 = t1:CreateInput({
   Name = "Face (TEXTUREID ONLY)",
   PlaceholderText = "Paste Face TXID here...",
   RemoveTextAfterFocusLost = true,
   Callback = function(Text)
game.Players.LocalPlayer.Character.Head.face.Texture = 'rbxassetid://'..Text
   end,
})
local tb6 = t1:CreateInput({
   Name = "Head",
   PlaceholderText = "Paste Head ID here...",
   RemoveTextAfterFocusLost = true,
   Callback = function(Text)
game.Players.LocalPlayer.Character.Head.MeshId = 'http://roblox.com/asset/?id='..Text
   end,
})
local b1 = t1:CreateButton({
   Name = "Press for Headless",
   Callback = function()
game.Players.LocalPlayer.Character.Head.Transparency = 1
game.Players.LocalPlayer.Character.Head.face:Destroy()
game.Players.LocalPlayer.Character.Head.face:Destroy()
   end,
})
local b2 = t1:CreateButton({
   Name = "Press for Korblox LLeg",
   Callback = function()
game.Players.LocalPlayer.Character.LeftLowerLeg.MeshId = "http://roblox.com/asset/?id=9598310137"
game.Players.LocalPlayer.Character.LeftLowerLeg.TextureID = "http://roblox.com/asset/?id=902842271"
game.Players.LocalPlayer.Character.LeftUpperLeg.MeshId = "http://www.roblox.com/asset/?id=9598310131"
game.Players.LocalPlayer.Character.LeftUpperLeg.TextureID = "http://roblox.com/asset/?id=902842271"
game.Players.LocalPlayer.Character.LeftFoot.MeshId = "9598310118"
game.Players.LocalPlayer.Character.LeftFoot.Transparency = "1"
   end,
})
local t2 = Window:CreateTab("World Modifications")
local s4 = t2:CreateSection("Ambience")
local b5 = t2:CreateButton({
   Name = "BetterAmbience™",
   Callback = function()
sethiddenproperty(game:GetService("Workspace").Terrain, "Decoration", true)
sethiddenproperty(game:GetService("Lighting"), "Technology", "Future")
local light = game.Lighting
for i, v in pairs(light:GetChildren()) do
	v:Destroy()
end

local ter = workspace.Terrain
local color = Instance.new("ColorCorrectionEffect")
local bloom = Instance.new("BloomEffect")
local sun = Instance.new("SunRaysEffect")
local blur = Instance.new("BlurEffect")

color.Parent = light
bloom.Parent = light
sun.Parent = light
blur.Parent = light

-- enable or disable shit

local config = {

	Terrain = true;
	ColorCorrection = true;
	Sun = true;
	Lighting = true;
	BloomEffect = true;
	
}

-- settings {

color.Enabled = false
color.Contrast = 0.15
color.Brightness = 0.1
color.Saturation = 0.25
color.TintColor = Color3.fromRGB(255, 222, 211)

bloom.Enabled = false
bloom.Intensity = 0.1

sun.Enabled = false
sun.Intensity = 0.2
sun.Spread = 1

bloom.Enabled = false
bloom.Intensity = 0.05
bloom.Size = 32
bloom.Threshold = 1

blur.Enabled = false
blur.Size = 6

-- settings }


if config.ColorCorrection then
	color.Enabled = true
end


if config.Sun then
	sun.Enabled = true
end


if config.Terrain then
	-- settings {
	ter.WaterColor = Color3.fromRGB(10, 10, 24)
	ter.WaterWaveSize = 0.1
	ter.WaterWaveSpeed = 22
	ter.WaterTransparency = 0.9
	ter.WaterReflectance = 0.05
	-- settings }
end


if config.Lighting then
	-- settings {
	light.Ambient = Color3.fromRGB(0, 0, 0)
	light.Brightness = 4
	light.ColorShift_Bottom = Color3.fromRGB(0, 0, 0)
	light.ColorShift_Top = Color3.fromRGB(0, 0, 0)
	light.ExposureCompensation = 0
	light.FogColor = Color3.fromRGB(132, 132, 132)
	light.GlobalShadows = true
	light.OutdoorAmbient = Color3.fromRGB(112, 117, 128)
	light.Outlines = false
	-- settings }
end
   end,
})
local s5 = t2:CreateSection("BetterAmbience Fixes")
local b7 = t2:CreateButton({
   Name = "Darkness Fix",
   Callback = function()
sethiddenproperty(game.Lighting, "Technology", "ShadowMap")
   end,
})
local b6 = t2:CreateButton({
   Name = "Grass Fix",
   Callback = function()
for i,v in pairs(workspace:GetDescendants()) do
if v:IsA("Part") and Enum.Material.Grass and v.Size.Z > 500 then
workspace.Terrain:FillBlock(v.CFrame, v.Size, Enum.Material.Grass)
end
end
   end,
})
