local Tween = game:GetService('TweenService')

local ScriptScreen = Instance.new('ScreenGui', game.Players.LocalPlayer.PlayerGui)

local Main = Instance.new('Frame', ScriptScreen)
Main.BackgroundTransparency = 0.5
Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.Position = UDim2.new(0.5, 0, 0.4, 0)
Main.Name = 'Main'
Main.BackgroundColor3 = Color3.new(0, 0, 0)
Main.Size = UDim2.new(0, 500, 0, 300)
local MainC = Instance.new('UICorner', Main)
MainC.CornerRadius = UDim.new(0.05, 0)
local MainS = Instance.new('UIStroke', Main)
MainS.Color = Color3.fromRGB(255, 255, 255)
MainS.Thickness = 3
local gradient1 = Instance.new('UIGradient', MainS)
gradient1.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 150, 255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 255, 255))
}
task.spawn(function()
	while true do
		gradient1.Rotation += 1
		wait()
	end
end)

local Title1 = Instance.new('TextLabel', Main)
Title1.Text = '陌漆.小迪共创脚本'
Title1.TextSize = 40
Title1.BackgroundTransparency = 1
Title1.TextColor3 = Color3.fromRGB(255, 255, 255)
Title1.AnchorPoint = Vector2.new(0.5, 0.5)
Title1.Position = UDim2.new(0.5, 0, 0.35, 0)

local Title2 = Instance.new('TextLabel', Main)
Title2.Text = '尊贵的玩家' .. game.Players.LocalPlayer.Name
Title2.TextSize = 20
Title2.BackgroundTransparency = 1
Title2.TextColor3 = Color3.fromRGB(255, 255, 255)
Title2.AnchorPoint = Vector2.new(0.5, 0.55)
Title2.Position = UDim2.new(0.5, 0, 0.6, 0)

local Title3 = Instance.new('TextLabel', Main)
Title3.Text = '欢迎使用迪脚本[BaiMo-Script]'
Title3.TextSize = 20
Title3.BackgroundTransparency = 1
Title3.TextColor3 = Color3.fromRGB(255, 255, 255)
Title3.AnchorPoint = Vector2.new(0.5, 0.5)
Title3.Position = UDim2.new(0.5, 0, 0.75, 0)

local LoadMain = Instance.new('Frame', ScriptScreen)
LoadMain.BackgroundTransparency = 0.5
LoadMain.AnchorPoint = Vector2.new(0.5, 0.5)
LoadMain.Position = UDim2.new(0.5, 0, 0.66, 0)
LoadMain.Name = 'LoadMain'
LoadMain.BackgroundColor3 = Color3.new(0, 0, 0)
LoadMain.Size = UDim2.new(0, 500, 0, 50)
local LoadMainC = Instance.new('UICorner', LoadMain)
LoadMainC.CornerRadius = UDim.new(0.08, 0)
local LoadMainS = Instance.new('UIStroke', LoadMain)
LoadMainS.Color = Color3.fromRGB(255, 255, 255)
LoadMainS.Thickness = 3
local gradient2 = Instance.new('UIGradient', LoadMainS)
gradient2.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 150, 255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 255, 255))
}
task.spawn(function()
	while true do
		gradient2.Rotation += 1
		wait()
	end
end)


local LoadFillMain = Instance.new('Frame', LoadMain)
LoadFillMain.BackgroundTransparency = 0.5
LoadFillMain.Name = 'LoadMain'
LoadFillMain.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LoadFillMain.Size = UDim2.new(0, 0, 1, 0)
local LoadFillMainC = Instance.new('UICorner', LoadFillMain)
LoadFillMainC.CornerRadius = UDim.new(0.08, 0)
local gradient3 = Instance.new('UIGradient', LoadFillMain)
gradient3.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 150, 255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 255, 255))
}
task.spawn(function()
	while true do
		gradient2.Rotation += 1
		wait()
	end
end)

local LoadState = Instance.new('TextLabel', Main)
LoadState.Text = '正在加载玩家信息...'
LoadState.TextSize = 20
LoadState.BackgroundTransparency = 1
LoadState.TextColor3 = Color3.fromRGB(255, 255, 255)
LoadState.AnchorPoint = Vector2.new(0.5, 0.5)
LoadState.Position = UDim2.new(0.5, 0, 1.3, 0)

task.wait(0.5)
Tween:Create(LoadFillMain, TweenInfo.new(1), {Size = UDim2.new(0.2, 0, 1, 0)}):Play()

task.wait(1)
LoadState.Text = '正在加载脚本界面...'
Tween:Create(LoadFillMain, TweenInfo.new(0.7), {Size = UDim2.new(0.5, 0, 1, 0)}):Play()

task.wait(0.7)
LoadState.Text = '正在加载项目...'
Tween:Create(LoadFillMain, TweenInfo.new(0.6), {Size = UDim2.new(1, 0, 1, 0)}):Play()

task.wait(0.7)
LoadState.Text = '加载完成!'

task.wait(0.5)
Title1:Destroy()
Title2:Destroy()
Title3:Destroy()
LoadState:Destroy()

Tween:Create(Main, TweenInfo.new(0.5), {Size = UDim2.new(0, 0, 0, 0)}):Play()
Tween:Create(LoadFillMain, TweenInfo.new(0.5), {Size = UDim2.new(0, 0, 0, 0)}):Play()
Tween:Create(LoadMain, TweenInfo.new(0.5), {Size = UDim2.new(0, 0, 0, 0)}):Play()

task.wait(0.5)

Main:Destroy()
LoadMain:Destroy()

LoadFillMain:Destroy()
