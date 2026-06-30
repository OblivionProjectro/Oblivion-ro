--// Oblivion-Script Loader v4 (Pro Long Animation)

local Library = {}

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")

local Player = Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")

-- ⚠️ LOGO (doit être PNG transparent)
local LOGO = "rbxassetid://82181222725549"

------------------------------------------------
-- LOADER PRO
------------------------------------------------

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

    ------------------------------------------------
    -- LOGO
    ------------------------------------------------
    local logo = Instance.new("ImageLabel")
    logo.Size = UDim2.new(0,95,0,95)
    logo.Position = UDim2.new(0.5,80,0.5,-45)
    logo.BackgroundTransparency = 1
    logo.Image = LOGO
    logo.ImageTransparency = 1
    logo.ScaleType = Enum.ScaleType.Fit
    logo.Parent = container

    ------------------------------------------------
    -- TITLE
    ------------------------------------------------
    local title = Instance.new("TextLabel")
    title.Size = UDim2.new(0,500,0,80)
    title.Position = UDim2.new(0.5,120,0.5,-45)
    title.BackgroundTransparency = 1
    title.Text = "Oblivion-Script"
    title.TextColor3 = Color3.fromRGB(235,235,235) -- visible (pas noir sinon invisible)
    title.Font = Enum.Font.GothamBlack
    title.TextSize = 42
    title.TextXAlignment = Enum.TextXAlignment.Left
    title.TextTransparency = 1
    title.Parent = container

    ------------------------------------------------
    -- SUB TEXT
    ------------------------------------------------
    local sub = Instance.new("TextLabel")
    sub.Size = UDim2.new(0,400,0,40)
    sub.Position = UDim2.new(0.5,120,0.5,10)
    sub.BackgroundTransparency = 1
    sub.Text = "Initializing system..."
    sub.TextColor3 = Color3.fromRGB(180,180,180)
    sub.Font = Enum.Font.Gotham
    sub.TextSize = 20
    sub.TextXAlignment = Enum.TextXAlignment.Left
    sub.TextTransparency = 1
    sub.Parent = container

    ------------------------------------------------
    -- START POSITION (RIGHT SIDE)
    ------------------------------------------------

    logo.Position = UDim2.new(0.5,180,0.5,-45)
    title.Position = UDim2.new(0.5,220,0.5,-45)
    sub.Position = UDim2.new(0.5,220,0.5,10)

    ------------------------------------------------
    -- ANIMATION IN (SLOW + SMOOTH)
    ------------------------------------------------

    task.wait(0.15)

    TweenService:Create(logo,
        TweenInfo.new(1, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
        {
            Position = UDim2.new(0.5,-180,0.5,-45),
            ImageTransparency = 0
        }
    ):Play()

    TweenService:Create(title,
        TweenInfo.new(1, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
        {
            Position = UDim2.new(0.5,-80,0.5,-45),
            TextTransparency = 0
        }
    ):Play()

    TweenService:Create(sub,
        TweenInfo.new(1, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
        {
            Position = UDim2.new(0.5,-80,0.5,10),
            TextTransparency = 0
        }
    ):Play()

    ------------------------------------------------
    -- HOLD
    ------------------------------------------------

    task.wait(2)

    ------------------------------------------------
    -- FADE OUT (CLEAN)
    ------------------------------------------------

    TweenService:Create(logo, TweenInfo.new(0.8), {ImageTransparency = 1}):Play()
    TweenService:Create(title, TweenInfo.new(0.8), {TextTransparency = 1}):Play()
    TweenService:Create(sub, TweenInfo.new(0.8), {TextTransparency = 1}):Play()

    task.wait(0.9)

    gui:Destroy()
end

------------------------------------------------
-- INIT
------------------------------------------------

Library:Loader()

return Library
