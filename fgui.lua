local function createFemboyModMenu()
    local player = game.Players.LocalPlayer
    local gui = Instance.new("ScreenGui")
    gui.Name = "FemboyModMenu"
    gui.Parent = player:FindFirstChild("PlayerGui")
    
    local image = Instance.new("ImageLabel")
    image.Parent = gui
    image.Size = UDim2.new(0, 500, 0, 500)
    image.Position = UDim2.new(0.35, 0, 0.25, 0)
    image.Image = "rbxassetid://102837018963670"
    image.BackgroundTransparency = 1
    
    local selectedPlayer = nil
    local isLocked = false
    image.ImageTransparency = 1
    local babyBlue = Color3.fromRGB(137, 207, 240)
    
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
    topLeftText2.Text = "TP UTILITY"
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
    
    local tpButton = Instance.new("TextButton")
    tpButton.Text = "TP to Player"
    tpButton.Size = UDim2.new(0.1, 10, 0.1, -5)
    tpButton.Position = UDim2.new(0, 10, 0.65, 0)
    tpButton.BackgroundColor3 = babyBlue
    tpButton.TextColor3 = Color3.new(1, 1, 1)
    tpButton.Font = Enum.Font.GothamBold
    tpButton.TextScaled = true
    tpButton.TextSize = 14
    tpButton.Parent = mainUI
    
    local playerListGUI = Instance.new("Frame")
    playerListGUI.Size = UDim2.new(0, 300, 0, 400)
    playerListGUI.Position = UDim2.new(0.5, -150, 0.5, -200)
    playerListGUI.BackgroundColor3 = Color3.new(0, 0, 0)
    playerListGUI.BorderSizePixel = 0
    playerListGUI.Visible = false
    playerListGUI.Parent = gui
    
    local playerListCorner = Instance.new("UICorner")
    playerListCorner.CornerRadius = UDim.new(0, 16)
    playerListCorner.Parent = playerListGUI
    
    local closeButton = Instance.new("TextButton")
    closeButton.Text = "X"
    closeButton.Size = UDim2.new(0, 30, 0, 30)
    closeButton.Position = UDim2.new(1, -35, 0, 5)
    closeButton.BackgroundColor3 = Color3.new(1, 0, 0)
    closeButton.TextColor3 = Color3.new(1, 1, 1)
    closeButton.Font = Enum.Font.GothamBold
    closeButton.TextSize = 20
    closeButton.Parent = playerListGUI
    
    closeButton.MouseButton1Click:Connect(function()
        playerListGUI.Visible = false
    end)
    
    local playerListLabel = Instance.new("TextLabel")
    playerListLabel.Text = "Players in World"
    playerListLabel.Size = UDim2.new(1, 0, 0, 40)
    playerListLabel.Position = UDim2.new(0, 0, 0, 0)
    playerListLabel.BackgroundTransparency = 1
    playerListLabel.TextColor3 = babyBlue
    playerListLabel.TextSize = 20
    playerListLabel.Font = Enum.Font.GothamBold
    playerListLabel.TextXAlignment = Enum.TextXAlignment.Center
    playerListLabel.Parent = playerListGUI
    
    local playerList = Instance.new("ScrollingFrame")
    playerList.Size = UDim2.new(1, -20, 0.8, -60)
    playerList.Position = UDim2.new(0, 10, 0, 50)
    playerList.BackgroundTransparency = 1
    playerList.ScrollBarThickness = 5
    playerList.Parent = playerListGUI
    
    local tpButtonInList = Instance.new("TextButton")
    tpButtonInList.Text = "TP"
    tpButtonInList.Size = UDim2.new(0.2, 0, 0.1, 0)
    tpButtonInList.Position = UDim2.new(0.8, 0, 0.9, 0)
    tpButtonInList.BackgroundColor3 = babyBlue
    tpButtonInList.TextColor3 = Color3.new(1, 1, 1)
    tpButtonInList.Font = Enum.Font.GothamBold
    tpButtonInList.TextSize = 14
    tpButtonInList.Parent = playerListGUI
    
    local lockButton = Instance.new("TextButton")
    lockButton.Text = "Lock"
    lockButton.Size = UDim2.new(0.2, 0, 0.1, 0)
    lockButton.Position = UDim2.new(0.55, 0, 0.9, 0)
    lockButton.BackgroundColor3 = babyBlue
    lockButton.TextColor3 = Color3.new(1, 1, 1)
    lockButton.Font = Enum.Font.GothamBold
    lockButton.TextSize = 14
    lockButton.Parent = playerListGUI
    
    local function updatePlayerList()
        playerList:ClearAllChildren()
        local yOffset = 0
        for _, plr in pairs(game.Players:GetPlayers()) do
            if plr ~= player then
                local playerButton = Instance.new("TextButton")
                playerButton.Text = plr.Name
                playerButton.Size = UDim2.new(1, 0, 0, 30)
                playerButton.Position = UDim2.new(0, 0, 0, yOffset)
                playerButton.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
                playerButton.TextColor3 = Color3.new(1, 1, 1)
                playerButton.Font = Enum.Font.GothamBold
                playerButton.TextSize = 14
                playerButton.Parent = playerList
    
                playerButton.MouseButton1Click:Connect(function()
                    if selectedPlayer == plr then
                        selectedPlayer = nil
                        playerButton.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
                    else
                        selectedPlayer = plr
                        for _, btn in pairs(playerList:GetChildren()) do
                            if btn:IsA("TextButton") then
                                btn.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
                            end
                        end
                        playerButton.BackgroundColor3 = babyBlue
                    end
                end)
    
                yOffset = yOffset + 35
            end
        end
    end
    
    tpButtonInList.MouseButton1Click:Connect(function()
        if selectedPlayer and selectedPlayer.Character and selectedPlayer.Character.PrimaryPart then
            player.Character:MoveTo(selectedPlayer.Character.PrimaryPart.Position)
        else
            warn("Selected player's character or PrimaryPart is missing.")
        end
    end)
    
    lockButton.MouseButton1Click:Connect(function()
        if selectedPlayer then
            isLocked = not isLocked
            lockButton.Text = isLocked and "Unlock" or "Lock"
        else
            warn("No player selected.")
        end
    end)
    
    game:GetService("RunService").Heartbeat:Connect(function()
        if isLocked and selectedPlayer and selectedPlayer.Character and selectedPlayer.Character.PrimaryPart then
            player.Character:MoveTo(selectedPlayer.Character.PrimaryPart.Position)
        end
    end)
    
    tpButton.MouseButton1Click:Connect(function()
        playerListGUI.Visible = true
        updatePlayerList()
    end)
    
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
end

return createFemboyModMenu
