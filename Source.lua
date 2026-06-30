--// Oblivion-Script Loader v3

local Library = {}

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")

local Player = Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")


local LOGO = "rbxassetid://82181222725549"

------------------------------------------------
-- LOADER STYLE PRO
------------------------------------------------

function Library:Loader()

    local gui = Instance.new("ScreenGui")
    gui.Name = "OblivionLoader"
    gui.ResetOnSpawn = false
    gui.IgnoreGuiInset = true
    gui.Parent = PlayerGui

    -- container transparent
    local container = Instance.new("Frame")
    container.Size = UDim2.new(1,0,1,0)
    container.BackgroundTransparency = 1
    container.Parent = gui

    -- logo
    local logo = Instance.new("ImageLabel")
    logo.Size = UDim2.new(0,80,0,80)
    logo.Position = UDim2.new(0.5,-140,0.5,-40)
    logo.BackgroundTransparency = 1
    logo.Image = LOGO
    logo.ImageTransparency = 1
    logo.Parent = container

    -- text
    local title = Instance.new("TextLabel")
    title.Size = UDim2.new(0,400,0,80)
    title.Position = UDim2.new(0.5,-40,0.5,-40)
    title.BackgroundTransparency = 1
    title.Text = "Oblivion-Script"
    title.TextColor3 = Color3.fromRGB(0,0,0)
    title.Font = Enum.Font.GothamBlack
    title.TextSize = 36
    title.TextXAlignment = Enum.TextXAlignment.Left
    title.TextTransparency = 1
    title.Parent = container

    ------------------------------------------------
    -- POSITION START (droite)
    ------------------------------------------------

    logo.Position = UDim2.new(0.5,80,0.5,-40)
    title.Position = UDim2.new(0.5,120,0.5,-40)

    ------------------------------------------------
    -- ANIMATION (droite -> gauche + fade)
    ------------------------------------------------

    task.wait(0.1)

    TweenService:Create(logo, TweenInfo.new(0.6, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
        Position = UDim2.new(0.5,-140,0.5,-40),
        ImageTransparency = 0
    }):Play()

    TweenService:Create(title, TweenInfo.new(0.6, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
        Position = UDim2.new(0.5,-40,0.5,-40),
        TextTransparency = 0
    }):Play()

    task.wait(1.5)

    ------------------------------------------------
    -- FADE OUT
    ------------------------------------------------

    TweenService:Create(logo, TweenInfo.new(0.5), {
        ImageTransparency = 1
    }):Play()

    TweenService:Create(title, TweenInfo.new(0.5), {
        TextTransparency = 1
    }):Play()

    task.wait(0.6)

    gui:Destroy()
end

------------------------------------------------
-- INIT
------------------------------------------------

Library:Loader()

return Library
