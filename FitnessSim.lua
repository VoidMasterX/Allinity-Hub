--[[
game:GetService("ReplicatedStorage").Events.Sell:FireServer()

game:GetService("ReplicatedStorage").Events["Buy All"]:FireServer("Weights")

Page.Toggle({
    Text = "Auto Kill Boss",
    Callback = function(value)
        _G.boss = value

        while true do 
        if not _G.boss then return end
            local Event = game:GetService("ReplicatedStorage").Events.Damage:FireServer(workspace.Boss.Model.Boss)
            wait(.1)
            game:GetService("ReplicatedStorage").Events.Damage:FireServer(workspace.Boss.Model.Boss)
            wait(.1)
            game:GetService("ReplicatedStorage").Events.Damage:FireServer(workspace.Boss.Model.Boss)
            wait(.1)
            game:GetService("ReplicatedStorage").Events.Damage:FireServer(workspace.Boss.Model.Boss)
            wait(.1)
            game:GetService("ReplicatedStorage").Events.Damage:FireServer(workspace.Boss.Model.Boss)
            wait(.1)
            wait()
        end
    Enabled = false
end,
    Menu = {
        Information = function(self)
            UI.Banner({
                Text = "Automatically Kills Boss"            
            })
        end
    }
})

Page.Toggle({
    Text = "Auto Kill Mega Boss",
    Callback = function(value)
        _G.mboss = value

        while true do 
        if not _G.mboss then return end
            local Event = game:GetService("ReplicatedStorage").Events.Damage:FireServer(workspace["Mega Boss"].Model.Boss2)
            wait(.1)
            game:GetService("ReplicatedStorage").Events.Damage:FireServer(workspace["Mega Boss"].Model.Boss2)
            wait(.1)
            game:GetService("ReplicatedStorage").Events.Damage:FireServer(workspace["Mega Boss"].Model.Boss2)
            wait(.1)
            game:GetService("ReplicatedStorage").Events.Damage:FireServer(workspace["Mega Boss"].Model.Boss2)
            wait(.1)
            game:GetService("ReplicatedStorage").Events.Damage:FireServer(workspace["Mega Boss"].Model.Boss2)
            wait(.1)
            wait(.1)
            wait()
        end
    Enabled = false
end,
    Menu = {
        Information = function(self)
            UI.Banner({
                Text = "Automatically Kills Mega Boss"            
            })
        end
    }
})
]]

local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()
local player = game:GetService("Players").LocalPlayer
local char = player.Character
local rootpart = char.HumanoidRootPart

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
    Title = "Fitness Simulator"
})

Page.Toggle({
    Text = "Auto Lift",
    Callback = function(value)
        _G.lift = value

        while true do 
        if not _G.lift then return end
            local Event = game:GetService("ReplicatedStorage").Events.Lift:FireServer()
            wait()
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
            local Event = game:GetService("ReplicatedStorage").Events.Sell:FireServer()
            wait(1)
        end
    Enabled = false
end,
    Menu = {
        Information = function(self)
            UI.Banner({
                Text = "Automatically Sells Strength"            
            })
        end
    }
})

Page.Toggle({
    Text = "Auto Buy Weights",
    Callback = function(value)
        _G.weight = value

        while true do 
        if not _G.weight then return end
            local Event = game:GetService("ReplicatedStorage").Events["Buy All"]:FireServer("Weights")
            wait()
        end
    Enabled = false
end,
    Menu = {
        Information = function(self)
            UI.Banner({
                Text = "Automatically Buys Weights"            
            })
        end
    }
})

Page.Toggle({
    Text = "Auto Buy Bodies",
    Callback = function(value)
        _G.body = value

        while true do 
        if not _G.body then return end
            local Event = game:GetService("ReplicatedStorage").Events["Buy All"]:FireServer("Bodies")
            wait()
        end
    Enabled = false
end,
    Menu = {
        Information = function(self)
            UI.Banner({
                Text = "Automatically Buys Bodies"            
            })
        end
    }
})

Page.Toggle({
    Text = "Auto Buy Tiers",
    Callback = function(value)
        _G.tier = value

        while true do 
        if not _G.tier then return end
            local Event = game:GetService("ReplicatedStorage").Events["Buy All"]:FireServer("Tiers")
            wait()
        end
    Enabled = false
end,
    Menu = {
        Information = function(self)
            UI.Banner({
                Text = "Automatically Buys Tiers"            
            })
        end
    }
})

Page.Toggle({
    Text = "Auto Buy Morphs",
    Callback = function(value)
        _G.morph = value

        while true do 
        if not _G.morph then return end
            local Event = game:GetService("ReplicatedStorage").Events["Buy All"]:FireServer("Morphs")
            wait()
        end
    Enabled = false
end,
    Menu = {
        Information = function(self)
            UI.Banner({
                Text = "Automatically Buys Morphs"            
            })
        end
    }
})

Page.Toggle({
    Text = "Auto Buy Auras",
    Callback = function(value)
        _G.aura = value

        while true do 
        if not _G.aura then return end
            local Event = game:GetService("ReplicatedStorage").Events["Buy All"]:FireServer("Auras")
            wait()
        end
    Enabled = false
end,
    Menu = {
        Information = function(self)
            UI.Banner({
                Text = "Automatically Buys Auras"            
            })
        end
    }
})

--[[-- Script generated by SimpleSpy - credits to exx#9394

local args = {
    [1] = "Normal"
}

game:GetService("ReplicatedStorage").Events["Buy Pet"]:FireServer(unpack(args))
]]
