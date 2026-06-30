--// Oblivion-ro (Oblivion-Script) Loader v2

local Library = {}

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")

local Player = Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")

local LOGO = "rbxassetid://82181222725549"


function Library:Loader()

    local gui = Instance.new("ScreenGui")
    gui.Name = "OblivionLoader"
    gui.ResetOnSpawn = false
    gui.IgnoreGuiInset = true
    gui.Parent = PlayerGui

    local container = Instance.new("Frame")
    container.Size = UDim2.new(1,0,1,0)
    container.BackgroundTransparency = 1
    container.Parent = gui

    local logo = Instance.new("ImageLabel")
    logo.Size = UDim2.new(0,60,0,60)
    logo.Position = UDim2.new(0.5,-160,0.5,-30)
    logo.BackgroundTransparency = 1
    logo.Image = LOGO
    logo.ImageTransparency = 1
    logo.Parent = container

    local title = Instance.new("TextLabel")
    title.Size = UDim2.new(0,300,0,60)
    title.Position = UDim2.new(0.5,-90,0.5,-30)
    title.BackgroundTransparency = 1
    title.Text = "Oblivion-Script"
    title.TextColor3 = Color3.fromRGB(170,120,255)
    title.Font = Enum.Font.GothamBold
    title.TextSize = 28
    title.TextXAlignment = Enum.TextXAlignment.Left
    title.TextTransparency = 1
    title.Parent = container

    logo.ImageTransparency = 1
    title.TextTransparency = 1

    TweenService:Create(logo, TweenInfo.new(0.6), {ImageTransparency = 0}):Play()
    TweenService:Create(title, TweenInfo.new(0.6), {TextTransparency = 0}):Play()

    task.wait(1.2)

    TweenService:Create(logo, TweenInfo.new(0.6), {ImageTransparency = 1}):Play()
    TweenService:Create(title, TweenInfo.new(0.6), {TextTransparency = 1}):Play()

    task.wait(0.7)

    gui:Destroy()
end

Library:Loader()

return Library
