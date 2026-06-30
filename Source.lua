--// Oblivion-Script Loader 

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


    local bg = Instance.new("Frame")
    bg.Size = UDim2.new(1,0,1,0)
    bg.BackgroundColor3 = Color3.fromRGB(0,0,0)
    bg.BorderSizePixel = 0
    bg.Parent = gui

  
    local logo = Instance.new("ImageLabel")
    logo.Size = UDim2.new(0,90,0,90)
    logo.Position = UDim2.new(0.5,80,0.5,-45)
    logo.BackgroundTransparency = 1
    logo.Image = LOGO
    logo.ImageTransparency = 1
    logo.ScaleType = Enum.ScaleType.Fit
    logo.Parent = bg

 
    local title = Instance.new("TextLabel")
    title.Size = UDim2.new(0,500,0,80)
    title.Position = UDim2.new(0.5,140,0.5,-45)
    title.BackgroundTransparency = 1
    title.Text = "Oblivion-Script"
    title.TextColor3 = Color3.fromRGB(255,255,255)
    title.Font = Enum.Font.GothamBlack
    title.TextSize = 42
    title.TextXAlignment = Enum.TextXAlignment.Left
    title.TextTransparency = 1
    title.Parent = bg

 
    logo.Position = UDim2.new(0.5,200,0.5,-45)
    title.Position = UDim2.new(0.5,260,0.5,-45)

   

    task.wait(0.1)

    TweenService:Create(logo,
        TweenInfo.new(0.9, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
        {
            Position = UDim2.new(0.5,-180,0.5,-45),
            ImageTransparency = 0
        }
    ):Play()

    TweenService:Create(title,
        TweenInfo.new(0.9, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
        {
            Position = UDim2.new(0.5,-80,0.5,-45),
            TextTransparency = 0
        }
    ):Play()

    task.wait(2)

   
    TweenService:Create(logo, TweenInfo.new(0.7), {ImageTransparency = 1}):Play()
    TweenService:Create(title, TweenInfo.new(0.7), {TextTransparency = 1}):Play()
    TweenService:Create(bg, TweenInfo.new(0.7), {BackgroundTransparency = 1}):Play()

    task.wait(0.8)

    gui:Destroy()
end


Library:Loader()

return Library
