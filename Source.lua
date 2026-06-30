--// Oblivion-Script Loader 

local Library = {}

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")

local Player = Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")


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

 
    local icon = Instance.new("Frame")
    icon.Size = UDim2.new(0,45,0,45)
    icon.Position = UDim2.new(0.5, -120, 0.5, -22)
    icon.BackgroundColor3 = Color3.fromRGB(140,90,255)
    icon.BorderSizePixel = 0
    icon.BackgroundTransparency = 1
    icon.Parent = container

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(1,0)
    corner.Parent = icon

  
    local title = Instance.new("TextLabel")
    title.Size = UDim2.new(0,300,0,50)
    title.Position = UDim2.new(0.5,-70,0.5,-25)
    title.BackgroundTransparency = 1
    title.Text = "Oblivion-Script"
    title.TextColor3 = Color3.fromRGB(255,255,255)
    title.Font = Enum.Font.GothamBlack
    title.TextSize = 30
    title.TextXAlignment = Enum.TextXAlignment.Left
    title.TextTransparency = 1
    title.Parent = container

   
    icon.Position = UDim2.new(0.5, -60, 0.5, -22)
    title.Position = UDim2.new(0.5, 40, 0.5, -25)

    

    task.wait(0.1)

    TweenService:Create(icon,
        TweenInfo.new(0.6, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
        {
            BackgroundTransparency = 0,
            Position = UDim2.new(0.5, -120, 0.5, -22)
        }
    ):Play()

    TweenService:Create(title,
        TweenInfo.new(0.6, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
        {
            Position = UDim2.new(0.5, -70, 0.5, -25),
            TextTransparency = 0
        }
    ):Play()

    task.wait(1.5)


    TweenService:Create(icon, TweenInfo.new(0.5), {BackgroundTransparency = 1}):Play()
    TweenService:Create(title, TweenInfo.new(0.5), {TextTransparency = 1}):Play()

    task.wait(0.6)

    gui:Destroy()
end



Library:Loader()

return Library
