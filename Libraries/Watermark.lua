local module = {}

function module:CreateWatermark(text, properties)
	
	local self = {}
	
	
	local Watermark = Instance.new("ScreenGui")
	local bg = Instance.new("Frame")
	local bg_2 = Instance.new("Frame")
	local pre = Instance.new("TextLabel")
	local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")

	--Properties:

	Watermark.Name = "Watermark"
	Watermark.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	Watermark.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	Watermark.DisplayOrder = 999999999
	Watermark.ResetOnSpawn = false

	bg.Name = "bg"
	bg.Parent = Watermark
	bg.AnchorPoint = Vector2.new(0.5, 0.5)
	bg.BackgroundColor3 = Color3.fromRGB(175, 175, 175)
	bg.BorderColor3 = Color3.fromRGB(10, 10, 10)
	bg.BorderSizePixel = 2
	bg.Position = UDim2.new(0, 1584, 0, 29)
	bg.Size = UDim2.new(0.145200878, 0, 0.0482739136, 0)

	bg_2.Name = "bg"
	bg_2.Parent = bg
	bg_2.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
	bg_2.BorderColor3 = Color3.fromRGB(35, 35, 35)
	bg_2.Position = UDim2.new(-0.000779746217, 0, 0, 0)
	bg_2.Size = UDim2.new(0.995636404, 1, 0.995633245, 1)

	pre.Name = "pre"
	pre.Parent = bg_2
	pre.AnchorPoint = Vector2.new(0.5, 0.5)
	pre.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	pre.BackgroundTransparency = 1.000
	pre.Position = UDim2.new(0.495429993, 0, 0.483364761, 0)
	pre.Size = UDim2.new(0.996000051, 1, 0.741777956, 0)
	pre.Font = Enum.Font.RobotoMono
	pre.RichText = true
	pre.Text = text
	pre.TextColor3 = Color3.fromRGB(255, 255, 255)
	pre.TextScaled = true
	pre.TextSize = 20.000
	pre.TextStrokeTransparency = 0.000
	pre.TextWrapped = true

	UIAspectRatioConstraint.Parent = Watermark
	UIAspectRatioConstraint.AspectRatio = 2.853
	
	for Property, Value in pairs(properties) do
		pcall(function()
			pre[Property] = Value
		end)
	end
	
	function self.UpdateProperties(properties) 
		for Property, Value in pairs(properties) do
			pcall(function()
				pre[Property] = Value
			end)
		end	
	end
	
	function self.UpdateText(text)
		pre.Text = text
	end
	
	function self.Enabled(boolean) 
		Watermark.Enabled = boolean
	end
	
	return self
	
end

return module
