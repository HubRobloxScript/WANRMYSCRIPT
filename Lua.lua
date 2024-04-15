-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local MainD = Instance.new("Frame")
local Submit = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local Get = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local Field = Instance.new("TextBox")
local UICorner_3 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local close = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

MainD.Name = "MainD"
MainD.Parent = ScreenGui
MainD.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
MainD.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainD.BorderSizePixel = 0
MainD.Position = UDim2.new(0.394521028, 0, 0.248456791, 0)
MainD.Size = UDim2.new(0, 257, 0, 169)
MainD.Active = true

Submit.Name = "Submit"
Submit.Parent = MainD
Submit.BackgroundColor3 = Color3.fromRGB(116, 255, 66)
Submit.BorderColor3 = Color3.fromRGB(0, 0, 0)
Submit.BorderSizePixel = 0
Submit.Position = UDim2.new(0, 0, 0.704142034, 0)
Submit.Size = UDim2.new(0, 130, 0, 50)
Submit.Font = Enum.Font.SourceSansBold
Submit.Text = "Submit"
Submit.TextColor3 = Color3.fromRGB(0, 0, 0)
Submit.TextScaled = true
Submit.TextSize = 14.000
Submit.TextWrapped = true

UICorner.CornerRadius = UDim.new(0, 30)
UICorner.Parent = Submit

Get.Name = "Get"
Get.Parent = MainD
Get.BackgroundColor3 = Color3.fromRGB(116, 255, 66)
Get.BorderColor3 = Color3.fromRGB(0, 0, 0)
Get.BorderSizePixel = 0
Get.Position = UDim2.new(0.505836546, 0, 0.704142034, 0)
Get.Size = UDim2.new(0, 127, 0, 50)
Get.Font = Enum.Font.SourceSansBold
Get.Text = "Get Key Link"
Get.TextColor3 = Color3.fromRGB(0, 0, 0)
Get.TextScaled = true
Get.TextSize = 14.000
Get.TextWrapped = true

UICorner_2.CornerRadius = UDim.new(0, 30)
UICorner_2.Parent = Get

Field.Name = "Field"
Field.Parent = MainD
Field.BackgroundColor3 = Color3.fromRGB(201, 255, 198)
Field.BorderColor3 = Color3.fromRGB(0, 0, 0)
Field.BorderSizePixel = 0
Field.Position = UDim2.new(0, 0, 0.248520717, 0)
Field.Size = UDim2.new(0, 257, 0, 69)
Field.Font = Enum.Font.SourceSansBold
Field.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
Field.PlaceholderText = "--Click Get key paste in Browser To Get key"
Field.Text = ""
Field.TextColor3 = Color3.fromRGB(0, 0, 0)
Field.TextSize = 14.000
Field.TextXAlignment = Enum.TextXAlignment.Left

UICorner_3.Parent = Field

TextLabel.Parent = MainD
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 257, 0, 42)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "Keysystem"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

close.Name = "close"
close.Parent = MainD
close.BackgroundColor3 = Color3.fromRGB(255, 64, 74)
close.BorderColor3 = Color3.fromRGB(0, 0, 0)
close.BorderSizePixel = 0
close.Position = UDim2.new(0.85603112, 0, 0, 0)
close.Size = UDim2.new(0, 37, 0, 34)
close.Font = Enum.Font.SourceSansBold
close.Text = "X"
close.TextColor3 = Color3.fromRGB(0, 0, 0)
close.TextScaled = true
close.TextSize = 14.000
close.TextWrapped = true

-- Scripts:

local function KQKJZC_fake_script() -- MainD.SmoothDrag 
	local script = Instance.new('LocalScript', MainD)

	local Drag = script.Parent
	gsCoreGui = game:GetService("CoreGui")
	gsTween = game:GetService("TweenService")
	local UserInputService = game:GetService("UserInputService")
		local dragging
		local dragInput
		local dragStart
		local startPos
		local function update(input)
			local delta = input.Position - dragStart
			local dragTime = 0.04
			local SmoothDrag = {}
			SmoothDrag.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
			local dragSmoothFunction = gsTween:Create(Drag, TweenInfo.new(dragTime, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), SmoothDrag)
			dragSmoothFunction:Play()
		end
		Drag.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				dragging = true
				dragStart = input.Position
				startPos = Drag.Position
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragging = false
					end
				end)
			end
		end)
		Drag.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInput = input
			end
		end)
		UserInputService.InputChanged:Connect(function(input)
			if input == dragInput and dragging and Drag.Size then
				update(input)
			end
		end)
	
end
coroutine.wrap(KQKJZC_fake_script)()
local function SOWSWGN_fake_script() -- Submit.LocalScript 
	local script = Instance.new('LocalScript', Submit)

	--password 5Y44Fhsm6u7YLscc
	
	function Loader()
		loadstring(game:HttpGet('https://pastebin.com/yqN9BNTt'))()
	end
	
	script.Parent.Parent.Submit.MouseButton1Click:Connect(function()
		if script.Parent.Parent.Field.Text == "5Y44Fhsm6u7YLscc" then
			Loader()
			wait(0.5)
			script.Parent.Parent.Parent.Parent.ScreenGui:Destroy()
		end
	end)
end
coroutine.wrap(SOWSWGN_fake_script)()
local function FZHJ_fake_script() -- Get.LocalScript 
	local script = Instance.new('LocalScript', Get)

	script.Parent.Parent.Get.MouseButton1Click:Connect(function()
		setclipboard("https://work.ink/1Usm/lv0vr7jd")
	end)
end
coroutine.wrap(FZHJ_fake_script)()
local function OHHQ_fake_script() -- close.LocalScript 
	local script = Instance.new('LocalScript', close)

	script.Parent.Parent.close.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent.Parent.ScreenGui:Destroy()
	end)
end
coroutine.wrap(OHHQ_fake_script)()
