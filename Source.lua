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

  
    local box = Instance.new("Frame")
    box.Size = UDim2.new(0, 500, 0, 260)
    box.Position = UDim2.new(0.5, -250, 0.5, -130)
    box.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    box.BorderSizePixel = 0
    box.BackgroundTransparency = 1
    box.Parent = gui

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 8)
    corner.Parent = box

    local stroke = Instance.new("UIStroke")
    stroke.Color = Color3.fromRGB(0, 255, 120)
    stroke.Thickness = 2
    stroke.Transparency = 0.2
    stroke.Parent = box

    local title = Instance.new("TextLabel")
    title.BackgroundTransparency = 1
    title.Size = UDim2.new(1, -20, 0, 30)
    title.Position = UDim2.new(0, 10, 0, 15)
    title.Text = "> Oblivion-Script"
    title.TextColor3 = Color3.fromRGB(255,255,255)
    title.Font = Enum.Font.Code
    title.TextSize = 20
    title.TextXAlignment = Enum.TextXAlignment.Left
    title.TextTransparency = 1
    title.Parent = box

    local loading = Instance.new("TextLabel")
    loading.BackgroundTransparency = 1
    loading.Size = UDim2.new(1, -20, 0, 30)
    loading.Position = UDim2.new(0, 10, 0, 55)
    loading.Text = "> initializing..."
    loading.TextColor3 = Color3.fromRGB(255,255,255)
    loading.Font = Enum.Font.Code
    loading.TextSize = 18
    loading.TextXAlignment = Enum.TextXAlignment.Left
    loading.TextTransparency = 1
    loading.Parent = box

    box.BackgroundTransparency = 1


    task.wait(0.1)

    local tweenInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)

    TweenService:Create(box, tweenInfo, {BackgroundTransparency = 0}):Play()
    TweenService:Create(title, tweenInfo, {TextTransparency = 0}):Play()
    TweenService:Create(loading, tweenInfo, {TextTransparency = 0}):Play()

    task.wait(1.2)


    loading.Text = "> loading ui..."
    task.wait(0.7)

    loading.Text = "> finishing..."
    task.wait(0.7)


    local fadeInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)

    TweenService:Create(box, fadeInfo, {BackgroundTransparency = 1}):Play()
    TweenService:Create(title, fadeInfo, {TextTransparency = 1}):Play()
    TweenService:Create(loading, fadeInfo, {TextTransparency = 1}):Play()
    TweenService:Create(stroke, fadeInfo, {Transparency = 1}):Play()

    task.wait(0.5)

    gui:Destroy()
end


Library:Loader()

return Library
