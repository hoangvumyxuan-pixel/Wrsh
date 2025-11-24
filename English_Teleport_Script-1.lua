local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local UIS = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")

local KeyFrame = Instance.new("Frame")
KeyFrame.Size = UDim2.new(0,300,0,150)
KeyFrame.Position = UDim2.new(0.5,-150,0.3,-75)
KeyFrame.BackgroundColor3 = Color3.fromRGB(50,50,50)
KeyFrame.BorderSizePixel = 0
KeyFrame.Parent = ScreenGui

local keyCorner = Instance.new("UICorner")
keyCorner.CornerRadius = UDim.new(0,20)
keyCorner.Parent = KeyFrame

local CloseButton = Instance.new("TextButton")
CloseButton.Size = UDim2.new(0,30,0,30)
CloseButton.Position = UDim2.new(1,-35,0,5)
CloseButton.BackgroundColor3 = Color3.fromRGB(255,0,0)
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.fromRGB(255,255,255)
CloseButton.Font = Enum.Font.GothamBold
CloseButton.TextSize = 18
CloseButton.BorderSizePixel = 0
CloseButton.Parent = KeyFrame

local closeCorner = Instance.new("UICorner")
closeCorner.CornerRadius = UDim.new(0,15)
closeCorner.Parent = CloseButton

CloseButton.MouseButton1Click:Connect(function()
    KeyFrame:Destroy()
    if TeleFrame then
        TeleFrame:Destroy()
    end
end)

local KeyLabel = Instance.new("TextLabel")
KeyLabel.Size = UDim2.new(1,0,0.25,0)
KeyLabel.Position = UDim2.new(0,0,0,0)
KeyLabel.BackgroundTransparency = 1
KeyLabel.Text = "Enter Key:"
KeyLabel.TextSize = 20
KeyLabel.TextColor3 = Color3.fromRGB(255,255,255)
KeyLabel.Font = Enum.Font.GothamBold
KeyLabel.Parent = KeyFrame

local KeyBox = Instance.new("TextBox")
KeyBox.Size = UDim2.new(1, -20,0.25,0)
KeyBox.Position = UDim2.new(0,10,0.3,0)
KeyBox.Text = ""
KeyBox.PlaceholderText = "Enter Key..."
KeyBox.TextSize = 18
KeyBox.TextColor3 = Color3.fromRGB(0,0,0)
KeyBox.Font = Enum.Font.Gotham
KeyBox.BackgroundColor3 = Color3.fromRGB(255,255,255)
KeyBox.BorderSizePixel = 0
KeyBox.ClearTextOnFocus = false
KeyBox.Parent = KeyFrame

local boxCorner = Instance.new("UICorner")
boxCorner.CornerRadius = UDim.new(0,15)
boxCorner.Parent = KeyBox

local ConfirmButton = Instance.new("TextButton")
ConfirmButton.Size = UDim2.new(0,100,0,40)
ConfirmButton.Position = UDim2.new(0.5,-50,0.6,0)
ConfirmButton.BackgroundColor3 = Color3.fromRGB(0,170,255)
ConfirmButton.Text = "Confirm"
ConfirmButton.TextSize = 18
ConfirmButton.TextColor3 = Color3.fromRGB(255,255,255)
ConfirmButton.Font = Enum.Font.GothamBold
ConfirmButton.BorderSizePixel = 0
ConfirmButton.Parent = KeyFrame

local btnCorner = Instance.new("UICorner")
btnCorner.CornerRadius = UDim.new(0,15)
btnCorner.Parent = ConfirmButton

local MsgLabel = Instance.new("TextLabel")
MsgLabel.Size = UDim2.new(1,0,0.15,0)
MsgLabel.Position = UDim2.new(0,0,0.85,0)
MsgLabel.BackgroundTransparency = 1
MsgLabel.Text = ""
MsgLabel.TextSize = 16
MsgLabel.Font = Enum.Font.Gotham
MsgLabel.Parent = KeyFrame

local TeleFrame = Instance.new("Frame")
TeleFrame.Size = UDim2.new(0,180,0,100)
TeleFrame.Position = UDim2.new(0.5,-90,0.7,-50)
TeleFrame.BackgroundTransparency = 1
TeleFrame.Parent = ScreenGui
TeleFrame.Visible = false

local Button = Instance.new("TextButton")
Button.Size = UDim2.new(0,180,0,60)
Button.Position = UDim2.new(0,0,0,0)
Button.BackgroundColor3 = Color3.fromRGB(255,0,0)
Button.Text = "OFF"
Button.TextSize = 18
Button.Font = Enum.Font.GothamBold
Button.BorderSizePixel = 0
Button.AutoButtonColor = false
Button.Parent = TeleFrame

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0,25)
corner.Parent = Button

task.spawn(function()
    local hue = 0
    while true do
        hue = (hue + 1) % 360
        Button.BackgroundColor3 = Color3.fromHSV(hue/360,1,1)
        task.wait(0.02)
    end
end)

local SliderFrame = Instance.new("Frame")
SliderFrame.Size = UDim2.new(1,0,0,20)
SliderFrame.Position = UDim2.new(0,0,1,5)
SliderFrame.BackgroundColor3 = Color3.fromRGB(255,255,255)
SliderFrame.BackgroundTransparency = 0.5
SliderFrame.BorderSizePixel = 0
SliderFrame.Parent = Button

local sliderCorner = Instance.new("UICorner")
sliderCorner.CornerRadius = UDim.new(0,10)
sliderCorner.Parent = SliderFrame

local SliderKnob = Instance.new("Frame")
SliderKnob.Size = UDim2.new(0,20,1,0)
SliderKnob.Position = UDim2.new(0,0,0,0)
SliderKnob.BackgroundColor3 = Color3.fromRGB(255,255,255)
SliderKnob.BorderSizePixel = 0
SliderKnob.Parent = SliderFrame

local knobCorner = Instance.new("UICorner")
knobCorner.CornerRadius = UDim.new(0,10)
knobCorner.Parent = SliderKnob

task.spawn(function()
    local hue = 0
    while true do
        hue = (hue + 1) % 360
        SliderFrame.BackgroundColor3 = Color3.fromHSV(hue/360,1,1)
        task.wait(0.02)
    end
end)

local LabelLeft = Instance.new("TextLabel")
LabelLeft.Size = UDim2.new(0,80,1,0)
LabelLeft.Position = UDim2.new(0,0,0,0)
LabelLeft.BackgroundTransparency = 1
LabelLeft.Text = "Slow"
LabelLeft.TextSize = 12
LabelLeft.TextColor3 = Color3.fromRGB(255,255,255)
LabelLeft.Font = Enum.Font.Gotham
LabelLeft.Parent = SliderFrame

local LabelRight = Instance.new("TextLabel")
LabelRight.Size = UDim2.new(0,80,1,0)
LabelRight.Position = UDim2.new(1,-80,0,0)
LabelRight.BackgroundTransparency = 1
LabelRight.Text = "Fast"
LabelRight.TextSize = 12
LabelRight.TextColor3 = Color3.fromRGB(255,255,255)
LabelRight.Font = Enum.Font.Gotham
LabelRight.Parent = SliderFrame

local sliding, slideInput, slideStart, knobStart
local sliderValue = 0.02
local function updateSlider(input)
    local delta = input.Position.X - slideStart
    local newPos = math.clamp(knobStart + delta,0,SliderFrame.AbsoluteSize.X - SliderKnob.AbsoluteSize.X)
    SliderKnob.Position = UDim2.new(0,newPos,0,0)
    sliderValue = 0.02 - (newPos/(SliderFrame.AbsoluteSize.X - SliderKnob.AbsoluteSize.X)) * 0.019999
    sliderValue = math.clamp(sliderValue,0.000001,0.02)
end

SliderKnob.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        sliding = true
        slideStart = input.Position.X
        knobStart = SliderKnob.Position.X.Offset
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                sliding = false
            end
        end)
    end
end)

UIS.InputChanged:Connect(function(input)
    if input == slideInput and sliding then
        updateSlider(input)
    end
end)

SliderKnob.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        slideInput = input
    end
end)

local dragging, dragInput, dragStart, startPos
local dragVelocity = 0
local lastPos = nil

local function updateButton(input)
    local delta = input.Position - dragStart
    Button.Position = UDim2.new(startPos.X.Scale,startPos.X.Offset + delta.X,
        startPos.Y.Scale,startPos.Y.Offset + delta.Y)
    if lastPos then
        dragVelocity = (input.Position - lastPos).Magnitude
    end
    lastPos = input.Position
end

Button.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = Button.Position
        lastPos = input.Position
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
                dragVelocity = 0
                lastPos = nil
            end
        end)
    end
end)

Button.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

UIS.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        updateButton(input)
    end
end)

local enabled = false
local function TeleportLoop()
    while enabled do
        local char = LocalPlayer.Character
        local root = char and char:FindFirstChild("HumanoidRootPart")
        if root then
            for _,plr in ipairs(Players:GetPlayers()) do
                if plr ~= LocalPlayer then
                    local targetChar = plr.Character
                    local targetRoot = targetChar and targetChar:FindFirstChild("HumanoidRootPart")
                    if targetRoot then
                        root.CFrame = targetRoot.CFrame * CFrame.new(0,0,-2)
                    end
                    task.wait(math.clamp(sliderValue - dragVelocity/500,0.000001,0.02))
                end
            end
        end
    end
end

Button.MouseButton1Click:Connect(function()
    enabled = not enabled
    Button.Text = enabled and "ON" or "OFF"
    if enabled then
        task.spawn(TeleportLoop)
    end
end)

ConfirmButton.MouseButton1Click:Connect(function()
    if KeyBox.Text == "Robloxisfun" then
        MsgLabel.Text = "Script loading..."
        MsgLabel.TextColor3 = Color3.fromRGB(0,255,0)

        UIS.MouseIconEnabled = false
        local paused = true
        local conn
        conn = RunService.RenderStepped:Connect(function()
            if paused then return end
        end)

        task.wait(5)

        paused = false
        conn:Disconnect()
        UIS.MouseIconEnabled = true

        KeyFrame:Destroy()
        TeleFrame.Visible = true
    else
        MsgLabel.Text = "Wrong key"
        MsgLabel.TextColor3 = Color3.fromRGB(255,0,0)
        task.spawn(function()
            task.wait(3)
            if MsgLabel.Text == "Wrong key" then
                MsgLabel.Text = ""
            end
        end)
    end
end)
