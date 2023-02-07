    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("My ScriptHub Private", "Ocean")

    -- MAIN
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")


    MainSection:NewButton("Piggy GUI", "Opens A Piggy Script GUI", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Piggy/Loader.lua"))()
    end)

    MainSection:NewButton("Infinite Yield", "infinite yield works in any game", function()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
    end)

    MainSection:NewButton("Doors GUI", "made by Vynixu", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Doors/Script.lua"))()
    end)

    MainSection:NewButton("Ninja Legends Script", "Script works in 2023/It works in 2023", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/TrixAde/Proxima-Hub/main/Main.lua"))()
    end)

    MainSection:NewButton("bloxfruit script/needs a Key", "Script hub Needs A Key", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Efe0626/VoidHub/main/Script"))()
    end)

    MainSection:NewButton("Script is making isuess?", "click for more info", function()
        print("if the script is NOT WORKING it may be becouse YOUR EXECUTER DO NOT SUPORT THE SCRIPT/GUI")
    end)

    --LOCAL PLAYER
    local Player = Window:NewTab("Player")
    local PlayerSection = Player:NewSection("Player")

    PlayerSection:NewSlider("WalkSpeed", "You can chuse how fast you want to go", 500, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
    end)

    PlayerSection:NewSlider("WalkSpeed", "You can chuse how fast you want to go", 350, 50, function(s) -- 500 (MaxValue) | 0 (MinValue)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
    end)

    PlayerSection:NewButton("Reset W/J", "Resets The W/J to default", function()
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
    end)


    --Other
    local Other = Window:NewTab("Other")
    local OtherSection = Other:NewSection("Other")

    OtherSection:NewButton("Infinite Jump", "Makes you Able to Jump INFINITLY!!!", function()
        local InfiniteJumpEnabled = true
    game:GetService("UserInputService").JumpRequest:connect(function()
        if InfiniteJumpEnabled then
            game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
        end
    end)
    end)

    OtherSection:NewButton("Noclip / When on Press e to enable or disable", "Makes you Able to Walk Frue Walls", function()
        local StealthMode = true 

    local Indicator

    if not StealthMode then
        local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
        Indicator = Instance.new("TextLabel", ScreenGui)
        Indicator.AnchorPoint = Vector2.new(0, 1)
        Indicator.Position = UDim2.new(0, 0, 1, 0)
        Indicator.Size = UDim2.new(0, 200, 0, 50)
        Indicator.BackgroundTransparency = 1
        Indicator.TextScaled = true
        Indicator.TextStrokeTransparency = 0
        Indicator.TextColor3 = Color3.new(0, 0, 0)
        Indicator.TextStrokeColor3 = Color3.new(1, 1, 1)
        Indicator.Text = "Noclip: Enabled"
    end

    local noclip = false
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()

    local mouse = player:GetMouse()

    mouse.KeyDown:Connect(function(key)
        if key == "e" then
            noclip = not noclip

            if not StealthMode then
                Indicator.Text = "Noclip: " .. (noclip and "Enabled" or "Disabled")
            end
        end
    end)

    while true do
        player = game.Players.LocalPlayer
        character = player.Character

        if noclip then
            for _, v in pairs(character:GetDescendants()) do
                pcall(function()
                    if v:IsA("BasePart") then
                        v.CanCollide = false
                    end
                end)
            end
        end

        game:GetService("RunService").Stepped:wait()
    end
    end)