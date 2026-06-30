--// Oblivion-ro UI Library
--// Loader + Base (v1)

local Oblivion = {}

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local CoreGui = game:GetService("CoreGui")

local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

-- ⚠️ MET TON LOGO ICI
local LOGO = "rbxassetid://127969930988833"

------------------------------------------------
-- LOADER
------------------------------------------------

function Oblivion:Loader()
    if PlayerGui:FindFirstChild("OblivionLoader") then
        PlayerGui.OblivionLoader:Destroy()
    end

    local gui = Instance.new("ScreenGui")
    gui.Name = "OblivionLoader"
    gui.ResetOnSpawn = false
    gui.Parent = PlayerGui

    local bg = Instance.new("Frame")
    bg.Size = UDim2.new(1,0,1,0)
    bg.BackgroundColor3 = Color3.fromRGB(10,10,10)
    bg.BorderSizePixel = 0
    bg.Parent = gui

    local logo = Instance.new("ImageLabel")
    logo.Size = UDim2.new(0,120,0,120)
    logo.Position = UDim2.new(0.5,-60,0.35,0)
    logo.BackgroundTransparency = 1
    logo.Image = LOGO
    logo.Parent = bg

    local title = Instance.new("TextLabel")
    title.Size = UDim2.new(1,0,0,50)
    title.Position = UDim2.new(0,0,0.52,0)
    title.BackgroundTransparency = 1
    title.Text = "𝙾𝘽𝙇𝙄𝙑𝙄𝙊𝙉𝙎-𝙍𝙊"
    title.TextColor3 = Color3.fromRGB(170,120,255)
    title.Font = Enum.Font.GothamBold
    title.TextSize = 28
    title.Parent = bg

    local status = Instance.new("TextLabel")
    status.Size = UDim2.new(1,0,0,30)
    status.Position = UDim2.new(0,0,0.58,0)
    status.BackgroundTransparency = 1
    status.Text = "Initializing..."
    status.TextColor3 = Color3.fromRGB(255,255,255)
    status.Font = Enum.Font.Gotham
    status.TextSize = 18
    status.Parent = bg

    local bar = Instance.new("Frame")
    bar.Size = UDim2.new(0,300,0,6)
    bar.Position = UDim2.new(0.5,-150,0.65,0)
    bar.BackgroundColor3 = Color3.fromRGB(30,30,30)
    bar.BorderSizePixel = 0
    bar.Parent = bg

    local fill = Instance.new("Frame")
    fill.Size = UDim2.new(0,0,1,0)
    fill.BackgroundColor3 = Color3.fromRGB(170,120,255)
    fill.BorderSizePixel = 0
    fill.Parent = bar

    TweenService:Create(
        fill,
        TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
        {Size = UDim2.new(1,0,1,0)}
    ):Play()

    task.wait(0.5)
    status.Text = "Loading UI..."

    task.wait(0.7)
    status.Text = "Loading Components..."

    task.wait(0.7)
    status.Text = "Finishing..."

    task.wait(1)

    gui:Destroy()
end

------------------------------------------------
-- INIT
------------------------------------------------

Oblivion:Loader()

return Oblivion
