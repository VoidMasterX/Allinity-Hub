local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()
local sell = workspace.Locations.Sell.CFrame
local plr = game:service'Players'.LocalPlayer

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
    Title = "Saber Sim"
})

Page.Toggle({
    Text = "Buy All Swords",
    Callback = function (value)
        _G.sword = value

        while true do 
            if not _G.sword then return end
            local A_1 = "Swords"
            local Event = game:GetService("ReplicatedStorage").Events.BuyAll
            Event:FireServer(A_1)
            wait(1)
        end
        Enabled = false
    end,
Menu = {
    Information = function(self)
        UI.Banner({
            Text = "Automatically Buys All Swords"            
        })
    end
}
})

Page.Toggle({
    Text = "Buy All Auras",
    Callback = function (value)
        _G.aura = value

        while true do
            if not _G.aura then return end
            local A_1 = "Auras"
            local Event = game:GetService("ReplicatedStorage").Events.BuyAll
            Event:FireServer(A_1)
            wait(1)
        end
        Enabled = false
    end,
Menu = {
    Information = function(self)
        UI.Banner({
            Text = "Automatically Buys All Auras"            
        })
    end
}
})

Page.Toggle({
    Text = "Buy All DNA",
    Callback = function (value)
        _G.dna = value

        while true do 
            if not _G.dna then return end
            local A_1 = "Backpacks"
            local Event = game:GetService("ReplicatedStorage").Events.BuyAll
            Event:FireServer(A_1)
            wait(1)
        end
        Enabled = false
    end,
Menu = {
    Information = function(self)
        UI.Banner({
            Text = "Automatically Buys All DNA"            
        })
    end
}
})

Page.Toggle({
    Text = "Auto Sell",
    Callback = function (value)
        _G.sell = value

        while true do
            if not _G.sell then return end

            if plr.Character.HumanoidRootPart.CFrame ~= sell then
                plr.Character.HumanoidRootPart.CFrame = sell
            end
            game:service'ReplicatedStorage'.Events["Sell"]:FireServer()
            wait(1)
        end
        Enabled = false
    end,
Menu = {
    Information = function(self)
        UI.Banner({
            Text = "Automatically Sells"            
        })
    end
}
})

Page.Toggle({
    Text = "Auto Swing",
    Callback = function(value)
        _G.swing = value

        while true do
        if not _G.swing then return end

        local Event2 = game:GetService("ReplicatedStorage").Events.Clicked
        Event2:FireServer()
        wait()
        end
        Enabled = false
    end,
Menu = {
    Information = function(self)
        UI.Banner({
            Text = "Automatically Swimgs"            
        })
    end
}
})

Page.Button({
    Text = "Inf Jumps",
    Callback = function()
        local alltable = getrawmetatable(game);
        
        make_writeable(alltable);

        local old_index = alltable.__index;

        alltable.__index = function(all1, all2)

            if tostring(all1) == "MaxJumps" then

                if tostring(all2) == "Value" then
                    local value = math.huge
                    return value;

                end
            end
            return old_index(all1, all2)
        end
    end,
Menu = {
    Information = function(self)
        UI.Banner({
            Text = "Gives You Infinite Jumps"            
        })
    end
}
})

Page.Slider({
    Text = "WalkSpeed",
    Callback = function(value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
    end,
    Min = 1,
    Max = 300,
    Def = 16
})

Page.Slider({
    Text = "JumpPower",
    Callback = function(value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
    end,
    Min = 1,
    Max = 300,
    Def = 50
})

local Page = UI.New({
    Title = "Eggs"
})

Page.Dropdown({
    Text = "Buy An Egg",
    Callback = function(value)
        local A_1 = game:GetService("ReplicatedStorage").Eggs[value]
        local A_2 = 1
        local Event = game:GetService("ReplicatedStorage").Events.HatchEggs
        Event:InvokeServer(A_1, A_2)
    end,
    Options = {"Basic Egg", "Wooden Egg", "Reinforced Egg", "Ancient", "Egg of life", "Glory Egg", "Dominus Egg", "Silver Egg", "Golden Egg", "Premium Egg", "Heart Egg", "Class Egg", "Diamond Egg", "Ruby Egg", "Alpha Egg", "Snow Egg", "Christmas Egg", "Ice Egg", "Reaper Egg", "Nature Egg", "Winter Egg", "Valk Egg", "Fire Egg", "Food Egg", "Dragon Egg", "Star Egg", "Cow Egg", "Flame Egg", "Water Egg", "Ooga Egg", "Matrix Egg", "Round Egg", "Thanksgiving Egg", "Shadow Egg", "Pink Egg", "Candy Egg", "Rushed Egg", "Onetap Egg", "Swag Egg", "Triangle Egg", "Square Egg", "Cringe Egg", "Boris Egg", "Phantom Egg", "Business Egg", "Egg Egg", "Birthday Egg", "Easter Egg", "Switch Egg", "America Egg", "British Egg", "Erick Egg", "Henry Egg", "Lazy Dev Egg", "Puppet Egg", "Piggy Egg", "Easy Egg", "Guts Egg", "Bruh Egg", "Griffith Egg", "Casca Egg", "Femto Egg", "Pippin Egg", "Dog Egg", "Bingo Egg", "M Egg", "A Egg", "B Egg", "C Egg", "D Egg", "F Egg", "E Egg", "H Egg", "G Egg", "I Egg", "J Egg" }
})

--[[-- Script generated by SimpleSpy - credits to exx#9394

local args = {
    [1] = game:GetService("ReplicatedStorage").Eggs["Egg of life"],
    [2] = 1
}

game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(unpack(args))
]]
