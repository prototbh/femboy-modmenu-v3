﻿local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui")
local image = Instance.new("ImageLabel")
image.Parent = gui
image.Size = UDim2.new(0, 500, 0, 500)
image.Position = UDim2.new(0.35, 0, 0.25, 0)
image.Image = "rbxassetid://102837018963670"
image.BackgroundTransparency = 1
image.ImageTransparency = 1
local babyBlue = Color3.fromRGB(137, 207, 240)

gui.Parent = player:FindFirstChild("PlayerGui")
for i = 1, 0, -0.05 do
    image.ImageTransparency = i
    task.wait(0.05)
end
wait(1)
for i = 0, 1, 0.05 do
    image.ImageTransparency = i
    task.wait(0.05)
end
gui:ClearAllChildren()

local mainUI = Instance.new("Frame")
mainUI.Size = UDim2.new(0, 500, 0, 200)
mainUI.Position = UDim2.new(0.5, -250, 0.5, -150)
mainUI.BackgroundColor3 = Color3.new(0, 0, 0)
mainUI.BorderSizePixel = 0
mainUI.Parent = gui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 16)
corner.Parent = mainUI

local verticalLine = Instance.new("Frame")
verticalLine.Size = UDim2.new(0, 2, 1, 0)
verticalLine.Position = UDim2.new(0.5, -1, 0, 0)
verticalLine.BackgroundColor3 = babyBlue
verticalLine.BorderSizePixel = 0
verticalLine.Parent = mainUI

local horizontalLine = Instance.new("Frame")
horizontalLine.Size = UDim2.new(1, 0, 0, 2)
horizontalLine.Position = UDim2.new(0, 0, 0.5, -1)
horizontalLine.BackgroundColor3 = babyBlue
horizontalLine.BorderSizePixel = 0
horizontalLine.Parent = mainUI

local textLabel = Instance.new("TextLabel")
textLabel.Text = "femboy mod menu v3"
textLabel.Size = UDim2.new(1, 0, 0, 40)
textLabel.Position = UDim2.new(0, 0, 0, -50)
textLabel.BackgroundTransparency = 1
textLabel.TextColor3 = babyBlue
textLabel.TextScaled = false
textLabel.TextSize = 20
textLabel.Font = Enum.Font.GothamBold
textLabel.TextXAlignment = Enum.TextXAlignment.Center
textLabel.Parent = mainUI

local topLeftText = Instance.new("TextLabel")
topLeftText.Text = "PLAYER/MISC"
topLeftText.Size = UDim2.new(0.5, -10, 0.1, -10)
topLeftText.Position = UDim2.new(0, 10, 0, 10)
topLeftText.BackgroundTransparency = 1
topLeftText.TextColor3 = babyBlue
topLeftText.TextScaled = true
topLeftText.TextSize = 14
topLeftText.Font = Enum.Font.GothamBold
topLeftText.TextXAlignment = Enum.TextXAlignment.Left
topLeftText.TextYAlignment = Enum.TextYAlignment.Top
topLeftText.Parent = mainUI

local topLeftText2 = Instance.new("TextLabel")
topLeftText2.Text = "TP UTILITY "
topLeftText2.Size = UDim2.new(0.5, -10, 0.1, -10)
topLeftText2.Position = UDim2.new(0, 10, 0, 110)
topLeftText2.BackgroundTransparency = 1
topLeftText2.TextColor3 = babyBlue
topLeftText2.TextScaled = true
topLeftText2.TextSize = 14
topLeftText2.Font = Enum.Font.GothamBold
topLeftText2.TextXAlignment = Enum.TextXAlignment.Left
topLeftText2.TextYAlignment = Enum.TextYAlignment.Top
topLeftText2.Parent = mainUI

-----------------------------------------------------------------------------------------

local dragInput, dragStart, startPos

local function update(input)
    local delta = input.Position - dragStart
    mainUI.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

textLabel.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragStart = input.Position
        startPos = mainUI.Position
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragStart = nil
            end
        end)
    end
end)

textLabel.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        if dragStart then
            update(input)
        end
    end
end)