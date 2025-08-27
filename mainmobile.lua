local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local player = Players.LocalPlayer

local xen = Instance.new("ScreenGui")
xen.Name = "xen"
xen.IgnoreGuiInset = true
xen.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
xen.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
xen.Parent = player:WaitForChild("PlayerGui")

local mainFrame = Instance.new("Frame")
mainFrame.Name = "Frame"
mainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
mainFrame.Position = UDim2.new(0.200997204, 0, 0.665540636, 0)
mainFrame.Size = UDim2.new(0.292517006, 0, 0.435064942, 0)
mainFrame.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
mainFrame.BorderSizePixel = 0
mainFrame.Parent = xen
Instance.new("UICorner", mainFrame).CornerRadius = UDim.new(0.005, 0)

local titleFrame = Instance.new("Frame")
titleFrame.Name = "Title"
titleFrame.AnchorPoint = Vector2.new(0.5, 0.5)
titleFrame.Position = UDim2.new(0.50000006, 0, 0.0206491724, 0)
titleFrame.Size = UDim2.new(0.99999994, 0, 0.0869999826, 0)
titleFrame.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
titleFrame.BorderSizePixel = 0
titleFrame.Parent = mainFrame
Instance.new("UICorner", titleFrame).CornerRadius = UDim.new(0.05, 0)

local titleText = Instance.new("TextLabel")
titleText.Name = "Text"
titleText.Text = "          xen"
titleText.Font = Enum.Font.BuilderSansExtraBold
titleText.TextColor3 = Color3.fromRGB(255, 255, 255)
titleText.TextSize = 35
titleText.TextWrapped = true
titleText.TextXAlignment = Enum.TextXAlignment.Left
titleText.TextYAlignment = Enum.TextYAlignment.Bottom
titleText.AnchorPoint = Vector2.new(0.5, 0.5)
titleText.BackgroundTransparency = 1
titleText.BorderSizePixel = 0
titleText.Position = UDim2.new(0.500721931, 0, 0.5, 0)
titleText.Size = UDim2.new(1.00144374, 0, 1, 0)
titleText.Parent = titleFrame

local titleText1 = Instance.new("TextLabel")
titleText1.Name = "Text1"
titleText1.Text = " ⭐ | "
titleText1.Font = Enum.Font.BuilderSansBold
titleText1.TextColor3 = Color3.fromRGB(255, 255, 255)
titleText1.TextScaled = true
titleText1.TextSize = 35
titleText1.TextWrapped = true
titleText1.TextXAlignment = Enum.TextXAlignment.Left
titleText1.TextYAlignment = Enum.TextYAlignment.Bottom
titleText1.AnchorPoint = Vector2.new(0.5, 0.5)
titleText1.BackgroundTransparency = 1
titleText1.BorderSizePixel = 0
titleText1.Position = UDim2.new(0.500638962, 0, 0.500000477, 0)
titleText1.Size = UDim2.new(1.00127804, 0, 0.999608457, 0)
titleText1.Parent = titleFrame

local bar = Instance.new("Frame")
bar.Name = "Bar"
bar.AnchorPoint = Vector2.new(0.5, 0.5)
bar.Position = UDim2.new(0.501933753, 0, 0.0994075909, 0)
bar.Size = UDim2.new(1, 0, 0.063432835, 0)
bar.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
bar.BackgroundTransparency = 1
bar.BorderSizePixel = 0
bar.Parent = mainFrame

local chats = Instance.new("Frame")
chats.Name = "Chats"
chats.AnchorPoint = Vector2.new(0.5, 0.5)
chats.Position = UDim2.new(0.49906829, 0, 0.549226046, 0)
chats.Size = UDim2.new(0.88039875, 0, 0.827477515, 0)
chats.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
chats.BorderSizePixel = 0
chats.Parent = mainFrame
Instance.new("UICorner", chats).CornerRadius = UDim.new(0.05, 0)

local scrollingFrame = Instance.new("ScrollingFrame")
scrollingFrame.Name = "ScrollingFrame"
scrollingFrame.AnchorPoint = Vector2.new(0.5, 0.5)
scrollingFrame.Position = UDim2.new(0.499339342, 0, 0.592152715, 0)
scrollingFrame.Size = UDim2.new(0.96257174, 0, 0.730672359, 0)
scrollingFrame.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
scrollingFrame.BorderSizePixel = 0
scrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.XY
scrollingFrame.ScrollBarThickness = 0
scrollingFrame.Active = true
scrollingFrame.Parent = chats
Instance.new("UICorner", scrollingFrame).CornerRadius = UDim.new(0.05, 0)

local uiList = Instance.new("UIListLayout")
uiList.SortOrder = Enum.SortOrder.LayoutOrder
uiList.Parent = scrollingFrame

local sampleText = Instance.new("TextLabel")
sampleText.Name = "SampleText"
sampleText.Text = " cc11u: welcome to xen"
sampleText.Font = Enum.Font.BuilderSansMedium
sampleText.TextColor3 = Color3.fromRGB(255, 255, 255)
sampleText.TextScaled = true
sampleText.TextSize = 16
sampleText.TextWrapped = true
sampleText.TextXAlignment = Enum.TextXAlignment.Left
sampleText.AnchorPoint = Vector2.new(0.5, 0.5)
sampleText.AutomaticSize = Enum.AutomaticSize.X
sampleText.BackgroundTransparency = 1
sampleText.BorderSizePixel = 0
sampleText.Position = UDim2.new(0.502233326, 0, 0.126657143, 0)
sampleText.Size = UDim2.new(1.00446665, 0, 0.253313839, 0)
sampleText.Visible = true
sampleText.Parent = scrollingFrame

local frame1 = Instance.new("Frame")
frame1.Name = "Frame1"
frame1.AnchorPoint = Vector2.new(0.5, 0.5)
frame1.Position = UDim2.new(0.499708533, 0, 0.0948109999, 0)
frame1.Size = UDim2.new(0.999416947, 0, 0.174422085, 0)
frame1.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
frame1.BorderSizePixel = 0
frame1.Parent = chats
Instance.new("UICorner", frame1).CornerRadius = UDim.new(0.2, 0)

local text2 = Instance.new("TextLabel")
text2.Name = "Text"
text2.Text = "  Chat"
text2.Font = Enum.Font.BuilderSansExtraBold
text2.TextColor3 = Color3.fromRGB(255, 255, 255)
text2.TextScaled = true
text2.TextSize = 37
text2.TextWrapped = true
text2.TextXAlignment = Enum.TextXAlignment.Left
text2.AnchorPoint = Vector2.new(0.5, 0.5)
text2.BackgroundTransparency = 1
text2.BorderSizePixel = 0
text2.Position = UDim2.new(0.488877535, 0, 0.515661359, 0)
text2.Size = UDim2.new(0.99312979, 0, 0.965960681, 0)
text2.Parent = frame1

local frame2 = Instance.new("Frame")
frame2.Name = "Frame2"
frame2.AnchorPoint = Vector2.new(0.5, 0.5)
frame2.Position = UDim2.new(0.51083225, 0, 0.917877853, 0)
frame2.Size = UDim2.new(0.443496883, 0, 0.204900786, 0)
frame2.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
frame2.BorderSizePixel = 0
frame2.Parent = frame1

local chatInjector = Instance.new("LocalScript")
chatInjector.Name = "ChatInjector"
chatInjector.Parent = xen

chatInjector.Source = [[
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

local xen = script.Parent
local mainFrame = xen:WaitForChild("Frame")
local chats = mainFrame:WaitForChild("Chats")
local scrollingFrame = chats:WaitForChild("ScrollingFrame")
local sampleText = scrollingFrame:WaitForChild("SampleText")

local function plrchat(plr, chat)
    local newMsg = sampleText:Clone()
    newMsg.Text = " " .. plr.Name .. ": " .. chat
    newMsg.Parent = scrollingFrame
    newMsg.Visible = true
	newMsg.Name = "TextMessage"
    local atBottom = scrollingFrame.CanvasPosition.Y >= scrollingFrame.AbsoluteCanvasSize.Y - scrollingFrame.AbsoluteSize.Y - 20
    if atBottom then
        scrollingFrame.CanvasPosition = Vector2.new(0, scrollingFrame.AbsoluteCanvasSize.Y)
    end
end

local gui = script.Parent
local frame = gui:FindFirstChild("Frame")
local title = frame and frame:FindFirstChild("Title")
if not frame or not title then return end

local dragging = false
local dragInput, dragStart, startPos
local tweenInfo = TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

title.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = frame.Position

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

title.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if input == dragInput and dragging then
		local delta = input.Position - dragStart
		local goal = {
			Position = UDim2.new(
				startPos.X.Scale,
				startPos.X.Offset + delta.X,
				startPos.Y.Scale,
				startPos.Y.Offset + delta.Y
			)
		}
		TweenService:Create(frame, tweenInfo, goal):Play()
	end
end)

local chatlogs = true

for _, v in pairs(Players:GetPlayers()) do
    v.Chatted:Connect(function(chat)
        if chatlogs then
            plrchat(v, chat)
        end
    end)
end

Players.PlayerAdded:Connect(function(plr)
    plr.Chatted:Connect(function(chat)
        if chatlogs then
            plrchat(plr, chat)
        end
    end)
end)
]]
