local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()
local player = game:GetService("Players").LocalPlayer
local char = player.Character
local rootpart = char.HumanoidRootPart
local bossfolder = game:GetService("Workspace").BossFolder

local UI = Material.Load({
    Title = "Allinity Hub",
    Style = 1,
    SizeX = 400,
    SizeY = 300,
    Theme = "Jester"
})

UI.Banner({
	Text = "Welcome! Thanks for using Allinity Hub! Don't forget to vouch or like my post ;)"
})

local Page = UI.New({
    Title = "Lifting Legends"
})

Page.Toggle({
    Text = "Auto Lift",
    Callback = function(value)
        _G.lift = value

        while true do 
        if not _G.lift then return end
            local A_1 = "Click"
            local Event = game:GetService("ReplicatedStorage").Network.Port1
            Event:FireServer(A_1)
            wait(0.8)
        end
    Enabled = false
end,
    Menu = {
        Information = function(self)
            UI.Banner({
                Text = "Automatically Lifts Weight"            
            })
        end
    }
})

Page.Toggle({
    Text = "Auto Sell",
    Callback = function(value)
        _G.sell = value

        while true do 
        if not _G.sell then return end
            local A_1 = "SellEnergy"
            local Event = game:GetService("ReplicatedStorage").Network.Port1
            Event:FireServer(A_1)
            wait(1)
        end
    Enabled = false
end,
    Menu = {
        Information = function(self)
            UI.Banner({
                Text = "Automatically Sells Weight"            
            })
        end
    }
})

Page.Toggle({
    Text = "Auto Buy Strength",
    Callback = function(value)
        _G.str = value

        while true do 
        if not _G.str then return end
            local A_1 = "PurchaseAll"
            local A_2 = "Strength"
            local Event = game:GetService("ReplicatedStorage").Network.Port1
            Event:FireServer(A_1, A_2)
            wait()
        end
    Enabled = false
end,
    Menu = {
        Information = function(self)
            UI.Banner({
                Text = "Automatically Buys Shit"            
            })
        end
    }
})

Page.Toggle({
    Text = "Auto Buy Endurance",
    Callback = function(value)
        _G.endu = value

        while true do 
        if not _G.endu then return end
            local A_1 = "PurchaseAll"
            local A_2 = "Endurance"
            local Event = game:GetService("ReplicatedStorage").Network.Port1
            Event:FireServer(A_1, A_2)
            wait()
        end
    Enabled = false
end,
    Menu = {
        Information = function(self)
            UI.Banner({
                Text = "Automatically Buys Shit"            
            })
        end
    }
})

Page.Toggle({
    Text = "Auto Rebirth",
    Callback = function(value)
        _G.str = value

        while true do 
        if not _G.str then return end
            local A_1 = "Purchase"
            local A_2 = "Rank"
            local Event = game:GetService("ReplicatedStorage").Network.Port1
            Event:FireServer(A_1, A_2)
            wait()
        end
    Enabled = false
end,
    Menu = {
        Information = function(self)
            UI.Banner({
                Text = "Automatically Rebirths"            
            })
        end
    }
})

local Page = UI.New({
    Title = "Teleports"
})

Page.Button({
    Text = "Teleport Daily Reward To You",
    Callback = function()
        game.workspace.DailyRewardPoint.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    end,
Menu = {
    Information = function(self)
        UI.Banner({
            Text = "Does what the name says"            
        })
    end
}
})

local Page = UI.New({
    Title = "Boss Teleports"
})

Page.Button({
    Text = "Teleport To 1st Boss",
    Callback = function()
        local check = bossfolder:FindFirstChild("Boss1")
        if check == nil then return end
        rootpart.CFrame = bossfolder["Boss1"].HumanoidRootPart.CFrame
    end,
    Menu = {
        Information = function(self)
            UI.Banner({
                Text = "Does what the name says, has to be alive"            
            })
        end
    }
})

Page.Button({
    Text = "Teleport To 2nd Boss",
    Callback = function()
        local check = bossfolder:FindFirstChild("Boss2")
        if check == nil then return end
        rootpart.CFrame = bossfolder["Boss2"].HumanoidRootPart.CFrame
    end,
    Menu = {
        Information = function(self)
            UI.Banner({
                Text = "Does what the name says, has to be alive"            
            })
        end
    }
})

Page.Button({
    Text = "Teleport To 3rd Boss",
    Callback = function()
        local check = bossfolder:FindFirstChild("Boss3")
        if check == nil then return end
        rootpart.CFrame = bossfolder["Boss3"].HumanoidRootPart.CFrame
    end,
    Menu = {
        Information = function(self)
            UI.Banner({
                Text = "Does what the name says, has to be alive"            
            })
        end
    }
})

Page.Button({
    Text = "Teleport To 4th Boss",
    Callback = function()
        local check = bossfolder:FindFirstChild("Boss4")
        if check == nil then return end
        rootpart.CFrame = bossfolder["Boss4"].HumanoidRootPart.CFrame
    end,
    Menu = {
        Information = function(self)
            UI.Banner({
                Text = "Does what the name says, has to be alive"            
            })
        end
    }
})

Page.Button({
    Text = "Teleport To 5th Boss",
    Callback = function()
        local check = bossfolder:FindFirstChild("Boss5")
        if check == nil then return end
        rootpart.CFrame = bossfolder["Boss5"].HumanoidRootPart.CFrame
    end,
    Menu = {
        Information = function(self)
            UI.Banner({
                Text = "Does what the name says, has to be alive"            
            })
        end
    }
})

Page.Button({
    Text = "Teleport To 6th Boss",
    Callback = function()
        local check = bossfolder:FindFirstChild("Boss6")
        if check == nil then return end
        rootpart.CFrame = bossfolder["Boss6"].HumanoidRootPart.CFrame
    end,
    Menu = {
        Information = function(self)
            UI.Banner({
                Text = "Does what the name says, has to be alive"            
            })
        end
    }
})

Page.Button({
    Text = "Teleport To 7th Boss",
    Callback = function()
        local check = bossfolder:FindFirstChild("Boss7")
        if check == nil then return end
        rootpart.CFrame = bossfolder["Boss7"].HumanoidRootPart.CFrame
    end,
    Menu = {
        Information = function(self)
            UI.Banner({
                Text = "Does what the name says, has to be alive"            
            })
        end
    }
})

Page.Button({
    Text = "Teleport To 8th Boss",
    Callback = function()
        local check = bossfolder:FindFirstChild("Boss8")
        if check == nil then return end
        rootpart.CFrame = bossfolder["Boss8"].HumanoidRootPart.CFrame
    end,
    Menu = {
        Information = function(self)
            UI.Banner({
                Text = "Does what the name says, has to be alive"            
            })
        end
    }
})

Page.Button({
    Text = "Teleport To 9th Boss",
    Callback = function()
        local check = bossfolder:FindFirstChild("Boss9")
        if check == nil then return end
        rootpart.CFrame = bossfolder["Boss9"].HumanoidRootPart.CFrame
    end,
    Menu = {
        Information = function(self)
            UI.Banner({
                Text = "Does what the name says, has to be alive"            
            })
        end
    }
})

Page.Button({
    Text = "Teleport To 10th Boss",
    Callback = function()
        local check = bossfolder:FindFirstChild("Boss10")
        if check == nil then return end
        rootpart.CFrame = bossfolder["Boss10"].HumanoidRootPart.CFrame
    end,
    Menu = {
        Information = function(self)
            UI.Banner({
                Text = "Does what the name says, has to be alive"            
            })
        end
    }
})

Page.Button({
    Text = "Teleport To 11th Boss",
    Callback = function()
        local check = bossfolder:FindFirstChild("Boss11")
        if check == nil then return end
        rootpart.CFrame = bossfolder["Boss11"].HumanoidRootPart.CFrame
    end,
    Menu = {
        Information = function(self)
            UI.Banner({
                Text = "Does what the name says, has to be alive"            
            })
        end
    }
})

Page.Button({
    Text = "Teleport To 12th Boss",
    Callback = function()
        local check = bossfolder:FindFirstChild("Boss12")
        if check == nil then return end
        rootpart.CFrame = bossfolder["Boss12"].HumanoidRootPart.CFrame
    end,
    Menu = {
        Information = function(self)
            UI.Banner({
                Text = "Does what the name says, has to be alive"            
            })
        end
    }
})

Page.Button({
    Text = "Teleport To 13th Boss",
    Callback = function()
        local check = bossfolder:FindFirstChild("Boss13")
        if check == nil then return end
        rootpart.CFrame = bossfolder["Boss13"].HumanoidRootPart.CFrame
    end,
    Menu = {
        Information = function(self)
            UI.Banner({
                Text = "Does what the name says, has to be alive"            
            })
        end
    }
})
