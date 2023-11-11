local oldscript = script -- This is important please dont delete it

-- SETTINGS --
local ServiceName = "gnohscripthub"
local HubName = "Gnoh Script Hub"
local KeyFile = "gnoh.txt"
local Icon = "rbxassetid://14692801693"
local Description = "Click 'Get Key' button to get your key!";
local SaveKey = true
local Draggable = true -- Make Ui Draggable

-- PANDA AUTH --
local PandaAuth = loadstring(game:HttpGet('https://pandadevelopment.net/service_api/PandaBetaLib.lua'))()
local Notify = loadstring(game:HttpGet("https://raw.githubusercontent.com/x9PSwiftz/Panda/main/Notification.lua"))()

-- SCRIPT --
local function Script()
    -- Put your script here
    local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
    if game.PlaceId == 12331842898 then -- +1 Block Every Second
        local Window = Rayfield:CreateWindow({
            Name = "Gnoh Script Hub (v1.6b) | +1 Block Every Second",
            LoadingTitle = "Gnoh Script Hub",
            LoadingSubtitle = "Please Join The Discord If You Need Help!",
            ConfigurationSaving = {
                Enabled = false,
                FolderName = nil, -- Create a custom folder for your hub/game
                FileName = "Gnoh Hub"
            },
            Discord = {
                Enabled = true,
                Invite = "ghhzFtbNsh", -- The Discord invite code, do not include discord.gg/
                RememberJoins = fasle -- Set this to false to make them join the discord every time they load it up
            },
            KeySystem = false, -- Set this to true to use our key system
            KeySettings = {
                Title = "Gnoh Script Hub",
                Subtitle = "Key System",
                Note = "Join the discord to get key (discord.gg/ghhzFtbNsh)",
                FileName = "GnohKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
                SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
                GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
                Key = {"https://raw.githubusercontent.com/chauhong11/a/main/b"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
            }
        })

        -- Information
        local Information = Window:CreateTab("Information")
        local Paragraph = Information:CreateParagraph({Title = "Welcome to Gnoh Script Hub!",Content = "This hub currently has 80 games and 600+ scripts running."})
        local Paragraph = Information:CreateParagraph({Title = "Credits to everyone", Content = ""})
        local Paragraph = Information:CreateParagraph({Title = "Press K to hide/show GUI", Content = ""})
        local Button = Information:CreateButton({
            Name = "Please Join Discord If You Need Help! (click to copy)",
            Callback = function()
                setclipboard('https://discord.gg/ghhzFtbNsh')
                Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Link is copy (paste it to your website or discord)",
                    Duration = 3,
                    Image = 12139846581,
                })
            end,
        })

        -- Supported Games
        local Games = Window:CreateTab("Supported Games")
        local Dropdown = Games:CreateDropdown({
            Name = "80 games",
            Options = {"[+1] Blocks Every Second","[+1] Jump Every Second","[+1] Per Second","Adopt Me","Anime Adventures","Anime Champions Simulator","Anime Fighter Simulator","Anime Fighting Simulator X","Anime Fruit Simulator",
            "Anime Souls Simulator","Anime Weapon Simulator","Arm Wrestle Simulator","Bee Swarm Simulator","Blade Ball","Blox Fruits","Brookhaven RP","Build A Boat For Treasure","Car Dealership Tycoon","Car Factory Tycoon!",
            "Clicker Simulator","Combat Warriors","Da Hood","DOORS","Driving Empire","Every Second You Get +1 Damage","Every Second You Get +1 Health","Every Second You Get +1 Jump Power","Every Second You Get +1 Walkspeed",
            "Fly Race","Fruit Battlegrounds","Grand Piece Online","IQ Wars Simulator","Jailbreak","King Legacy","Mad City","Military Tycoon","Murder Mystery 2","Ninja Fighting Simulator",
            "Pet Simulator X!","Pickaxe Mining Simulator","Pixel Piece","Race Clicker","Shindo Life 2","Smoothie Factory Tycoon","Super Hero Tycoon","Super Power Fighting Simulator","Sword Fighters Simulator",
            "The Strongest Battlegrounds","The Survival Game","Ultra Power Tycoon"
        },
            CurrentOption = {"Click to show supported game"},
            MultipleOptions = false,
            Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
            Callback = function(Option)
            -- The function that takes place when the selected option is changed
            -- The variable (Option) is a string for the value that the dropdown was changed to
            end,
        })

        local GamesSection = Games:CreateSection("Changelog")
        local Paragraph = Games:CreateParagraph({Title = "10/16/2023", Content = "[=] Fix key system icon"})
        local Paragraph = Games:CreateParagraph({Title = "10/15/2023", Content = "[+] NEW KEY SYSTEM V2\n[+] PREMIUM COMING SOON\n[+] I forgot to note what I updated, but I updated over 20 new scripts"})
        local Paragraph = Games:CreateParagraph({Title = "10/13/2023", Content = "[+] Obby But You're on a Bike\n[=] Fix Toilet Tower Defense and Haze Piece not show up GUI"})
        local Paragraph = Games:CreateParagraph({Title = "10/11/2023", Content = "[+] Toilet Tower Defense"})
        local Paragraph = Games:CreateParagraph({Title = "10/7/2023", Content = "[=] Add Key System again\n[=] Update: Haze Piece, Anime Champions Simulator and Blade Ball (3 new scripts)"})
        
        -- Main
        local Main = Window:CreateTab("Main")
        local MainSection = Main:CreateSection("Click to execute!")
            
        local Button = Main:CreateButton({
            Name = "Tora Hub",
            Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe2/ToraIsMe2/main/0%2B1block", true))()
                Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Tora Hub is execute!",
                    Duration = 3,
                    Image = 12139846581,
                })
            end,
        })

        -- Destroy UI
        local MainSection = Main:CreateSection("Click to destroy UI")
        local Button = Main:CreateButton({
            Name = "Destroy UI",
            Interact = 'Button',
            Callback = function()
                Rayfield:Destroy()
            end,
        })

    elseif game.PlaceId == 920587237 then -- Adopt Me!
        local Window = Rayfield:CreateWindow({
            Name = "Gnoh Script Hub (v1.6b) | Adopt Me!",
            LoadingTitle = "Gnoh Script Hub",
            LoadingSubtitle = "Please Join The Discord If You Need Help!",
            ConfigurationSaving = {
            Enabled = false,
            FolderName = nil, -- Create a custom folder for your hub/game
            FileName = "Gnoh Hub"
            },
            Discord = {
            Enabled = true,
            Invite = "ghhzFtbNsh", -- The Discord invite code, do not include discord.gg/
            RememberJoins = fasle -- Set this to false to make them join the discord every time they load it up
            },
            KeySystem = false, -- Set this to true to use our key system
            KeySettings = {
            Title = "Gnoh Script Hub",
            Subtitle = "Key System",
            Note = "Join the discord to get key (discord.gg/ghhzFtbNsh)",
            FileName = "GnohKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
            SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
            GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
            Key = {"https://raw.githubusercontent.com/chauhong11/a/main/b"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
            }
        })
    
        -- Information
        local Information = Window:CreateTab("Information")
        local Paragraph = Information:CreateParagraph({Title = "Welcome to Gnoh Script Hub!",Content = "This hub currently has 80 games and 600+ scripts running."})
        local Paragraph = Information:CreateParagraph({Title = "Credits to everyone", Content = ""})
        local Paragraph = Information:CreateParagraph({Title = "Press K to hide/show GUI", Content = ""})
        local Button = Information:CreateButton({
            Name = "Please Join Discord If You Need Help! (click to copy)",
            Callback = function()
                setclipboard('https://discord.gg/ghhzFtbNsh')
                Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Link is copy (paste it to your website or discord)",
                    Duration = 3,
                    Image = 12139846581,
                })
            end,
        })
    
        -- Supported Games
        local Games = Window:CreateTab("Supported Games")
        local Dropdown = Games:CreateDropdown({
            Name = "80 games",
            Options = {"[+1] Blocks Every Second","[+1] Jump Every Second","[+1] Per Second","Adopt Me","Anime Adventures","Anime Champions Simulator","Anime Fighter Simulator","Anime Fighting Simulator X","Anime Fruit Simulator",
            "Anime Souls Simulator","Anime Weapon Simulator","Arm Wrestle Simulator","Bee Swarm Simulator","Blade Ball","Blox Fruits","Brookhaven RP","Build A Boat For Treasure","Car Dealership Tycoon","Car Factory Tycoon!",
            "Clicker Simulator","Combat Warriors","Da Hood","DOORS","Driving Empire","Every Second You Get +1 Damage","Every Second You Get +1 Health","Every Second You Get +1 Jump Power","Every Second You Get +1 Walkspeed",
            "Fly Race","Fruit Battlegrounds","Grand Piece Online","IQ Wars Simulator","Jailbreak","King Legacy","Mad City","Military Tycoon","Murder Mystery 2","Ninja Fighting Simulator",
            "Pet Simulator X!","Pickaxe Mining Simulator","Pixel Piece","Race Clicker","Shindo Life 2","Smoothie Factory Tycoon","Super Hero Tycoon","Super Power Fighting Simulator","Sword Fighters Simulator",
            "The Strongest Battlegrounds","The Survival Game","Ultra Power Tycoon"
        },
            CurrentOption = {"Click to show supported game"},
            MultipleOptions = false,
            Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
            Callback = function(Option)
            -- The function that takes place when the selected option is changed
            -- The variable (Option) is a string for the value that the dropdown was changed to
            end,
        })

        local GamesSection = Games:CreateSection("Changelog")
        local Paragraph = Games:CreateParagraph({Title = "10/16/2023", Content = "[=] Fix key system icon"})
        local Paragraph = Games:CreateParagraph({Title = "10/15/2023", Content = "[+] NEW KEY SYSTEM V2\n[+] PREMIUM COMING SOON\n[+] I forgot to note what I updated, but I updated over 20 new scripts"})
        local Paragraph = Games:CreateParagraph({Title = "10/13/2023", Content = "[+] Obby But You're on a Bike\n[=] Fix Toilet Tower Defense and Haze Piece not show up GUI"})
        local Paragraph = Games:CreateParagraph({Title = "10/11/2023", Content = "[+] Toilet Tower Defense"})
        local Paragraph = Games:CreateParagraph({Title = "10/7/2023", Content = "[=] Add Key System again\n[=] Update: Haze Piece, Anime Champions Simulator and Blade Ball (3 new scripts)"})
        
        -- Main
        local Main = Window:CreateTab("Main")
        local MainSection = Main:CreateSection("Click to execute!")
            
        local Button = Main:CreateButton({
            Name = "V.G Hub",
            Callback = function()
                loadstring(game:HttpGet('https://raw.githubusercontent.com/1201for/V.G-Hub/main/V.Ghub'))()
                Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "V.G Hub is execute!",
                    Duration = 3,
                    Image = 12139846581,
                })
            end,
        })
    
        local Button = Main:CreateButton({
            Name = "Ice Hub",
            Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMael7/NewIceHub/main/Brookhaven"))()
                Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Ice Hub is execute!",
                    Duration = 3,
                    Image = 12139846581,
                })
            end,
        })
    
        local Button = Main:CreateButton({
            Name = "Diamond Hub",
            Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/BloxiYT/Diamond/main/AdoptMe"))()
                Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Diamond Hub is execute!",
                    Duration = 3,
                    Image = 12139846581,
                })
            end,
        })
    
        local Button = Main:CreateButton({
            Name = "Blox Hub",
            Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/BloxiYT/BloxHubFixed/main/MainCode2"))()
                Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Blox Hub is execute!",
                    Duration = 3,
                    Image = 12139846581,
                })
            end,
        })
    
        local Button = Main:CreateButton({
            Name = "Eclipse Hub",
            Callback = function()
                getgenv().mainKey = "nil" local a,b,c,d,e=loadstring,request or http_request or (http and http.request) or (syn and syn.request),assert,tostring,"https://api.eclipsehub.xyz/auth";c(a and b,"Executor not Supported")a(b({Url=e.."?\107e\121\61"..d(mainKey),Headers={["User-Agent"]="Eclipse"}}).Body)()
                Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Eclipse Hub is execute!",
                    Duration = 3,
                    Image = 12139846581,
                })
            end,
        })
    
        local Button = Main:CreateButton({
            Name = "Speed Hub X",
            Callback = function()
                loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ahmadsgamer2/Script--Game/main/Script%20Game"))()
                Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Speed Hub Xis execute!",
                    Duration = 3,
                    Image = 12139846581,
                })
            end,
        })
    
        local Button = Main:CreateButton({
            Name = "Prodigy X Hub",
            Callback = function()
                loadstring(game:HttpGet('https://gitfront.io/r/ReQiuYTPL/wFUydaK74uGx/hub/raw/ReQiuYTPLHub.lua'))()
                Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Prodigy X Hub is execute!",
                    Duration = 3,
                    Image = 12139846581,
                })
            end,
        })
    
        -- Destroy UI
        local MainSection = Main:CreateSection("Click to destroy UI")
        local Button = Main:CreateButton({
            Name = "Destroy UI",
            Interact = 'Button',
            Callback = function()
                Rayfield:Destroy()
            end,
        })

    elseif game.PlaceId == 4996049426 then -- All Star Tower Defense
        local Window = Rayfield:CreateWindow({
            Name = "Gnoh Script Hub (v1.6b) | All Star Tower Defense",
            LoadingTitle = "Gnoh Script Hub",
            LoadingSubtitle = "Please Join The Discord If You Need Help!",
            ConfigurationSaving = {
                Enabled = false,
                FolderName = nil, -- Create a custom folder for your hub/game
                FileName = "Gnoh Hub"
            },
            Discord = {
                Enabled = true,
                Invite = "ghhzFtbNsh", -- The Discord invite code, do not include discord.gg/
                RememberJoins = fasle -- Set this to false to make them join the discord every time they load it up
            },
            KeySystem = false, -- Set this to true to use our key system
            KeySettings = {
                Title = "Gnoh Script Hub",
                Subtitle = "Key System",
                Note = "Join the discord to get key (discord.gg/ghhzFtbNsh)",
                FileName = "GnohKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
                SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
                GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
                Key = {"https://raw.githubusercontent.com/chauhong11/a/main/b"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
            }
        })

        -- Information
        local Information = Window:CreateTab("Information")
        local Paragraph = Information:CreateParagraph({Title = "Welcome to Gnoh Script Hub!",Content = "This hub currently has 80 games and 600+ scripts running."})
        local Paragraph = Information:CreateParagraph({Title = "Credits to everyone", Content = ""})
        local Paragraph = Information:CreateParagraph({Title = "Press K to hide/show GUI", Content = ""})
        local Button = Information:CreateButton({
            Name = "Please Join Discord If You Need Help! (click to copy)",
            Callback = function()
                setclipboard('https://discord.gg/ghhzFtbNsh')
                Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Link is copy (paste it to your website or discord)",
                    Duration = 3,
                    Image = 12139846581,
                })
            end,
        })

        -- Supported Games
        local Games = Window:CreateTab("Supported Games")
        local Dropdown = Games:CreateDropdown({
            Name = "80 games",
            Options = {"[+1] Blocks Every Second","[+1] Jump Every Second","[+1] Per Second","Adopt Me","Anime Adventures","Anime Champions Simulator","Anime Fighter Simulator","Anime Fighting Simulator X","Anime Fruit Simulator",
            "Anime Souls Simulator","Anime Weapon Simulator","Arm Wrestle Simulator","Bee Swarm Simulator","Blade Ball","Blox Fruits","Brookhaven RP","Build A Boat For Treasure","Car Dealership Tycoon","Car Factory Tycoon!",
            "Clicker Simulator","Combat Warriors","Da Hood","DOORS","Driving Empire","Every Second You Get +1 Damage","Every Second You Get +1 Health","Every Second You Get +1 Jump Power","Every Second You Get +1 Walkspeed",
            "Fly Race","Fruit Battlegrounds","Grand Piece Online","IQ Wars Simulator","Jailbreak","King Legacy","Mad City","Military Tycoon","Murder Mystery 2","Ninja Fighting Simulator",
            "Pet Simulator X!","Pickaxe Mining Simulator","Pixel Piece","Race Clicker","Shindo Life 2","Smoothie Factory Tycoon","Super Hero Tycoon","Super Power Fighting Simulator","Sword Fighters Simulator",
            "The Strongest Battlegrounds","The Survival Game","Ultra Power Tycoon"
        },
            CurrentOption = {"Click to show supported game"},
            MultipleOptions = false,
            Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
            Callback = function(Option)
            -- The function that takes place when the selected option is changed
            -- The variable (Option) is a string for the value that the dropdown was changed to
            end,
        })

        local GamesSection = Games:CreateSection("Changelog")
        local Paragraph = Games:CreateParagraph({Title = "10/16/2023", Content = "[=] Fix key system icon"})
        local Paragraph = Games:CreateParagraph({Title = "10/15/2023", Content = "[+] NEW KEY SYSTEM V2\n[+] PREMIUM COMING SOON\n[+] I forgot to note what I updated, but I updated over 20 new scripts"})
        local Paragraph = Games:CreateParagraph({Title = "10/13/2023", Content = "[+] Obby But You're on a Bike\n[=] Fix Toilet Tower Defense and Haze Piece not show up GUI"})
        local Paragraph = Games:CreateParagraph({Title = "10/11/2023", Content = "[+] Toilet Tower Defense"})
        local Paragraph = Games:CreateParagraph({Title = "10/7/2023", Content = "[=] Add Key System again\n[=] Update: Haze Piece, Anime Champions Simulator and Blade Ball (3 new scripts)"})
        
        -- Main
            local Main = Window:CreateTab("Main")
            local MainSection = Main:CreateSection("Click to execute!")
                
                local Button = Main:CreateButton({
                    Name = "KarmaPanda Hub",
                    Callback = function()
                        loadstring(game:HttpGet('https://script.karmapanda.dev/'))()
                        Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "KarmaPanda Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                        })
                    end,
                })

                local Button = Main:CreateButton({
                    Name = "Trap Hub",
                    Callback = function()
                        loadstring(game:HttpGet("https://raw.githubusercontent.com/TrapstarKSSKSKSKKS/Main/main/TrapHub.lua"))()
                        Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Trap Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                        })
                    end,
                })

        -- Destroy UI

            local MainSection = Main:CreateSection("Click to destroy UI")
            local Button = Main:CreateButton({
                Name = "Destroy UI",
                Interact = 'Button',
                Callback = function()
                    Rayfield:Destroy()
                end,
            })

    elseif game.PlaceId == 8304191830 then -- Anime Adventures
        local Window = Rayfield:CreateWindow({
            Name = "Gnoh Script Hub (v1.6b) | Anime Adventures",
            LoadingTitle = "Gnoh Script Hub",
            LoadingSubtitle = "Please Join The Discord If You Need Help!",
            ConfigurationSaving = {
            Enabled = false,
            FolderName = nil, -- Create a custom folder for your hub/game
            FileName = "Gnoh Hub"
            },
            Discord = {
            Enabled = true,
            Invite = "ghhzFtbNsh", -- The Discord invite code, do not include discord.gg/
            RememberJoins = fasle -- Set this to false to make them join the discord every time they load it up
            },
            KeySystem = false, -- Set this to true to use our key system
            KeySettings = {
            Title = "Gnoh Script Hub",
            Subtitle = "Key System",
            Note = "Join the discord to get key (discord.gg/ghhzFtbNsh)",
            FileName = "GnohKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
            SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
            GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
            Key = {"https://raw.githubusercontent.com/chauhong11/a/main/b"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
            }
        })
    
        -- Information
        local Information = Window:CreateTab("Information")
        local Paragraph = Information:CreateParagraph({Title = "Welcome to Gnoh Script Hub!",Content = "This hub currently has 80 games and 600+ scripts running."})
        local Paragraph = Information:CreateParagraph({Title = "Credits to everyone", Content = ""})
        local Paragraph = Information:CreateParagraph({Title = "Press K to hide/show GUI", Content = ""})
        local Button = Information:CreateButton({
        Name = "Please Join Discord If You Need Help! (click to copy)",
        Callback = function()
            setclipboard('https://discord.gg/ghhzFtbNsh')
            Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Link is copy (paste it to your website or discord)",
                    Duration = 3,
                    Image = 12139846581,
            })
        end,
        })
    
        -- Supported Games
        local Games = Window:CreateTab("Supported Games")
        local Dropdown = Games:CreateDropdown({
            Name = "80 games",
            Options = {"[+1] Blocks Every Second","[+1] Jump Every Second","[+1] Per Second","Adopt Me","Anime Adventures","Anime Champions Simulator","Anime Fighter Simulator","Anime Fighting Simulator X","Anime Fruit Simulator",
            "Anime Souls Simulator","Anime Weapon Simulator","Arm Wrestle Simulator","Bee Swarm Simulator","Blade Ball","Blox Fruits","Brookhaven RP","Build A Boat For Treasure","Car Dealership Tycoon","Car Factory Tycoon!",
            "Clicker Simulator","Combat Warriors","Da Hood","DOORS","Driving Empire","Every Second You Get +1 Damage","Every Second You Get +1 Health","Every Second You Get +1 Jump Power","Every Second You Get +1 Walkspeed",
            "Fly Race","Fruit Battlegrounds","Grand Piece Online","IQ Wars Simulator","Jailbreak","King Legacy","Mad City","Military Tycoon","Murder Mystery 2","Ninja Fighting Simulator",
            "Pet Simulator X!","Pickaxe Mining Simulator","Pixel Piece","Race Clicker","Shindo Life 2","Smoothie Factory Tycoon","Super Hero Tycoon","Super Power Fighting Simulator","Sword Fighters Simulator",
            "The Strongest Battlegrounds","The Survival Game","Ultra Power Tycoon"
        },
            CurrentOption = {"Click to show supported game"},
            MultipleOptions = false,
            Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
            Callback = function(Option)
            -- The function that takes place when the selected option is changed
            -- The variable (Option) is a string for the value that the dropdown was changed to
            end,
        })
    
        local GamesSection = Games:CreateSection("Changelog")
        local Paragraph = Games:CreateParagraph({Title = "10/16/2023", Content = "[=] Fix key system icon"})
        local Paragraph = Games:CreateParagraph({Title = "10/15/2023", Content = "[+] NEW KEY SYSTEM V2\n[+] PREMIUM COMING SOON\n[+] I forgot to note what I updated, but I updated over 20 new scripts"})
        local Paragraph = Games:CreateParagraph({Title = "10/13/2023", Content = "[+] Obby But You're on a Bike\n[=] Fix Toilet Tower Defense and Haze Piece not show up GUI"})
        local Paragraph = Games:CreateParagraph({Title = "10/11/2023", Content = "[+] Toilet Tower Defense"})
        local Paragraph = Games:CreateParagraph({Title = "10/7/2023", Content = "[=] Add Key System again\n[=] Update: Haze Piece, Anime Champions Simulator and Blade Ball (3 new scripts)"})     
    
        -- Main
        local Main = Window:CreateTab("Main")
        local MainSection = Main:CreateSection("Click to execute!")
        local Button = Main:CreateButton({
            Name = "Trap Hub",
            Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/TrapstarKSSKSKSKKS/Main/main/Anime%20Adventures.lua"))()
                Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Trap Hub is execute!",
                    Duration = 3,
                    Image = 12139846581,
                })
            end,
        })

        local Button = Main:CreateButton({
            Name = "ArponAG (V3)",
            Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/ArponAG/Scripts/main/AnimeAdventures.lua"))()
                Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "ArponAG (V3) is execute!",
                    Duration = 3,
                    Image = 12139846581,
                })
            end,
        })

        local Button = Main:CreateButton({
            Name = "ArponAG (V2)",
            Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/ArponAG/Scripts/main/AnimeAdventures_v2__Beta.lua"))()
                Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "ArponAG (V2) is execute!",
                    Duration = 3,
                    Image = 12139846581,
                })
            end,
        })

        -- Destroy UI
        local MainSection = Main:CreateSection("Click to destroy UI")
        local Button = Main:CreateButton({
            Name = "Destroy UI",
            Interact = 'Button',
            Callback = function()
                Rayfield:Destroy()
            end,
        })

    elseif game.PlaceId == 14433762945 then -- Anime Champions Simulator
        local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
        local Window = Rayfield:CreateWindow({
        Name = "Gnoh Script Hub (v1.6b) | Anime Champions Simulator",
        LoadingTitle = "Gnoh Script Hub",
        LoadingSubtitle = "Please Join The Discord If You Need Help!",
        ConfigurationSaving = {
            Enabled = false,
            FolderName = nil, -- Create a custom folder for your hub/game
            FileName = "Gnoh Hub"
        },
        Discord = {
            Enabled = true,
            Invite = "ghhzFtbNsh", -- The Discord invite code, do not include discord.gg/
            RememberJoins = fasle -- Set this to false to make them join the discord every time they load it up
        },
        KeySystem = false, -- Set this to true to use our key system
        KeySettings = {
            Title = "Gnoh Script Hub",
            Subtitle = "Key System",
            Note = "Join the discord to get key (discord.gg/ghhzFtbNsh)",
            FileName = "GnohKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
            SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
            GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
            Key = {"https://raw.githubusercontent.com/chauhong11/a/main/b"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
        }
        })

        -- Information
        local Information = Window:CreateTab("Information")
        local Paragraph = Information:CreateParagraph({Title = "Welcome to Gnoh Script Hub!",Content = "This hub currently has 80 games and 600+ scripts running."})
        local Paragraph = Information:CreateParagraph({Title = "Credits to everyone", Content = ""})
        local Paragraph = Information:CreateParagraph({Title = "Press K to hide/show GUI", Content = ""})
        local Button = Information:CreateButton({
        Name = "Please Join Discord If You Need Help! (click to copy)",
        Callback = function()
            setclipboard('https://discord.gg/ghhzFtbNsh')
            Rayfield:Notify({ -- Notification
                Title = "Notification",
                Content = "Link is copy (paste it to your website or discord)",
                Duration = 3,
                Image = 12139846581,
            })
        end,
        })

        -- Supported Games
        local Games = Window:CreateTab("Supported Games")
        local Dropdown = Games:CreateDropdown({
        Name = "80 games",
        Options = {"[+1] Blocks Every Second","[+1] Jump Every Second","[+1] Per Second","Adopt Me","Anime Adventures","Anime Champions Simulator","Anime Fighter Simulator","Anime Fighting Simulator X","Anime Fruit Simulator",
        "Anime Souls Simulator","Anime Weapon Simulator","Arm Wrestle Simulator","Bee Swarm Simulator","Blade Ball","Blox Fruits","Brookhaven RP","Build A Boat For Treasure","Car Dealership Tycoon","Car Factory Tycoon!",
        "Clicker Simulator","Combat Warriors","Da Hood","DOORS","Driving Empire","Every Second You Get +1 Damage","Every Second You Get +1 Health","Every Second You Get +1 Jump Power","Every Second You Get +1 Walkspeed",
        "Fly Race","Fruit Battlegrounds","Grand Piece Online","IQ Wars Simulator","Jailbreak","King Legacy","Mad City","Military Tycoon","Murder Mystery 2","Ninja Fighting Simulator",
        "Pet Simulator X!","Pickaxe Mining Simulator","Pixel Piece","Race Clicker","Shindo Life 2","Smoothie Factory Tycoon","Super Hero Tycoon","Super Power Fighting Simulator","Sword Fighters Simulator",
        "The Strongest Battlegrounds","The Survival Game","Ultra Power Tycoon"
        },
        CurrentOption = {"Click to show supported game"},
        MultipleOptions = false,
        Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Option)
        -- The function that takes place when the selected option is changed
        -- The variable (Option) is a string for the value that the dropdown was changed to
        end,
        })

        local GamesSection = Games:CreateSection("Changelog")
        local Paragraph = Games:CreateParagraph({Title = "10/16/2023", Content = "[=] Fix key system icon"})
        local Paragraph = Games:CreateParagraph({Title = "10/15/2023", Content = "[+] NEW KEY SYSTEM V2\n[+] PREMIUM COMING SOON\n[+] I forgot to note what I updated, but I updated over 20 new scripts"})
        local Paragraph = Games:CreateParagraph({Title = "10/13/2023", Content = "[+] Obby But You're on a Bike\n[=] Fix Toilet Tower Defense and Haze Piece not show up GUI"})
        local Paragraph = Games:CreateParagraph({Title = "10/11/2023", Content = "[+] Toilet Tower Defense"})
        local Paragraph = Games:CreateParagraph({Title = "10/7/2023", Content = "[=] Add Key System again\n[=] Update: Haze Piece, Anime Champions Simulator and Blade Ball (3 new scripts)"})

        -- Main
        local Main = Window:CreateTab("Main")
        local MainSection = Main:CreateSection("Click to execute!")
        
        local Button = Main:CreateButton({
            Name = "LHYT Hub",
            Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/LOLking123456/Champions/main/Anime12"))()
                Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "LHYT Hub is execute!",
                    Duration = 3,
                    Image = 12139846581,
                })
            end,
        })

        local Button = Main:CreateButton({
            Name = "Fazium Hub",
            Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/ZaRdoOx/Fazium-files/main/Loader"))()
                Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Fazium Hub is execute!",
                    Duration = 3,
                    Image = 12139846581,
                })
            end,
        })
        
        local Button = Main:CreateButton({
            Name = "Sky Hub",
            Callback = function()
                loadstring(game:HttpGet('https://raw.githubusercontent.com/SKOIXLL/RIVERHUB-SKYHUB/main/WL.lua'))();
                Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Sky Hub is execute!",
                    Duration = 3,
                    Image = 12139846581,
                })
            end,
        })

        local Button = Main:CreateButton({
            Name = "Harpy",
            Callback = function()
                loadstring(game:HttpGet('https://raw.githubusercontent.com/xShadow1234/HarPy/main/HarPy_loader.lua'))()
                Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Harpy is execute!",
                    Duration = 3,
                    Image = 12139846581,
                })
            end,
        })

        local Button = Main:CreateButton({
            Name = "Banana Hub",
            Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/diepedyt/bui/main/temporynewkeysystem.lua"))()
                Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Banana Hub is execute!",
                    Duration = 3,
                    Image = 12139846581,
                })
            end,
        })

        local Button = Main:CreateButton({
            Name = "Thats Tuff Hub",
            Callback = function()
                loadstring(game:HttpGet('https://raw.githubusercontent.com/ThisIsTuff/ArmWrestleSim/main/AnimeChampions.lua'))()
                Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Thats Tuff Hub is execute!",
                    Duration = 3,
                    Image = 12139846581,
                })
            end,
        })

        local Button = Main:CreateButton({
            Name = "Yuto Hub",
            Callback = function()
                loadstring(game:HttpGet('https://raw.githubusercontent.com/Binintrozza/yutv2e/main/ACS'))()
                Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Yuto Hub is execute!",
                    Duration = 3,
                    Image = 12139846581,
                })
            end,
        })

        local Button = Main:CreateButton({
            Name = "Callalyss Hub",
            Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/Historia00012/CompassProject/main/CompassHub"))()
                Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Callalyss Hub is execute!",
                    Duration = 3,
                    Image = 12139846581,
                })
            end,
        })

        -- Destroy UI

        local MainSection = Main:CreateSection("Click to destroy UI")
        local Button = Main:CreateButton({
            Name = "Destroy UI",
            Interact = 'Button',
            Callback = function()
                Rayfield:Destroy()
            end,
        })

    elseif game.PlaceId == 6299805723 then -- Anime Fighter Simulator
        local Window = Rayfield:CreateWindow({
            Name = "Gnoh Script Hub (v1.6b) | Anime Fighters Simulator",
            LoadingTitle = "Gnoh Script Hub",
            LoadingSubtitle = "Please Join The Discord If You Need Help!",
            ConfigurationSaving = {
                Enabled = false,
                FolderName = nil, -- Create a custom folder for your hub/game
                FileName = "Gnoh Hub"
            },
            Discord = {
                Enabled = true,
                Invite = "ghhzFtbNsh", -- The Discord invite code, do not include discord.gg/
                RememberJoins = fasle -- Set this to false to make them join the discord every time they load it up
            },
            KeySystem = false, -- Set this to true to use our key system
            KeySettings = {
                Title = "Gnoh Script Hub",
                Subtitle = "Key System",
                Note = "Join the discord to get key (discord.gg/ghhzFtbNsh)",
                FileName = "GnohKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
                SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
                GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
                Key = {"https://raw.githubusercontent.com/chauhong11/a/main/b"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
            }
        })
    
        -- Information

            local Information = Window:CreateTab("Information")
            local Paragraph = Information:CreateParagraph({Title = "Welcome to Gnoh Script Hub!",Content = "This hub currently has 80 games and 600+ scripts running."})
            local Paragraph = Information:CreateParagraph({Title = "Credits to everyone", Content = ""})
            local Paragraph = Information:CreateParagraph({Title = "Press K to hide/show GUI", Content = ""})
            local Button = Information:CreateButton({
                Name = "Please Join Discord If You Need Help! (click to copy)",
                Callback = function()
                    setclipboard('https://discord.gg/ghhzFtbNsh')
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Link is copy (paste it to your website or discord)",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

        -- Supported Games

            local Games = Window:CreateTab("Supported Games")
            local Dropdown = Games:CreateDropdown({
                Name = "80 games",
                Options = {"[+1] Blocks Every Second","[+1] Jump Every Second","[+1] Per Second","Adopt Me","Anime Adventures","Anime Champions Simulator","Anime Fighter Simulator","Anime Fighting Simulator X","Anime Fruit Simulator",
                "Anime Souls Simulator","Anime Weapon Simulator","Arm Wrestle Simulator","Bee Swarm Simulator","Blade Ball","Blox Fruits","Brookhaven RP","Build A Boat For Treasure","Car Dealership Tycoon","Car Factory Tycoon!",
                "Clicker Simulator","Combat Warriors","Da Hood","DOORS","Driving Empire","Every Second You Get +1 Damage","Every Second You Get +1 Health","Every Second You Get +1 Jump Power","Every Second You Get +1 Walkspeed",
                "Fly Race","Fruit Battlegrounds","Grand Piece Online","IQ Wars Simulator","Jailbreak","King Legacy","Mad City","Military Tycoon","Murder Mystery 2","Ninja Fighting Simulator",
                "Pet Simulator X!","Pickaxe Mining Simulator","Pixel Piece","Race Clicker","Shindo Life 2","Smoothie Factory Tycoon","Super Hero Tycoon","Super Power Fighting Simulator","Sword Fighters Simulator",
                "The Strongest Battlegrounds","The Survival Game","Ultra Power Tycoon"
            },
                CurrentOption = {"Click to show supported game"},
                MultipleOptions = false,
                Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
                Callback = function(Option)
                -- The function that takes place when the selected option is changed
                -- The variable (Option) is a string for the value that the dropdown was changed to
                end,
            })

        local GamesSection = Games:CreateSection("Changelog")
        local Paragraph = Games:CreateParagraph({Title = "10/16/2023", Content = "[=] Fix key system icon"})
        local Paragraph = Games:CreateParagraph({Title = "10/15/2023", Content = "[+] NEW KEY SYSTEM V2\n[+] PREMIUM COMING SOON\n[+] I forgot to note what I updated, but I updated over 20 new scripts"})
        local Paragraph = Games:CreateParagraph({Title = "10/13/2023", Content = "[+] Obby But You're on a Bike\n[=] Fix Toilet Tower Defense and Haze Piece not show up GUI"})
        local Paragraph = Games:CreateParagraph({Title = "10/11/2023", Content = "[+] Toilet Tower Defense"})
        local Paragraph = Games:CreateParagraph({Title = "10/7/2023", Content = "[=] Add Key System again\n[=] Update: Haze Piece, Anime Champions Simulator and Blade Ball (3 new scripts)"})
            
                
        -- Main

            local Main = Window:CreateTab("Main")
            local MainSection = Main:CreateSection("Click to execute!")

            local Button = Main:CreateButton({
                Name = "Yuto Hub",
                Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/Binintrozza/yutv2e/main/afss"))()
                Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Yuto Hub is execute!",
                    Duration = 3,
                    Image = 12139846581,
                })
                end,
            })

            local Button = Main:CreateButton({
                Name = "Zer0 Hub",
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/Discord0000/Zer0Hub/main/MainScript.lua"))()
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Zer0 Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

            local Button = Main:CreateButton({
                Name = "Plaintium Hub",
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZaRdoOx/Loader/main/PlatiniumLoader"))()
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Plaintium Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

            local Button = Main:CreateButton({
                Name = "DeadTired Hub",
                Callback = function()
                    loadstring(game:HttpGet(('https://raw.githubusercontent.com/pspboy08/dollhouse/main/AFSGUI.lua')))()
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "DeadTired Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

            local Button = Main:CreateButton({
                Name = "SSJ3 Hub",
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/Gohan9k/ANFSnew/main/GOHANSSJ3"))()
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "SSJ3 Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

            local Button = Main:CreateButton({
                Name = "Solexz Hub",
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/solexz/rbx-scripts/main/solexafs.lua"))()
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Solexz Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

        -- Destroy UI

        local MainSection = Main:CreateSection("Click to destroy UI")
        local Button = Main:CreateButton({
                Name = "Destroy UI",
                Interact = 'Button',
                Callback = function()
                    Rayfield:Destroy()
                end,
            })

    elseif game.PlaceId == 11545598432 then -- Anime Fighting Simulator X
        local Window = Rayfield:CreateWindow({
            Name = "Gnoh Script Hub (v1.6b) | Anime Fighting Simulator X",
            LoadingTitle = "Gnoh Script Hub",
            LoadingSubtitle = "Please Join The Discord If You Need Help!",
            ConfigurationSaving = {
                Enabled = false,
                FolderName = nil, -- Create a custom folder for your hub/game
                FileName = "Gnoh Hub"
            },
            Discord = {
                Enabled = true,
                Invite = "ghhzFtbNsh", -- The Discord invite code, do not include discord.gg/
                RememberJoins = fasle -- Set this to false to make them join the discord every time they load it up
            },
            KeySystem = false, -- Set this to true to use our key system
            KeySettings = {
                Title = "Gnoh Script Hub",
                Subtitle = "Key System",
                Note = "Join the discord to get key (discord.gg/ghhzFtbNsh)",
                FileName = "GnohKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
                SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
                GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
                Key = {"https://raw.githubusercontent.com/chauhong11/a/main/b"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
            }
        })
    
        -- Information

            local Information = Window:CreateTab("Information")
            local Paragraph = Information:CreateParagraph({Title = "Welcome to Gnoh Script Hub!",Content = "This hub currently has 80 games and 600+ scripts running."})
            local Paragraph = Information:CreateParagraph({Title = "Credits to everyone", Content = ""})
            local Paragraph = Information:CreateParagraph({Title = "Press K to hide/show GUI", Content = ""})
            local Button = Information:CreateButton({
                Name = "Please Join Discord If You Need Help! (click to copy)",
                Callback = function()
                    setclipboard('https://discord.gg/ghhzFtbNsh')
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Link is copy (paste it to your website or discord)",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

        -- Supported Games

            local Games = Window:CreateTab("Supported Games")
            local Dropdown = Games:CreateDropdown({
                Name = "80 games",
                Options = {"[+1] Blocks Every Second","[+1] Jump Every Second","[+1] Per Second","Adopt Me","Anime Adventures","Anime Champions Simulator","Anime Fighter Simulator","Anime Fighting Simulator X","Anime Fruit Simulator",
                "Anime Souls Simulator","Anime Weapon Simulator","Arm Wrestle Simulator","Bee Swarm Simulator","Blade Ball","Blox Fruits","Brookhaven RP","Build A Boat For Treasure","Car Dealership Tycoon","Car Factory Tycoon!",
                "Clicker Simulator","Combat Warriors","Da Hood","DOORS","Driving Empire","Every Second You Get +1 Damage","Every Second You Get +1 Health","Every Second You Get +1 Jump Power","Every Second You Get +1 Walkspeed",
                "Fly Race","Fruit Battlegrounds","Grand Piece Online","IQ Wars Simulator","Jailbreak","King Legacy","Mad City","Military Tycoon","Murder Mystery 2","Ninja Fighting Simulator",
                "Pet Simulator X!","Pickaxe Mining Simulator","Pixel Piece","Race Clicker","Shindo Life 2","Smoothie Factory Tycoon","Super Hero Tycoon","Super Power Fighting Simulator","Sword Fighters Simulator",
                "The Strongest Battlegrounds","The Survival Game","Ultra Power Tycoon"
            },
                CurrentOption = {"Click to show supported game"},
                MultipleOptions = false,
                Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
                Callback = function(Option)
                -- The function that takes place when the selected option is changed
                -- The variable (Option) is a string for the value that the dropdown was changed to
                end,
            })

        local GamesSection = Games:CreateSection("Changelog")
        local Paragraph = Games:CreateParagraph({Title = "10/16/2023", Content = "[=] Fix key system icon"})
        local Paragraph = Games:CreateParagraph({Title = "10/15/2023", Content = "[+] NEW KEY SYSTEM V2\n[+] PREMIUM COMING SOON\n[+] I forgot to note what I updated, but I updated over 20 new scripts"})
        local Paragraph = Games:CreateParagraph({Title = "10/13/2023", Content = "[+] Obby But You're on a Bike\n[=] Fix Toilet Tower Defense and Haze Piece not show up GUI"})
        local Paragraph = Games:CreateParagraph({Title = "10/11/2023", Content = "[+] Toilet Tower Defense"})
        local Paragraph = Games:CreateParagraph({Title = "10/7/2023", Content = "[=] Add Key System again\n[=] Update: Haze Piece, Anime Champions Simulator and Blade Ball (3 new scripts)"})
            

        -- Main

            local Main = Window:CreateTab("Main")
            local MainSection = Main:CreateSection("Click to execute!")

            local Button = Main:CreateButton({
                Name = "Sky Hub",
                Callback = function()
                    loadstring(game:HttpGet('https://raw.githubusercontent.com/SKOIXLL/RIVERHUB-SKYHUB/main/WL.lua'))();
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Sky Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

            local Button = Main:CreateButton({
                Name = "HarPy Hub",
                Callback = function()
                    loadstring(game:HttpGet('https://raw.githubusercontent.com/xShadow1234/HarPy/main/HarPy_loader.lua'))()
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "HarPy Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

            local Button = Main:CreateButton({
                Name = "Mukuro Hub",
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/xQuartyx/DonateMe/main/ScriptLoader"))()
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Mukuro Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })
            

        -- Destroy UI

        local MainSection = Main:CreateSection("Click to destroy UI")
        local Button = Main:CreateButton({
            Name = "Destroy UI",
            Interact = 'Button',
            Callback = function()
                Rayfield:Destroy()
            end,
        })

    elseif game.PlaceId == 10446125875 then -- Anime Fruit Simulator
        local Window = Rayfield:CreateWindow({
            Name = "Gnoh Script Hub (v1.6b) | Anime Fruit Simulator",
            LoadingTitle = "Gnoh Script Hub",
            LoadingSubtitle = "Please Join The Discord If You Need Help!",
            ConfigurationSaving = {
            Enabled = false,
            FolderName = nil, -- Create a custom folder for your hub/game
            FileName = "Gnoh Hub"
            },
            Discord = {
                Enabled = true,
                Invite = "ghhzFtbNsh", -- The Discord invite code, do not include discord.gg/
                RememberJoins = fasle -- Set this to false to make them join the discord every time they load it up
            },
            KeySystem = false, -- Set this to true to use our key system
            KeySettings = {
                Title = "Gnoh Script Hub",
                Subtitle = "Key System",
                Note = "Join the discord to get key (discord.gg/ghhzFtbNsh)",
                FileName = "GnohKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
                SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
                GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
                Key = {"https://raw.githubusercontent.com/chauhong11/a/main/b"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
            }
        })
    
    -- Information
    
        local Information = Window:CreateTab("Information")
        local Paragraph = Information:CreateParagraph({Title = "Welcome to Gnoh Script Hub!",Content = "This hub currently has 80 games and 600+ scripts running."})
        local Paragraph = Information:CreateParagraph({Title = "Credits to everyone", Content = ""})
        local Paragraph = Information:CreateParagraph({Title = "Press K to hide/show GUI", Content = ""})
        local Button = Information:CreateButton({
            Name = "Please Join Discord If You Need Help! (click to copy)",
            Callback = function()
            setclipboard('https://discord.gg/ghhzFtbNsh')
            Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Link is copy (paste it to your website or discord)",
                    Duration = 3,
                    Image = 12139846581,
            })
            end,
        })
    
    -- Supported Games
    
        local Games = Window:CreateTab("Supported Games")
        local Dropdown = Games:CreateDropdown({
            Name = "80 games",
            Options = {"[+1] Blocks Every Second","[+1] Jump Every Second","[+1] Per Second","Adopt Me","Anime Adventures","Anime Champions Simulator","Anime Fighter Simulator","Anime Fighting Simulator X","Anime Fruit Simulator",
            "Anime Souls Simulator","Anime Weapon Simulator","Arm Wrestle Simulator","Bee Swarm Simulator","Blade Ball","Blox Fruits","Brookhaven RP","Build A Boat For Treasure","Car Dealership Tycoon","Car Factory Tycoon!",
            "Clicker Simulator","Combat Warriors","Da Hood","DOORS","Driving Empire","Every Second You Get +1 Damage","Every Second You Get +1 Health","Every Second You Get +1 Jump Power","Every Second You Get +1 Walkspeed",
            "Fly Race","Fruit Battlegrounds","Grand Piece Online","IQ Wars Simulator","Jailbreak","King Legacy","Mad City","Military Tycoon","Murder Mystery 2","Ninja Fighting Simulator",
            "Pet Simulator X!","Pickaxe Mining Simulator","Pixel Piece","Race Clicker","Shindo Life 2","Smoothie Factory Tycoon","Super Hero Tycoon","Super Power Fighting Simulator","Sword Fighters Simulator",
            "The Strongest Battlegrounds","The Survival Game","Ultra Power Tycoon"
        },
            CurrentOption = {"Click to show supported game"},
            MultipleOptions = false,
            Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
            Callback = function(Option)
            -- The function that takes place when the selected option is changed
            -- The variable (Option) is a string for the value that the dropdown was changed to
            end,
        })
    
        local GamesSection = Games:CreateSection("Changelog")
        local Paragraph = Games:CreateParagraph({Title = "10/16/2023", Content = "[=] Fix key system icon"})
        local Paragraph = Games:CreateParagraph({Title = "10/15/2023", Content = "[+] NEW KEY SYSTEM V2\n[+] PREMIUM COMING SOON\n[+] I forgot to note what I updated, but I updated over 20 new scripts"})
        local Paragraph = Games:CreateParagraph({Title = "10/13/2023", Content = "[+] Obby But You're on a Bike\n[=] Fix Toilet Tower Defense and Haze Piece not show up GUI"})
        local Paragraph = Games:CreateParagraph({Title = "10/11/2023", Content = "[+] Toilet Tower Defense"})
        local Paragraph = Games:CreateParagraph({Title = "10/7/2023", Content = "[=] Add Key System again\n[=] Update: Haze Piece, Anime Champions Simulator and Blade Ball (3 new scripts)"})

    -- Main
    
        local Main = Window:CreateTab("Main")
        local MainSection = Main:CreateSection("Click to execute!")
    
        local Button = Main:CreateButton({
            Name = "Rolly Hub",
            Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/XRoLLu/Rolly_Hub/main/open-source-trash-loader.exe.yeah"))()
            Rayfield:Notify({ -- Notification
                Title = "Notification",
                Content = "Rolly Hub is execute!",
                Duration = 3,
                Image = 12139846581,
            })
            end,
        })
    
        local Button = Main:CreateButton({
            Name = "Voxle Hub",
            Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/VoxleHub/Voxle/main/Loader"))()
            Rayfield:Notify({ -- Notification
                Title = "Notification",
                Content = "Voxle Hub is execute!",
                Duration = 3,
                Image = 12139846581,
            })
            end,
        })
    
        -- Destroy UI
    
        local MainSection = Main:CreateSection("Click to destroy UI")
        local Button = Main:CreateButton({
            Name = "Destroy UI",
            Interact = 'Button',
            Callback = function()
            Rayfield:Destroy()
            end,
        })

    elseif game.PlaceId == 11542692507 then -- Anime Souls Simulator
        local Window = Rayfield:CreateWindow({
            Name = "Gnoh Script Hub (v1.6b) | Anime Souls Simulator",
            LoadingTitle = "Gnoh Script Hub",
            LoadingSubtitle = "Please Join The Discord If You Need Help!",
            ConfigurationSaving = {
                Enabled = false,
                FolderName = nil, -- Create a custom folder for your hub/game
                FileName = "Gnoh Hub"
            },
            Discord = {
                Enabled = true,
                Invite = "ghhzFtbNsh", -- The Discord invite code, do not include discord.gg/
                RememberJoins = fasle -- Set this to false to make them join the discord every time they load it up
            },
            KeySystem = false, -- Set this to true to use our key system
            KeySettings = {
                Title = "Gnoh Script Hub",
                Subtitle = "Key System",
                Note = "Join the discord to get key (discord.gg/ghhzFtbNsh)",
                FileName = "GnohKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
                SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
                GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
                Key = {"https://raw.githubusercontent.com/chauhong11/a/main/b"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
            }
        })
    
        -- Information

            local Information = Window:CreateTab("Information")
            local Paragraph = Information:CreateParagraph({Title = "Welcome to Gnoh Script Hub!",Content = "This hub currently has 80 games and 600+ scripts running."})
            local Paragraph = Information:CreateParagraph({Title = "Credits to everyone", Content = ""})
            local Paragraph = Information:CreateParagraph({Title = "Press K to hide/show GUI", Content = ""})
            local Button = Information:CreateButton({
                Name = "Please Join Discord If You Need Help! (click to copy)",
                Callback = function()
                    setclipboard('https://discord.gg/ghhzFtbNsh')
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Link is copy (paste it to your website or discord)",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

        -- Supported Games

            local Games = Window:CreateTab("Supported Games")
            local Dropdown = Games:CreateDropdown({
                Name = "80 games",
                Options = {"[+1] Blocks Every Second","[+1] Jump Every Second","[+1] Per Second","Adopt Me","Anime Adventures","Anime Champions Simulator","Anime Fighter Simulator","Anime Fighting Simulator X","Anime Fruit Simulator",
                "Anime Souls Simulator","Anime Weapon Simulator","Arm Wrestle Simulator","Bee Swarm Simulator","Blade Ball","Blox Fruits","Brookhaven RP","Build A Boat For Treasure","Car Dealership Tycoon","Car Factory Tycoon!",
                "Clicker Simulator","Combat Warriors","Da Hood","DOORS","Driving Empire","Every Second You Get +1 Damage","Every Second You Get +1 Health","Every Second You Get +1 Jump Power","Every Second You Get +1 Walkspeed",
                "Fly Race","Fruit Battlegrounds","Grand Piece Online","IQ Wars Simulator","Jailbreak","King Legacy","Mad City","Military Tycoon","Murder Mystery 2","Ninja Fighting Simulator",
                "Pet Simulator X!","Pickaxe Mining Simulator","Pixel Piece","Race Clicker","Shindo Life 2","Smoothie Factory Tycoon","Super Hero Tycoon","Super Power Fighting Simulator","Sword Fighters Simulator",
                "The Strongest Battlegrounds","The Survival Game","Ultra Power Tycoon"
            },
                CurrentOption = {"Click to show supported game"},
                MultipleOptions = false,
                Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
                Callback = function(Option)
                -- The function that takes place when the selected option is changed
                -- The variable (Option) is a string for the value that the dropdown was changed to
                end,
            })

        local GamesSection = Games:CreateSection("Changelog")
        local Paragraph = Games:CreateParagraph({Title = "10/16/2023", Content = "[=] Fix key system icon"})
        local Paragraph = Games:CreateParagraph({Title = "10/15/2023", Content = "[+] NEW KEY SYSTEM V2\n[+] PREMIUM COMING SOON\n[+] I forgot to note what I updated, but I updated over 20 new scripts"})
        local Paragraph = Games:CreateParagraph({Title = "10/13/2023", Content = "[+] Obby But You're on a Bike\n[=] Fix Toilet Tower Defense and Haze Piece not show up GUI"})
        local Paragraph = Games:CreateParagraph({Title = "10/11/2023", Content = "[+] Toilet Tower Defense"})
        local Paragraph = Games:CreateParagraph({Title = "10/7/2023", Content = "[=] Add Key System again\n[=] Update: Haze Piece, Anime Champions Simulator and Blade Ball (3 new scripts)"})
            

        -- Main

            local Main = Window:CreateTab("Main")
            local MainSection = Main:CreateSection("Click to execute!")

            local Button = Main:CreateButton({
                Name = "Optix Hub",
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/Cxetive/OptixHub/main/loader.lua"))()
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Optix Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

            local Button = Main:CreateButton({
                Name = "Scriptify Hub",
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/TrickyAH/Scripts/main/loader.lua"))()
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Scriptify Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

            local Button = Main:CreateButton({
                Name = "Project Nexus Hub",
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/IkkyyDF/ProjectNexus/main/Loader.lua"))()
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Project Nexus Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })
            
            local Button = Main:CreateButton({
                Name = "River Hub",
                Callback = function()
                    loadstring(game:HttpGet('https://raw.githubusercontent.com/SKOIXLL/RIVERHUB-SKYHUB/main/WL.lua'))();
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "River Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

        -- Destroy UI

        local MainSection = Main:CreateSection("Click to destroy UI")
        local Button = Main:CreateButton({
            Name = "Destroy UI",
            Interact = 'Button',
            Callback = function()
                Rayfield:Destroy()
            end,
        })

    elseif game.PlaceId == 11430505281 then --Anime Weapon Simulator
        local Window = Rayfield:CreateWindow({
            Name = "Gnoh Script Hub (v1.6b) | Anime Weapon Simulator",
            LoadingTitle = "Gnoh Script Hub",
            LoadingSubtitle = "Please Join The Discord If You Need Help!",
            ConfigurationSaving = {
                Enabled = false,
                FolderName = nil, -- Create a custom folder for your hub/game
                FileName = "Gnoh Hub"
            },
            Discord = {
                Enabled = true,
                Invite = "ghhzFtbNsh", -- The Discord invite code, do not include discord.gg/
                RememberJoins = fasle -- Set this to false to make them join the discord every time they load it up
            },
            KeySystem = false, -- Set this to true to use our key system
            KeySettings = {
                Title = "Gnoh Script Hub",
                Subtitle = "Key System",
                Note = "Join the discord to get key (discord.gg/ghhzFtbNsh)",
                FileName = "GnohKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
                SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
                GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
                Key = {"https://raw.githubusercontent.com/chauhong11/a/main/b"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
            }
        })
    
        -- Information

            local Information = Window:CreateTab("Information")
            local Paragraph = Information:CreateParagraph({Title = "Welcome to Gnoh Script Hub!",Content = "This hub currently has 80 games and 600+ scripts running."})
            local Paragraph = Information:CreateParagraph({Title = "Credits to everyone", Content = ""})
            local Paragraph = Information:CreateParagraph({Title = "Press K to hide/show GUI", Content = ""})
            local Button = Information:CreateButton({
                Name = "Please Join Discord If You Need Help! (click to copy)",
                Callback = function()
                    setclipboard('https://discord.gg/ghhzFtbNsh')
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Link is copy (paste it to your website or discord)",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

        -- Supported Games

            local Games = Window:CreateTab("Supported Games")
            local Dropdown = Games:CreateDropdown({
                Name = "80 games",
                Options = {"[+1] Blocks Every Second","[+1] Jump Every Second","[+1] Per Second","Adopt Me","Anime Adventures","Anime Champions Simulator","Anime Fighter Simulator","Anime Fighting Simulator X","Anime Fruit Simulator",
                "Anime Souls Simulator","Anime Weapon Simulator","Arm Wrestle Simulator","Bee Swarm Simulator","Blade Ball","Blox Fruits","Brookhaven RP","Build A Boat For Treasure","Car Dealership Tycoon","Car Factory Tycoon!",
                "Clicker Simulator","Combat Warriors","Da Hood","DOORS","Driving Empire","Every Second You Get +1 Damage","Every Second You Get +1 Health","Every Second You Get +1 Jump Power","Every Second You Get +1 Walkspeed",
                "Fly Race","Fruit Battlegrounds","Grand Piece Online","IQ Wars Simulator","Jailbreak","King Legacy","Mad City","Military Tycoon","Murder Mystery 2","Ninja Fighting Simulator",
                "Pet Simulator X!","Pickaxe Mining Simulator","Pixel Piece","Race Clicker","Shindo Life 2","Smoothie Factory Tycoon","Super Hero Tycoon","Super Power Fighting Simulator","Sword Fighters Simulator",
                "The Strongest Battlegrounds","The Survival Game","Ultra Power Tycoon"
            },
                CurrentOption = {"Click to show supported game"},
                MultipleOptions = false,
                Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
                Callback = function(Option)
                -- The function that takes place when the selected option is changed
                -- The variable (Option) is a string for the value that the dropdown was changed to
                end,
            })

            local GamesSection = Games:CreateSection("Changelog")
            local Paragraph = Games:CreateParagraph({Title = "10/16/2023", Content = "[=] Fix key system icon"})
        local Paragraph = Games:CreateParagraph({Title = "10/15/2023", Content = "[+] NEW KEY SYSTEM V2\n[+] PREMIUM COMING SOON\n[+] I forgot to note what I updated, but I updated over 20 new scripts"})
        local Paragraph = Games:CreateParagraph({Title = "10/13/2023", Content = "[+] Obby But You're on a Bike\n[=] Fix Toilet Tower Defense and Haze Piece not show up GUI"})
        local Paragraph = Games:CreateParagraph({Title = "10/11/2023", Content = "[+] Toilet Tower Defense"})
        local Paragraph = Games:CreateParagraph({Title = "10/7/2023", Content = "[=] Add Key System again\n[=] Update: Haze Piece, Anime Champions Simulator and Blade Ball (3 new scripts)"})
            
            

        -- Main

            local Main = Window:CreateTab("Main")
            local MainSection = Main:CreateSection("Click to execute!")

            local Button = Main:CreateButton({
                Name = "Distic Hub",
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/bebedi15/DisticHub/main/Loader.lua"))()
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Distic Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

            local Button = Main:CreateButton({
                Name = "Muimi Hub",
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/bunnynwy/games/main/animeweapon"))()
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Muimi Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

            local Button = Main:CreateButton({
                Name = "Emperor Hub",
                Callback = function()
                    loadstring(game:HttpGet('https://raw.githubusercontent.com/eufoni02/emperor/main/emperorhub'))()
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Emperor Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

            local Button = Main:CreateButton({
                Name = "Dumb Hub",
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/WHYSTRIV3/DumbHub/main/DumbHub.lua"))()
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Dumb Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

        -- Destroy UI

        local MainSection = Main:CreateSection("Click to destroy UI")
        local Button = Main:CreateButton({
            Name = "Destroy UI",
            Interact = 'Button',
            Callback = function()
                Rayfield:Destroy()
            end,
        })

    elseif game.PlaceId == 13127800756 then -- Arm Wrestle Simulator
        local Window = Rayfield:CreateWindow({
            Name = "Gnoh Script Hub (v1.6b) | Arm Wrestle Simulator",
            LoadingTitle = "Gnoh Script Hub",
            LoadingSubtitle = "Please Join The Discord If You Need Help!",
            ConfigurationSaving = {
                Enabled = false,
                FolderName = nil, -- Create a custom folder for your hub/game
                FileName = "Gnoh Hub"
            },
            Discord = {
                Enabled = true,
                Invite = "ghhzFtbNsh", -- The Discord invite code, do not include discord.gg/
                RememberJoins = fasle -- Set this to false to make them join the discord every time they load it up
            },
            KeySystem = false, -- Set this to true to use our key system
            KeySettings = {
                Title = "Gnoh Script Hub",
                Subtitle = "Key System",
                Note = "Join the discord to get key (discord.gg/ghhzFtbNsh)",
                FileName = "GnohKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
                SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
                GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
                Key = {"https://raw.githubusercontent.com/chauhong11/a/main/b"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
            }
        })
    
        -- Information

            local Information = Window:CreateTab("Information")
            local Paragraph = Information:CreateParagraph({Title = "Welcome to Gnoh Script Hub!",Content = "This hub currently has 80 games and 600+ scripts running."})
            local Paragraph = Information:CreateParagraph({Title = "Credits to everyone", Content = ""})
            local Paragraph = Information:CreateParagraph({Title = "Press K to hide/show GUI", Content = ""})
            local Button = Information:CreateButton({
                Name = "Please Join Discord If You Need Help! (click to copy)",
                Callback = function()
                    setclipboard('https://discord.gg/ghhzFtbNsh')
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Link is copy (paste it to your website or discord)",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

        -- Supported Games

            local Games = Window:CreateTab("Supported Games")
            local Dropdown = Games:CreateDropdown({
                Name = "80 games",
                Options = {"[+1] Blocks Every Second","[+1] Jump Every Second","[+1] Per Second","Adopt Me","Anime Adventures","Anime Champions Simulator","Anime Fighter Simulator","Anime Fighting Simulator X","Anime Fruit Simulator",
                "Anime Souls Simulator","Anime Weapon Simulator","Arm Wrestle Simulator","Bee Swarm Simulator","Blade Ball","Blox Fruits","Brookhaven RP","Build A Boat For Treasure","Car Dealership Tycoon","Car Factory Tycoon!",
                "Clicker Simulator","Combat Warriors","Da Hood","DOORS","Driving Empire","Every Second You Get +1 Damage","Every Second You Get +1 Health","Every Second You Get +1 Jump Power","Every Second You Get +1 Walkspeed",
                "Fly Race","Fruit Battlegrounds","Grand Piece Online","IQ Wars Simulator","Jailbreak","King Legacy","Mad City","Military Tycoon","Murder Mystery 2","Ninja Fighting Simulator",
                "Pet Simulator X!","Pickaxe Mining Simulator","Pixel Piece","Race Clicker","Shindo Life 2","Smoothie Factory Tycoon","Super Hero Tycoon","Super Power Fighting Simulator","Sword Fighters Simulator",
                "The Strongest Battlegrounds","The Survival Game","Ultra Power Tycoon"
            },
                CurrentOption = {"Click to show supported game"},
                MultipleOptions = false,
                Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
                Callback = function(Option)
                -- The function that takes place when the selected option is changed
                -- The variable (Option) is a string for the value that the dropdown was changed to
                end,
            })

            local GamesSection = Games:CreateSection("Changelog")
            local Paragraph = Games:CreateParagraph({Title = "10/16/2023", Content = "[=] Fix key system icon"})
        local Paragraph = Games:CreateParagraph({Title = "10/15/2023", Content = "[+] NEW KEY SYSTEM V2\n[+] PREMIUM COMING SOON\n[+] I forgot to note what I updated, but I updated over 20 new scripts"})
        local Paragraph = Games:CreateParagraph({Title = "10/13/2023", Content = "[+] Obby But You're on a Bike\n[=] Fix Toilet Tower Defense and Haze Piece not show up GUI"})
        local Paragraph = Games:CreateParagraph({Title = "10/11/2023", Content = "[+] Toilet Tower Defense"})
        local Paragraph = Games:CreateParagraph({Title = "10/7/2023", Content = "[=] Add Key System again\n[=] Update: Haze Piece, Anime Champions Simulator and Blade Ball (3 new scripts)"})
        
        
    
        -- Main
        
            local Main = Window:CreateTab("Main")
            local MainSection = Main:CreateSection("Click to execute!")
        
            local Button = Main:CreateButton({
                Name = "LDS Hub",
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/limaspeedy/limaspeedy/main/HubLDS"))()
                    Rayfield:Notify({
                        Title = "Notification",
                        Content = "LDS Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

            local Button = Main:CreateButton({
                Name = "Kenniel V3",
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/Kenniel123/Arm-wrestle-v3/main/Arm%20wrestle%20v3",true))();
                    Rayfield:Notify({
                        Title = "Notification",
                        Content = "Kenniel V3 is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
            end,
            })

            local Button = Main:CreateButton({
                Name = "Nebula Hub",
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/Saitamahaah/SaitaHub/main/NebulaHub"))()
                    Rayfield:Notify({
                        Title = "Notification",
                        Content = "Nebula Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
            end,
            })

            local Button = Main:CreateButton({
                Name = "Pikachu Hub",
                Callback = function()
                    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/99d16edc79729a038994f85ce7335971.lua"))()
                    Rayfield:Notify({
                        Title = "Notification",
                        Content = "Pikachu Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
            end,
            })

            local Button = Main:CreateButton({
                Name = "Legend Handles Hub", 
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/LOLking123456/wrestle24/main/RobloxSim1"))()
                    Rayfield:Notify({
                        Title = "Notification",
                        Content = "Legend Handles Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
            end,
            })

            local Button = Main:CreateButton({
                Name = "Tuff Hub", 
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ThisIsTuff/ArmWrestleSim/main/ArmWrestleSim.lua"))()
                    Rayfield:Notify({
                        Title = "Notification",
                        Content = "Tuff Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
            end,
            })

            local Button = Main:CreateButton({
                Name = "Project-WD Hub", 
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/Muhammad6196/Project-WD/main/Mainstring.lua"))()
                    Rayfield:Notify({
                        Title = "Notification",
                        Content = "Project-WD Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
            end,
            })

            local Button = Main:CreateButton({
                Name = "Flame Hub", 
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/1Toxin/flame/main/loader"))()
                    Rayfield:Notify({
                        Title = "Notification",
                        Content = "Flame Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
            end,
            })
            
        -- Destroy UI
        
            local MainSection = Main:CreateSection("Click to destroy UI")
            local Button = Main:CreateButton({
                Name = "Destroy UI",
                Interact = 'Button',
                Callback = function()
                    Rayfield:Destroy()
                end,
            })

    elseif game.PlaceId == 1537690962 then -- Bee Swarm Simulator
        local Window = Rayfield:CreateWindow({
            Name = "Gnoh Script Hub (v1.6b) | Bee Swarm Simulator",
            LoadingTitle = "Gnoh Script Hub",
            LoadingSubtitle = "Please Join The Discord If You Need Help!",
            ConfigurationSaving = {
            Enabled = false,
            FolderName = nil, -- Create a custom folder for your hub/game
            FileName = "Gnoh Hub"
            },
            Discord = {
                Enabled = true,
                Invite = "ghhzFtbNsh", -- The Discord invite code, do not include discord.gg/
                RememberJoins = fasle -- Set this to false to make them join the discord every time they load it up
            },
            KeySystem = false, -- Set this to true to use our key system
            KeySettings = {
                Title = "Gnoh Script Hub",
                Subtitle = "Key System",
                Note = "Join the discord to get key (discord.gg/ghhzFtbNsh)",
                FileName = "GnohKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
                SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
                GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
                Key = {"https://raw.githubusercontent.com/chauhong11/a/main/b"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
            }
        })
    
    -- Information
    
        local Information = Window:CreateTab("Information")
        local Paragraph = Information:CreateParagraph({Title = "Welcome to Gnoh Script Hub!",Content = "This hub currently has 80 games and 600+ scripts running."})
        local Paragraph = Information:CreateParagraph({Title = "Credits to everyone", Content = ""})
        local Paragraph = Information:CreateParagraph({Title = "Press K to hide/show GUI", Content = ""})
        local Button = Information:CreateButton({
            Name = "Please Join Discord If You Need Help! (click to copy)",
            Callback = function()
            setclipboard('https://discord.gg/ghhzFtbNsh')
            Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Link is copy (paste it to your website or discord)",
                    Duration = 3,
                    Image = 12139846581,
            })
            end,
        })
    
    -- Supported Games
    
        local Games = Window:CreateTab("Supported Games")
        local Dropdown = Games:CreateDropdown({
            Name = "80 games",
            Options = {"[+1] Blocks Every Second","[+1] Jump Every Second","[+1] Per Second","Adopt Me","Anime Adventures","Anime Champions Simulator","Anime Fighter Simulator","Anime Fighting Simulator X","Anime Fruit Simulator",
            "Anime Souls Simulator","Anime Weapon Simulator","Arm Wrestle Simulator","Bee Swarm Simulator","Blade Ball","Blox Fruits","Brookhaven RP","Build A Boat For Treasure","Car Dealership Tycoon","Car Factory Tycoon!",
            "Clicker Simulator","Combat Warriors","Da Hood","DOORS","Driving Empire","Every Second You Get +1 Damage","Every Second You Get +1 Health","Every Second You Get +1 Jump Power","Every Second You Get +1 Walkspeed",
            "Fly Race","Fruit Battlegrounds","Grand Piece Online","IQ Wars Simulator","Jailbreak","King Legacy","Mad City","Military Tycoon","Murder Mystery 2","Ninja Fighting Simulator",
            "Pet Simulator X!","Pickaxe Mining Simulator","Pixel Piece","Race Clicker","Shindo Life 2","Smoothie Factory Tycoon","Super Hero Tycoon","Super Power Fighting Simulator","Sword Fighters Simulator",
            "The Strongest Battlegrounds","The Survival Game","Ultra Power Tycoon"
        },
            CurrentOption = {"Click to show supported game"},
            MultipleOptions = false,
            Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
            Callback = function(Option)
            -- The function that takes place when the selected option is changed
            -- The variable (Option) is a string for the value that the dropdown was changed to
            end,
        })
    
        local GamesSection = Games:CreateSection("Changelog")
        local Paragraph = Games:CreateParagraph({Title = "10/16/2023", Content = "[=] Fix key system icon"})
        local Paragraph = Games:CreateParagraph({Title = "10/15/2023", Content = "[+] NEW KEY SYSTEM V2\n[+] PREMIUM COMING SOON\n[+] I forgot to note what I updated, but I updated over 20 new scripts"})
        local Paragraph = Games:CreateParagraph({Title = "10/13/2023", Content = "[+] Obby But You're on a Bike\n[=] Fix Toilet Tower Defense and Haze Piece not show up GUI"})
        local Paragraph = Games:CreateParagraph({Title = "10/11/2023", Content = "[+] Toilet Tower Defense"})
        local Paragraph = Games:CreateParagraph({Title = "10/7/2023", Content = "[=] Add Key System again\n[=] Update: Haze Piece, Anime Champions Simulator and Blade Ball (3 new scripts)"})
        
        
    
    -- Main
    
        local Main = Window:CreateTab("Main")
        local MainSection = Main:CreateSection("Click to execute!")
        
        local Button = Main:CreateButton({
            Name = "kocmoc-remastered",
            Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Boxking776/kocmoc/main/kocmoc-remastered.lua"))()
            Rayfield:Notify({ -- Notification
                Title = "Notification",
                Content = "kocmoc-remastered is execute!",
                Duration = 3,
                Image = 12139846581,
            })
            end,
        })
    
        local Button = Main:CreateButton({
            Name = "Macro V2",
            Callback = function()
            loadstring(game:HttpGet("https://www.macrov2-script.xyz/macrov2.lua"))()
            Rayfield:Notify({ -- Notification
                Title = "Notification",
                Content = "Macro V2 is execute!",
                Duration = 3,
                Image = 12139846581,
            })
            end,
        })
    
        local Button = Main:CreateButton({
            Name = "Cloud Hub",
            Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/BadScripters/CloudHub/main/hub"))()
            Rayfield:Notify({ -- Notification
                Title = "Notification",
                Content = "Cloud Hub is execute!",
                Duration = 3,
                Image = 12139846581,
            })
            end,
        })
    
        local Button = Main:CreateButton({
            Name = "Pepsi Swarm Hub",
            Callback = function()
            loadstring(game:GetObjects("rbxassetid://4384103988")[0X1].Source)("Pepsi Swarm")
            Rayfield:Notify({ -- Notification
                Title = "Notification",
                Content = "Pepsi Swarm Hub is execute!",
                Duration = 3,
                Image = 12139846581,
            })
            end,
        })
    
    -- Destroy UI
    
        local MainSection = Main:CreateSection("Click to destroy UI")
        local Button = Main:CreateButton({
            Name = "Destroy UI",
            Interact = 'Button',
            Callback = function()
                Rayfield:Destroy()
            end,
            })

    elseif game.PlaceId == 13772394625 then -- Blade Ball
        local Window = Rayfield:CreateWindow({
            Name = "Gnoh Script Hub (v1.6b) | Blade Ball",
            LoadingTitle = "Gnoh Script Hub",
            LoadingSubtitle = "Please Join The Discord If You Need Help!",
            ConfigurationSaving = {
                Enabled = false,
                FolderName = nil, -- Create a custom folder for your hub/game
                FileName = "Gnoh Hub"
            },
            Discord = {
                Enabled = true,
                Invite = "ghhzFtbNsh", -- The Discord invite code, do not include discord.gg/
                RememberJoins = fasle -- Set this to false to make them join the discord every time they load it up
            },
            KeySystem = false, -- Set this to true to use our key system
            KeySettings = {
                Title = "Gnoh Script Hub",
                Subtitle = "Key System",
                Note = "Join the discord to get key (discord.gg/ghhzFtbNsh)",
                FileName = "GnohKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
                SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
                GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
                Key = {"https://raw.githubusercontent.com/chauhong11/a/main/b"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
            }
        })

        -- Information

            local Information = Window:CreateTab("Information")
            local Paragraph = Information:CreateParagraph({Title = "Welcome to Gnoh Script Hub!",Content = "This hub currently has 80 games and 600+ scripts running."})
            local Paragraph = Information:CreateParagraph({Title = "Credits to everyone", Content = ""})
            local Paragraph = Information:CreateParagraph({Title = "Press K to hide/show GUI", Content = ""})
            local Button = Information:CreateButton({
                Name = "Please Join Discord If You Need Help! (click to copy)",
                Callback = function()
                    setclipboard('https://discord.gg/ghhzFtbNsh')
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Link is copy (paste it to your website or discord)",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

        -- Supported Games

            local Games = Window:CreateTab("Supported Games")
            local Dropdown = Games:CreateDropdown({
                Name = "80 games",
                Options = {"[+1] Blocks Every Second","[+1] Jump Every Second","[+1] Per Second","Adopt Me","Anime Adventures","Anime Champions Simulator","Anime Fighter Simulator","Anime Fighting Simulator X","Anime Fruit Simulator",
                "Anime Souls Simulator","Anime Weapon Simulator","Arm Wrestle Simulator","Bee Swarm Simulator","Blade Ball","Blox Fruits","Brookhaven RP","Build A Boat For Treasure","Car Dealership Tycoon","Car Factory Tycoon!",
                "Clicker Simulator","Combat Warriors","Da Hood","DOORS","Driving Empire","Every Second You Get +1 Damage","Every Second You Get +1 Health","Every Second You Get +1 Jump Power","Every Second You Get +1 Walkspeed",
                "Fly Race","Fruit Battlegrounds","Grand Piece Online","IQ Wars Simulator","Jailbreak","King Legacy","Mad City","Military Tycoon","Murder Mystery 2","Ninja Fighting Simulator",
                "Pet Simulator X!","Pickaxe Mining Simulator","Pixel Piece","Race Clicker","Shindo Life 2","Smoothie Factory Tycoon","Super Hero Tycoon","Super Power Fighting Simulator","Sword Fighters Simulator",
                "The Strongest Battlegrounds","The Survival Game","Ultra Power Tycoon"
            },
                CurrentOption = {"Click to show supported game"},
                MultipleOptions = false,
                Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
                Callback = function(Option)
                -- The function that takes place when the selected option is changed
                -- The variable (Option) is a string for the value that the dropdown was changed to
                end,
            })

        local GamesSection = Games:CreateSection("Changelog")
        local Paragraph = Games:CreateParagraph({Title = "10/16/2023", Content = "[=] Fix key system icon"})
        local Paragraph = Games:CreateParagraph({Title = "10/15/2023", Content = "[+] NEW KEY SYSTEM V2\n[+] PREMIUM COMING SOON\n[+] I forgot to note what I updated, but I updated over 20 new scripts"})
        local Paragraph = Games:CreateParagraph({Title = "10/13/2023", Content = "[+] Obby But You're on a Bike\n[=] Fix Toilet Tower Defense and Haze Piece not show up GUI"})
        local Paragraph = Games:CreateParagraph({Title = "10/11/2023", Content = "[+] Toilet Tower Defense"})
        local Paragraph = Games:CreateParagraph({Title = "10/7/2023", Content = "[=] Add Key System again\n[=] Update: Haze Piece, Anime Champions Simulator and Blade Ball (3 new scripts)"})
        

        -- Main

            local Main = Window:CreateTab("Main")
            local MainSection = Main:CreateSection("Click to execute!")

            local Button = Main:CreateButton({
                Name = "Symphony Hub",
                Callback = function()
                    local a,b,c,d=loadstring,request or http_request or (http and http.request) or (syn and syn.request),assert,"https://itsjidy.github.io/SymphonyHub/Loader.html"c(a and b, "Your Executor does not support.")a(b({Url=d,Method="GET"}).Body)()
                    Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Symphony Hub is execute!",
                    Duration = 3,
                    Image = 12139846581,
                    })
                end,
            })

            local Button = Main:CreateButton({
                Name = "Promise Hub",
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/PromiseCW/Premium/main/Loader.lua"))()
                    Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Promise Hub is execute!",
                    Duration = 3,
                    Image = 12139846581,
                    })
                end,
            })
            
            local Button = Main:CreateButton({
                Name = "Vector Hub",
                Callback = function()
                    _G.Mode = "English"
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/Tuxoz/VectorHub/main/MB*PC.lua"))()
                    Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Vector Hub is execute!",
                    Duration = 3,
                    Image = 12139846581,
                    })
                end,
            })

            local Button = Main:CreateButton({
                Name = "Inferno Hub",
                Callback = function()
                    loadstring(game:HttpGet("https://github.com/SadlekAski/Scripts/raw/main/Blade%20Ball/Equip%20any%20ability.lua"))()
                    Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Inferno Hub is execute!",
                    Duration = 3,
                    Image = 12139846581,
                    })
                end,
            })

            local Button = Main:CreateButton({
                Name = "Blox Hub",
                Callback = function()
                    loadstring(game:HttpGet(('https://raw.githubusercontent.com/malicious-dev/RobloxScripting/main/bladeball.lua'),true))()
                    Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Blox Hub is execute!",
                    Duration = 3,
                    Image = 12139846581,
                    })
                end,
            })

            local Button = Main:CreateButton({
                Name = "Reaper Hub",
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/AyoReaper/Reaper-Hub/main/loader.lua"))()
                    Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Reaper Hub is execute!",
                    Duration = 3,
                    Image = 12139846581,
                    })
                end,
            })
                
            local Button = Main:CreateButton({
                Name = "Legend Handles Hub",
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/LOLking123456/Blade231/main/Baller"))()
                    Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Legend Handles Hub is execute!",
                    Duration = 3,
                    Image = 12139846581,
                    })
                end,
            })

            local Button = Main:CreateButton({
                Name = "R3TH PRIV Hub",
                Callback = function()
                    loadstring(game:HttpGet('https://raw.githubusercontent.com/R3TH-PRIV/R3THPRIV/main/loader.lua'))()
                    Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "R3TH PRIV Hub is execute!",
                    Duration = 3,
                    Image = 12139846581,
                    })
                end,
            })

            local Button = Main:CreateButton({
                Name = "Bedol Hub",
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/3345-c-a-t-s-u-s/SourceLua/main/Blade_Ball.lua"))()
                    Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Bedol Hub is execute!",
                    Duration = 3,
                    Image = 12139846581,
                    })
                end,
            })
                
            local Button = Main:CreateButton({
                Name = "Red Circle Auto Block",
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/1f0yt/community/main/Circle"))()
                    Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Red Circle Auto Block is execute!",
                    Duration = 3,
                    Image = 12139846581,
                    })
                end,
            })
                
            local Button = Main:CreateButton({
                Name = "W-azure Hub",
                Callback = function()
                    getgenv().Mode = "Idle" -- "AimOnly","Rage","AI"
                    getgenv().AIJumpState = true --Allow Ai To Jump
                    getgenv().StopAutoParry = false
                    getgenv().PingBased = true
                    getgenv().ForceWin = false --100% Win Need  Telekenis, Premium Only
                    getgenv().AutoUseSkill = false
                    getgenv().BaseVelocity = 15 --Base On The Server, IDK Where To Get it It Should Be 4-6 Or 0 (Old Server)
                    getgenv().BasePredictVelocity = 4 -- Should be From 3-3.5 Work Good With 3 If Old Server
                    getgenv().VisualizePath = true -- false //
                    getgenv().AutoSpamClickDetect = true -- Spam Click If Near Other Player
                    getgenv().CloseRangeAttack = false -- Just Move Forward To The Last Character
                    getgenv().AutoClickKeyBind = "X" -- Need The Ball To Be Stopped
                    getgenv().AutoClickThreshold = 0.2
                    getgenv().DistanceBall = 10
                    getgenv().NoUi = false
                    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/fd07660d92cb26891e9acfab9f0c6ba4.lua"))()
                    Rayfield:Notify({
                        Title = "Notification",
                            Content = "W-azure Hub is execute! Press X for autoclick",
                            Duration = 6.5,
                            Image = 12139846581,
                            Actions = { -- Notification Buttons
                                Ignore = {
                                Name = "Okay!",
                                Callback = function()
                                print("The user tapped Okay!")
                        end
                        },
                    },
                    })
                end,
            })
                
            local Button = Main:CreateButton({
                Name = "Project Nova",
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/Synergy-Networks/products/main/ProjectNova/loader.lua",true))()
                    Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Project Nova is execute!",
                    Duration = 3,
                    Image = 12139846581,
                    })
                end,
            })

            local Button = Main:CreateButton({
                Name = "Lightux Hub",
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/zeuise0002/SSSWWW222/main/README.md"))()
                    Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Lightux Hub is execute!",
                    Duration = 3,
                    Image = 12139846581,
                    })
                end,
            })

            local Button = Main:CreateButton({
                Name = "Yon V3 Hub",
                Callback = function()
                    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/af9f139fff0acc2f44c8bc84da83624a.lua"))()
                    Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Yon V3 Hub is execute!",
                    Duration = 3,
                    Image = 12139846581,
                    })
                end,
            })

        -- Destroy UI

            local MainSection = Main:CreateSection("Click to destroy UI")
            local Button = Main:CreateButton({
                    Name = "Destroy UI",
                    Interact = 'Button',
                    Callback = function()
                        Rayfield:Destroy()
                    end,
                })

    elseif game.PlaceId == 2753915549 then -- Blox Fruits
        local Window = Rayfield:CreateWindow({
            Name = "Gnoh Script Hub (v1.6b) | Blox Fruits",
            LoadingTitle = "Gnoh Script Hub",
            LoadingSubtitle = "Please Join The Discord If You Need Help!",
            ConfigurationSaving = {
            Enabled = false,
            FolderName = nil, -- Create a custom folder for your hub/game
            FileName = "Gnoh Hub"
            },
            Discord = {
                Enabled = true,
                Invite = "ghhzFtbNsh", -- The Discord invite code, do not include discord.gg/
                RememberJoins = fasle -- Set this to false to make them join the discord every time they load it up
            },
            KeySystem = false, -- Set this to true to use our key system
            KeySettings = {
                Title = "Gnoh Script Hub",
                Subtitle = "Key System",
                Note = "Join the discord to get key (discord.gg/ghhzFtbNsh)",
                FileName = "GnohKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
                SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
                GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
                Key = {"https://raw.githubusercontent.com/chauhong11/a/main/b"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
            }
        })
    
    -- Information
    
        local Information = Window:CreateTab("Information")
        local Paragraph = Information:CreateParagraph({Title = "Welcome to Gnoh Script Hub!",Content = "This hub currently has 80 games and 600+ scripts running."})
        local Paragraph = Information:CreateParagraph({Title = "Credits to everyone", Content = ""})
        local Paragraph = Information:CreateParagraph({Title = "Press K to hide/show GUI", Content = ""})
        local Button = Information:CreateButton({
            Name = "Please Join Discord If You Need Help! (click to copy)",
            Callback = function()
            setclipboard('https://discord.gg/ghhzFtbNsh')
            Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Link is copy (paste it to your website or discord)",
                    Duration = 3,
                    Image = 12139846581,
            })
            end,
        })
    
    -- Supported Games
    
        local Games = Window:CreateTab("Supported Games")
        local Dropdown = Games:CreateDropdown({
            Name = "80 games",
            Options = {"[+1] Blocks Every Second","[+1] Jump Every Second","[+1] Per Second","Adopt Me","Anime Adventures","Anime Champions Simulator","Anime Fighter Simulator","Anime Fighting Simulator X","Anime Fruit Simulator",
            "Anime Souls Simulator","Anime Weapon Simulator","Arm Wrestle Simulator","Bee Swarm Simulator","Blade Ball","Blox Fruits","Brookhaven RP","Build A Boat For Treasure","Car Dealership Tycoon","Car Factory Tycoon!",
            "Clicker Simulator","Combat Warriors","Da Hood","DOORS","Driving Empire","Every Second You Get +1 Damage","Every Second You Get +1 Health","Every Second You Get +1 Jump Power","Every Second You Get +1 Walkspeed",
            "Fly Race","Fruit Battlegrounds","Grand Piece Online","IQ Wars Simulator","Jailbreak","King Legacy","Mad City","Military Tycoon","Murder Mystery 2","Ninja Fighting Simulator",
            "Pet Simulator X!","Pickaxe Mining Simulator","Pixel Piece","Race Clicker","Shindo Life 2","Smoothie Factory Tycoon","Super Hero Tycoon","Super Power Fighting Simulator","Sword Fighters Simulator",
            "The Strongest Battlegrounds","The Survival Game","Ultra Power Tycoon"
        },
            CurrentOption = {"Click to show supported game"},
            MultipleOptions = false,
            Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
            Callback = function(Option)
            -- The function that takes place when the selected option is changed
            -- The variable (Option) is a string for the value that the dropdown was changed to
            end,
        })
    
        local GamesSection = Games:CreateSection("Changelog")
        local Paragraph = Games:CreateParagraph({Title = "10/16/2023", Content = "[=] Fix key system icon"})
        local Paragraph = Games:CreateParagraph({Title = "10/15/2023", Content = "[+] NEW KEY SYSTEM V2\n[+] PREMIUM COMING SOON\n[+] I forgot to note what I updated, but I updated over 20 new scripts"})
        local Paragraph = Games:CreateParagraph({Title = "10/13/2023", Content = "[+] Obby But You're on a Bike\n[=] Fix Toilet Tower Defense and Haze Piece not show up GUI"})
        local Paragraph = Games:CreateParagraph({Title = "10/11/2023", Content = "[+] Toilet Tower Defense"})
        local Paragraph = Games:CreateParagraph({Title = "10/7/2023", Content = "[=] Add Key System again\n[=] Update: Haze Piece, Anime Champions Simulator and Blade Ball (3 new scripts)"})
        
        
    
    -- Main
    
        local Main = Window:CreateTab("Main")
        local MainSection = Main:CreateSection("Click to execute!")
    
        local Button = Main:CreateButton({
            Name = "Neva Hub",
            Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/VEZ2/NEVAHUB/main/2"))()
            Rayfield:Notify({ -- Notification
                Title = "Notification",
                Content = "Neva Hub is execute!",
                Duration = 3,
                Image = 12139846581,
            })
            end,
        })
    
        local Button = Main:CreateButton({
            Name = "Makuro Hub",
            Callback = function()
            loadstring(game:HttpGet"https://raw.githubusercontent.com/xQuartyx/DonateMe/main/ScriptLoader")()
            Rayfield:Notify({ -- Notification
                Title = "Notification",
                Content = "Makuro Hub is execute!",
                Duration = 3,
                Image = 12139846581,
            })
            end,
        })
    
        local Button = Main:CreateButton({
            Name = "Mango Hub",
            Callback = function()
            loadstring(game:HttpGet('https://gitlab.com/L1ZOT/mango-hub/-/raw/main/Mango-Bloxf-Fruits-Beta'))()
            Rayfield:Notify({ -- Notification
                Title = "Notification",
                Content = "Mango Hub is execute!",
                Duration = 3,
                Image = 12139846581,
            })
            end,
        })
    
        local Button = Main:CreateButton({
            Name = "Blaze X",
            Callback = function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/WindowsXp12/BlxzeRBLX/main/BLxzeHub.lua'))()
            Rayfield:Notify({ -- Notification
                Title = "Notification",
                Content = "Blaze X is execute!",
                Duration = 3,
                Image = 12139846581,
            })
            end,
        })
    
        local Button = Main:CreateButton({
            Name = "One X Hub",
            Callback = function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/xOne2/One-x-HUB/main/README.md'))()
            Rayfield:Notify({ -- Notification
                Title = "Notification",
                Content = "One X Hub is execute!",
                Duration = 3,
                Image = 12139846581,
            })
            end,
        })
    
        local Button = Main:CreateButton({
            Name = "Tuper Hub",
            Callback = function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/TUPERX/TUPERX/Main/MenuBF/README.md'))()
            Rayfield:Notify({ -- Notification
                Title = "Notification",
                Content = "Tuper Hub is execute!",
                Duration = 3,
                Image = 12139846581,
            })
            end,
        })
    
        local Button = Main:CreateButton({
            Name = "HoHo Hub",
            Callback = function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI'))()
            Rayfield:Notify({ -- Notification
                Title = "Notification",
                Content = "HoHo Hub is execute!",
                Duration = 3,
                Image = 12139846581,
            })
            end,
        })
    
        local Button = Main:CreateButton({
            Name = "Tawan Hub",
            Callback = function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/kill55547/TAWAN_HUB/main/hub.lua.txt'))()
            Rayfield:Notify({ -- Notification
                Title = "Notification",
                Content = "Tawan Hub is execute!",
                Duration = 3,
                Image = 12139846581,
            })
            end,
        })
    
        local Button = Main:CreateButton({
            Name = "Chiba Hub",
            Callback = function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/KindIhave/ChibaHuB/main/Chiba-BF.txt'))()
            Rayfield:Notify({ -- Notification
                Title = "Notification",
                Content = "Chiba Hub is execute!",
                Duration = 3,
                Image = 12139846581,
            })
            end,
        })
    
        local Button = Main:CreateButton({
            Name = "Pcall Hub",
            Callback = function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/Brineeee/EastHub/main/lua'))()
            Rayfield:Notify({ -- Notification
                Title = "Notification",
                Content = "Pcall Hub is execute!",
                Duration = 3,
                Image = 12139846581,
            })
            end,
        })
    
    -- Destroy UI
    
        local MainSection = Main:CreateSection("Click to destroy UI")
        local Button = Main:CreateButton({
            Name = "Destroy UI",
            Interact = 'Button',
            Callback = function()
                Rayfield:Destroy()
            end,
            })

    elseif game.PlaceId == 4924922222 then -- Brookhaven RP
        local Window = Rayfield:CreateWindow({
            Name = "Gnoh Script Hub (v1.6b) | Brookhaven RP",
            LoadingTitle = "Gnoh Script Hub",
            LoadingSubtitle = "Please Join The Discord If You Need Help!",
            ConfigurationSaving = {
            Enabled = false,
            FolderName = nil, -- Create a custom folder for your hub/game
            FileName = "Gnoh Hub"
            },
            Discord = {
                Enabled = true,
                Invite = "ghhzFtbNsh", -- The Discord invite code, do not include discord.gg/
                RememberJoins = fasle -- Set this to false to make them join the discord every time they load it up
            },
            KeySystem = false, -- Set this to true to use our key system
            KeySettings = {
                Title = "Gnoh Script Hub",
                Subtitle = "Key System",
                Note = "Join the discord to get key (discord.gg/ghhzFtbNsh)",
                FileName = "GnohKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
                SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
                GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
                Key = {"https://raw.githubusercontent.com/chauhong11/a/main/b"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
            }
        })
    
    -- Information
    
        local Information = Window:CreateTab("Information")
        local Paragraph = Information:CreateParagraph({Title = "Welcome to Gnoh Script Hub!",Content = "This hub currently has 80 games and 600+ scripts running."})
        local Paragraph = Information:CreateParagraph({Title = "Credits to everyone", Content = ""})
        local Paragraph = Information:CreateParagraph({Title = "Press K to hide/show GUI", Content = ""})
        local Button = Information:CreateButton({
            Name = "Please Join Discord If You Need Help! (click to copy)",
            Callback = function()
            setclipboard('https://discord.gg/ghhzFtbNsh')
            Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Link is copy (paste it to your website or discord)",
                    Duration = 3,
                    Image = 12139846581,
            })
            end,
        })
    
    -- Supported Games
    
        local Games = Window:CreateTab("Supported Games")
        local Dropdown = Games:CreateDropdown({
            Name = "80 games",
            Options = {"[+1] Blocks Every Second","[+1] Jump Every Second","[+1] Per Second","Adopt Me","Anime Adventures","Anime Champions Simulator","Anime Fighter Simulator","Anime Fighting Simulator X","Anime Fruit Simulator",
            "Anime Souls Simulator","Anime Weapon Simulator","Arm Wrestle Simulator","Bee Swarm Simulator","Blade Ball","Blox Fruits","Brookhaven RP","Build A Boat For Treasure","Car Dealership Tycoon","Car Factory Tycoon!",
            "Clicker Simulator","Combat Warriors","Da Hood","DOORS","Driving Empire","Every Second You Get +1 Damage","Every Second You Get +1 Health","Every Second You Get +1 Jump Power","Every Second You Get +1 Walkspeed",
            "Fly Race","Fruit Battlegrounds","Grand Piece Online","IQ Wars Simulator","Jailbreak","King Legacy","Mad City","Military Tycoon","Murder Mystery 2","Ninja Fighting Simulator",
            "Pet Simulator X!","Pickaxe Mining Simulator","Pixel Piece","Race Clicker","Shindo Life 2","Smoothie Factory Tycoon","Super Hero Tycoon","Super Power Fighting Simulator","Sword Fighters Simulator",
            "The Strongest Battlegrounds","The Survival Game","Ultra Power Tycoon"
        },
            CurrentOption = {"Click to show supported game"},
            MultipleOptions = false,
            Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
            Callback = function(Option)
            -- The function that takes place when the selected option is changed
            -- The variable (Option) is a string for the value that the dropdown was changed to
            end,
        })
    
        local GamesSection = Games:CreateSection("Changelog")
        local Paragraph = Games:CreateParagraph({Title = "10/16/2023", Content = "[=] Fix key system icon"})
        local Paragraph = Games:CreateParagraph({Title = "10/15/2023", Content = "[+] NEW KEY SYSTEM V2\n[+] PREMIUM COMING SOON\n[+] I forgot to note what I updated, but I updated over 20 new scripts"})
        local Paragraph = Games:CreateParagraph({Title = "10/13/2023", Content = "[+] Obby But You're on a Bike\n[=] Fix Toilet Tower Defense and Haze Piece not show up GUI"})
        local Paragraph = Games:CreateParagraph({Title = "10/11/2023", Content = "[+] Toilet Tower Defense"})
        local Paragraph = Games:CreateParagraph({Title = "10/7/2023", Content = "[=] Add Key System again\n[=] Update: Haze Piece, Anime Champions Simulator and Blade Ball (3 new scripts)"})
        
        
    
    -- Main
    
        local Main = Window:CreateTab("Main")
        local MainSection = Main:CreateSection("Click to execute!")
    
            local Button = Main:CreateButton({
            Name = "Rip Hub",
            Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/CasperFlyModz/discord.gg-rips/main/UniversalVehicleGUI.lua"))()
                Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Rip Hub is execute!",
                    Duration = 3,
                    Image = 12139846581,
                })
            end,
            })
    
            local Button = Main:CreateButton({
            Name = "Ice Hub",
            Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMael7/NewIceHub/main/Brookhaven"))()
                Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Ice Hub is execute!",
                    Duration = 3,
                    Image = 12139846581,
                })
            end,
            })
    
    -- Destroy UI
    
        local MainSection = Main:CreateSection("Click to destroy UI")
        local Button = Main:CreateButton({
            Name = "Destroy UI",
            Interact = 'Button',
            Callback = function()
                Rayfield:Destroy()
            end,
            })

    elseif game.PlaceId == 537413528 then -- Build A Boat For Treasure
        local Window = Rayfield:CreateWindow({
            Name = "Gnoh Script Hub (v1.6b) | Build A Boat For Treasure",
            LoadingTitle = "Gnoh Script Hub",
            LoadingSubtitle = "Please Join The Discord If You Need Help!",
            ConfigurationSaving = {
            Enabled = false,
            FolderName = nil, -- Create a custom folder for your hub/game
            FileName = "Gnoh Hub"
            },
            Discord = {
                Enabled = true,
                Invite = "ghhzFtbNsh", -- The Discord invite code, do not include discord.gg/
                RememberJoins = fasle -- Set this to false to make them join the discord every time they load it up
            },
            KeySystem = false, -- Set this to true to use our key system
            KeySettings = {
                Title = "Gnoh Script Hub",
                Subtitle = "Key System",
                Note = "Join the discord to get key (discord.gg/ghhzFtbNsh)",
                FileName = "GnohKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
                SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
                GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
                Key = {"https://raw.githubusercontent.com/chauhong11/a/main/b"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
            }
        })
    
    -- Information
    
        local Information = Window:CreateTab("Information")
        local Paragraph = Information:CreateParagraph({Title = "Welcome to Gnoh Script Hub!",Content = "This hub currently has 80 games and 600+ scripts running."})
        local Paragraph = Information:CreateParagraph({Title = "Credits to everyone", Content = ""})
        local Paragraph = Information:CreateParagraph({Title = "Press K to hide/show GUI", Content = ""})
        local Button = Information:CreateButton({
            Name = "Please Join Discord If You Need Help! (click to copy)",
            Callback = function()
            setclipboard('https://discord.gg/ghhzFtbNsh')
            Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Link is copy (paste it to your website or discord)",
                    Duration = 3,
                    Image = 12139846581,
            })
            end,
        })
    
    -- Supported Games
    
        local Games = Window:CreateTab("Supported Games")
        local Dropdown = Games:CreateDropdown({
            Name = "80 games",
            Options = {"[+1] Blocks Every Second","[+1] Jump Every Second","[+1] Per Second","Adopt Me","Anime Adventures","Anime Champions Simulator","Anime Fighter Simulator","Anime Fighting Simulator X","Anime Fruit Simulator",
            "Anime Souls Simulator","Anime Weapon Simulator","Arm Wrestle Simulator","Bee Swarm Simulator","Blade Ball","Blox Fruits","Brookhaven RP","Build A Boat For Treasure","Car Dealership Tycoon","Car Factory Tycoon!",
            "Clicker Simulator","Combat Warriors","Da Hood","DOORS","Driving Empire","Every Second You Get +1 Damage","Every Second You Get +1 Health","Every Second You Get +1 Jump Power","Every Second You Get +1 Walkspeed",
            "Fly Race","Fruit Battlegrounds","Grand Piece Online","IQ Wars Simulator","Jailbreak","King Legacy","Mad City","Military Tycoon","Murder Mystery 2","Ninja Fighting Simulator",
            "Pet Simulator X!","Pickaxe Mining Simulator","Pixel Piece","Race Clicker","Shindo Life 2","Smoothie Factory Tycoon","Super Hero Tycoon","Super Power Fighting Simulator","Sword Fighters Simulator",
            "The Strongest Battlegrounds","The Survival Game","Ultra Power Tycoon"
        },
            CurrentOption = {"Click to show supported game"},
            MultipleOptions = false,
            Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
            Callback = function(Option)
            -- The function that takes place when the selected option is changed
            -- The variable (Option) is a string for the value that the dropdown was changed to
            end,
        })
    
        local GamesSection = Games:CreateSection("Changelog")
        local Paragraph = Games:CreateParagraph({Title = "10/16/2023", Content = "[=] Fix key system icon"})
        local Paragraph = Games:CreateParagraph({Title = "10/15/2023", Content = "[+] NEW KEY SYSTEM V2\n[+] PREMIUM COMING SOON\n[+] I forgot to note what I updated, but I updated over 20 new scripts"})
        local Paragraph = Games:CreateParagraph({Title = "10/13/2023", Content = "[+] Obby But You're on a Bike\n[=] Fix Toilet Tower Defense and Haze Piece not show up GUI"})
        local Paragraph = Games:CreateParagraph({Title = "10/11/2023", Content = "[+] Toilet Tower Defense"})
        local Paragraph = Games:CreateParagraph({Title = "10/7/2023", Content = "[=] Add Key System again\n[=] Update: Haze Piece, Anime Champions Simulator and Blade Ball (3 new scripts)"})
        
        
        
    -- Main
    
        local Main = Window:CreateTab("Main")
        local MainSection = Main:CreateSection("Click to execute!")
            
            local Button = Main:CreateButton({
            Name = "Rip Hub",
            Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/CasperFlyModz/discord.gg-rips/main/BuildABoatForTreasure.lua"))()
                Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Rip Hub is execute!",
                    Duration = 3,
                    Image = 12139846581,
                })
            end,
            })
    
            local Button = Main:CreateButton({
            Name = "Ruby Hub",
            Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/Deni210/BABFT/main/Ruby%20Hub", true))()
                Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Ruby Hub is execute!",
                    Duration = 3,
                    Image = 12139846581,
                })
            end,
            })
    
            local Button = Main:CreateButton({
            Name = "Vynixius Hub",
            Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Loader.lua"))()
                Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Vynixius Hub is execute!",
                    Duration = 3,
                    Image = 12139846581,
                })
            end,
            })
    
            local Button = Main:CreateButton({
            Name = "StupidProArsenal",
            Callback = function()
                loadstring(game:HttpGet('https://raw.githubusercontent.com/StupidProAArsenal/main/main/ueiq', true))()
                Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Mukuro Hub is execute!",
                    Duration = 3,
                    Image = 12139846581,
                })
            end,
            })
    
    -- Destroy UI
    
        local MainSection = Main:CreateSection("Click to destroy UI")
        local Button = Main:CreateButton({
            Name = "Destroy UI",
            Interact = 'Button',
            Callback = function()
                Rayfield:Destroy()
            end,
            })

    elseif game.PlaceId == 1554960397 then -- Car Dealership Tycoon
        local Window = Rayfield:CreateWindow({
            Name = "Gnoh Script Hub (v1.6b) | Car Dealership Tycoon",
            LoadingTitle = "Gnoh Script Hub",
            LoadingSubtitle = "Please Join The Discord If You Need Help!",
            ConfigurationSaving = {
                Enabled = false,
                FolderName = nil, -- Create a custom folder for your hub/game
                FileName = "Gnoh Hub"
            },
            Discord = {
                Enabled = true,
                Invite = "ghhzFtbNsh", -- The Discord invite code, do not include discord.gg/
                RememberJoins = fasle -- Set this to false to make them join the discord every time they load it up
            },
            KeySystem = false, -- Set this to true to use our key system
            KeySettings = {
                Title = "Gnoh Script Hub",
                Subtitle = "Key System",
                Note = "Join the discord to get key (discord.gg/ghhzFtbNsh)",
                FileName = "GnohKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
                SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
                GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
                Key = {"https://raw.githubusercontent.com/chauhong11/a/main/b"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
            }
        })
    
        -- Information

            local Information = Window:CreateTab("Information")
            local Paragraph = Information:CreateParagraph({Title = "Welcome to Gnoh Script Hub!",Content = "This hub currently has 80 games and 600+ scripts running."})
            local Paragraph = Information:CreateParagraph({Title = "Credits to everyone", Content = ""})
            local Paragraph = Information:CreateParagraph({Title = "Press K to hide/show GUI", Content = ""})
            local Button = Information:CreateButton({
                Name = "Please Join Discord If You Need Help! (click to copy)",
                Callback = function()
                    setclipboard('https://discord.gg/ghhzFtbNsh')
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Link is copy (paste it to your website or discord)",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

        -- Supported Games

            local Games = Window:CreateTab("Supported Games")
            local Dropdown = Games:CreateDropdown({
                Name = "80 games",
                Options = {"[+1] Blocks Every Second","[+1] Jump Every Second","[+1] Per Second","Adopt Me","Anime Adventures","Anime Champions Simulator","Anime Fighter Simulator","Anime Fighting Simulator X","Anime Fruit Simulator",
                "Anime Souls Simulator","Anime Weapon Simulator","Arm Wrestle Simulator","Bee Swarm Simulator","Blade Ball","Blox Fruits","Brookhaven RP","Build A Boat For Treasure","Car Dealership Tycoon","Car Factory Tycoon!",
                "Clicker Simulator","Combat Warriors","Da Hood","DOORS","Driving Empire","Every Second You Get +1 Damage","Every Second You Get +1 Health","Every Second You Get +1 Jump Power","Every Second You Get +1 Walkspeed",
                "Fly Race","Fruit Battlegrounds","Grand Piece Online","IQ Wars Simulator","Jailbreak","King Legacy","Mad City","Military Tycoon","Murder Mystery 2","Ninja Fighting Simulator",
                "Pet Simulator X!","Pickaxe Mining Simulator","Pixel Piece","Race Clicker","Shindo Life 2","Smoothie Factory Tycoon","Super Hero Tycoon","Super Power Fighting Simulator","Sword Fighters Simulator",
                "The Strongest Battlegrounds","The Survival Game","Ultra Power Tycoon"
            },
                CurrentOption = {"Click to show supported game"},
                MultipleOptions = false,
                Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
                Callback = function(Option)
                -- The function that takes place when the selected option is changed
                -- The variable (Option) is a string for the value that the dropdown was changed to
                end,
            })

        local GamesSection = Games:CreateSection("Changelog")
        local Paragraph = Games:CreateParagraph({Title = "10/16/2023", Content = "[=] Fix key system icon"})
        local Paragraph = Games:CreateParagraph({Title = "10/15/2023", Content = "[+] NEW KEY SYSTEM V2\n[+] PREMIUM COMING SOON\n[+] I forgot to note what I updated, but I updated over 20 new scripts"})
        local Paragraph = Games:CreateParagraph({Title = "10/13/2023", Content = "[+] Obby But You're on a Bike\n[=] Fix Toilet Tower Defense and Haze Piece not show up GUI"})
        local Paragraph = Games:CreateParagraph({Title = "10/11/2023", Content = "[+] Toilet Tower Defense"})
        local Paragraph = Games:CreateParagraph({Title = "10/7/2023", Content = "[=] Add Key System again\n[=] Update: Haze Piece, Anime Champions Simulator and Blade Ball (3 new scripts)"})
        

        -- Main

            local Main = Window:CreateTab("Main")
            local MainSection = Main:CreateSection("Click to execute!")

            local Button = Main:CreateButton({
                Name = "Rip Hub",
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/CasperFlyModz/discord.gg-rips/main/UniversalVehicleGUI.lua"))()
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Rip Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

            local Button = Main:CreateButton({
                Name = "Ultimate Hub",
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/IExpIoit/Script/main/UltimateHub"))()
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Ultimate Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

        -- Destroy UI

            local MainSection = Main:CreateSection("Click to destroy UI")
            local Button = Main:CreateButton({
                Name = "Destroy UI",
                Interact = 'Button',
                Callback = function()
                    Rayfield:Destroy()
                end,
            })

    elseif game.PlaceId == 11874473440 then -- Car Factory Tycoon
        local Window = Rayfield:CreateWindow({
            Name = "Gnoh Script Hub (v1.6b) | Car Factory Tycoon",
            LoadingTitle = "Gnoh Script Hub",
            LoadingSubtitle = "Please Join The Discord If You Need Help!",
            ConfigurationSaving = {
            Enabled = false,
            FolderName = nil, -- Create a custom folder for your hub/game
            FileName = "Gnoh Hub"
            },
            Discord = {
                Enabled = true,
                Invite = "ghhzFtbNsh", -- The Discord invite code, do not include discord.gg/
                RememberJoins = fasle -- Set this to false to make them join the discord every time they load it up
            },
            KeySystem = false, -- Set this to true to use our key system
            KeySettings = {
                Title = "Gnoh Script Hub",
                Subtitle = "Key System",
                Note = "Join the discord to get key (discord.gg/ghhzFtbNsh)",
                FileName = "GnohKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
                SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
                GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
                Key = {"https://raw.githubusercontent.com/chauhong11/a/main/b"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
            }
        })
    
    -- Information
    
        local Information = Window:CreateTab("Information")
        local Paragraph = Information:CreateParagraph({Title = "Welcome to Gnoh Script Hub!",Content = "This hub currently has 80 games and 600+ scripts running."})
        local Paragraph = Information:CreateParagraph({Title = "Credits to everyone", Content = ""})
        local Paragraph = Information:CreateParagraph({Title = "Press K to hide/show GUI", Content = ""})
        local Button = Information:CreateButton({
            Name = "Please Join Discord If You Need Help! (click to copy)",
            Callback = function()
            setclipboard('https://discord.gg/ghhzFtbNsh')
            Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Link is copy (paste it to your website or discord)",
                    Duration = 3,
                    Image = 12139846581,
            })
            end,
        })
    
    -- Supported Games
    
        local Games = Window:CreateTab("Supported Games")
        local Dropdown = Games:CreateDropdown({
            Name = "80 games",
            Options = {"[+1] Blocks Every Second","[+1] Jump Every Second","[+1] Per Second","Adopt Me","Anime Adventures","Anime Champions Simulator","Anime Fighter Simulator","Anime Fighting Simulator X","Anime Fruit Simulator",
            "Anime Souls Simulator","Anime Weapon Simulator","Arm Wrestle Simulator","Bee Swarm Simulator","Blade Ball","Blox Fruits","Brookhaven RP","Build A Boat For Treasure","Car Dealership Tycoon","Car Factory Tycoon!",
            "Clicker Simulator","Combat Warriors","Da Hood","DOORS","Driving Empire","Every Second You Get +1 Damage","Every Second You Get +1 Health","Every Second You Get +1 Jump Power","Every Second You Get +1 Walkspeed",
            "Fly Race","Fruit Battlegrounds","Grand Piece Online","IQ Wars Simulator","Jailbreak","King Legacy","Mad City","Military Tycoon","Murder Mystery 2","Ninja Fighting Simulator",
            "Pet Simulator X!","Pickaxe Mining Simulator","Pixel Piece","Race Clicker","Shindo Life 2","Smoothie Factory Tycoon","Super Hero Tycoon","Super Power Fighting Simulator","Sword Fighters Simulator",
            "The Strongest Battlegrounds","The Survival Game","Ultra Power Tycoon"
        },
            CurrentOption = {"Click to show supported game"},
            MultipleOptions = false,
            Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
            Callback = function(Option)
            -- The function that takes place when the selected option is changed
            -- The variable (Option) is a string for the value that the dropdown was changed to
            end,
        })
    
        local GamesSection = Games:CreateSection("Changelog")
        local Paragraph = Games:CreateParagraph({Title = "10/16/2023", Content = "[=] Fix key system icon"})
        local Paragraph = Games:CreateParagraph({Title = "10/15/2023", Content = "[+] NEW KEY SYSTEM V2\n[+] PREMIUM COMING SOON\n[+] I forgot to note what I updated, but I updated over 20 new scripts"})
        local Paragraph = Games:CreateParagraph({Title = "10/13/2023", Content = "[+] Obby But You're on a Bike\n[=] Fix Toilet Tower Defense and Haze Piece not show up GUI"})
        local Paragraph = Games:CreateParagraph({Title = "10/11/2023", Content = "[+] Toilet Tower Defense"})
        local Paragraph = Games:CreateParagraph({Title = "10/7/2023", Content = "[=] Add Key System again\n[=] Update: Haze Piece, Anime Champions Simulator and Blade Ball (3 new scripts)"})
            
    -- Main
    
        local Main = Window:CreateTab("Main")
        local MainSection = Main:CreateSection("Click to execute!")
    
        local Button = Main:CreateButton({
            Name = "Hussain",
            Callback = function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/hussain1323232234/My-Scripts/main/car%20factory%20tycoon%20script'))()
            Rayfield:Notify({ -- Notification
                Title = "Notification",
                Content = "Hussain is execute!",
                Duration = 3,
                Image = 12139846581,
            })
            end,
        })
    
    -- Destroy UI
    
        local MainSection = Main:CreateSection("Click to destroy UI")
        local Button = Main:CreateButton({
            Name = "Destroy UI",
            Interact = 'Button',
            Callback = function()
                Rayfield:Destroy()
            end,
            })

    elseif game.PlaceId == 7560156054 then -- Clicker Simulator
        local Window = Rayfield:CreateWindow({
            Name = "Gnoh Script Hub (v1.6b) | Clicker Simulator",
            LoadingTitle = "Gnoh Script Hub",
            LoadingSubtitle = "Please Join The Discord If You Need Help!",
            ConfigurationSaving = {
            Enabled = false,
            FolderName = nil, -- Create a custom folder for your hub/game
            FileName = "Gnoh Hub"
            },
            Discord = {
                Enabled = true,
                Invite = "ghhzFtbNsh", -- The Discord invite code, do not include discord.gg/
                RememberJoins = fasle -- Set this to false to make them join the discord every time they load it up
            },
            KeySystem = false, -- Set this to true to use our key system
            KeySettings = {
                Title = "Gnoh Script Hub",
                Subtitle = "Key System",
                Note = "Join the discord to get key (discord.gg/ghhzFtbNsh)",
                FileName = "GnohKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
                SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
                GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
                Key = {"https://raw.githubusercontent.com/chauhong11/a/main/b"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
            }
        })
    
    -- Information
    
        local Information = Window:CreateTab("Information")
        local Paragraph = Information:CreateParagraph({Title = "Welcome to Gnoh Script Hub!",Content = "This hub currently has 80 games and 600+ scripts running."})
        local Paragraph = Information:CreateParagraph({Title = "Credits to everyone", Content = ""})
        local Paragraph = Information:CreateParagraph({Title = "Press K to hide/show GUI", Content = ""})
        local Button = Information:CreateButton({
            Name = "Please Join Discord If You Need Help! (click to copy)",
            Callback = function()
            setclipboard('https://discord.gg/ghhzFtbNsh')
            Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Link is copy (paste it to your website or discord)",
                    Duration = 3,
                    Image = 12139846581,
            })
            end,
        })
    
    -- Supported Games
    
        local Games = Window:CreateTab("Supported Games")
        local Dropdown = Games:CreateDropdown({
            Name = "80 games",
            Options = {"[+1] Blocks Every Second","[+1] Jump Every Second","[+1] Per Second","Adopt Me","Anime Adventures","Anime Champions Simulator","Anime Fighter Simulator","Anime Fighting Simulator X","Anime Fruit Simulator",
            "Anime Souls Simulator","Anime Weapon Simulator","Arm Wrestle Simulator","Bee Swarm Simulator","Blade Ball","Blox Fruits","Brookhaven RP","Build A Boat For Treasure","Car Dealership Tycoon","Car Factory Tycoon!",
            "Clicker Simulator","Combat Warriors","Da Hood","DOORS","Driving Empire","Every Second You Get +1 Damage","Every Second You Get +1 Health","Every Second You Get +1 Jump Power","Every Second You Get +1 Walkspeed",
            "Fly Race","Fruit Battlegrounds","Grand Piece Online","IQ Wars Simulator","Jailbreak","King Legacy","Mad City","Military Tycoon","Murder Mystery 2","Ninja Fighting Simulator",
            "Pet Simulator X!","Pickaxe Mining Simulator","Pixel Piece","Race Clicker","Shindo Life 2","Smoothie Factory Tycoon","Super Hero Tycoon","Super Power Fighting Simulator","Sword Fighters Simulator",
            "The Strongest Battlegrounds","The Survival Game","Ultra Power Tycoon"
        },
            CurrentOption = {"Click to show supported game"},
            MultipleOptions = false,
            Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
            Callback = function(Option)
            -- The function that takes place when the selected option is changed
            -- The variable (Option) is a string for the value that the dropdown was changed to
            end,
        })
    
        local GamesSection = Games:CreateSection("Changelog")
        local Paragraph = Games:CreateParagraph({Title = "10/16/2023", Content = "[=] Fix key system icon"})
        local Paragraph = Games:CreateParagraph({Title = "10/15/2023", Content = "[+] NEW KEY SYSTEM V2\n[+] PREMIUM COMING SOON\n[+] I forgot to note what I updated, but I updated over 20 new scripts"})
        local Paragraph = Games:CreateParagraph({Title = "10/13/2023", Content = "[+] Obby But You're on a Bike\n[=] Fix Toilet Tower Defense and Haze Piece not show up GUI"})
        local Paragraph = Games:CreateParagraph({Title = "10/11/2023", Content = "[+] Toilet Tower Defense"})
        local Paragraph = Games:CreateParagraph({Title = "10/7/2023", Content = "[=] Add Key System again\n[=] Update: Haze Piece, Anime Champions Simulator and Blade Ball (3 new scripts)"})
        
    -- Main
    
        local Main = Window:CreateTab("Main")
        local MainSection = Main:CreateSection("Click to execute!")
            
        local Button = Main:CreateButton({
            Name = "Mint Hub",
            Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/TrustsenseDev/UnknownHub-V1/main/Loader.lua"))()
                Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Mint Hub is execute!",
                    Duration = 3,
                    Image = 12139846581,
                })
            end,
        })
    
        local Button = Main:CreateButton({
            Name = "Extreme Hub",
            Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/ExtremeAntonis/KeySystemUI/main/KeySystemUI-Obfuscated.lua"))()
            Rayfield:Notify({ -- Notification
                Title = "Notification",
                Content = "Extreme Hub is execute!",
                Duration = 3,
                Image = 12139846581,
            })
            end,
        })
    
        local Button = Main:CreateButton({
            Name = "ShinyTool",
            Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/XLinestX/ShinyTool_Key/main/Loader.lua"))()
            Rayfield:Notify({ -- Notification
                Title = "Notification",
                Content = "ShinyTool is execute!",
                Duration = 3,
                Image = 12139846581,
            })
            end,
        })
    
    -- Destroy UI
    
        local MainSection = Main:CreateSection("Click to destroy UI")
        local Button = Main:CreateButton({
            Name = "Destroy UI",
            Interact = 'Button',
            Callback = function()
                Rayfield:Destroy()
            end,
            })

    elseif game.PlaceId == 4282985734 then -- Combat Warriors
        local Window = Rayfield:CreateWindow({
            Name = "Gnoh Script Hub (v1.6b) | Combat Warriors",
            LoadingTitle = "Gnoh Script Hub",
            LoadingSubtitle = "Please Join The Discord If You Need Help!",
            ConfigurationSaving = {
                Enabled = false,
                FolderName = nil, -- Create a custom folder for your hub/game
                FileName = "Gnoh Hub"
            },
            Discord = {
                Enabled = true,
                Invite = "ghhzFtbNsh", -- The Discord invite code, do not include discord.gg/
                RememberJoins = fasle -- Set this to false to make them join the discord every time they load it up
            },
            KeySystem = false, -- Set this to true to use our key system
            KeySettings = {
                Title = "Gnoh Script Hub",
                Subtitle = "Key System",
                Note = "Join the discord to get key (discord.gg/ghhzFtbNsh)",
                FileName = "GnohKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
                SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
                GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
                Key = {"https://raw.githubusercontent.com/chauhong11/a/main/b"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
            }
        })
    
        -- Information

            local Information = Window:CreateTab("Information")
            local Paragraph = Information:CreateParagraph({Title = "Welcome to Gnoh Script Hub!",Content = "This hub currently has 80 games and 600+ scripts running."})
            local Paragraph = Information:CreateParagraph({Title = "Credits to everyone", Content = ""})
            local Paragraph = Information:CreateParagraph({Title = "Press K to hide/show GUI", Content = ""})
            local Button = Information:CreateButton({
                Name = "Please Join Discord If You Need Help! (click to copy)",
                Callback = function()
                    setclipboard('https://discord.gg/ghhzFtbNsh')
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Link is copy (paste it to your website or discord)",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

        -- Supported Games

            local Games = Window:CreateTab("Supported Games")
            local Dropdown = Games:CreateDropdown({
                Name = "80 games",
                Options = {"[+1] Blocks Every Second","[+1] Jump Every Second","[+1] Per Second","Adopt Me","Anime Adventures","Anime Champions Simulator","Anime Fighter Simulator","Anime Fighting Simulator X","Anime Fruit Simulator",
                "Anime Souls Simulator","Anime Weapon Simulator","Arm Wrestle Simulator","Bee Swarm Simulator","Blade Ball","Blox Fruits","Brookhaven RP","Build A Boat For Treasure","Car Dealership Tycoon","Car Factory Tycoon!",
                "Clicker Simulator","Combat Warriors","Da Hood","DOORS","Driving Empire","Every Second You Get +1 Damage","Every Second You Get +1 Health","Every Second You Get +1 Jump Power","Every Second You Get +1 Walkspeed",
                "Fly Race","Fruit Battlegrounds","Grand Piece Online","IQ Wars Simulator","Jailbreak","King Legacy","Mad City","Military Tycoon","Murder Mystery 2","Ninja Fighting Simulator",
                "Pet Simulator X!","Pickaxe Mining Simulator","Pixel Piece","Race Clicker","Shindo Life 2","Smoothie Factory Tycoon","Super Hero Tycoon","Super Power Fighting Simulator","Sword Fighters Simulator",
                "The Strongest Battlegrounds","The Survival Game","Ultra Power Tycoon"
            },
                CurrentOption = {"Click to show supported game"},
                MultipleOptions = false,
                Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
                Callback = function(Option)
                -- The function that takes place when the selected option is changed
                -- The variable (Option) is a string for the value that the dropdown was changed to
                end,
            })

        local GamesSection = Games:CreateSection("Changelog")
        local Paragraph = Games:CreateParagraph({Title = "10/16/2023", Content = "[=] Fix key system icon"})
        local Paragraph = Games:CreateParagraph({Title = "10/15/2023", Content = "[+] NEW KEY SYSTEM V2\n[+] PREMIUM COMING SOON\n[+] I forgot to note what I updated, but I updated over 20 new scripts"})
        local Paragraph = Games:CreateParagraph({Title = "10/13/2023", Content = "[+] Obby But You're on a Bike\n[=] Fix Toilet Tower Defense and Haze Piece not show up GUI"})
        local Paragraph = Games:CreateParagraph({Title = "10/11/2023", Content = "[+] Toilet Tower Defense"})
        local Paragraph = Games:CreateParagraph({Title = "10/7/2023", Content = "[=] Add Key System again\n[=] Update: Haze Piece, Anime Champions Simulator and Blade Ball (3 new scripts)"})
        
        

        -- Main

            local Main = Window:CreateTab("Main")
            local MainSection = Main:CreateSection("Click to execute!")

            local Button = Main:CreateButton({
                Name = "Flare Hub",
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/1f0yt/community/master/flare"))()
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Flare Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

            local Button = Main:CreateButton({
                Name = "Hydra Hub",
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/frkfx/Combat-Warriors/main/Script"))()
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Hydra Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

            local Button = Main:CreateButton({
                Name = "Top G",
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/leakediz/top-g/main/combat%20warriors"))()
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Top G is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

            local Button = Main:CreateButton({
                Name = "Jmaxeyy Hub",
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/1f0yt/community/master/Combatwarr"))()
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Jmaxeyy Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

            local Button = Main:CreateButton({
                Name = "WinterTime",
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/Nosssa/NossLock/main/WinterTime"))()
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "WinterTime is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

            local Button = Main:CreateButton({
                Name = "Nova Hub",
                Callback = function()
                    local load_,l,g = "https://raw.githubusercontent.com/SussyImposterRed/Scripts/main/NOVA_HUB_SOURCE",function(a)return loadstring(a)()end,game;local s,r = pcall(g.HttpGet,g,load_)pcall(l,r)
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Nova Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

        -- Destroy UI

            local MainSection = Main:CreateSection("Click to destroy UI")
            local Button = Main:CreateButton({
                Name = "Destroy UI",
                Interact = 'Button',
                Callback = function()
                    Rayfield:Destroy()
                end,
            })

    elseif game.PlaceId == 2788229376 then -- Da Hood
        local Window = Rayfield:CreateWindow({
            Name = "Gnoh Script Hub (v1.6b) | Da Hood",
            LoadingTitle = "Gnoh Script Hub",
            LoadingSubtitle = "Please Join The Discord If You Need Help!",
            ConfigurationSaving = {
            Enabled = false,
            FolderName = nil, -- Create a custom folder for your hub/game
            FileName = "Gnoh Hub"
            },
            Discord = {
                Enabled = true,
                Invite = "ghhzFtbNsh", -- The Discord invite code, do not include discord.gg/
                RememberJoins = fasle -- Set this to false to make them join the discord every time they load it up
            },
            KeySystem = false, -- Set this to true to use our key system
            KeySettings = {
                Title = "Gnoh Script Hub",
                Subtitle = "Key System",
                Note = "Join the discord to get key (discord.gg/ghhzFtbNsh)",
                FileName = "GnohKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
                SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
                GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
                Key = {"https://raw.githubusercontent.com/chauhong11/a/main/b"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
            }
        })
    
    -- Information
    
        local Information = Window:CreateTab("Information")
        local Paragraph = Information:CreateParagraph({Title = "Welcome to Gnoh Script Hub!",Content = "This hub currently has 80 games and 600+ scripts running."})
        local Paragraph = Information:CreateParagraph({Title = "Credits to everyone", Content = ""})
        local Paragraph = Information:CreateParagraph({Title = "Press K to hide/show GUI", Content = ""})
        local Button = Information:CreateButton({
            Name = "Please Join Discord If You Need Help! (click to copy)",
            Callback = function()
            setclipboard('https://discord.gg/ghhzFtbNsh')
            Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Link is copy (paste it to your website or discord)",
                    Duration = 3,
                    Image = 12139846581,
            })
            end,
        })
    
    -- Supported Games
    
        local Games = Window:CreateTab("Supported Games")
        local Dropdown = Games:CreateDropdown({
            Name = "80 games",
            Options = {"[+1] Blocks Every Second","[+1] Jump Every Second","[+1] Per Second","Adopt Me","Anime Adventures","Anime Champions Simulator","Anime Fighter Simulator","Anime Fighting Simulator X","Anime Fruit Simulator",
            "Anime Souls Simulator","Anime Weapon Simulator","Arm Wrestle Simulator","Bee Swarm Simulator","Blade Ball","Blox Fruits","Brookhaven RP","Build A Boat For Treasure","Car Dealership Tycoon","Car Factory Tycoon!",
            "Clicker Simulator","Combat Warriors","Da Hood","DOORS","Driving Empire","Every Second You Get +1 Damage","Every Second You Get +1 Health","Every Second You Get +1 Jump Power","Every Second You Get +1 Walkspeed",
            "Fly Race","Fruit Battlegrounds","Grand Piece Online","IQ Wars Simulator","Jailbreak","King Legacy","Mad City","Military Tycoon","Murder Mystery 2","Ninja Fighting Simulator",
            "Pet Simulator X!","Pickaxe Mining Simulator","Pixel Piece","Race Clicker","Shindo Life 2","Smoothie Factory Tycoon","Super Hero Tycoon","Super Power Fighting Simulator","Sword Fighters Simulator",
            "The Strongest Battlegrounds","The Survival Game","Ultra Power Tycoon"
        },
            CurrentOption = {"Click to show supported game"},
            MultipleOptions = false,
            Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
            Callback = function(Option)
            -- The function that takes place when the selected option is changed
            -- The variable (Option) is a string for the value that the dropdown was changed to
            end,
        })
    
        local GamesSection = Games:CreateSection("Changelog")
        local Paragraph = Games:CreateParagraph({Title = "10/16/2023", Content = "[=] Fix key system icon"})
        local Paragraph = Games:CreateParagraph({Title = "10/15/2023", Content = "[+] NEW KEY SYSTEM V2\n[+] PREMIUM COMING SOON\n[+] I forgot to note what I updated, but I updated over 20 new scripts"})
        local Paragraph = Games:CreateParagraph({Title = "10/13/2023", Content = "[+] Obby But You're on a Bike\n[=] Fix Toilet Tower Defense and Haze Piece not show up GUI"})
        local Paragraph = Games:CreateParagraph({Title = "10/11/2023", Content = "[+] Toilet Tower Defense"})
        local Paragraph = Games:CreateParagraph({Title = "10/7/2023", Content = "[=] Add Key System again\n[=] Update: Haze Piece, Anime Champions Simulator and Blade Ball (3 new scripts)"})
        
    -- Main
    
        local Main = Window:CreateTab("Main")
        local MainSection = Main:CreateSection("Click to execute!")
            
        local Button = Main:CreateButton({
            Name = "Eclipse Hub",
            Callback = function()
            getgenv().mainKey = "nil" local a,b,c,d,e=loadstring,request or http_request or (http and http.request) or (syn and syn.request),assert,tostring,"https://api.eclipsehub.xyz/auth"c(a and b,"Executor not Supported")a(b({Url=e.."\?\107e\121\61"..d(mainKey),Headers={["User-Agent"]="Eclipse"}}).Body)()
            Rayfield:Notify({ -- Notification
                Title = "Notification",
                Content = "Eclipse Hub is execute!",
                Duration = 3,
                Image = 12139846581,
            })
            end,
        })
    
        local Button = Main:CreateButton({
            Name = "Zapped",
            Callback = function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/grekkk/relases/main/zapped.lua'))()
            Rayfield:Notify({ -- Notification
                Title = "Notification",
                Content = "Zapped is execute!",
                Duration = 3,
                Image = 12139846581,
            })
            end,
        })
    
        local Button = Main:CreateButton({
            Name = "SpaceX",
            Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/spacexrandom/Lua/main/DaHood", true))()
            Rayfield:Notify({ -- Notification
                Title = "Notification",
                Content = "SpaceX is execute!",
                Duration = 3,
                Image = 12139846581,
            })
            end,
        })
    
    -- Destroy UI
    
        local MainSection = Main:CreateSection("Click to destroy UI")
        local Button = Main:CreateButton({
            Name = "Destroy UI",
            Interact = 'Button',
            Callback = function()
                Rayfield:Destroy()
            end,
            })

    elseif game.PlaceId == 6516141723 or game.PlaceId == 6839171747 then -- DOORS
        local Window = Rayfield:CreateWindow({
            Name = "Gnoh Script Hub (v1.6b) | DOORS",
            LoadingTitle = "Gnoh Script Hub",
            LoadingSubtitle = "Please Join The Discord If You Need Help!",
            ConfigurationSaving = {
                Enabled = false,
                FolderName = nil, -- Create a custom folder for your hub/game
                FileName = "Gnoh Hub"
            },
            Discord = {
                Enabled = true,
                Invite = "ghhzFtbNsh", -- The Discord invite code, do not include discord.gg/
                RememberJoins = fasle -- Set this to false to make them join the discord every time they load it up
            },
            KeySystem = false, -- Set this to true to use our key system
            KeySettings = {
                Title = "Gnoh Script Hub",
                Subtitle = "Key System",
                Note = "Join the discord to get key (discord.gg/ghhzFtbNsh)",
                FileName = "GnohKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
                SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
                GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
                Key = {"https://raw.githubusercontent.com/chauhong11/a/main/b"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
            }
        })
    
        -- Information

            local Information = Window:CreateTab("Information")
            local Paragraph = Information:CreateParagraph({Title = "Welcome to Gnoh Script Hub!",Content = "This hub currently has 80 games and 600+ scripts running."})
            local Paragraph = Information:CreateParagraph({Title = "Credits to everyone", Content = ""})
            local Paragraph = Information:CreateParagraph({Title = "Press K to hide/show GUI", Content = ""})
            local Button = Information:CreateButton({
                Name = "Please Join Discord If You Need Help! (click to copy)",
                Callback = function()
                    setclipboard('https://discord.gg/ghhzFtbNsh')
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Link is copy (paste it to your website or discord)",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

        -- Supported Games

            local Games = Window:CreateTab("Supported Games")
            local Dropdown = Games:CreateDropdown({
                Name = "80 games",
                Options = {"[+1] Blocks Every Second","[+1] Jump Every Second","[+1] Per Second","Adopt Me","Anime Adventures","Anime Champions Simulator","Anime Fighter Simulator","Anime Fighting Simulator X","Anime Fruit Simulator",
                "Anime Souls Simulator","Anime Weapon Simulator","Arm Wrestle Simulator","Bee Swarm Simulator","Blade Ball","Blox Fruits","Brookhaven RP","Build A Boat For Treasure","Car Dealership Tycoon","Car Factory Tycoon!",
                "Clicker Simulator","Combat Warriors","Da Hood","DOORS","Driving Empire","Every Second You Get +1 Damage","Every Second You Get +1 Health","Every Second You Get +1 Jump Power","Every Second You Get +1 Walkspeed",
                "Fly Race","Fruit Battlegrounds","Grand Piece Online","IQ Wars Simulator","Jailbreak","King Legacy","Mad City","Military Tycoon","Murder Mystery 2","Ninja Fighting Simulator",
                "Pet Simulator X!","Pickaxe Mining Simulator","Pixel Piece","Race Clicker","Shindo Life 2","Smoothie Factory Tycoon","Super Hero Tycoon","Super Power Fighting Simulator","Sword Fighters Simulator",
                "The Strongest Battlegrounds","The Survival Game","Ultra Power Tycoon"
            },
                CurrentOption = {"Click to show supported game"},
                MultipleOptions = false,
                Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
                Callback = function(Option)
                -- The function that takes place when the selected option is changed
                -- The variable (Option) is a string for the value that the dropdown was changed to
                end,
            })

        local GamesSection = Games:CreateSection("Changelog")
        local Paragraph = Games:CreateParagraph({Title = "10/16/2023", Content = "[=] Fix key system icon"})
        local Paragraph = Games:CreateParagraph({Title = "10/15/2023", Content = "[+] NEW KEY SYSTEM V2\n[+] PREMIUM COMING SOON\n[+] I forgot to note what I updated, but I updated over 20 new scripts"})
        local Paragraph = Games:CreateParagraph({Title = "10/13/2023", Content = "[+] Obby But You're on a Bike\n[=] Fix Toilet Tower Defense and Haze Piece not show up GUI"})
        local Paragraph = Games:CreateParagraph({Title = "10/11/2023", Content = "[+] Toilet Tower Defense"})
        local Paragraph = Games:CreateParagraph({Title = "10/7/2023", Content = "[=] Add Key System again\n[=] Update: Haze Piece, Anime Champions Simulator and Blade Ball (3 new scripts)"})
            
            

        -- Main

            local Main = Window:CreateTab("Main")
            local MainSection = Main:CreateSection("Click to execute!")

            local Button = Main:CreateButton({
                Name = "Blue Gui",
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/VaniaPerets/FolderGui-FolderHub/main/loader.lua", true))()
                    Rayfield:Notify({
                        Title = "Notification",
                        Content = "Blue Gui is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })
            
            local Button = Main:CreateButton({
                Name = "Vynixius",
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Doors/Script.lua"))()
                    Rayfield:Notify({
                        Title = "Notification",
                        Content = "Vynixius is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

            local Button = Main:CreateButton({
                Name = "Crimson Hub",
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/toosiwhip/statue/main/crimsonhub-statue.lua"))()
                    Rayfield:Notify({
                        Title = "Notification",
                        Content = "Crimson Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

            local Button = Main:CreateButton({
                Name = "Dxrk hub",
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/CreepyPSC/dxrkhub/main/doors-scripts/hub-source"))()
                    Rayfield:Notify({
                        Title = "Notification",
                        Content = "Dxrk hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

            local Button = Main:CreateButton({
                Name = "MS hub",
                Callback = function()
                    loadstring(game:HttpGet(("https://raw.githubusercontent.com/mstudio45/MSDOORS/main/MSHUB_Loader.lua"),true))()
                    Rayfield:Notify({
                        Title = "Notification",
                        Content = "MS hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

        -- Destroy UI

            local MainSection = Main:CreateSection("Click to destroy UI")
            local Button = Main:CreateButton({
                Name = "Destroy UI",
                Interact = 'Button',
                Callback = function()
                    Rayfield:Destroy()
                end,
            })

    elseif game.PlaceId == 3351674303 then -- Driving Empire
        local Window = Rayfield:CreateWindow({
            Name = "Gnoh Script Hub (v1.6b) | Driving Empire",
            LoadingTitle = "Gnoh Script Hub",
            LoadingSubtitle = "Please Join The Discord If You Need Help!",
            ConfigurationSaving = {
                Enabled = false,
                FolderName = nil, -- Create a custom folder for your hub/game
                FileName = "Gnoh Hub"
            },
            Discord = {
                Enabled = true,
                Invite = "ghhzFtbNsh", -- The Discord invite code, do not include discord.gg/
                RememberJoins = fasle -- Set this to false to make them join the discord every time they load it up
            },
            KeySystem = false, -- Set this to true to use our key system
            KeySettings = {
                Title = "Gnoh Script Hub",
                Subtitle = "Key System",
                Note = "Join the discord to get key (discord.gg/ghhzFtbNsh)",
                FileName = "GnohKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
                SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
                GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
                Key = {"https://raw.githubusercontent.com/chauhong11/a/main/b"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
            }
        })
    
        -- Information

            local Information = Window:CreateTab("Information")
            local Paragraph = Information:CreateParagraph({Title = "Welcome to Gnoh Script Hub!",Content = "This hub currently has 80 games and 600+ scripts running."})
            local Paragraph = Information:CreateParagraph({Title = "Credits to everyone", Content = ""})
            local Paragraph = Information:CreateParagraph({Title = "Press K to hide/show GUI", Content = ""})
            local Button = Information:CreateButton({
                Name = "Please Join Discord If You Need Help! (click to copy)",
                Callback = function()
                    setclipboard('https://discord.gg/ghhzFtbNsh')
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Link is copy (paste it to your website or discord)",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

        -- Supported Games

            local Games = Window:CreateTab("Supported Games")
            local Dropdown = Games:CreateDropdown({
                Name = "80 games",
                Options = {"[+1] Blocks Every Second","[+1] Jump Every Second","[+1] Per Second","Adopt Me","Anime Adventures","Anime Champions Simulator","Anime Fighter Simulator","Anime Fighting Simulator X","Anime Fruit Simulator",
                "Anime Souls Simulator","Anime Weapon Simulator","Arm Wrestle Simulator","Bee Swarm Simulator","Blade Ball","Blox Fruits","Brookhaven RP","Build A Boat For Treasure","Car Dealership Tycoon","Car Factory Tycoon!",
                "Clicker Simulator","Combat Warriors","Da Hood","DOORS","Driving Empire","Every Second You Get +1 Damage","Every Second You Get +1 Health","Every Second You Get +1 Jump Power","Every Second You Get +1 Walkspeed",
                "Fly Race","Fruit Battlegrounds","Grand Piece Online","IQ Wars Simulator","Jailbreak","King Legacy","Mad City","Military Tycoon","Murder Mystery 2","Ninja Fighting Simulator",
                "Pet Simulator X!","Pickaxe Mining Simulator","Pixel Piece","Race Clicker","Shindo Life 2","Smoothie Factory Tycoon","Super Hero Tycoon","Super Power Fighting Simulator","Sword Fighters Simulator",
                "The Strongest Battlegrounds","The Survival Game","Ultra Power Tycoon"
            },
                CurrentOption = {"Click to show supported game"},
                MultipleOptions = false,
                Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
                Callback = function(Option)
                -- The function that takes place when the selected option is changed
                -- The variable (Option) is a string for the value that the dropdown was changed to
                end,
            })
            
        local GamesSection = Games:CreateSection("Changelog")
        local Paragraph = Games:CreateParagraph({Title = "10/16/2023", Content = "[=] Fix key system icon"})
        local Paragraph = Games:CreateParagraph({Title = "10/15/2023", Content = "[+] NEW KEY SYSTEM V2\n[+] PREMIUM COMING SOON\n[+] I forgot to note what I updated, but I updated over 20 new scripts"})
        local Paragraph = Games:CreateParagraph({Title = "10/13/2023", Content = "[+] Obby But You're on a Bike\n[=] Fix Toilet Tower Defense and Haze Piece not show up GUI"})
        local Paragraph = Games:CreateParagraph({Title = "10/11/2023", Content = "[+] Toilet Tower Defense"})
        local Paragraph = Games:CreateParagraph({Title = "10/7/2023", Content = "[=] Add Key System again\n[=] Update: Haze Piece, Anime Champions Simulator and Blade Ball (3 new scripts)"})
        
        -- Main

            local Main = Window:CreateTab("Main")
            local MainSection = Main:CreateSection("Click to execute!")

            local Button = Main:CreateButton({
                Name = "Midnight Racing Hub",
                Callback = function()
                    loadstring(game:HttpGetAsync'https://raw.githubusercontent.com/GXNATION/Main-script/main/Main%20hub')();
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Midnight Racing Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

            local Button = Main:CreateButton({
                Name = "Soggyware",
                Callback = function()
                    loadstring(game:HttpGet("https://soggy-ware.cf"))()
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Soggyware is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

            local Button = Main:CreateButton({
                Name = "V.G Hub",
                Callback = function()
                    loadstring(game:HttpGet('https://raw.githubusercontent.com/1201for/V.G-Hub/main/V.Ghub'))()
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "V.G Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

            local Button = Main:CreateButton({
                Name = "Pearl",
                Callback = function()
                    loadstring(game:HttpGet('https://ppearl.vercel.app'))()
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Pearl is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

            local Button = Main:CreateButton({
                Name = "Rip Hub",
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/CasperFlyModz/discord.gg-rips/main/DrivingEmpire.lua"))()
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Rip Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

            local Button = Main:CreateButton({
                Name = "Aero Hub",
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/aerocontentdeliverynetwork/3456465f7453x447r76h86856233423645756354b/master/loader.lua"))()
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Aero Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

        -- Destroy UI

            local MainSection = Main:CreateSection("Click to destroy UI")
            local Button = Main:CreateButton({
                Name = "Destroy UI",
                Interact = 'Button',
                Callback = function()
                    Rayfield:Destroy()
                end,
            })

    elseif game.PlaceId == 11495558803 then -- Every Second You Get +1 Damage
        local Window = Rayfield:CreateWindow({
            Name = "Gnoh Script Hub (v1.6b) | Every Second You Get +1 Damage",
            LoadingTitle = "Gnoh Script Hub",
            LoadingSubtitle = "Please Join The Discord If You Need Help!",
            ConfigurationSaving = {
            Enabled = false,
            FolderName = nil, -- Create a custom folder for your hub/game
            FileName = "Gnoh Hub"
            },
            Discord = {
                Enabled = true,
                Invite = "ghhzFtbNsh", -- The Discord invite code, do not include discord.gg/
                RememberJoins = fasle -- Set this to false to make them join the discord every time they load it up
            },
            KeySystem = false, -- Set this to true to use our key system
            KeySettings = {
                Title = "Gnoh Script Hub",
                Subtitle = "Key System",
                Note = "Join the discord to get key (discord.gg/ghhzFtbNsh)",
                FileName = "GnohKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
                SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
                GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
                Key = {"https://raw.githubusercontent.com/chauhong11/a/main/b"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
            }
        })
    
    -- Information
    
        local Information = Window:CreateTab("Information")
        local Paragraph = Information:CreateParagraph({Title = "Welcome to Gnoh Script Hub!",Content = "This hub currently has 80 games and 600+ scripts running."})
        local Paragraph = Information:CreateParagraph({Title = "Credits to everyone", Content = ""})
        local Paragraph = Information:CreateParagraph({Title = "Press K to hide/show GUI", Content = ""})
        local Button = Information:CreateButton({
            Name = "Please Join Discord If You Need Help! (click to copy)",
            Callback = function()
            setclipboard('https://discord.gg/ghhzFtbNsh')
            Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Link is copy (paste it to your website or discord)",
                    Duration = 3,
                    Image = 12139846581,
            })
            end,
        })
    
    -- Supported Games
    
        local Games = Window:CreateTab("Supported Games")
        local Dropdown = Games:CreateDropdown({
            Name = "80 games",
            Options = {"[+1] Blocks Every Second","[+1] Jump Every Second","[+1] Per Second","Adopt Me","Anime Adventures","Anime Champions Simulator","Anime Fighter Simulator","Anime Fighting Simulator X","Anime Fruit Simulator",
            "Anime Souls Simulator","Anime Weapon Simulator","Arm Wrestle Simulator","Bee Swarm Simulator","Blade Ball","Blox Fruits","Brookhaven RP","Build A Boat For Treasure","Car Dealership Tycoon","Car Factory Tycoon!",
            "Clicker Simulator","Combat Warriors","Da Hood","DOORS","Driving Empire","Every Second You Get +1 Damage","Every Second You Get +1 Health","Every Second You Get +1 Jump Power","Every Second You Get +1 Walkspeed",
            "Fly Race","Fruit Battlegrounds","Grand Piece Online","IQ Wars Simulator","Jailbreak","King Legacy","Mad City","Military Tycoon","Murder Mystery 2","Ninja Fighting Simulator",
            "Pet Simulator X!","Pickaxe Mining Simulator","Pixel Piece","Race Clicker","Shindo Life 2","Smoothie Factory Tycoon","Super Hero Tycoon","Super Power Fighting Simulator","Sword Fighters Simulator",
            "The Strongest Battlegrounds","The Survival Game","Ultra Power Tycoon"
        },
            CurrentOption = {"Click to show supported game"},
            MultipleOptions = false,
            Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
            Callback = function(Option)
            -- The function that takes place when the selected option is changed
            -- The variable (Option) is a string for the value that the dropdown was changed to
            end,
        })
    
        local GamesSection = Games:CreateSection("Changelog")
        local Paragraph = Games:CreateParagraph({Title = "10/16/2023", Content = "[=] Fix key system icon"})
        local Paragraph = Games:CreateParagraph({Title = "10/15/2023", Content = "[+] NEW KEY SYSTEM V2\n[+] PREMIUM COMING SOON\n[+] I forgot to note what I updated, but I updated over 20 new scripts"})
        local Paragraph = Games:CreateParagraph({Title = "10/13/2023", Content = "[+] Obby But You're on a Bike\n[=] Fix Toilet Tower Defense and Haze Piece not show up GUI"})
        local Paragraph = Games:CreateParagraph({Title = "10/11/2023", Content = "[+] Toilet Tower Defense"})
        local Paragraph = Games:CreateParagraph({Title = "10/7/2023", Content = "[=] Add Key System again\n[=] Update: Haze Piece, Anime Champions Simulator and Blade Ball (3 new scripts)"})
        
        
    
    -- Main
    
        local Main = Window:CreateTab("Main")
        local MainSection = Main:CreateSection("Click to execute!")
    
        local Button = Main:CreateButton({
            Name = "EsohaSL Gui",
            Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/itsnoctural/Utilities/main/Closed/Every%20Second%20You%20Get%20%2B1%20Damage.lua",true))()
            Rayfield:Notify({ -- Notification
                Title = "Notification",
                Content = "EsohaSL Gui is execute!",
                Duration = 3,
                Image = 12139846581,
            })
            end,
        })
    
    -- Destroy UI
    
        local MainSection = Main:CreateSection("Click to destroy UI")
        local Button = Main:CreateButton({
            Name = "Destroy UI",
            Interact = 'Button',
            Callback = function()
                Rayfield:Destroy()
            end,
            })

    elseif game.PlaceId == 11302865934 then -- Every Second You Get +1 Health
        local Window = Rayfield:CreateWindow({
            Name = "Gnoh Script Hub (v1.6b) | Every Second You Get +1 Health",
            LoadingTitle = "Gnoh Script Hub",
            LoadingSubtitle = "Please Join The Discord If You Need Help!",
            ConfigurationSaving = {
                Enabled = false,
                FolderName = nil, -- Create a custom folder for your hub/game
                FileName = "Gnoh Hub"
            },
            Discord = {
                Enabled = true,
                Invite = "ghhzFtbNsh", -- The Discord invite code, do not include discord.gg/
                RememberJoins = fasle -- Set this to false to make them join the discord every time they load it up
            },
            KeySystem = false, -- Set this to true to use our key system
            KeySettings = {
                Title = "Gnoh Script Hub",
                Subtitle = "Key System",
                Note = "Join the discord to get key (discord.gg/ghhzFtbNsh)",
                FileName = "GnohKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
                SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
                GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
                Key = {"https://raw.githubusercontent.com/chauhong11/a/main/b"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
            }
        })
    
        -- Information

            local Information = Window:CreateTab("Information")
            local Paragraph = Information:CreateParagraph({Title = "Welcome to Gnoh Script Hub!",Content = "This hub currently has 80 games and 600+ scripts running."})
            local Paragraph = Information:CreateParagraph({Title = "Credits to everyone", Content = ""})
            local Paragraph = Information:CreateParagraph({Title = "Press K to hide/show GUI", Content = ""})
            local Button = Information:CreateButton({
                Name = "Please Join Discord If You Need Help! (click to copy)",
                Callback = function()
                    setclipboard('https://discord.gg/ghhzFtbNsh')
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Link is copy (paste it to your website or discord)",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

        -- Supported Games

            local Games = Window:CreateTab("Supported Games")
            local Dropdown = Games:CreateDropdown({
                Name = "80 games",
                Options = {"[+1] Blocks Every Second","[+1] Jump Every Second","[+1] Per Second","Adopt Me","Anime Adventures","Anime Champions Simulator","Anime Fighter Simulator","Anime Fighting Simulator X","Anime Fruit Simulator",
                "Anime Souls Simulator","Anime Weapon Simulator","Arm Wrestle Simulator","Bee Swarm Simulator","Blade Ball","Blox Fruits","Brookhaven RP","Build A Boat For Treasure","Car Dealership Tycoon","Car Factory Tycoon!",
                "Clicker Simulator","Combat Warriors","Da Hood","DOORS","Driving Empire","Every Second You Get +1 Damage","Every Second You Get +1 Health","Every Second You Get +1 Jump Power","Every Second You Get +1 Walkspeed",
                "Fly Race","Fruit Battlegrounds","Grand Piece Online","IQ Wars Simulator","Jailbreak","King Legacy","Mad City","Military Tycoon","Murder Mystery 2","Ninja Fighting Simulator",
                "Pet Simulator X!","Pickaxe Mining Simulator","Pixel Piece","Race Clicker","Shindo Life 2","Smoothie Factory Tycoon","Super Hero Tycoon","Super Power Fighting Simulator","Sword Fighters Simulator",
                "The Strongest Battlegrounds","The Survival Game","Ultra Power Tycoon"
            },
                CurrentOption = {"Click to show supported game"},
                MultipleOptions = false,
                Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
                Callback = function(Option)
                -- The function that takes place when the selected option is changed
                -- The variable (Option) is a string for the value that the dropdown was changed to
                end,
            })

        local GamesSection = Games:CreateSection("Changelog")
        local Paragraph = Games:CreateParagraph({Title = "10/16/2023", Content = "[=] Fix key system icon"})
        local Paragraph = Games:CreateParagraph({Title = "10/15/2023", Content = "[+] NEW KEY SYSTEM V2\n[+] PREMIUM COMING SOON\n[+] I forgot to note what I updated, but I updated over 20 new scripts"})
        local Paragraph = Games:CreateParagraph({Title = "10/13/2023", Content = "[+] Obby But You're on a Bike\n[=] Fix Toilet Tower Defense and Haze Piece not show up GUI"})
        local Paragraph = Games:CreateParagraph({Title = "10/11/2023", Content = "[+] Toilet Tower Defense"})
        local Paragraph = Games:CreateParagraph({Title = "10/7/2023", Content = "[=] Add Key System again\n[=] Update: Haze Piece, Anime Champions Simulator and Blade Ball (3 new scripts)"})
            
            

        -- Main

            local Main = Window:CreateTab("Main")
            local MainSection = Main:CreateSection("Click to execute!")

            local Button = Main:CreateButton({
                Name = "Tora IsMe Gui",
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe2/ToraIsMe2/main/0%2B1health", true))()
                    Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Tora IsMe Gui is execute!",
                    Duration = 3,
                    Image = 12139846581,
                    })
                end,
        })

            local Button = Main:CreateButton({
                Name = "Rip Hub",
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/CasperFlyModz/discord.gg-rips/main/EverySecondYouGet1Health.lua"))()
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Rip Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

        -- Destroy UI

            local MainSection = Main:CreateSection("Click to destroy UI")
            local Button = Main:CreateButton({
                Name = "Destroy UI",
                Interact = 'Button',
                Callback = function()
                    Rayfield:Destroy()
                end,
            })

    elseif game.PlaceId == 11063612131 then -- Every Second You Get +1 Jump Power
        local Window = Rayfield:CreateWindow({
            Name = "Gnoh Script Hub (v1.6b) | Every Second You Get +1 Jump Power",
            LoadingTitle = "Gnoh Script Hub",
            LoadingSubtitle = "Please Join The Discord If You Need Help!",
            ConfigurationSaving = {
            Enabled = false,
            FolderName = nil, -- Create a custom folder for your hub/game
            FileName = "Gnoh Hub"
            },
            Discord = {
                Enabled = true,
                Invite = "ghhzFtbNsh", -- The Discord invite code, do not include discord.gg/
                RememberJoins = fasle -- Set this to false to make them join the discord every time they load it up
            },
            KeySystem = false, -- Set this to true to use our key system
            KeySettings = {
                Title = "Gnoh Script Hub",
                Subtitle = "Key System",
                Note = "Join the discord to get key (discord.gg/ghhzFtbNsh)",
                FileName = "GnohKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
                SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
                GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
                Key = {"https://raw.githubusercontent.com/chauhong11/a/main/b"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
            }
        })
    
    -- Information
    
        local Information = Window:CreateTab("Information")
        local Paragraph = Information:CreateParagraph({Title = "Welcome to Gnoh Script Hub!",Content = "This hub currently has 80 games and 600+ scripts running."})
        local Paragraph = Information:CreateParagraph({Title = "Credits to everyone", Content = ""})
        local Paragraph = Information:CreateParagraph({Title = "Press K to hide/show GUI", Content = ""})
        local Button = Information:CreateButton({
            Name = "Please Join Discord If You Need Help! (click to copy)",
            Callback = function()
            setclipboard('https://discord.gg/ghhzFtbNsh')
            Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Link is copy (paste it to your website or discord)",
                    Duration = 3,
                    Image = 12139846581,
            })
            end,
        })
    
    -- Supported Games
    
        local Games = Window:CreateTab("Supported Games")
        local Dropdown = Games:CreateDropdown({
            Name = "80 games",
            Options = {"[+1] Blocks Every Second","[+1] Jump Every Second","[+1] Per Second","Adopt Me","Anime Adventures","Anime Champions Simulator","Anime Fighter Simulator","Anime Fighting Simulator X","Anime Fruit Simulator",
            "Anime Souls Simulator","Anime Weapon Simulator","Arm Wrestle Simulator","Bee Swarm Simulator","Blade Ball","Blox Fruits","Brookhaven RP","Build A Boat For Treasure","Car Dealership Tycoon","Car Factory Tycoon!",
            "Clicker Simulator","Combat Warriors","Da Hood","DOORS","Driving Empire","Every Second You Get +1 Damage","Every Second You Get +1 Health","Every Second You Get +1 Jump Power","Every Second You Get +1 Walkspeed",
            "Fly Race","Fruit Battlegrounds","Grand Piece Online","IQ Wars Simulator","Jailbreak","King Legacy","Mad City","Military Tycoon","Murder Mystery 2","Ninja Fighting Simulator",
            "Pet Simulator X!","Pickaxe Mining Simulator","Pixel Piece","Race Clicker","Shindo Life 2","Smoothie Factory Tycoon","Super Hero Tycoon","Super Power Fighting Simulator","Sword Fighters Simulator",
            "The Strongest Battlegrounds","The Survival Game","Ultra Power Tycoon"
        },
            CurrentOption = {"Click to show supported game"},
            MultipleOptions = false,
            Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
            Callback = function(Option)
            -- The function that takes place when the selected option is changed
            -- The variable (Option) is a string for the value that the dropdown was changed to
            end,
        })
    
        local GamesSection = Games:CreateSection("Changelog")
        local Paragraph = Games:CreateParagraph({Title = "10/16/2023", Content = "[=] Fix key system icon"})
        local Paragraph = Games:CreateParagraph({Title = "10/15/2023", Content = "[+] NEW KEY SYSTEM V2\n[+] PREMIUM COMING SOON\n[+] I forgot to note what I updated, but I updated over 20 new scripts"})
        local Paragraph = Games:CreateParagraph({Title = "10/13/2023", Content = "[+] Obby But You're on a Bike\n[=] Fix Toilet Tower Defense and Haze Piece not show up GUI"})
        local Paragraph = Games:CreateParagraph({Title = "10/11/2023", Content = "[+] Toilet Tower Defense"})
        local Paragraph = Games:CreateParagraph({Title = "10/7/2023", Content = "[=] Add Key System again\n[=] Update: Haze Piece, Anime Champions Simulator and Blade Ball (3 new scripts)"})
        
        
    
    -- Main
    
        local Main = Window:CreateTab("Main")
        local MainSection = Main:CreateSection("Click to execute!")
    
        local Button = Main:CreateButton({
            Name = "Auto Farm",
            Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Gnoh11/single-script/main/Every%20Second%20You%20Get%20%2B1%20Jump%20Power"))()
            Rayfield:Notify({ -- Notification
                Title = "Notification",
                Content = "Auto Farm is execute!",
                Duration = 3,
                Image = 12139846581,
            })
            end,
        })
    
    -- Destroy UI
    
        local MainSection = Main:CreateSection("Click to destroy UI")
        local Button = Main:CreateButton({
            Name = "Destroy UI",
            Interact = 'Button',
            Callback = function()
                Rayfield:Destroy()
            end,
            })

    elseif game.PlaceId == 12742233841 then -- Every Second You Get +1 Walkspeed
        local Window = Rayfield:CreateWindow({
            Name = "Gnoh Script Hub (v1.6b) | Every Second You Get +1 Walkspeed",
            LoadingTitle = "Gnoh Script Hub",
            LoadingSubtitle = "Please Join The Discord If You Need Help!",
            ConfigurationSaving = {
                Enabled = false,
                FolderName = nil, -- Create a custom folder for your hub/game
                FileName = "Gnoh Hub"
            },
            Discord = {
                Enabled = true,
                Invite = "ghhzFtbNsh", -- The Discord invite code, do not include discord.gg/
                RememberJoins = fasle -- Set this to false to make them join the discord every time they load it up
            },
            KeySystem = false, -- Set this to true to use our key system
            KeySettings = {
                Title = "Gnoh Script Hub",
                Subtitle = "Key System",
                Note = "Join the discord to get key (discord.gg/ghhzFtbNsh)",
                FileName = "GnohKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
                SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
                GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
                Key = {"https://raw.githubusercontent.com/chauhong11/a/main/b"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
            }
        })

        -- Information

            local Information = Window:CreateTab("Information")
            local Paragraph = Information:CreateParagraph({Title = "Welcome to Gnoh Script Hub!",Content = "This hub currently has 80 games and 600+ scripts running."})
            local Paragraph = Information:CreateParagraph({Title = "Credits to everyone", Content = ""})
            local Paragraph = Information:CreateParagraph({Title = "Press K to hide/show GUI", Content = ""})
            local Button = Information:CreateButton({
                Name = "Please Join Discord If You Need Help! (click to copy)",
                Callback = function()
                    setclipboard('https://discord.gg/ghhzFtbNsh')
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Link is copy (paste it to your website or discord)",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

        -- Supported Games

            local Games = Window:CreateTab("Supported Games")
            local Dropdown = Games:CreateDropdown({
                Name = "80 games",
                Options = {"[+1] Blocks Every Second","[+1] Jump Every Second","[+1] Per Second","Adopt Me","Anime Adventures","Anime Champions Simulator","Anime Fighter Simulator","Anime Fighting Simulator X","Anime Fruit Simulator",
                "Anime Souls Simulator","Anime Weapon Simulator","Arm Wrestle Simulator","Bee Swarm Simulator","Blade Ball","Blox Fruits","Brookhaven RP","Build A Boat For Treasure","Car Dealership Tycoon","Car Factory Tycoon!",
                "Clicker Simulator","Combat Warriors","Da Hood","DOORS","Driving Empire","Every Second You Get +1 Damage","Every Second You Get +1 Health","Every Second You Get +1 Jump Power","Every Second You Get +1 Walkspeed",
                "Fly Race","Fruit Battlegrounds","Grand Piece Online","IQ Wars Simulator","Jailbreak","King Legacy","Mad City","Military Tycoon","Murder Mystery 2","Ninja Fighting Simulator",
                "Pet Simulator X!","Pickaxe Mining Simulator","Pixel Piece","Race Clicker","Shindo Life 2","Smoothie Factory Tycoon","Super Hero Tycoon","Super Power Fighting Simulator","Sword Fighters Simulator",
                "The Strongest Battlegrounds","The Survival Game","Ultra Power Tycoon"
            },
                CurrentOption = {"Click to show supported game"},
                MultipleOptions = false,
                Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
                Callback = function(Option)
                -- The function that takes place when the selected option is changed
                -- The variable (Option) is a string for the value that the dropdown was changed to
                end,
            })

        local GamesSection = Games:CreateSection("Changelog")
        local Paragraph = Games:CreateParagraph({Title = "10/16/2023", Content = "[=] Fix key system icon"})
        local Paragraph = Games:CreateParagraph({Title = "10/15/2023", Content = "[+] NEW KEY SYSTEM V2\n[+] PREMIUM COMING SOON\n[+] I forgot to note what I updated, but I updated over 20 new scripts"})
        local Paragraph = Games:CreateParagraph({Title = "10/13/2023", Content = "[+] Obby But You're on a Bike\n[=] Fix Toilet Tower Defense and Haze Piece not show up GUI"})
        local Paragraph = Games:CreateParagraph({Title = "10/11/2023", Content = "[+] Toilet Tower Defense"})
        local Paragraph = Games:CreateParagraph({Title = "10/7/2023", Content = "[=] Add Key System again\n[=] Update: Haze Piece, Anime Champions Simulator and Blade Ball (3 new scripts)"})
            
            

        -- Main

            local Main = Window:CreateTab("Main")
            local MainSection = Main:CreateSection("Click to execute!")
                
                local Button = Main:CreateButton({
                    Name = "Ln Hub",
                    Callback = function()
                        loadstring(game:HttpGet('https://raw.githubusercontent.com/No6No6No7yt/Lumin-Hub/main/%5BFREE%20LIMITED%5D%20Every%20Second%20You%20Get%20%2B1%20WalkSpeed'))()
                        Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Ln Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                        })
                    end,
                })
                
        -- Destroy UI

        local MainSection = Main:CreateSection("Click to destroy UI")
        local Button = Main:CreateButton({
                Name = "Destroy UI",
                Interact = 'Button',
                Callback = function()
                    Rayfield:Destroy()
                end,
            })

    elseif game.PlaceId == 6679968919 then -- Fly Race!
        local Window = Rayfield:CreateWindow({
            Name = "Gnoh Script Hub (v1.6b) | Fly Race!",
            LoadingTitle = "Gnoh Script Hub",
            LoadingSubtitle = "Please Join The Discord If You Need Help!",
            ConfigurationSaving = {
                Enabled = false,
                FolderName = nil, -- Create a custom folder for your hub/game
                FileName = "Gnoh Hub"
            },
            Discord = {
                Enabled = true,
                Invite = "ghhzFtbNsh", -- The Discord invite code, do not include discord.gg/
                RememberJoins = fasle -- Set this to false to make them join the discord every time they load it up
            },
            KeySystem = false, -- Set this to true to use our key system
            KeySettings = {
                Title = "Gnoh Script Hub",
                Subtitle = "Key System",
                Note = "Join the discord to get key (discord.gg/ghhzFtbNsh)",
                FileName = "GnohKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
                SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
                GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
                Key = {"https://raw.githubusercontent.com/chauhong11/a/main/b"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
            }
        })
    
        -- Information

            local Information = Window:CreateTab("Information")
            local Paragraph = Information:CreateParagraph({Title = "Welcome to Gnoh Script Hub!",Content = "This hub currently has 80 games and 600+ scripts running."})
            local Paragraph = Information:CreateParagraph({Title = "Credits to everyone", Content = ""})
            local Paragraph = Information:CreateParagraph({Title = "Press K to hide/show GUI", Content = ""})
            local Button = Information:CreateButton({
                Name = "Please Join Discord If You Need Help! (click to copy)",
                Callback = function()
                    setclipboard('https://discord.gg/ghhzFtbNsh')
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Link is copy (paste it to your website or discord)",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

        -- Supported Games

        local Games = Window:CreateTab("Supported Games")
        local Dropdown = Games:CreateDropdown({
            Name = "80 games",
            Options = {"[+1] Blocks Every Second","[+1] Jump Every Second","[+1] Per Second","Adopt Me","Anime Adventures","Anime Champions Simulator","Anime Fighter Simulator","Anime Fighting Simulator X","Anime Fruit Simulator",
            "Anime Souls Simulator","Anime Weapon Simulator","Arm Wrestle Simulator","Bee Swarm Simulator","Blade Ball","Blox Fruits","Brookhaven RP","Build A Boat For Treasure","Car Dealership Tycoon","Car Factory Tycoon!",
            "Clicker Simulator","Combat Warriors","Da Hood","DOORS","Driving Empire","Every Second You Get +1 Damage","Every Second You Get +1 Health","Every Second You Get +1 Jump Power","Every Second You Get +1 Walkspeed",
            "Fly Race","Fruit Battlegrounds","Grand Piece Online","IQ Wars Simulator","Jailbreak","King Legacy","Mad City","Military Tycoon","Murder Mystery 2","Ninja Fighting Simulator",
            "Pet Simulator X!","Pickaxe Mining Simulator","Pixel Piece","Race Clicker","Shindo Life 2","Smoothie Factory Tycoon","Super Hero Tycoon","Super Power Fighting Simulator","Sword Fighters Simulator",
            "The Strongest Battlegrounds","The Survival Game","Ultra Power Tycoon"
        },
            CurrentOption = {"Click to show supported game"},
            MultipleOptions = false,
            Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
            Callback = function(Option)
            -- The function that takes place when the selected option is changed
            -- The variable (Option) is a string for the value that the dropdown was changed to
            end,
        })

        local GamesSection = Games:CreateSection("Changelog")
        local Paragraph = Games:CreateParagraph({Title = "10/16/2023", Content = "[=] Fix key system icon"})
        local Paragraph = Games:CreateParagraph({Title = "10/15/2023", Content = "[+] NEW KEY SYSTEM V2\n[+] PREMIUM COMING SOON\n[+] I forgot to note what I updated, but I updated over 20 new scripts"})
        local Paragraph = Games:CreateParagraph({Title = "10/13/2023", Content = "[+] Obby But You're on a Bike\n[=] Fix Toilet Tower Defense and Haze Piece not show up GUI"})
        local Paragraph = Games:CreateParagraph({Title = "10/11/2023", Content = "[+] Toilet Tower Defense"})
        local Paragraph = Games:CreateParagraph({Title = "10/7/2023", Content = "[=] Add Key System again\n[=] Update: Haze Piece, Anime Champions Simulator and Blade Ball (3 new scripts)"})
        
        

        -- Main

            local Main = Window:CreateTab("Main")
            local MainSection = Main:CreateSection("Click to execute!")

            local Button = Main:CreateButton({
                Name = "V.G Hub",
                Callback = function()
                    loadstring(game:HttpGet('https://raw.githubusercontent.com/1201for/V.G-Hub/main/V.Ghub'))()
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "V.G Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

            local Button = Main:CreateButton({
                Name = "Xdeformedbread Gui",
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/xdeformedbread/My-Scripts/main/loadstring",true))()
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Xdeformedbread Gui is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

        -- Destroy UI

            local MainSection = Main:CreateSection("Click to destroy UI")
            local Button = Main:CreateButton({
                Name = "Destroy UI",
                Interact = 'Button',
                Callback = function()
                    Rayfield:Destroy()
                end,
            })

    elseif game.PlaceId == 9224601490 then -- Fruit Battlegrounds
        local Window = Rayfield:CreateWindow({
            Name = "Gnoh Script Hub (v1.6b) | Fruit Battlegrounds",
            LoadingTitle = "Gnoh Script Hub",
            LoadingSubtitle = "Please Join The Discord If You Need Help!",
            ConfigurationSaving = {
                Enabled = false,
                FolderName = nil, -- Create a custom folder for your hub/game
                FileName = "Gnoh Hub"
            },
            Discord = {
                Enabled = true,
                Invite = "ghhzFtbNsh", -- The Discord invite code, do not include discord.gg/
                RememberJoins = fasle -- Set this to false to make them join the discord every time they load it up
            },
            KeySystem = false, -- Set this to true to use our key system
            KeySettings = {
                Title = "Gnoh Script Hub",
                Subtitle = "Key System",
                Note = "Join the discord to get key (discord.gg/ghhzFtbNsh)",
                FileName = "GnohKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
                SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
                GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
                Key = {"https://raw.githubusercontent.com/chauhong11/a/main/b"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
            }
        })

        -- Information

            local Information = Window:CreateTab("Information")
            local Paragraph = Information:CreateParagraph({Title = "Welcome to Gnoh Script Hub!",Content = "This hub currently has 80 games and 600+ scripts running."})
            local Paragraph = Information:CreateParagraph({Title = "Credits to everyone", Content = ""})
            local Paragraph = Information:CreateParagraph({Title = "Press K to hide/show GUI", Content = ""})
            local Button = Information:CreateButton({
                Name = "Please Join Discord If You Need Help! (click to copy)",
                Callback = function()
                    setclipboard('https://discord.gg/ghhzFtbNsh')
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Link is copy (paste it to your website or discord)",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

        -- Supported Games

        local Games = Window:CreateTab("Supported Games")
        local Dropdown = Games:CreateDropdown({
            Name = "80 games",
            Options = {"[+1] Blocks Every Second","[+1] Jump Every Second","[+1] Per Second","Adopt Me","Anime Adventures","Anime Champions Simulator","Anime Fighter Simulator","Anime Fighting Simulator X","Anime Fruit Simulator",
            "Anime Souls Simulator","Anime Weapon Simulator","Arm Wrestle Simulator","Bee Swarm Simulator","Blade Ball","Blox Fruits","Brookhaven RP","Build A Boat For Treasure","Car Dealership Tycoon","Car Factory Tycoon!",
            "Clicker Simulator","Combat Warriors","Da Hood","DOORS","Driving Empire","Every Second You Get +1 Damage","Every Second You Get +1 Health","Every Second You Get +1 Jump Power","Every Second You Get +1 Walkspeed",
            "Fly Race","Fruit Battlegrounds","Grand Piece Online","IQ Wars Simulator","Jailbreak","King Legacy","Mad City","Military Tycoon","Murder Mystery 2","Ninja Fighting Simulator",
            "Pet Simulator X!","Pickaxe Mining Simulator","Pixel Piece","Race Clicker","Shindo Life 2","Smoothie Factory Tycoon","Super Hero Tycoon","Super Power Fighting Simulator","Sword Fighters Simulator",
            "The Strongest Battlegrounds","The Survival Game","Ultra Power Tycoon"
        },
            CurrentOption = {"Click to show supported game"},
            MultipleOptions = false,
            Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
            Callback = function(Option)
            -- The function that takes place when the selected option is changed
            -- The variable (Option) is a string for the value that the dropdown was changed to
            end,
        })

        local GamesSection = Games:CreateSection("Changelog")
        local Paragraph = Games:CreateParagraph({Title = "10/16/2023", Content = "[=] Fix key system icon"})
        local Paragraph = Games:CreateParagraph({Title = "10/15/2023", Content = "[+] NEW KEY SYSTEM V2\n[+] PREMIUM COMING SOON\n[+] I forgot to note what I updated, but I updated over 20 new scripts"})
        local Paragraph = Games:CreateParagraph({Title = "10/13/2023", Content = "[+] Obby But You're on a Bike\n[=] Fix Toilet Tower Defense and Haze Piece not show up GUI"})
        local Paragraph = Games:CreateParagraph({Title = "10/11/2023", Content = "[+] Toilet Tower Defense"})
        local Paragraph = Games:CreateParagraph({Title = "10/7/2023", Content = "[=] Add Key System again\n[=] Update: Haze Piece, Anime Champions Simulator and Blade Ball (3 new scripts)"})
        
        

        -- Main

            local Main = Window:CreateTab("Main")
            local MainSection = Main:CreateSection("Click to execute!")
                
                local Button = Main:CreateButton({
                    Name = "Jumble Hub",
                    Callback = function()
                        loadstring(game:HttpGet("https://raw.githubusercontent.com/JumbleBumble/Scripts/main/FruitBattlegrounds.lua"))()
                        Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Jumble Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                        })
                    end,
                })

                local Button = Main:CreateButton({
                    Name = "Winnable Hub",
                    Callback = function()
                        loadstring(game:HttpGet("https://raw.githubusercontent.com/xlostpexz/FBBBBBBBBBBBBBBBBBBBBBB/Fps/Loading.lua"))()
                        Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Winnable Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                        })
                    end,
                })
                
                local Button = Main:CreateButton({
                    Name = "Legend Handles Hub",
                    Callback = function()
                        loadstring(game:HttpGet("https://raw.githubusercontent.com/LOLking123456/fruit11/main/Grounds222"))()
                        Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Legend Handles Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                        })
                    end,
                })

                local Button = Main:CreateButton({
                    Name = "Flare Hub",
                    Callback = function()
                        loadstring(game:HttpGet("https://raw.githubusercontent.com/1f0yt/community/master/Flarehubs"))()
                        Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Flare Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                        })
                    end,
                })

                local Button = Main:CreateButton({
                    Name = "PrimeExo Hub",
                    Callback = function()
                        loadstring(game:HttpGet("https://raw.githubusercontent.com/PrimeExoHub/PrimeExo-Hub-Fruit-Battlegrounds-V1/main/script"))()
                        Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "PrimeExo Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                        })
                    end,
                })
                
        -- Destroy UI

        local MainSection = Main:CreateSection("Click to destroy UI")
        local Button = Main:CreateButton({
                Name = "Destroy UI",
                Interact = 'Button',
                Callback = function()
                    Rayfield:Destroy()
                end,
            })

    elseif game.PlaceId == 1730877806 then -- Grand Piece Online
        local Window = Rayfield:CreateWindow({
            Name = "Gnoh Script Hub (v1.6b) | Grand Piece Online",
            LoadingTitle = "Gnoh Script Hub",
            LoadingSubtitle = "Please Join The Discord If You Need Help!",
            ConfigurationSaving = {
                Enabled = false,
                FolderName = nil, -- Create a custom folder for your hub/game
                FileName = "Gnoh Hub"
            },
            Discord = {
                Enabled = true,
                Invite = "ghhzFtbNsh", -- The Discord invite code, do not include discord.gg/
                RememberJoins = fasle -- Set this to false to make them join the discord every time they load it up
            },
            KeySystem = false, -- Set this to true to use our key system
            KeySettings = {
                Title = "Gnoh Script Hub",
                Subtitle = "Key System",
                Note = "Join the discord to get key (discord.gg/ghhzFtbNsh)",
                FileName = "GnohKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
                SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
                GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
                Key = {"https://raw.githubusercontent.com/chauhong11/a/main/b"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
            }
        })

        -- Information

            local Information = Window:CreateTab("Information")
            local Paragraph = Information:CreateParagraph({Title = "Welcome to Gnoh Script Hub!",Content = "This hub currently has 80 games and 600+ scripts running."})
            local Paragraph = Information:CreateParagraph({Title = "Credits to everyone", Content = ""})
            local Paragraph = Information:CreateParagraph({Title = "Press K to hide/show GUI", Content = ""})
            local Button = Information:CreateButton({
                Name = "Please Join Discord If You Need Help! (click to copy)",
                Callback = function()
                    setclipboard('https://discord.gg/ghhzFtbNsh')
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Link is copy (paste it to your website or discord)",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

        -- Supported Games

        local Games = Window:CreateTab("Supported Games")
        local Dropdown = Games:CreateDropdown({
            Name = "80 games",
            Options = {"[+1] Blocks Every Second","[+1] Jump Every Second","[+1] Per Second","Adopt Me","Anime Adventures","Anime Champions Simulator","Anime Fighter Simulator","Anime Fighting Simulator X","Anime Fruit Simulator",
            "Anime Souls Simulator","Anime Weapon Simulator","Arm Wrestle Simulator","Bee Swarm Simulator","Blade Ball","Blox Fruits","Brookhaven RP","Build A Boat For Treasure","Car Dealership Tycoon","Car Factory Tycoon!",
            "Clicker Simulator","Combat Warriors","Da Hood","DOORS","Driving Empire","Every Second You Get +1 Damage","Every Second You Get +1 Health","Every Second You Get +1 Jump Power","Every Second You Get +1 Walkspeed",
            "Fly Race","Fruit Battlegrounds","Grand Piece Online","IQ Wars Simulator","Jailbreak","King Legacy","Mad City","Military Tycoon","Murder Mystery 2","Ninja Fighting Simulator",
            "Pet Simulator X!","Pickaxe Mining Simulator","Pixel Piece","Race Clicker","Shindo Life 2","Smoothie Factory Tycoon","Super Hero Tycoon","Super Power Fighting Simulator","Sword Fighters Simulator",
            "The Strongest Battlegrounds","The Survival Game","Ultra Power Tycoon"
        },
            CurrentOption = {"Click to show supported game"},
            MultipleOptions = false,
            Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
            Callback = function(Option)
            -- The function that takes place when the selected option is changed
            -- The variable (Option) is a string for the value that the dropdown was changed to
            end,
        })

        local GamesSection = Games:CreateSection("Changelog")
        local Paragraph = Games:CreateParagraph({Title = "10/16/2023", Content = "[=] Fix key system icon"})
        local Paragraph = Games:CreateParagraph({Title = "10/15/2023", Content = "[+] NEW KEY SYSTEM V2\n[+] PREMIUM COMING SOON\n[+] I forgot to note what I updated, but I updated over 20 new scripts"})
        local Paragraph = Games:CreateParagraph({Title = "10/13/2023", Content = "[+] Obby But You're on a Bike\n[=] Fix Toilet Tower Defense and Haze Piece not show up GUI"})
        local Paragraph = Games:CreateParagraph({Title = "10/11/2023", Content = "[+] Toilet Tower Defense"})
        local Paragraph = Games:CreateParagraph({Title = "10/7/2023", Content = "[=] Add Key System again\n[=] Update: Haze Piece, Anime Champions Simulator and Blade Ball (3 new scripts)"})
        
        -- Main

            local Main = Window:CreateTab("Main")
            local MainSection = Main:CreateSection("Click to execute!")

                local Button = Main:CreateButton({
                    Name = "Xno Hub (key is copied, just paste)",
                    Callback = function()
                        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/a3b7e5c6a09c14385deaf6d0350929b8.lua"))()
                        setclipboard('ezez082')
                        Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Xno Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                        })
                    end,
                })

                local Button = Main:CreateButton({
                    Name = "Lazer Hub",
                    Callback = function()
                        loadstring(game:HttpGet("https://raw.githubusercontent.com/1f0yt/community/main/lazer"))()
                        Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Lazer Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                        })
                    end,
                })
                
                local Button = Main:CreateButton({
                    Name = "CFA Hub",
                    Callback = function()
                        loadstring(game:HttpGet("https://raw.githubusercontent.com/CFA-HUB/CFA-HUB/main/cfahubfree.lua"))()
                        Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "CFA Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                        })
                    end,
                })

                local Button = Main:CreateButton({
                    Name = "Xtrey10x Hub",
                    Callback = function()
                        loadstring(game:HttpGet("https://raw.githubusercontent.com/xtrey10x/xtrey10x-hub/main/gpofree"))()
                        Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Xtrey10x Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                        })
                    end,
                })
                
        -- Destroy UI

        local MainSection = Main:CreateSection("Click to destroy UI")
        local Button = Main:CreateButton({
                Name = "Destroy UI",
                Interact = 'Button',
                Callback = function()
                    Rayfield:Destroy()
                end,
            })

    elseif game.PlaceId == 6918802270 or game.PlaceId == 14979402479 then -- Haze Piece
        local Window = Rayfield:CreateWindow({
            Name = "Gnoh Script Hub (v1.6b) | Haze Piece",
            LoadingTitle = "Gnoh Script Hub",
            LoadingSubtitle = "Please Join The Discord If You Need Help!",
            ConfigurationSaving = {
                Enabled = false,
                FolderName = nil, -- Create a custom folder for your hub/game
                FileName = "Gnoh Hub"
            },
            Discord = {
                Enabled = true,
                Invite = "ghhzFtbNsh", -- The Discord invite code, do not include discord.gg/
                RememberJoins = fasle -- Set this to false to make them join the discord every time they load it up
            },
            KeySystem = false, -- Set this to true to use our key system
            KeySettings = {
                Title = "Gnoh Script Hub",
                Subtitle = "Key System",
                Note = "Join the discord to get key (discord.gg/ghhzFtbNsh)",
                FileName = "GnohKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
                SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
                GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
                Key = {"https://raw.githubusercontent.com/chauhong11/a/main/b"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
            }
        })

        -- Information

            local Information = Window:CreateTab("Information")
            local Paragraph = Information:CreateParagraph({Title = "Welcome to Gnoh Script Hub!",Content = "This hub currently has 80 games and 600+ scripts running."})
            local Paragraph = Information:CreateParagraph({Title = "Credits to everyone", Content = ""})
            local Paragraph = Information:CreateParagraph({Title = "Press K to hide/show GUI", Content = ""})
            local Button = Information:CreateButton({
                Name = "Please Join Discord If You Need Help! (click to copy)",
                Callback = function()
                    setclipboard('https://discord.gg/ghhzFtbNsh')
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Link is copy (paste it to your website or discord)",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

        -- Supported Games

            local Games = Window:CreateTab("Supported Games")
            local Dropdown = Games:CreateDropdown({
                Name = "80 games",
                Options = {"[+1] Blocks Every Second","[+1] Jump Every Second","[+1] Per Second","Adopt Me","Anime Adventures","Anime Champions Simulator","Anime Fighter Simulator","Anime Fighting Simulator X","Anime Fruit Simulator",
                "Anime Souls Simulator","Anime Weapon Simulator","Arm Wrestle Simulator","Bee Swarm Simulator","Blade Ball","Blox Fruits","Brookhaven RP","Build A Boat For Treasure","Car Dealership Tycoon","Car Factory Tycoon!",
                "Clicker Simulator","Combat Warriors","Da Hood","DOORS","Driving Empire","Every Second You Get +1 Damage","Every Second You Get +1 Health","Every Second You Get +1 Jump Power","Every Second You Get +1 Walkspeed",
                "Fly Race","Fruit Battlegrounds","Grand Piece Online","Haze Piece","IQ Wars Simulator","Jailbreak","King Legacy","Mad City","Military Tycoon","Murder Mystery 2","Ninja Fighting Simulator",
                "Pet Simulator X!","Pickaxe Mining Simulator","Pixel Piece","Race Clicker","Shindo Life 2","Smoothie Factory Tycoon","Super Hero Tycoon","Super Power Fighting Simulator","Sword Fighters Simulator",
                "The Strongest Battlegrounds","The Survival Game","Ultra Power Tycoon"
            },
                CurrentOption = {"Click to show supported game"},
                MultipleOptions = false,
                Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
                Callback = function(Option)
                -- The function that takes place when the selected option is changed
                -- The variable (Option) is a string for the value that the dropdown was changed to
                end,
            })

        local GamesSection = Games:CreateSection("Changelog")
        local Paragraph = Games:CreateParagraph({Title = "10/16/2023", Content = "[=] Fix key system icon"})
        local Paragraph = Games:CreateParagraph({Title = "10/15/2023", Content = "[+] NEW KEY SYSTEM V2\n[+] PREMIUM COMING SOON\n[+] I forgot to note what I updated, but I updated over 20 new scripts"})
        local Paragraph = Games:CreateParagraph({Title = "10/13/2023", Content = "[+] Obby But You're on a Bike\n[=] Fix Toilet Tower Defense and Haze Piece not show up GUI"})
        local Paragraph = Games:CreateParagraph({Title = "10/11/2023", Content = "[+] Toilet Tower Defense"})
        local Paragraph = Games:CreateParagraph({Title = "10/7/2023", Content = "[=] Add Key System again\n[=] Update: Haze Piece, Anime Champions Simulator and Blade Ball (3 new scripts)"})
        
        -- Main

            local Main = Window:CreateTab("Main")
            local MainSection = Main:CreateSection("Click to execute!")
            
            local Button = Main:CreateButton({
                Name = "Fazium Hub",
                Callback = function()
                    repeat wait() until game:IsLoaded()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZaRdoOx/Fazium-files/main/Loader"))()
                    Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Fazium Hub is execute!",
                    Duration = 3,
                    Image = 12139846581,
                    })
                end,
            })

            local Button = Main:CreateButton({
                Name = "Beli Hunter",
                Callback = function()
                    repeat wait() until game:IsLoaded()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/1f0yt/community/main/Belihunter"))()
                    Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Beli Hunter is execute!",
                    Duration = 3,
                    Image = 12139846581,
                    })
                end,
            })

            local Button = Main:CreateButton({
                Name = "Xtrey10X Hub",
                Callback = function()
                    repeat wait() until game:IsLoaded()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/xtrey10x/xtrey10x-hub/main/Haze%20Piece"))()
                    Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Xtrey10X Hub is execute!",
                    Duration = 3,
                    Image = 12139846581,
                    })
                end,
            })

            local Button = Main:CreateButton({
                Name = "PrimeExo Hub",
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/PrimeExoHub/PrimeExo-Hub-Haze-Piece/main/Script"))()
                    Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "PrimeExo Hub is execute!",
                    Duration = 3,
                    Image = 12139846581,
                    })
                end,
            })

            local Button = Main:CreateButton({
                Name = "Hyper Hub",
                Callback = function()
                    repeat wait() until game:IsLoaded()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/DookDekDEE/Hyper/main/script.lua"))()
                    Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Hyper Hub is execute!",
                    Duration = 3,
                    Image = 12139846581,
                    })
                end,
            })
            
            local Button = Main:CreateButton({
                Name = "LHYT Hub",
                Callback = function()
                    repeat wait() until game:IsLoaded()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/LOLking123456/Haze/main/Piece"))()
                    Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "LHYT Hub is execute!",
                    Duration = 3,
                    Image = 12139846581,
                    })
                end,
            })
            
            local Button = Main:CreateButton({
                Name = "Mystic Hub",
                Callback = function()
                    repeat wait() until game:IsLoaded()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/mo061/MysticHub/main/README.md"))()
                    Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Mystic Hub is execute!",
                    Duration = 3,
                    Image = 12139846581,
                    })
                end,
            })

            local Button = Main:CreateButton({
                Name = "Muimi Hub",
                Callback = function()
                    repeat wait() until game:IsLoaded()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/bunny42312/script/main/hazepiece"))()
                    Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Muimi Hub is execute!",
                    Duration = 3,
                    Image = 12139846581,
                    })
                end,
            })
            
        -- Destroy UI

            local MainSection = Main:CreateSection("Click to destroy UI")
            local Button = Main:CreateButton({
                Name = "Destroy UI",
                Interact = 'Button',
                Callback = function()
                    Rayfield:Destroy()
                end,
            })

    elseif game.PlaceId == 13911308778 then -- IQ Wars Simulator
        local Window = Rayfield:CreateWindow({
            Name = "Gnoh Script Hub (v1.6b) | IQ Wars Simulator",
            LoadingTitle = "Gnoh Script Hub",
            LoadingSubtitle = "Please Join The Discord If You Need Help!",
            ConfigurationSaving = {
            Enabled = false,
            FolderName = nil, -- Create a custom folder for your hub/game
            FileName = "Gnoh Hub"
            },
            Discord = {
                Enabled = true,
                Invite = "ghhzFtbNsh", -- The Discord invite code, do not include discord.gg/
                RememberJoins = fasle -- Set this to false to make them join the discord every time they load it up
            },
            KeySystem = false, -- Set this to true to use our key system
            KeySettings = {
                Title = "Gnoh Script Hub",
                Subtitle = "Key System",
                Note = "Join the discord to get key (discord.gg/ghhzFtbNsh)",
                FileName = "GnohKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
                SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
                GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
                Key = {"https://raw.githubusercontent.com/chauhong11/a/main/b"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
            }
        })
    
    -- Information
    
        local Information = Window:CreateTab("Information")
        local Paragraph = Information:CreateParagraph({Title = "Welcome to Gnoh Script Hub!",Content = "This hub currently has 80 games and 600+ scripts running."})
        local Paragraph = Information:CreateParagraph({Title = "Credits to everyone", Content = ""})
        local Paragraph = Information:CreateParagraph({Title = "Press K to hide/show GUI", Content = ""})
        local Button = Information:CreateButton({
            Name = "Please Join Discord If You Need Help! (click to copy)",
            Callback = function()
            setclipboard('https://discord.gg/ghhzFtbNsh')
            Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Link is copy (paste it to your website or discord)",
                    Duration = 3,
                    Image = 12139846581,
            })
            end,
        })
    
    -- Supported Games
    
        local Games = Window:CreateTab("Supported Games")
        local Dropdown = Games:CreateDropdown({
            Name = "80 games",
            Options = {"[+1] Blocks Every Second","[+1] Jump Every Second","[+1] Per Second","Adopt Me","Anime Adventures","Anime Champions Simulator","Anime Fighter Simulator","Anime Fighting Simulator X","Anime Fruit Simulator",
            "Anime Souls Simulator","Anime Weapon Simulator","Arm Wrestle Simulator","Bee Swarm Simulator","Blade Ball","Blox Fruits","Brookhaven RP","Build A Boat For Treasure","Car Dealership Tycoon","Car Factory Tycoon!",
            "Clicker Simulator","Combat Warriors","Da Hood","DOORS","Driving Empire","Every Second You Get +1 Damage","Every Second You Get +1 Health","Every Second You Get +1 Jump Power","Every Second You Get +1 Walkspeed",
            "Fly Race","Fruit Battlegrounds","Grand Piece Online","IQ Wars Simulator","Jailbreak","King Legacy","Mad City","Military Tycoon","Murder Mystery 2","Ninja Fighting Simulator",
            "Pet Simulator X!","Pickaxe Mining Simulator","Pixel Piece","Race Clicker","Shindo Life 2","Smoothie Factory Tycoon","Super Hero Tycoon","Super Power Fighting Simulator","Sword Fighters Simulator",
            "The Strongest Battlegrounds","The Survival Game","Ultra Power Tycoon"
        },
            CurrentOption = {"Click to show supported game"},
            MultipleOptions = false,
            Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
            Callback = function(Option)
            -- The function that takes place when the selected option is changed
            -- The variable (Option) is a string for the value that the dropdown was changed to
            end,
        })
    
        local GamesSection = Games:CreateSection("Changelog")
        local Paragraph = Games:CreateParagraph({Title = "10/16/2023", Content = "[=] Fix key system icon"})
        local Paragraph = Games:CreateParagraph({Title = "10/15/2023", Content = "[+] NEW KEY SYSTEM V2\n[+] PREMIUM COMING SOON\n[+] I forgot to note what I updated, but I updated over 20 new scripts"})
        local Paragraph = Games:CreateParagraph({Title = "10/13/2023", Content = "[+] Obby But You're on a Bike\n[=] Fix Toilet Tower Defense and Haze Piece not show up GUI"})
        local Paragraph = Games:CreateParagraph({Title = "10/11/2023", Content = "[+] Toilet Tower Defense"})
        local Paragraph = Games:CreateParagraph({Title = "10/7/2023", Content = "[=] Add Key System again\n[=] Update: Haze Piece, Anime Champions Simulator and Blade Ball (3 new scripts)"})
        
    -- Main
    
        local Main = Window:CreateTab("Main")
        local MainSection = Main:CreateSection("Click to execute!")
            
            local Button = Main:CreateButton({
            Name = "Magenta Hub",
            Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/Odrexyo/Script/main/Loader.lua"))()
                Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Magenta Hub is execute!",
                    Duration = 3,
                    Image = 12139846581,
                })
            end,
            })
    
    -- Destroy UI
    
        local MainSection = Main:CreateSection("Click to destroy UI")
        local Button = Main:CreateButton({
            Name = "Destroy UI",
            Interact = 'Button',
            Callback = function()
                Rayfield:Destroy()
            end,
            })

    elseif game.PlaceId == 606849621 then -- Jailbreak
        local Window = Rayfield:CreateWindow({
            Name = "Gnoh Script Hub (v1.6b) | Jailbreak",
            LoadingTitle = "Gnoh Script Hub",
            LoadingSubtitle = "Please Join The Discord If You Need Help!",
            ConfigurationSaving = {
            Enabled = false,
            FolderName = nil, -- Create a custom folder for your hub/game
            FileName = "Gnoh Hub"
            },
            Discord = {
                Enabled = true,
                Invite = "ghhzFtbNsh", -- The Discord invite code, do not include discord.gg/
                RememberJoins = fasle -- Set this to false to make them join the discord every time they load it up
            },
            KeySystem = false, -- Set this to true to use our key system
            KeySettings = {
                Title = "Gnoh Script Hub",
                Subtitle = "Key System",
                Note = "Join the discord to get key (discord.gg/ghhzFtbNsh)",
                FileName = "GnohKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
                SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
                GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
                Key = {"https://raw.githubusercontent.com/chauhong11/a/main/b"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
            }
        })
    
    -- Information
    
        local Information = Window:CreateTab("Information")
        local Paragraph = Information:CreateParagraph({Title = "Welcome to Gnoh Script Hub!",Content = "This hub currently has 80 games and 600+ scripts running."})
        local Paragraph = Information:CreateParagraph({Title = "Credits to everyone", Content = ""})
        local Paragraph = Information:CreateParagraph({Title = "Press K to hide/show GUI", Content = ""})
        local Button = Information:CreateButton({
            Name = "Please Join Discord If You Need Help! (click to copy)",
            Callback = function()
            setclipboard('https://discord.gg/ghhzFtbNsh')
            Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Link is copy (paste it to your website or discord)",
                    Duration = 3,
                    Image = 12139846581,
            })
            end,
        })
    
    -- Supported Games
    
        local Games = Window:CreateTab("Supported Games")
        local Dropdown = Games:CreateDropdown({
            Name = "80 games",
            Options = {"[+1] Blocks Every Second","[+1] Jump Every Second","[+1] Per Second","Adopt Me","Anime Adventures","Anime Champions Simulator","Anime Fighter Simulator","Anime Fighting Simulator X","Anime Fruit Simulator",
            "Anime Souls Simulator","Anime Weapon Simulator","Arm Wrestle Simulator","Bee Swarm Simulator","Blade Ball","Blox Fruits","Brookhaven RP","Build A Boat For Treasure","Car Dealership Tycoon","Car Factory Tycoon!",
            "Clicker Simulator","Combat Warriors","Da Hood","DOORS","Driving Empire","Every Second You Get +1 Damage","Every Second You Get +1 Health","Every Second You Get +1 Jump Power","Every Second You Get +1 Walkspeed",
            "Fly Race","Fruit Battlegrounds","Grand Piece Online","IQ Wars Simulator","Jailbreak","King Legacy","Mad City","Military Tycoon","Murder Mystery 2","Ninja Fighting Simulator",
            "Pet Simulator X!","Pickaxe Mining Simulator","Pixel Piece","Race Clicker","Shindo Life 2","Smoothie Factory Tycoon","Super Hero Tycoon","Super Power Fighting Simulator","Sword Fighters Simulator",
            "The Strongest Battlegrounds","The Survival Game","Ultra Power Tycoon"
        },
            CurrentOption = {"Click to show supported game"},
            MultipleOptions = false,
            Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
            Callback = function(Option)
            -- The function that takes place when the selected option is changed
            -- The variable (Option) is a string for the value that the dropdown was changed to
            end,
        })
    
        local GamesSection = Games:CreateSection("Changelog")
        local Paragraph = Games:CreateParagraph({Title = "10/16/2023", Content = "[=] Fix key system icon"})
        local Paragraph = Games:CreateParagraph({Title = "10/15/2023", Content = "[+] NEW KEY SYSTEM V2\n[+] PREMIUM COMING SOON\n[+] I forgot to note what I updated, but I updated over 20 new scripts"})
        local Paragraph = Games:CreateParagraph({Title = "10/13/2023", Content = "[+] Obby But You're on a Bike\n[=] Fix Toilet Tower Defense and Haze Piece not show up GUI"})
        local Paragraph = Games:CreateParagraph({Title = "10/11/2023", Content = "[+] Toilet Tower Defense"})
        local Paragraph = Games:CreateParagraph({Title = "10/7/2023", Content = "[=] Add Key System again\n[=] Update: Haze Piece, Anime Champions Simulator and Blade Ball (3 new scripts)"})

    -- Main
    
        local Main = Window:CreateTab("Main")
        local MainSection = Main:CreateSection("Click to execute!")
    
        local Button = Main:CreateButton({
            Name = "Auto Rob",
            Callback = function()
            loadstring(game:HttpGet('https://scripts.luawl.com/14245/JailbreakerFree.lua'))()
            Rayfield:Notify({ -- Notification
                Title = "Notification",
                Content = "Auto Rob is execute!",
                Duration = 3,
                Image = 12139846581,
            })
            end,
        })
    
        local Button = Main:CreateButton({
            Name = "Vynixius",
            Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Loader.lua"))()
            Rayfield:Notify({ -- Notification
                Title = "Notification",
                Content = "Vynixius is execute!",
                Duration = 3,
                Image = 12139846581,
            })
            end,
        })
    
        local Button = Main:CreateButton({
            Name = "Veriax",
            Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/KuriWasTaken/Veriax/main/Verisions/1.1/Loader.lua"))()
            Rayfield:Notify({ -- Notification
                Title = "Notification",
                Content = "Veriax is execute!",
                Duration = 3,
                Image = 12139846581,
            })
            end,
        })
    
        local Button = Main:CreateButton({
            Name = "V.G Hub",
            Callback = function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/1201for/V.G-Hub/main/V.Ghub'))()
            Rayfield:Notify({ -- Notification
                Title = "Notification",
                Content = "V.G Hub is execute!",
                Duration = 3,
                Image = 12139846581,
            })
            end,
        })
    
        local Button = Main:CreateButton({
            Name = "Flare Hub",
            Callback = function()
            loadstring(game:HttpGet("https://pastebin.com/raw/GhP3DdKx"))()
            Rayfield:Notify({ -- Notification
                Title = "Notification",
                Content = "Flare Hub is execute!",
                Duration = 3,
                Image = 12139846581,
            })
            end,
        })
    
    -- Danger
        local Danger = Window:CreateTab("Danger")
        local Paragraph = Danger:CreateParagraph({Title = "DO NOT USE ON MAIN ACCOUNT USE ALT ACCOUNT", Content = ""})
        local DangerSection = Danger:CreateSection("Click to execute!")
    
        local Button = Danger:CreateButton({
            Name = "Auto Arrest",
            Callback = function()
            loadstring(game:HttpGet('https://scripts.luawl.com/14387/jailbreakautoarrest.lua'))()
            Rayfield:Notify({ -- Notification
                Title = "Notification",
                Content = "Auto Arrest is execute!",
                Duration = 3,
                Image = 12139846581,
            })
            end,
        })
    
    -- Destroy UI
    
        local MainSection = Main:CreateSection("Click to destroy UI")
        local Button = Main:CreateButton({
            Name = "Destroy UI",
            Interact = 'Button',
            Callback = function()
                Rayfield:Destroy()
            end,
            })

    elseif game.PlaceId == 4520749081 or game.PlaceId == 6381829480 then -- King Legacy
        local Window = Rayfield:CreateWindow({
            Name = "Gnoh Script Hub (v1.6b) | King Legacy",
            LoadingTitle = "Gnoh Script Hub",
            LoadingSubtitle = "Please Join The Discord If You Need Help!",
            ConfigurationSaving = {
            Enabled = false,
            FolderName = nil, -- Create a custom folder for your hub/game
            FileName = "Gnoh Hub"
            },
            Discord = {
                Enabled = true,
                Invite = "ghhzFtbNsh", -- The Discord invite code, do not include discord.gg/
                RememberJoins = fasle -- Set this to false to make them join the discord every time they load it up
            },
            KeySystem = false, -- Set this to true to use our key system
            KeySettings = {
                Title = "Gnoh Script Hub",
                Subtitle = "Key System",
                Note = "Join the discord to get key (discord.gg/ghhzFtbNsh)",
                FileName = "GnohKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
                SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
                GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
                Key = {"https://raw.githubusercontent.com/chauhong11/a/main/b"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
            }
        })
    
    -- Information
    
        local Information = Window:CreateTab("Information")
        local Paragraph = Information:CreateParagraph({Title = "Welcome to Gnoh Script Hub!",Content = "This hub currently has 80 games and 600+ scripts running."})
        local Paragraph = Information:CreateParagraph({Title = "Credits to everyone", Content = ""})
        local Paragraph = Information:CreateParagraph({Title = "Press K to hide/show GUI", Content = ""})
        local Button = Information:CreateButton({
            Name = "Please Join Discord If You Need Help! (click to copy)",
            Callback = function()
            setclipboard('https://discord.gg/ghhzFtbNsh')
            Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Link is copy (paste it to your website or discord)",
                    Duration = 3,
                    Image = 12139846581,
            })
            end,
        })
    
    -- Supported Games
        local Games = Window:CreateTab("Supported Games")
        local Dropdown = Games:CreateDropdown({
            Name = "80 games",
            Options = {"[+1] Blocks Every Second","[+1] Jump Every Second","[+1] Per Second","Adopt Me","Anime Adventures","Anime Champions Simulator","Anime Fighter Simulator","Anime Fighting Simulator X","Anime Fruit Simulator",
            "Anime Souls Simulator","Anime Weapon Simulator","Arm Wrestle Simulator","Bee Swarm Simulator","Blade Ball","Blox Fruits","Brookhaven RP","Build A Boat For Treasure","Car Dealership Tycoon","Car Factory Tycoon!",
            "Clicker Simulator","Combat Warriors","Da Hood","DOORS","Driving Empire","Every Second You Get +1 Damage","Every Second You Get +1 Health","Every Second You Get +1 Jump Power","Every Second You Get +1 Walkspeed",
            "Fly Race","Fruit Battlegrounds","Grand Piece Online","IQ Wars Simulator","Jailbreak","King Legacy","Mad City","Military Tycoon","Murder Mystery 2","Ninja Fighting Simulator",
            "Pet Simulator X!","Pickaxe Mining Simulator","Pixel Piece","Race Clicker","Shindo Life 2","Smoothie Factory Tycoon","Super Hero Tycoon","Super Power Fighting Simulator","Sword Fighters Simulator",
            "The Strongest Battlegrounds","The Survival Game","Ultra Power Tycoon"
        },
            CurrentOption = {"Click to show supported game"},
            MultipleOptions = false,
            Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
            Callback = function(Option)
            -- The function that takes place when the selected option is changed
            -- The variable (Option) is a string for the value that the dropdown was changed to
            end,
        })

        local GamesSection = Games:CreateSection("Changelog")
        local Paragraph = Games:CreateParagraph({Title = "10/16/2023", Content = "[=] Fix key system icon"})
        local Paragraph = Games:CreateParagraph({Title = "10/15/2023", Content = "[+] NEW KEY SYSTEM V2\n[+] PREMIUM COMING SOON\n[+] I forgot to note what I updated, but I updated over 20 new scripts"})
        local Paragraph = Games:CreateParagraph({Title = "10/13/2023", Content = "[+] Obby But You're on a Bike\n[=] Fix Toilet Tower Defense and Haze Piece not show up GUI"})
        local Paragraph = Games:CreateParagraph({Title = "10/11/2023", Content = "[+] Toilet Tower Defense"})
        local Paragraph = Games:CreateParagraph({Title = "10/7/2023", Content = "[=] Add Key System again\n[=] Update: Haze Piece, Anime Champions Simulator and Blade Ball (3 new scripts)"})
        
    -- Main
    
        local Main = Window:CreateTab("Main")
        local MainSection = Main:CreateSection("Click to execute!")
            
            local Button = Main:CreateButton({
            Name = "Quartyz",
            Callback = function()
                loadstring(game:HttpGet"https://raw.githubusercontent.com/xQuartyx/DonateMe/main/ScriptLoader")()
                Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Quartyz is execute!",
                    Duration = 3,
                    Image = 12139846581,
                })
            end,
            })
    
            local Button = Main:CreateButton({
            Name = "Winnable Hub",
            Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/xlostpexz/dasdokasdias/Fps/Loading.lua"))()
                Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Winnable Hub is execute!",
                    Duration = 3,
                    Image = 12139846581,
                })
            end,
            })
    
            local Button = Main:CreateButton({
            Name = "sannin",
            Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/sannin9000/scripts/main/kinglegacy.lua"))()
                Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "sannin is execute!",
                    Duration = 3,
                    Image = 12139846581,
                })
            end,
            })
    
            local Button = Main:CreateButton({
            Name = "Mukuro Hub",
            Callback = function()
                loadstring(game:HttpGet"https://raw.githubusercontent.com/HULKUexe/-mobileMAX-/main/FreeScript.lua")() 
                Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Mukuro Hub is execute!",
                    Duration = 3,
                    Image = 12139846581,
                })
            end,
            })
    
            local Button = Main:CreateButton({
            Name = "Strike Hub",
            Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/Strikehubv2z/StormSKz/main/All_in_one"))()
                Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Strike Hub is execute!",
                    Duration = 3,
                    Image = 12139846581,
                })
            end,
            })
    
            local Button = Main:CreateButton({
                Name = "Hyper",
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/DookDekDEE/Hyper/main/script.lua"))()
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Hyper is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })
    
            local Button = Main:CreateButton({
                Name = "Speed Hub X",
                Callback = function()
                    loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ahmadsgamer2/Speed-Hub-X/main/SpeedHubX"))()
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Speed Hub X is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })
            
            local Button = Main:CreateButton({
                Name = "Zen Hub",
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZenHubTheBest/Main/main/Loader", true))()
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Zen Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })
                
    -- Destroy UI
    
        local MainSection = Main:CreateSection("Click to destroy UI")
        local Button = Main:CreateButton({
            Name = "Destroy UI",
            Interact = 'Button',
            Callback = function()
                Rayfield:Destroy()
            end,
            })

    elseif game.PlaceId == 1224212277 then -- Mad City
        local Window = Rayfield:CreateWindow({
            Name = "Gnoh Script Hub (v1.6b) | Mad City",
            LoadingTitle = "Gnoh Script Hub",
            LoadingSubtitle = "Please Join The Discord If You Need Help!",
            ConfigurationSaving = {
                Enabled = false,
                FolderName = nil, -- Create a custom folder for your hub/game
                FileName = "Gnoh Hub"
            },
            Discord = {
                Enabled = true,
                Invite = "ghhzFtbNsh", -- The Discord invite code, do not include discord.gg/
                RememberJoins = fasle -- Set this to false to make them join the discord every time they load it up
            },
            KeySystem = false, -- Set this to true to use our key system
            KeySettings = {
                Title = "Gnoh Script Hub",
                Subtitle = "Key System",
                Note = "Join the discord to get key (discord.gg/ghhzFtbNsh)",
                FileName = "GnohKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
                SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
                GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
                Key = {"https://raw.githubusercontent.com/chauhong11/a/main/b"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
            }
        })

        -- Information

            local Information = Window:CreateTab("Information")
            local Paragraph = Information:CreateParagraph({Title = "Welcome to Gnoh Script Hub!",Content = "This hub currently has 80 games and 600+ scripts running."})
            local Paragraph = Information:CreateParagraph({Title = "Credits to everyone", Content = ""})
            local Paragraph = Information:CreateParagraph({Title = "Press K to hide/show GUI", Content = ""})
            local Button = Information:CreateButton({
                Name = "Please Join Discord If You Need Help! (click to copy)",
                Callback = function()
                    setclipboard('https://discord.gg/ghhzFtbNsh')
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Link is copy (paste it to your website or discord)",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

        -- Supported Games

        local Games = Window:CreateTab("Supported Games")
        local Dropdown = Games:CreateDropdown({
            Name = "80 games",
            Options = {"[+1] Blocks Every Second","[+1] Jump Every Second","[+1] Per Second","Adopt Me","Anime Adventures","Anime Champions Simulator","Anime Fighter Simulator","Anime Fighting Simulator X","Anime Fruit Simulator",
            "Anime Souls Simulator","Anime Weapon Simulator","Arm Wrestle Simulator","Bee Swarm Simulator","Blade Ball","Blox Fruits","Brookhaven RP","Build A Boat For Treasure","Car Dealership Tycoon","Car Factory Tycoon!",
            "Clicker Simulator","Combat Warriors","Da Hood","DOORS","Driving Empire","Every Second You Get +1 Damage","Every Second You Get +1 Health","Every Second You Get +1 Jump Power","Every Second You Get +1 Walkspeed",
            "Fly Race","Fruit Battlegrounds","Grand Piece Online","IQ Wars Simulator","Jailbreak","King Legacy","Mad City","Military Tycoon","Murder Mystery 2","Ninja Fighting Simulator",
            "Pet Simulator X!","Pickaxe Mining Simulator","Pixel Piece","Race Clicker","Shindo Life 2","Smoothie Factory Tycoon","Super Hero Tycoon","Super Power Fighting Simulator","Sword Fighters Simulator",
            "The Strongest Battlegrounds","The Survival Game","Ultra Power Tycoon"
        },
            CurrentOption = {"Click to show supported game"},
            MultipleOptions = false,
            Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
            Callback = function(Option)
            -- The function that takes place when the selected option is changed
            -- The variable (Option) is a string for the value that the dropdown was changed to
            end,
        })

        local GamesSection = Games:CreateSection("Changelog")
        local Paragraph = Games:CreateParagraph({Title = "10/16/2023", Content = "[=] Fix key system icon"})
        local Paragraph = Games:CreateParagraph({Title = "10/15/2023", Content = "[+] NEW KEY SYSTEM V2\n[+] PREMIUM COMING SOON\n[+] I forgot to note what I updated, but I updated over 20 new scripts"})
        local Paragraph = Games:CreateParagraph({Title = "10/13/2023", Content = "[+] Obby But You're on a Bike\n[=] Fix Toilet Tower Defense and Haze Piece not show up GUI"})
        local Paragraph = Games:CreateParagraph({Title = "10/11/2023", Content = "[+] Toilet Tower Defense"})
        local Paragraph = Games:CreateParagraph({Title = "10/7/2023", Content = "[=] Add Key System again\n[=] Update: Haze Piece, Anime Champions Simulator and Blade Ball (3 new scripts)"})

        -- Main

            local Main = Window:CreateTab("Main")
            local MainSection = Main:CreateSection("Click to execute!")

            local Button = Main:CreateButton({
                Name = "Ruby Hub",
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/Deni210/madcity/main/Ruby%20Hub%20v1.3", true))()
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Ruby Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

            local Button = Main:CreateButton({
                Name = "Black Gui",
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/Marco8642/science/main/mad%20city%20v2", true))()
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Black Gui is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

            local Button = Main:CreateButton({
                Name = "Mad City X Gui",
                Callback = function()
                    loadstring(game:GetObjects("rbxassetid://4851272498")[1].Source)()
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Mad City X Gui is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

        -- Destroy UI

            local MainSection = Main:CreateSection("Click to destroy UI")
            local Button = Main:CreateButton({
                Name = "Destroy UI",
                Interact = 'Button',
                Callback = function()
                    Rayfield:Destroy()
                end,
            })

    elseif game.PlaceId == 7180042682 then -- Military Tycoon
        local Window = Rayfield:CreateWindow({
            Name = "Gnoh Script Hub (v1.6b) | Military Tycoon",
            LoadingTitle = "Gnoh Script Hub",
            LoadingSubtitle = "Please Join The Discord If You Need Help!",
            ConfigurationSaving = {
                Enabled = false,
                FolderName = nil, -- Create a custom folder for your hub/game
                FileName = "Gnoh Hub"
            },
            Discord = {
                Enabled = true,
                Invite = "ghhzFtbNsh", -- The Discord invite code, do not include discord.gg/
                RememberJoins = fasle -- Set this to false to make them join the discord every time they load it up
            },
            KeySystem = false, -- Set this to true to use our key system
            KeySettings = {
                Title = "Gnoh Script Hub",
                Subtitle = "Key System",
                Note = "Join the discord to get key (discord.gg/ghhzFtbNsh)",
                FileName = "GnohKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
                SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
                GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
                Key = {"https://raw.githubusercontent.com/chauhong11/a/main/b"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
            }
        })
    
        -- Information

            local Information = Window:CreateTab("Information")
            local Paragraph = Information:CreateParagraph({Title = "Welcome to Gnoh Script Hub!",Content = "This hub currently has 80 games and 600+ scripts running."})
            local Paragraph = Information:CreateParagraph({Title = "Credits to everyone", Content = ""})
            local Paragraph = Information:CreateParagraph({Title = "Press K to hide/show GUI", Content = ""})
            local Button = Information:CreateButton({
                Name = "Please Join Discord If You Need Help! (click to copy)",
                Callback = function()
                    setclipboard('https://discord.gg/ghhzFtbNsh')
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Link is copy (paste it to your website or discord)",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

        -- Supported Games

        local Games = Window:CreateTab("Supported Games")
        local Dropdown = Games:CreateDropdown({
            Name = "80 games",
            Options = {"[+1] Blocks Every Second","[+1] Jump Every Second","[+1] Per Second","Adopt Me","Anime Adventures","Anime Champions Simulator","Anime Fighter Simulator","Anime Fighting Simulator X","Anime Fruit Simulator",
            "Anime Souls Simulator","Anime Weapon Simulator","Arm Wrestle Simulator","Bee Swarm Simulator","Blade Ball","Blox Fruits","Brookhaven RP","Build A Boat For Treasure","Car Dealership Tycoon","Car Factory Tycoon!",
            "Clicker Simulator","Combat Warriors","Da Hood","DOORS","Driving Empire","Every Second You Get +1 Damage","Every Second You Get +1 Health","Every Second You Get +1 Jump Power","Every Second You Get +1 Walkspeed",
            "Fly Race","Fruit Battlegrounds","Grand Piece Online","IQ Wars Simulator","Jailbreak","King Legacy","Mad City","Military Tycoon","Murder Mystery 2","Ninja Fighting Simulator",
            "Pet Simulator X!","Pickaxe Mining Simulator","Pixel Piece","Race Clicker","Shindo Life 2","Smoothie Factory Tycoon","Super Hero Tycoon","Super Power Fighting Simulator","Sword Fighters Simulator",
            "The Strongest Battlegrounds","The Survival Game","Ultra Power Tycoon"
        },
            CurrentOption = {"Click to show supported game"},
            MultipleOptions = false,
            Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
            Callback = function(Option)
            -- The function that takes place when the selected option is changed
            -- The variable (Option) is a string for the value that the dropdown was changed to
            end,
        })

        local GamesSection = Games:CreateSection("Changelog")
        local Paragraph = Games:CreateParagraph({Title = "10/16/2023", Content = "[=] Fix key system icon"})
        local Paragraph = Games:CreateParagraph({Title = "10/15/2023", Content = "[+] NEW KEY SYSTEM V2\n[+] PREMIUM COMING SOON\n[+] I forgot to note what I updated, but I updated over 20 new scripts"})
        local Paragraph = Games:CreateParagraph({Title = "10/13/2023", Content = "[+] Obby But You're on a Bike\n[=] Fix Toilet Tower Defense and Haze Piece not show up GUI"})
        local Paragraph = Games:CreateParagraph({Title = "10/11/2023", Content = "[+] Toilet Tower Defense"})
        local Paragraph = Games:CreateParagraph({Title = "10/7/2023", Content = "[=] Add Key System again\n[=] Update: Haze Piece, Anime Champions Simulator and Blade Ball (3 new scripts)"})

        -- Main

            local Main = Window:CreateTab("Main")
            local MainSection = Main:CreateSection("Click to execute!")

            local Button = Main:CreateButton({
                Name = "Dragon Slayer Hub",
                Callback = function()
                    loadstring(game:HttpGet"https://raw.githubusercontent.com/thedragonslayer2/Key-System/main/Load.lua")()
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Dragon Slayer Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

            local Button = Main:CreateButton({
                Name = "Zen X",
                Callback = function()
                    loadstring(game:HttpGet('https://raw.githubusercontent.com/laderite/zenx/main/scripts/Military_Tycoon.lua'))()
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Zen X is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

            local Button = Main:CreateButton({
                Name = "Oopss Hub",
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/OopssSorry/OopssHub/main/Loader.lua"))()
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Oopss Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

        -- Destroy UI

            local MainSection = Main:CreateSection("Click to destroy UI")
            local Button = Main:CreateButton({
                Name = "Destroy UI",
                Interact = 'Button',
                Callback = function()
                    Rayfield:Destroy()
                end,
            })

    elseif game.PlaceId == 142823291 then -- Murder Mystery 2
        local Window = Rayfield:CreateWindow({
            Name = "Gnoh Script Hub (v1.6b) | Murder Mystery 2",
            LoadingTitle = "Gnoh Script Hub",
            LoadingSubtitle = "Please Join The Discord If You Need Help!",
            ConfigurationSaving = {
            Enabled = false,
            FolderName = nil, -- Create a custom folder for your hub/game
            FileName = "Gnoh Hub"
            },
            Discord = {
                Enabled = true,
                Invite = "ghhzFtbNsh", -- The Discord invite code, do not include discord.gg/
                RememberJoins = fasle -- Set this to false to make them join the discord every time they load it up
            },
            KeySystem = false, -- Set this to true to use our key system
            KeySettings = {
                Title = "Gnoh Script Hub",
                Subtitle = "Key System",
                Note = "Join the discord to get key (discord.gg/ghhzFtbNsh)",
                FileName = "GnohKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
                SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
                GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
                Key = {"https://raw.githubusercontent.com/chauhong11/a/main/b"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
            }
        })
    
    -- Information
    
        local Information = Window:CreateTab("Information")
        local Paragraph = Information:CreateParagraph({Title = "Welcome to Gnoh Script Hub!",Content = "This hub currently has 80 games and 600+ scripts running."})
        local Paragraph = Information:CreateParagraph({Title = "Credits to everyone", Content = ""})
        local Paragraph = Information:CreateParagraph({Title = "Press K to hide/show GUI", Content = ""})
        local Button = Information:CreateButton({
            Name = "Please Join Discord If You Need Help! (click to copy)",
            Callback = function()
            setclipboard('https://discord.gg/ghhzFtbNsh')
            Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Link is copy (paste it to your website or discord)",
                    Duration = 3,
                    Image = 12139846581,
            })
            end,
    })
    
    -- Supported Games
    
        local Games = Window:CreateTab("Supported Games")
        local Dropdown = Games:CreateDropdown({
            Name = "80 games",
            Options = {"[+1] Blocks Every Second","[+1] Jump Every Second","[+1] Per Second","Adopt Me","Anime Adventures","Anime Champions Simulator","Anime Fighter Simulator","Anime Fighting Simulator X","Anime Fruit Simulator",
            "Anime Souls Simulator","Anime Weapon Simulator","Arm Wrestle Simulator","Bee Swarm Simulator","Blade Ball","Blox Fruits","Brookhaven RP","Build A Boat For Treasure","Car Dealership Tycoon","Car Factory Tycoon!",
            "Clicker Simulator","Combat Warriors","Da Hood","DOORS","Driving Empire","Every Second You Get +1 Damage","Every Second You Get +1 Health","Every Second You Get +1 Jump Power","Every Second You Get +1 Walkspeed",
            "Fly Race","Fruit Battlegrounds","Grand Piece Online","IQ Wars Simulator","Jailbreak","King Legacy","Mad City","Military Tycoon","Murder Mystery 2","Ninja Fighting Simulator",
            "Pet Simulator X!","Pickaxe Mining Simulator","Pixel Piece","Race Clicker","Shindo Life 2","Smoothie Factory Tycoon","Super Hero Tycoon","Super Power Fighting Simulator","Sword Fighters Simulator",
            "The Strongest Battlegrounds","The Survival Game","Ultra Power Tycoon"
        },
            CurrentOption = {"Click to show supported game"},
            MultipleOptions = false,
            Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
            Callback = function(Option)
            -- The function that takes place when the selected option is changed
            -- The variable (Option) is a string for the value that the dropdown was changed to
            end,
        })
    
        local GamesSection = Games:CreateSection("Changelog")
        local Paragraph = Games:CreateParagraph({Title = "10/16/2023", Content = "[=] Fix key system icon"})
        local Paragraph = Games:CreateParagraph({Title = "10/15/2023", Content = "[+] NEW KEY SYSTEM V2\n[+] PREMIUM COMING SOON\n[+] I forgot to note what I updated, but I updated over 20 new scripts"})
        local Paragraph = Games:CreateParagraph({Title = "10/13/2023", Content = "[+] Obby But You're on a Bike\n[=] Fix Toilet Tower Defense and Haze Piece not show up GUI"})
        local Paragraph = Games:CreateParagraph({Title = "10/11/2023", Content = "[+] Toilet Tower Defense"})
        local Paragraph = Games:CreateParagraph({Title = "10/7/2023", Content = "[=] Add Key System again\n[=] Update: Haze Piece, Anime Champions Simulator and Blade Ball (3 new scripts)"})
        
    -- Main
    
        local Main = Window:CreateTab("Main")
        local MainSection = Main:CreateSection("Click to execute!")
    
        local Button = Main:CreateButton({
            Name = "Eclipse Hub",
            Callback = function()
            getgenv().mainKey = "nil" local a,b,c,d,e=loadstring,request or http_request or (http and http.request) or (syn and syn.request),assert,tostring,"https://api.eclipsehub.xyz/auth"c(a and b,"Executor not Supported")a(b({Url=e.."\?\107e\121\61"..d(mainKey),Headers={["User-Agent"]="Eclipse"}}).Body)()
            Rayfield:Notify({ -- Notification
                Title = "Notification",
                Content = "Eclipse Hub is execute!",
                Duration = 3,
                Image = 12139846581,
            })
            end,
        })
    
        local Button = Main:CreateButton({
            Name = "Yax",
            Callback = function()
            loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Drifter0507/GUIS/main/MURDER%20MYSTERY%202", true))();
            Rayfield:Notify({ -- Notification
                Title = "Notification",
                Content = "Yax is execute!",
                Duration = 3,
                Image = 12139846581,
            })
            end,
        })
    
        local Button = Main:CreateButton({
            Name = "V.G Hub",
            Callback = function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/1201for/V.G-Hub/main/V.Ghub'))()
            Rayfield:Notify({ -- Notification
                Title = "Notification",
                Content = "V.G Hub is execute!",
                Duration = 3,
                Image = 12139846581,
            })
            end,
        })
    
    -- Destroy UI
    
        local MainSection = Main:CreateSection("Click to destroy UI")
        local Button = Main:CreateButton({
            Name = "Destroy UI",
            Interact = 'Button',
            Callback = function()
                Rayfield:Destroy()
            end,
            })

    elseif game.PlaceId == 13999740606 then -- Ninja Fighting Simulator
        local Window = Rayfield:CreateWindow({
            Name = "Gnoh Script Hub (v1.6b) | Ninja Fighting Simulator",
            LoadingTitle = "Gnoh Script Hub",
            LoadingSubtitle = "Please Join The Discord If You Need Help!",
            ConfigurationSaving = {
                Enabled = false,
                FolderName = nil, -- Create a custom folder for your hub/game
                FileName = "Gnoh Hub"
            },
            Discord = {
                Enabled = true,
                Invite = "ghhzFtbNsh", -- The Discord invite code, do not include discord.gg/
                RememberJoins = fasle -- Set this to false to make them join the discord every time they load it up
            },
            KeySystem = false, -- Set this to true to use our key system
            KeySettings = {
                Title = "Gnoh Script Hub",
                Subtitle = "Key System",
                Note = "Join the discord to get key (discord.gg/ghhzFtbNsh)",
                FileName = "GnohKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
                SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
                GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
                Key = {"https://raw.githubusercontent.com/chauhong11/a/main/b"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
            }
        })

        -- Information

            local Information = Window:CreateTab("Information")
            local Paragraph = Information:CreateParagraph({Title = "Welcome to Gnoh Script Hub!",Content = "This hub currently has 80 games and 600+ scripts running."})
            local Paragraph = Information:CreateParagraph({Title = "Credits to everyone", Content = ""})
            local Paragraph = Information:CreateParagraph({Title = "Press K to hide/show GUI", Content = ""})
            local Button = Information:CreateButton({
                Name = "Please Join Discord If You Need Help! (click to copy)",
                Callback = function()
                    setclipboard('https://discord.gg/ghhzFtbNsh')
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Link is copy (paste it to your website or discord)",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

        -- Supported Games

            local Games = Window:CreateTab("Supported Games")
            local Dropdown = Games:CreateDropdown({
                Name = "80 games",
                Options = {"[+1] Blocks Every Second","[+1] Jump Every Second","[+1] Per Second","Adopt Me","Anime Adventures","Anime Champions Simulator","Anime Fighter Simulator","Anime Fighting Simulator X","Anime Fruit Simulator",
                "Anime Souls Simulator","Anime Weapon Simulator","Arm Wrestle Simulator","Bee Swarm Simulator","Blade Ball","Blox Fruits","Brookhaven RP","Build A Boat For Treasure","Car Dealership Tycoon","Car Factory Tycoon!",
                "Clicker Simulator","Combat Warriors","Da Hood","DOORS","Driving Empire","Every Second You Get +1 Damage","Every Second You Get +1 Health","Every Second You Get +1 Jump Power","Every Second You Get +1 Walkspeed",
                "Fly Race","Fruit Battlegrounds","Grand Piece Online","IQ Wars Simulator","Jailbreak","King Legacy","Mad City","Military Tycoon","Murder Mystery 2","Ninja Fighting Simulator",
                "Pet Simulator X!","Pickaxe Mining Simulator","Pixel Piece","Race Clicker","Shindo Life 2","Smoothie Factory Tycoon","Super Hero Tycoon","Super Power Fighting Simulator","Sword Fighters Simulator",
                "The Strongest Battlegrounds","The Survival Game","Ultra Power Tycoon"
            },
                CurrentOption = {"Click to show supported game"},
                MultipleOptions = false,
                Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
                Callback = function(Option)
                -- The function that takes place when the selected option is changed
                -- The variable (Option) is a string for the value that the dropdown was changed to
                end,
            })

        local GamesSection = Games:CreateSection("Changelog")
        local Paragraph = Games:CreateParagraph({Title = "10/16/2023", Content = "[=] Fix key system icon"})
        local Paragraph = Games:CreateParagraph({Title = "10/15/2023", Content = "[+] NEW KEY SYSTEM V2\n[+] PREMIUM COMING SOON\n[+] I forgot to note what I updated, but I updated over 20 new scripts"})
        local Paragraph = Games:CreateParagraph({Title = "10/13/2023", Content = "[+] Obby But You're on a Bike\n[=] Fix Toilet Tower Defense and Haze Piece not show up GUI"})
        local Paragraph = Games:CreateParagraph({Title = "10/11/2023", Content = "[+] Toilet Tower Defense"})
        local Paragraph = Games:CreateParagraph({Title = "10/7/2023", Content = "[=] Add Key System again\n[=] Update: Haze Piece, Anime Champions Simulator and Blade Ball (3 new scripts)"})

        -- Main

            local Main = Window:CreateTab("Main")
            local MainSection = Main:CreateSection("Click to execute!")
                
                local Button = Main:CreateButton({
                    Name = "Tora Hub",
                    Callback = function()
                        loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0Ninja"))()
                        Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Tora Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                        })
                    end,
                })

                local Button = Main:CreateButton({
                    Name = "Legend Handles Hub",
                    Callback = function()
                        loadstring(game:HttpGet("https://raw.githubusercontent.com/LOLking123456/Ninja/main/FightSim"))()
                        Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Legend Handles Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                        })
                    end,
                })

        -- Destroy UI

            local MainSection = Main:CreateSection("Click to destroy UI")
            local Button = Main:CreateButton({
                    Name = "Destroy UI",
                    Interact = 'Button',
                    Callback = function()
                        Rayfield:Destroy()
                    end,
                })

    elseif game.PlaceId == 6284583030 or game.PlaceId == 10321372166 or game.PlaceId == 7722306047 then -- Pet Simulator X
        local Window = Rayfield:CreateWindow({
            Name = "Gnoh Script Hub (v1.6b) | Pet Simulator X",
            LoadingTitle = "Gnoh Script Hub",
            LoadingSubtitle = "Please Join The Discord If You Need Help!",
            ConfigurationSaving = {
            Enabled = false,
            FolderName = nil, -- Create a custom folder for your hub/game
            FileName = "Gnoh Hub"
            },
            Discord = {
                Enabled = true,
                Invite = "ghhzFtbNsh", -- The Discord invite code, do not include discord.gg/
                RememberJoins = fasle -- Set this to false to make them join the discord every time they load it up
            },
            KeySystem = false, -- Set this to true to use our key system
            KeySettings = {
                Title = "Gnoh Script Hub",
                Subtitle = "Key System",
                Note = "Join the discord to get key (discord.gg/ghhzFtbNsh)",
                FileName = "GnohKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
                SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
                GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
                Key = {"https://raw.githubusercontent.com/chauhong11/a/main/b"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
            }
        })
    
    -- Information
    
        local Information = Window:CreateTab("Information")
        local Paragraph = Information:CreateParagraph({Title = "Welcome to Gnoh Script Hub!",Content = "This hub currently has 80 games and 600+ scripts running."})
        local Paragraph = Information:CreateParagraph({Title = "Credits to everyone", Content = ""})
        local Paragraph = Information:CreateParagraph({Title = "Press K to hide/show GUI", Content = ""})
        local Button = Information:CreateButton({
            Name = "Please Join Discord If You Need Help! (click to copy)",
            Callback = function()
            setclipboard('https://discord.gg/ghhzFtbNsh')
            Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Link is copy (paste it to your website or discord)",
                    Duration = 3,
                    Image = 12139846581,
            })
            end,
        })
    
    -- Supported Games
    
        local Games = Window:CreateTab("Supported Games")
        local Dropdown = Games:CreateDropdown({
            Name = "80 games",
            Options = {"[+1] Blocks Every Second","[+1] Jump Every Second","[+1] Per Second","Adopt Me","Anime Adventures","Anime Champions Simulator","Anime Fighter Simulator","Anime Fighting Simulator X","Anime Fruit Simulator",
            "Anime Souls Simulator","Anime Weapon Simulator","Arm Wrestle Simulator","Bee Swarm Simulator","Blade Ball","Blox Fruits","Brookhaven RP","Build A Boat For Treasure","Car Dealership Tycoon","Car Factory Tycoon!",
            "Clicker Simulator","Combat Warriors","Da Hood","DOORS","Driving Empire","Every Second You Get +1 Damage","Every Second You Get +1 Health","Every Second You Get +1 Jump Power","Every Second You Get +1 Walkspeed",
            "Fly Race","Fruit Battlegrounds","Grand Piece Online","IQ Wars Simulator","Jailbreak","King Legacy","Mad City","Military Tycoon","Murder Mystery 2","Ninja Fighting Simulator",
            "Pet Simulator X!","Pickaxe Mining Simulator","Pixel Piece","Race Clicker","Shindo Life 2","Smoothie Factory Tycoon","Super Hero Tycoon","Super Power Fighting Simulator","Sword Fighters Simulator",
            "The Strongest Battlegrounds","The Survival Game","Ultra Power Tycoon"
        },
            CurrentOption = {"Click to show supported game"},
            MultipleOptions = false,
            Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
            Callback = function(Option)
            -- The function that takes place when the selected option is changed
            -- The variable (Option) is a string for the value that the dropdown was changed to
            end,
        })
    
        local GamesSection = Games:CreateSection("Changelog")
        local Paragraph = Games:CreateParagraph({Title = "10/16/2023", Content = "[=] Fix key system icon"})
        local Paragraph = Games:CreateParagraph({Title = "10/15/2023", Content = "[+] NEW KEY SYSTEM V2\n[+] PREMIUM COMING SOON\n[+] I forgot to note what I updated, but I updated over 20 new scripts"})
        local Paragraph = Games:CreateParagraph({Title = "10/13/2023", Content = "[+] Obby But You're on a Bike\n[=] Fix Toilet Tower Defense and Haze Piece not show up GUI"})
        local Paragraph = Games:CreateParagraph({Title = "10/11/2023", Content = "[+] Toilet Tower Defense"})
        local Paragraph = Games:CreateParagraph({Title = "10/7/2023", Content = "[=] Add Key System again\n[=] Update: Haze Piece, Anime Champions Simulator and Blade Ball (3 new scripts)"})
        
    -- Main
    
        local Main = Window:CreateTab("Main")
        local MainSection = Main:CreateSection("Click to execute!")
    
        local Button = Main:CreateButton({
            Name = "Project WD",
            Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Muhammad6196/Project-WD/main/Main.lua"))()
            Rayfield:Notify({
                Title = "Notification",
                Content = "Project WD is execute!",
                Duration = 3,
                Image = 12139846581,
            })
            end,
        })
        local Button = Main:CreateButton({
            Name = "Jmes",
            Callback = function()
            loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/jmesfo0/RobloxScripts/main/psx-jmes.lua"))()
            Rayfield:Notify({
                Title = "Notification",
                Content = "Jmes is execute!",
                Duration = 3,
                Image = 12139846581,
            })
            end,
        })
        local Button = Main:CreateButton({
            Name = "Catalyst Gui",
            Callback = function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/destylol/catalyst/itachi/main.lua'))()
            Rayfield:Notify({
                Title = "Notification",
                Content = "Catalyst Gui is execute!",
                Duration = 3,
                Image = 12139846581,
            })
            end,
        })
        local Button = Main:CreateButton({
            Name = "Milk Up",
            Callback = function()
            loadstring(game:HttpGet("https://milkup.info/script/PetSimulatorX/"))()
            Rayfield:Notify({
                Title = "Notification",
                Content = "Milk Up is execute!",
                Duration = 3,
                Image = 12139846581,
            })
            end,
        })
    
        local Button = Main:CreateButton({
            Name = "Cipex Up",
            Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/cipex-rbx/cipex/main/loader.lua"))()
            Rayfield:Notify({
                Title = "Notification",
                Content = "Cipex Up is execute!",
                Duration = 3,
                Image = 12139846581,
            })
            end,
        })
    
        local Button = Main:CreateButton({
            Name = "Blacktrap",
            Callback = function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/S4nZz/bt_project/main/Games/BlacktrapScript.txt'))()
            Rayfield:Notify({
                Title = "Notification",
                Content = "Blacktrap is execute!",
                Duration = 3,
                Image = 12139846581,
            })
            end,
        })
    
        local Button = Main:CreateButton({
            Name = "Cloud Hub",
            Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/BadScripters/CloudHub/main/hub"))()
            Rayfield:Notify({
                Title = "Notification",
                Content = "Cloud Hub is execute!",
                Duration = 3,
                Image = 12139846581,
            })
            end,
        })
    
        local Button = Main:CreateButton({
            Name = "Zeerox Hub",
            Callback = function()
            loadstring(game:HttpGet'https://raw.githubusercontent.com/RunDTM/ZeeroxHub/main/Loader.lua')()
            Rayfield:Notify({
                Title = "Notification",
                Content = "Zeerox Hub is execute!",
                Duration = 3,
                Image = 12139846581,
            })
            end,
        })
    
        local Button = Main:CreateButton({
            Name = "QwiX Hub",
            Callback = function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/TSQ-new/QwiX_PSX/main/PSX_SCRIPT'))()
            Rayfield:Notify({
                Title = "Notification",
                Content = "QwiX Hub is execute!",
                Duration = 3,
                Image = 12139846581,
            })
            end,
        })
        
    -- Destroy UI
    
        local MainSection = Main:CreateSection("Click to destroy UI")
        local Button = Main:CreateButton({
            Name = "Destroy UI",
            Interact = 'Button',
            Callback = function()
                Rayfield:Destroy()
            end,
            })

    elseif game.PlaceId == 10821317529 then -- Pickaxe Mining Simulator
        local Window = Rayfield:CreateWindow({
            Name = "Gnoh Script Hub (v1.6b) | Pickaxe Mining Simulator",
            LoadingTitle = "Gnoh Script Hub",
            LoadingSubtitle = "Please Join The Discord If You Need Help!",
            ConfigurationSaving = {
            Enabled = false,
            FolderName = nil, -- Create a custom folder for your hub/game
            FileName = "Gnoh Hub"
            },
            Discord = {
                Enabled = true,
                Invite = "ghhzFtbNsh", -- The Discord invite code, do not include discord.gg/
                RememberJoins = fasle -- Set this to false to make them join the discord every time they load it up
            },
            KeySystem = false, -- Set this to true to use our key system
            KeySettings = {
                Title = "Gnoh Script Hub",
                Subtitle = "Key System",
                Note = "Join the discord to get key (discord.gg/ghhzFtbNsh)",
                FileName = "GnohKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
                SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
                GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
                Key = {"https://raw.githubusercontent.com/chauhong11/a/main/b"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
            }
        })
    
    -- Information
    
        local Information = Window:CreateTab("Information")
        local Paragraph = Information:CreateParagraph({Title = "Welcome to Gnoh Script Hub!",Content = "This hub currently has 80 games and 600+ scripts running."})
        local Paragraph = Information:CreateParagraph({Title = "Credits to everyone", Content = ""})
        local Paragraph = Information:CreateParagraph({Title = "Press K to hide/show GUI", Content = ""})
        local Button = Information:CreateButton({
            Name = "Please Join Discord If You Need Help! (click to copy)",
            Callback = function()
            setclipboard('https://discord.gg/ghhzFtbNsh')
            Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Link is copy (paste it to your website or discord)",
                    Duration = 3,
                    Image = 12139846581,
            })
            end,
        })
    
    -- Supported Games
    
        local Games = Window:CreateTab("Supported Games")
        local Dropdown = Games:CreateDropdown({
            Name = "80 games",
            Options = {"[+1] Blocks Every Second","[+1] Jump Every Second","[+1] Per Second","Adopt Me","Anime Adventures","Anime Champions Simulator","Anime Fighter Simulator","Anime Fighting Simulator X","Anime Fruit Simulator",
            "Anime Souls Simulator","Anime Weapon Simulator","Arm Wrestle Simulator","Bee Swarm Simulator","Blade Ball","Blox Fruits","Brookhaven RP","Build A Boat For Treasure","Car Dealership Tycoon","Car Factory Tycoon!",
            "Clicker Simulator","Combat Warriors","Da Hood","DOORS","Driving Empire","Every Second You Get +1 Damage","Every Second You Get +1 Health","Every Second You Get +1 Jump Power","Every Second You Get +1 Walkspeed",
            "Fly Race","Fruit Battlegrounds","Grand Piece Online","IQ Wars Simulator","Jailbreak","King Legacy","Mad City","Military Tycoon","Murder Mystery 2","Ninja Fighting Simulator",
            "Pet Simulator X!","Pickaxe Mining Simulator","Pixel Piece","Race Clicker","Shindo Life 2","Smoothie Factory Tycoon","Super Hero Tycoon","Super Power Fighting Simulator","Sword Fighters Simulator",
            "The Strongest Battlegrounds","The Survival Game","Ultra Power Tycoon"
        },
            CurrentOption = {"Click to show supported game"},
            MultipleOptions = false,
            Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
            Callback = function(Option)
            -- The function that takes place when the selected option is changed
            -- The variable (Option) is a string for the value that the dropdown was changed to
            end,
        })
    
        local GamesSection = Games:CreateSection("Changelog")
        local Paragraph = Games:CreateParagraph({Title = "10/16/2023", Content = "[=] Fix key system icon"})
        local Paragraph = Games:CreateParagraph({Title = "10/15/2023", Content = "[+] NEW KEY SYSTEM V2\n[+] PREMIUM COMING SOON\n[+] I forgot to note what I updated, but I updated over 20 new scripts"})
        local Paragraph = Games:CreateParagraph({Title = "10/13/2023", Content = "[+] Obby But You're on a Bike\n[=] Fix Toilet Tower Defense and Haze Piece not show up GUI"})
        local Paragraph = Games:CreateParagraph({Title = "10/11/2023", Content = "[+] Toilet Tower Defense"})
        local Paragraph = Games:CreateParagraph({Title = "10/7/2023", Content = "[=] Add Key System again\n[=] Update: Haze Piece, Anime Champions Simulator and Blade Ball (3 new scripts)"})
            
    -- Main
    
        local Main = Window:CreateTab("Main")
        local MainSection = Main:CreateSection("Click to execute!")
    
        local Button = Main:CreateButton({
            Name = "Alyssa",
            Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/alyssagithub/Scripts/main/Script%20Hub%20-%20Inferno%20X.lua"))()
            Rayfield:Notify({ -- Notification
                Title = "Notification",
                Content = "Alyssa is execute!",
                Duration = 3,
                Image = 12139846581,
            })
            end,
        })
    
    -- Destroy UI
    
        local MainSection = Main:CreateSection("Click to destroy UI")
        local Button = Main:CreateButton({
            Name = "Destroy UI",
            Interact = 'Button',
            Callback = function()
                Rayfield:Destroy()
            end,
            })

    elseif game.PlaceId == 6777872443 or game.PlaceId == 9380307595 or game.PlaceId == 12169323719 then -- Pixel Piece
        local Window = Rayfield:CreateWindow({
            Name = "Gnoh Script Hub (v1.6b) | Pixel Piece",
            LoadingTitle = "Gnoh Script Hub",
            LoadingSubtitle = "Please Join The Discord If You Need Help!",
            ConfigurationSaving = {
                Enabled = false,
                FolderName = nil, -- Create a custom folder for your hub/game
                FileName = "Gnoh Hub"
            },
            Discord = {
                Enabled = true,
                Invite = "ghhzFtbNsh", -- The Discord invite code, do not include discord.gg/
                RememberJoins = fasle -- Set this to false to make them join the discord every time they load it up
            },
            KeySystem = false, -- Set this to true to use our key system
            KeySettings = {
                Title = "Gnoh Script Hub",
                Subtitle = "Key System",
                Note = "Join the discord to get key (discord.gg/ghhzFtbNsh)",
                FileName = "GnohKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
                SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
                GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
                Key = {"https://raw.githubusercontent.com/chauhong11/a/main/b"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
            }
        })
    
        -- Information

            local Information = Window:CreateTab("Information")
            local Paragraph = Information:CreateParagraph({Title = "Welcome to Gnoh Script Hub!",Content = "This hub currently has 80 games and 600+ scripts running."})
            local Paragraph = Information:CreateParagraph({Title = "Credits to everyone", Content = ""})
            local Paragraph = Information:CreateParagraph({Title = "Press K to hide/show GUI", Content = ""})
            local Button = Information:CreateButton({
                Name = "Please Join Discord If You Need Help! (click to copy)",
                Callback = function()
                    setclipboard('https://discord.gg/ghhzFtbNsh')
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Link is copy (paste it to your website or discord)",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

        -- Supported Games

        local Games = Window:CreateTab("Supported Games")
        local Dropdown = Games:CreateDropdown({
            Name = "80 games",
            Options = {"[+1] Blocks Every Second","[+1] Jump Every Second","[+1] Per Second","Adopt Me","Anime Adventures","Anime Champions Simulator","Anime Fighter Simulator","Anime Fighting Simulator X","Anime Fruit Simulator",
            "Anime Souls Simulator","Anime Weapon Simulator","Arm Wrestle Simulator","Bee Swarm Simulator","Blade Ball","Blox Fruits","Brookhaven RP","Build A Boat For Treasure","Car Dealership Tycoon","Car Factory Tycoon!",
            "Clicker Simulator","Combat Warriors","Da Hood","DOORS","Driving Empire","Every Second You Get +1 Damage","Every Second You Get +1 Health","Every Second You Get +1 Jump Power","Every Second You Get +1 Walkspeed",
            "Fly Race","Fruit Battlegrounds","Grand Piece Online","IQ Wars Simulator","Jailbreak","King Legacy","Mad City","Military Tycoon","Murder Mystery 2","Ninja Fighting Simulator",
            "Pet Simulator X!","Pickaxe Mining Simulator","Pixel Piece","Race Clicker","Shindo Life 2","Smoothie Factory Tycoon","Super Hero Tycoon","Super Power Fighting Simulator","Sword Fighters Simulator",
            "The Strongest Battlegrounds","The Survival Game","Ultra Power Tycoon"
        },
            CurrentOption = {"Click to show supported game"},
            MultipleOptions = false,
            Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
            Callback = function(Option)
            -- The function that takes place when the selected option is changed
            -- The variable (Option) is a string for the value that the dropdown was changed to
            end,
        })

        local GamesSection = Games:CreateSection("Changelog")
        local Paragraph = Games:CreateParagraph({Title = "10/16/2023", Content = "[=] Fix key system icon"})
        local Paragraph = Games:CreateParagraph({Title = "10/15/2023", Content = "[+] NEW KEY SYSTEM V2\n[+] PREMIUM COMING SOON\n[+] I forgot to note what I updated, but I updated over 20 new scripts"})
        local Paragraph = Games:CreateParagraph({Title = "10/13/2023", Content = "[+] Obby But You're on a Bike\n[=] Fix Toilet Tower Defense and Haze Piece not show up GUI"})
        local Paragraph = Games:CreateParagraph({Title = "10/11/2023", Content = "[+] Toilet Tower Defense"})
        local Paragraph = Games:CreateParagraph({Title = "10/7/2023", Content = "[=] Add Key System again\n[=] Update: Haze Piece, Anime Champions Simulator and Blade Ball (3 new scripts)"})

        -- Main

            local Main = Window:CreateTab("Main")
            local MainSection = Main:CreateSection("Click to execute!")

            local Button = Main:CreateButton({
                Name = "Hyper Hub",
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/DookDekDEE/Hyper/main/script.lua"))()
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Hyper Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

            local Button = Main:CreateButton({
                Name = "X Hub",
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/Bebo-Mods/BeboScripts/main/PixelPiece.lua"))()
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "X Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

            local Button = Main:CreateButton({
                Name = "Muimi Hub",
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/bunnynwy/games/main/pixelpiece"))()
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Muimi Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

            local Button = Main:CreateButton({
                Name = "Verny Hub",
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/666dasdlolok/Loader/main/Ten",true))();
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Verny Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

            local Button = Main:CreateButton({
                Name = "JumbleScript",
                Callback = function()
                    loadstring(game:HttpGet("https://jumblescripts.com/PixelPiece.lua"))()
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "JumbleScript is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

            local Button = Main:CreateButton({
                Name = "Amanize Hub",
                Callback = function()
                    loadstring(game:HttpGet('https://raw.githubusercontent.com/Kiriko-Protection/Scripts/main/Pixel-Piece.lua'))()
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Amanize Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

        -- Destroy UI

            local MainSection = Main:CreateSection("Click to destroy UI")
            local Button = Main:CreateButton({
                Name = "Destroy UI",
                Interact = 'Button',
                Callback = function()
                    Rayfield:Destroy()
                end,
            })

    elseif game.PlaceId == 9285238704 then -- Race Clicker
        local Window = Rayfield:CreateWindow({
            Name = "Gnoh Script Hub (v1.6b) | Race Clicker",
            LoadingTitle = "Gnoh Script Hub",
            LoadingSubtitle = "Please Join The Discord If You Need Help!",
            ConfigurationSaving = {
                Enabled = false,
                FolderName = nil, -- Create a custom folder for your hub/game
                FileName = "Gnoh Hub"
            },
            Discord = {
                Enabled = true,
                Invite = "ghhzFtbNsh", -- The Discord invite code, do not include discord.gg/
                RememberJoins = fasle -- Set this to false to make them join the discord every time they load it up
            },
            KeySystem = false, -- Set this to true to use our key system
            KeySettings = {
                Title = "Gnoh Script Hub",
                Subtitle = "Key System",
                Note = "Join the discord to get key (discord.gg/ghhzFtbNsh)",
                FileName = "GnohKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
                SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
                GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
                Key = {"https://raw.githubusercontent.com/chauhong11/a/main/b"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
            }
        })
    
        -- Information

            local Information = Window:CreateTab("Information")
            local Paragraph = Information:CreateParagraph({Title = "Welcome to Gnoh Script Hub!",Content = "This hub currently has 80 games and 600+ scripts running."})
            local Paragraph = Information:CreateParagraph({Title = "Credits to everyone", Content = ""})
            local Paragraph = Information:CreateParagraph({Title = "Press K to hide/show GUI", Content = ""})
            local Button = Information:CreateButton({
                Name = "Please Join Discord If You Need Help! (click to copy)",
                Callback = function()
                    setclipboard('https://discord.gg/ghhzFtbNsh')
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Link is copy (paste it to your website or discord)",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

        -- Supported Games

        local Games = Window:CreateTab("Supported Games")
        local Dropdown = Games:CreateDropdown({
            Name = "80 games",
            Options = {"[+1] Blocks Every Second","[+1] Jump Every Second","[+1] Per Second","Adopt Me","Anime Adventures","Anime Champions Simulator","Anime Fighter Simulator","Anime Fighting Simulator X","Anime Fruit Simulator",
            "Anime Souls Simulator","Anime Weapon Simulator","Arm Wrestle Simulator","Bee Swarm Simulator","Blade Ball","Blox Fruits","Brookhaven RP","Build A Boat For Treasure","Car Dealership Tycoon","Car Factory Tycoon!",
            "Clicker Simulator","Combat Warriors","Da Hood","DOORS","Driving Empire","Every Second You Get +1 Damage","Every Second You Get +1 Health","Every Second You Get +1 Jump Power","Every Second You Get +1 Walkspeed",
            "Fly Race","Fruit Battlegrounds","Grand Piece Online","IQ Wars Simulator","Jailbreak","King Legacy","Mad City","Military Tycoon","Murder Mystery 2","Ninja Fighting Simulator",
            "Pet Simulator X!","Pickaxe Mining Simulator","Pixel Piece","Race Clicker","Shindo Life 2","Smoothie Factory Tycoon","Super Hero Tycoon","Super Power Fighting Simulator","Sword Fighters Simulator",
            "The Strongest Battlegrounds","The Survival Game","Ultra Power Tycoon"
        },
            CurrentOption = {"Click to show supported game"},
            MultipleOptions = false,
            Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
            Callback = function(Option)
            -- The function that takes place when the selected option is changed
            -- The variable (Option) is a string for the value that the dropdown was changed to
            end,
        })

        local GamesSection = Games:CreateSection("Changelog")
        local Paragraph = Games:CreateParagraph({Title = "10/16/2023", Content = "[=] Fix key system icon"})
        local Paragraph = Games:CreateParagraph({Title = "10/15/2023", Content = "[+] NEW KEY SYSTEM V2\n[+] PREMIUM COMING SOON\n[+] I forgot to note what I updated, but I updated over 20 new scripts"})
        local Paragraph = Games:CreateParagraph({Title = "10/13/2023", Content = "[+] Obby But You're on a Bike\n[=] Fix Toilet Tower Defense and Haze Piece not show up GUI"})
        local Paragraph = Games:CreateParagraph({Title = "10/11/2023", Content = "[+] Toilet Tower Defense"})
        local Paragraph = Games:CreateParagraph({Title = "10/7/2023", Content = "[=] Add Key System again\n[=] Update: Haze Piece, Anime Champions Simulator and Blade Ball (3 new scripts)"})

        -- Main

            local Main = Window:CreateTab("Main")
            local MainSection = Main:CreateSection("Click to execute!")
            
            local Button = Main:CreateButton({
                Name = "Tora IsMe Gui",
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe2/ToraIsMe2/main/0raceclicker", true))()
                    Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Tora IsMe Gui is execute!",
                    Duration = 3,
                    Image = 12139846581,
                    })
                end,
            })

            local Button = Main:CreateButton({
                Name = "SQK Gui",
                Callback = function()
                    loadstring(game:HttpGet(('https://raw.githubusercontent.com/Saaakai/Random-Roblox-Script/main/Race%20Clicker')))()
                    Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "SQK Gui is execute!",
                    Duration = 3,
                    Image = 12139846581,
                    })
                end,
            })

        -- Destroy UI

            local MainSection = Main:CreateSection("Click to destroy UI")
            local Button = Main:CreateButton({
                Name = "Destroy UI",
                Interact = 'Button',
                Callback = function()
                    Rayfield:Destroy()
                end,
            })

    --  Shinobi Life 2
        elseif game.PlaceId == 4616652839 or game.PlaceId == 4601350214 or game.PlaceId == 4601350394 or game.PlaceId == 4601350656 or game.PlaceId == 4601350809 or game.PlaceId == 5431071837 or game.PlaceId == 6602103757
            or game.PlaceId == 5447073001 or game.PlaceId == 5084678830 or game.PlaceId == 5431069982 or game.PlaceId == 4601350760 or game.PlaceId == 6341670805 or game.PlaceId == 6505734854 
            or game.PlaceId == 6901575446 or game.PlaceId == 6984568732 or game.PlaceId == 6986372023 or game.PlaceId == 5451398863 or game.PlaceId == 7214033433 or game.PlaceId == 5451401540
            or game.PlaceId == 5307141034 or game.PlaceId == 7534339269 or game.PlaceId == 5451410109 or game.PlaceId == 6593187011 or game.PlaceId == 6593188260 or game.PlaceId == 5743370338
            or game.PlaceId == 5664805984 or game.PlaceId == 5664803952 or game.PlaceId == 8184506020 or game.PlaceId == 8472733618 or game.PlaceId == 7923764447 or game.PlaceId == 9310522814
            or game.PlaceId == 5451405681 or game.PlaceId == 7524809704 or game.PlaceId == 7524811367 or game.PlaceId == 6602058266 or game.PlaceId == 5824792748 or game.PlaceId == 5255237254 then
            local Window = Rayfield:CreateWindow({
                Name = "Gnoh Script Hub (v1.6b) | Shinobi Life 2",
                LoadingTitle = "Gnoh Script Hub",
                LoadingSubtitle = "Please Join The Discord If You Need Help!",
                ConfigurationSaving = {
                Enabled = false,
                FolderName = nil, -- Create a custom folder for your hub/game
                FileName = "Gnoh Hub"
                },
                Discord = {
                    Enabled = true,
                    Invite = "ghhzFtbNsh", -- The Discord invite code, do not include discord.gg/
                    RememberJoins = fasle -- Set this to false to make them join the discord every time they load it up
                },
                KeySystem = false, -- Set this to true to use our key system
                KeySettings = {
                    Title = "Gnoh Script Hub",
                    Subtitle = "Key System",
                    Note = "Join the discord to get key (discord.gg/ghhzFtbNsh)",
                    FileName = "GnohKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
                    SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
                    GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
                    Key = {"https://raw.githubusercontent.com/chauhong11/a/main/b"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
                }
            })
        
        -- Information
        
            local Information = Window:CreateTab("Information")
            local Paragraph = Information:CreateParagraph({Title = "Welcome to Gnoh Script Hub!",Content = "This hub currently has 80 games and 600+ scripts running."})
            local Paragraph = Information:CreateParagraph({Title = "Credits to everyone", Content = ""})
            local Paragraph = Information:CreateParagraph({Title = "Press K to hide/show GUI", Content = ""})
            local Button = Information:CreateButton({
                Name = "Please Join Discord If You Need Help! (click to copy)",
                Callback = function()
                setclipboard('https://discord.gg/ghhzFtbNsh')
                Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Link is copy (paste it to your website or discord)",
                        Duration = 3,
                        Image = 12139846581,
                })
                end,
            })
        
        -- Supported Games
        
            local Games = Window:CreateTab("Supported Games")
            local Dropdown = Games:CreateDropdown({
                Name = "80 games",
                Options = {"[+1] Blocks Every Second","[+1] Jump Every Second","[+1] Per Second","Adopt Me","Anime Adventures","Anime Champions Simulator","Anime Fighter Simulator","Anime Fighting Simulator X","Anime Fruit Simulator",
                "Anime Souls Simulator","Anime Weapon Simulator","Arm Wrestle Simulator","Bee Swarm Simulator","Blade Ball","Blox Fruits","Brookhaven RP","Build A Boat For Treasure","Car Dealership Tycoon","Car Factory Tycoon!",
                "Clicker Simulator","Combat Warriors","Da Hood","DOORS","Driving Empire","Every Second You Get +1 Damage","Every Second You Get +1 Health","Every Second You Get +1 Jump Power","Every Second You Get +1 Walkspeed",
                "Fly Race","Fruit Battlegrounds","Grand Piece Online","IQ Wars Simulator","Jailbreak","King Legacy","Mad City","Military Tycoon","Murder Mystery 2","Ninja Fighting Simulator",
                "Pet Simulator X!","Pickaxe Mining Simulator","Pixel Piece","Race Clicker","Shindo Life 2","Smoothie Factory Tycoon","Super Hero Tycoon","Super Power Fighting Simulator","Sword Fighters Simulator",
                "The Strongest Battlegrounds","The Survival Game","Ultra Power Tycoon"
            },
                CurrentOption = {"Click to show supported game"},
                MultipleOptions = false,
                Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
                Callback = function(Option)
                -- The function that takes place when the selected option is changed
                -- The variable (Option) is a string for the value that the dropdown was changed to
                end,
            })
        
        local GamesSection = Games:CreateSection("Changelog")
        local Paragraph = Games:CreateParagraph({Title = "10/16/2023", Content = "[=] Fix key system icon"})
        local Paragraph = Games:CreateParagraph({Title = "10/15/2023", Content = "[+] NEW KEY SYSTEM V2\n[+] PREMIUM COMING SOON\n[+] I forgot to note what I updated, but I updated over 20 new scripts"})
        local Paragraph = Games:CreateParagraph({Title = "10/13/2023", Content = "[+] Obby But You're on a Bike\n[=] Fix Toilet Tower Defense and Haze Piece not show up GUI"})
        local Paragraph = Games:CreateParagraph({Title = "10/11/2023", Content = "[+] Toilet Tower Defense"})
        local Paragraph = Games:CreateParagraph({Title = "10/7/2023", Content = "[=] Add Key System again\n[=] Update: Haze Piece, Anime Champions Simulator and Blade Ball (3 new scripts)"})

        -- Main
        
            local Main = Window:CreateTab("Main")
            local MainSection = Main:CreateSection("Click to execute!")
        
            local Button = Main:CreateButton({
                Name = "Platinium Hub",
                Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/ZaRdoOx/Platinium/main/Loader"))()
                Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Platinium Hub is execute!",
                    Duration = 3,
                    Image = 12139846581,
                })
                end,
            })
        
            local Button = Main:CreateButton({
                Name = "Lite",
                Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/SxnwDev/Premier/main/Free-Premier.lua", true))()
                Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Lite is execute!",
                    Duration = 3,
                    Image = 12139846581,
                })
                end,
            })
        
            local Button = Main:CreateButton({
                Name = "NightSide",
                Callback = function()
                loadstring(game:HttpGet('https://raw.githubusercontent.com/TrustsenseDev/Utilities/main/Premier.lua', true))()
                Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "NightSide is execute!",
                    Duration = 3,
                    Image = 12139846581,
                })
                end,
            })
                
        -- Destroy UI
        
            local MainSection = Main:CreateSection("Click to destroy UI")
            local Button = Main:CreateButton({
                Name = "Destroy UI",
                Interact = 'Button',
                Callback = function()
                    Rayfield:Destroy()
                end,
                })

    elseif game.PlaceId == 10905034443 then -- Smoothie Factory Tycoon
        local Window = Rayfield:CreateWindow({
            Name = "Gnoh Script Hub (v1.6b) | Smoothie Factory Tycoon",
            LoadingTitle = "Gnoh Script Hub",
            LoadingSubtitle = "Please Join The Discord If You Need Help!",
            ConfigurationSaving = {
                Enabled = false,
                FolderName = nil, -- Create a custom folder for your hub/game
                FileName = "Gnoh Hub"
            },
            Discord = {
                Enabled = true,
                Invite = "ghhzFtbNsh", -- The Discord invite code, do not include discord.gg/
                RememberJoins = fasle -- Set this to false to make them join the discord every time they load it up
            },
            KeySystem = false, -- Set this to true to use our key system
            KeySettings = {
                Title = "Gnoh Script Hub",
                Subtitle = "Key System",
                Note = "Join the discord to get key (discord.gg/ghhzFtbNsh)",
                FileName = "GnohKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
                SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
                GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
                Key = {"https://raw.githubusercontent.com/chauhong11/a/main/b"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
            }
        })
    
        -- Information

            local Information = Window:CreateTab("Information")
            local Paragraph = Information:CreateParagraph({Title = "Welcome to Gnoh Script Hub!",Content = "This hub currently has 80 games and 600+ scripts running."})
            local Paragraph = Information:CreateParagraph({Title = "Credits to everyone", Content = ""})
            local Paragraph = Information:CreateParagraph({Title = "Press K to hide/show GUI", Content = ""})
            local Button = Information:CreateButton({
                Name = "Please Join Discord If You Need Help! (click to copy)",
                Callback = function()
                    setclipboard('https://discord.gg/ghhzFtbNsh')
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Link is copy (paste it to your website or discord)",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

        -- Supported Games

        local Games = Window:CreateTab("Supported Games")
        local Dropdown = Games:CreateDropdown({
            Name = "80 games",
            Options = {"[+1] Blocks Every Second","[+1] Jump Every Second","[+1] Per Second","Adopt Me","Anime Adventures","Anime Champions Simulator","Anime Fighter Simulator","Anime Fighting Simulator X","Anime Fruit Simulator",
            "Anime Souls Simulator","Anime Weapon Simulator","Arm Wrestle Simulator","Bee Swarm Simulator","Blade Ball","Blox Fruits","Brookhaven RP","Build A Boat For Treasure","Car Dealership Tycoon","Car Factory Tycoon!",
            "Clicker Simulator","Combat Warriors","Da Hood","DOORS","Driving Empire","Every Second You Get +1 Damage","Every Second You Get +1 Health","Every Second You Get +1 Jump Power","Every Second You Get +1 Walkspeed",
            "Fly Race","Fruit Battlegrounds","Grand Piece Online","IQ Wars Simulator","Jailbreak","King Legacy","Mad City","Military Tycoon","Murder Mystery 2","Ninja Fighting Simulator",
            "Pet Simulator X!","Pickaxe Mining Simulator","Pixel Piece","Race Clicker","Shindo Life 2","Smoothie Factory Tycoon","Super Hero Tycoon","Super Power Fighting Simulator","Sword Fighters Simulator",
            "The Strongest Battlegrounds","The Survival Game","Ultra Power Tycoon"
        },
            CurrentOption = {"Click to show supported game"},
            MultipleOptions = false,
            Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
            Callback = function(Option)
            -- The function that takes place when the selected option is changed
            -- The variable (Option) is a string for the value that the dropdown was changed to
            end,
        })

        local GamesSection = Games:CreateSection("Changelog")
        local Paragraph = Games:CreateParagraph({Title = "10/16/2023", Content = "[=] Fix key system icon"})
        local Paragraph = Games:CreateParagraph({Title = "10/15/2023", Content = "[+] NEW KEY SYSTEM V2\n[+] PREMIUM COMING SOON\n[+] I forgot to note what I updated, but I updated over 20 new scripts"})
        local Paragraph = Games:CreateParagraph({Title = "10/13/2023", Content = "[+] Obby But You're on a Bike\n[=] Fix Toilet Tower Defense and Haze Piece not show up GUI"})
        local Paragraph = Games:CreateParagraph({Title = "10/11/2023", Content = "[+] Toilet Tower Defense"})
        local Paragraph = Games:CreateParagraph({Title = "10/7/2023", Content = "[=] Add Key System again\n[=] Update: Haze Piece, Anime Champions Simulator and Blade Ball (3 new scripts)"})
        
        -- Main

            local Main = Window:CreateTab("Main")
            local MainSection = Main:CreateSection("Click to execute!")
            
            local Button = Main:CreateButton({
                Name = "Statue Hub",
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/idontknowwhattonamemyself/Statue-Hub/Lua/Main"))()
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Statue Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

            local Button = Main:CreateButton({
                Name = "Soggyware Hub",
                Callback = function()
                    loadstring(game:HttpGet("https://soggy-ware.cf"))()
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Soggyware Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

            local Button = Main:CreateButton({
                Name = "Auto Lobby",
                Callback = function()
                    loadstring(game:HttpGet("https://pastebin.com/RY2SNjUY"))()
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Auto Lobby is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

        -- Destroy UI

            local MainSection = Main:CreateSection("Click to destroy UI")
            local Button = Main:CreateButton({
                Name = "Destroy UI",
                Interact = 'Button',
                Callback = function()
                    Rayfield:Destroy()
                end,
            })

    elseif game.PlaceId == 574407221 then -- Super Hero Tycoon
        local Window = Rayfield:CreateWindow({
            Name = "Gnoh Script Hub (v1.6b) | Super Hero Tycoon",
            LoadingTitle = "Gnoh Script Hub",
            LoadingSubtitle = "Please Join The Discord If You Need Help!",
            ConfigurationSaving = {
                Enabled = false,
                FolderName = nil, -- Create a custom folder for your hub/game
                FileName = "Gnoh Hub"
            },
            Discord = {
                Enabled = true,
                Invite = "ghhzFtbNsh", -- The Discord invite code, do not include discord.gg/
                RememberJoins = fasle -- Set this to false to make them join the discord every time they load it up
            },
            KeySystem = false, -- Set this to true to use our key system
            KeySettings = {
                Title = "Gnoh Script Hub",
                Subtitle = "Key System",
                Note = "Join the discord to get key (discord.gg/ghhzFtbNsh)",
                FileName = "GnohKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
                SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
                GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
                Key = {"https://raw.githubusercontent.com/chauhong11/a/main/b"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
            }
        })
    
        -- Information

            local Information = Window:CreateTab("Information")
            local Paragraph = Information:CreateParagraph({Title = "Welcome to Gnoh Script Hub!",Content = "This hub currently has 80 games and 600+ scripts running."})
            local Paragraph = Information:CreateParagraph({Title = "Credits to everyone", Content = ""})
            local Paragraph = Information:CreateParagraph({Title = "Press K to hide/show GUI", Content = ""})
            local Button = Information:CreateButton({
                Name = "Please Join Discord If You Need Help! (click to copy)",
                Callback = function()
                    setclipboard('https://discord.gg/ghhzFtbNsh')
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Link is copy (paste it to your website or discord)",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

        -- Supported Games

        local Games = Window:CreateTab("Supported Games")
        local Dropdown = Games:CreateDropdown({
            Name = "80 games",
            Options = {"[+1] Blocks Every Second","[+1] Jump Every Second","[+1] Per Second","Adopt Me","Anime Adventures","Anime Champions Simulator","Anime Fighter Simulator","Anime Fighting Simulator X","Anime Fruit Simulator",
            "Anime Souls Simulator","Anime Weapon Simulator","Arm Wrestle Simulator","Bee Swarm Simulator","Blade Ball","Blox Fruits","Brookhaven RP","Build A Boat For Treasure","Car Dealership Tycoon","Car Factory Tycoon!",
            "Clicker Simulator","Combat Warriors","Da Hood","DOORS","Driving Empire","Every Second You Get +1 Damage","Every Second You Get +1 Health","Every Second You Get +1 Jump Power","Every Second You Get +1 Walkspeed",
            "Fly Race","Fruit Battlegrounds","Grand Piece Online","IQ Wars Simulator","Jailbreak","King Legacy","Mad City","Military Tycoon","Murder Mystery 2","Ninja Fighting Simulator",
            "Pet Simulator X!","Pickaxe Mining Simulator","Pixel Piece","Race Clicker","Shindo Life 2","Smoothie Factory Tycoon","Super Hero Tycoon","Super Power Fighting Simulator","Sword Fighters Simulator",
            "The Strongest Battlegrounds","The Survival Game","Ultra Power Tycoon"
        },
            CurrentOption = {"Click to show supported game"},
            MultipleOptions = false,
            Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
            Callback = function(Option)
            -- The function that takes place when the selected option is changed
            -- The variable (Option) is a string for the value that the dropdown was changed to
            end,
        })

        local GamesSection = Games:CreateSection("Changelog")
        local Paragraph = Games:CreateParagraph({Title = "10/16/2023", Content = "[=] Fix key system icon"})
        local Paragraph = Games:CreateParagraph({Title = "10/15/2023", Content = "[+] NEW KEY SYSTEM V2\n[+] PREMIUM COMING SOON\n[+] I forgot to note what I updated, but I updated over 20 new scripts"})
        local Paragraph = Games:CreateParagraph({Title = "10/13/2023", Content = "[+] Obby But You're on a Bike\n[=] Fix Toilet Tower Defense and Haze Piece not show up GUI"})
        local Paragraph = Games:CreateParagraph({Title = "10/11/2023", Content = "[+] Toilet Tower Defense"})
        local Paragraph = Games:CreateParagraph({Title = "10/7/2023", Content = "[=] Add Key System again\n[=] Update: Haze Piece, Anime Champions Simulator and Blade Ball (3 new scripts)"})

        -- Main

            local Main = Window:CreateTab("Main")
            local MainSection = Main:CreateSection("Click to execute!")

            local Button = Main:CreateButton({
                Name = "Grey Gui",
                Callback = function()
                    loadstring(game:HttpGet("https://pastebin.com/raw/HkfCDTkz", true))()
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Grey Gui is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

            local Button = Main:CreateButton({
                Name = "Purple Gui",
                Callback = function()
                    loadstring(game:HttpGet("https://paste.ee/r/0ccCC", true))()
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Purple Gui is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

            local Button = Main:CreateButton({
                Name = "Black Gui",
                Callback = function()
                    loadstring(game:HttpGet('https://scripts.hold4564.de/games/SuperHeroTycoon_Farm.txt'))()
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Black Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

        -- Destroy UI

            local MainSection = Main:CreateSection("Click to destroy UI")
            local Button = Main:CreateButton({
                Name = "Destroy UI",
                Interact = 'Button',
                Callback = function()
                    Rayfield:Destroy()
                end,
            })

    elseif game.PlaceId == 2619187362 then -- Super Power Fighting Simulator
        local Window = Rayfield:CreateWindow({
            Name = "Gnoh Script Hub (v1.6b) | Super Power Fighting Simulator",
            LoadingTitle = "Gnoh Script Hub",
            LoadingSubtitle = "Please Join The Discord If You Need Help!",
            ConfigurationSaving = {
                Enabled = false,
                FolderName = nil, -- Create a custom folder for your hub/game
                FileName = "Gnoh Hub"
            },
            Discord = {
                Enabled = true,
                Invite = "ghhzFtbNsh", -- The Discord invite code, do not include discord.gg/
                RememberJoins = fasle -- Set this to false to make them join the discord every time they load it up
            },
            KeySystem = false, -- Set this to true to use our key system
            KeySettings = {
                Title = "Gnoh Script Hub",
                Subtitle = "Key System",
                Note = "Join the discord to get key (discord.gg/ghhzFtbNsh)",
                FileName = "GnohKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
                SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
                GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
                Key = {"https://raw.githubusercontent.com/chauhong11/a/main/b"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
            }
        })
    
        -- Information

            local Information = Window:CreateTab("Information")
            local Paragraph = Information:CreateParagraph({Title = "Welcome to Gnoh Script Hub!",Content = "This hub currently has 80 games and 600+ scripts running."})
            local Paragraph = Information:CreateParagraph({Title = "Credits to everyone", Content = ""})
            local Paragraph = Information:CreateParagraph({Title = "Press K to hide/show GUI", Content = ""})
            local Button = Information:CreateButton({
                Name = "Please Join Discord If You Need Help! (click to copy)",
                Callback = function()
                    setclipboard('https://discord.gg/ghhzFtbNsh')
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Link is copy (paste it to your website or discord)",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

        -- Supported Games

        local Games = Window:CreateTab("Supported Games")
        local Dropdown = Games:CreateDropdown({
            Name = "80 games",
            Options = {"[+1] Blocks Every Second","[+1] Jump Every Second","[+1] Per Second","Adopt Me","Anime Adventures","Anime Champions Simulator","Anime Fighter Simulator","Anime Fighting Simulator X","Anime Fruit Simulator",
            "Anime Souls Simulator","Anime Weapon Simulator","Arm Wrestle Simulator","Bee Swarm Simulator","Blade Ball","Blox Fruits","Brookhaven RP","Build A Boat For Treasure","Car Dealership Tycoon","Car Factory Tycoon!",
            "Clicker Simulator","Combat Warriors","Da Hood","DOORS","Driving Empire","Every Second You Get +1 Damage","Every Second You Get +1 Health","Every Second You Get +1 Jump Power","Every Second You Get +1 Walkspeed",
            "Fly Race","Fruit Battlegrounds","Grand Piece Online","IQ Wars Simulator","Jailbreak","King Legacy","Mad City","Military Tycoon","Murder Mystery 2","Ninja Fighting Simulator",
            "Pet Simulator X!","Pickaxe Mining Simulator","Pixel Piece","Race Clicker","Shindo Life 2","Smoothie Factory Tycoon","Super Hero Tycoon","Super Power Fighting Simulator","Sword Fighters Simulator",
            "The Strongest Battlegrounds","The Survival Game","Ultra Power Tycoon"
        },
            CurrentOption = {"Click to show supported game"},
            MultipleOptions = false,
            Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
            Callback = function(Option)
            -- The function that takes place when the selected option is changed
            -- The variable (Option) is a string for the value that the dropdown was changed to
            end,
        })

        local GamesSection = Games:CreateSection("Changelog")
        local Paragraph = Games:CreateParagraph({Title = "10/16/2023", Content = "[=] Fix key system icon"})
        local Paragraph = Games:CreateParagraph({Title = "10/15/2023", Content = "[+] NEW KEY SYSTEM V2\n[+] PREMIUM COMING SOON\n[+] I forgot to note what I updated, but I updated over 20 new scripts"})
        local Paragraph = Games:CreateParagraph({Title = "10/13/2023", Content = "[+] Obby But You're on a Bike\n[=] Fix Toilet Tower Defense and Haze Piece not show up GUI"})
        local Paragraph = Games:CreateParagraph({Title = "10/11/2023", Content = "[+] Toilet Tower Defense"})
        local Paragraph = Games:CreateParagraph({Title = "10/7/2023", Content = "[=] Add Key System again\n[=] Update: Haze Piece, Anime Champions Simulator and Blade Ball (3 new scripts)"})
        
        -- Main

            local Main = Window:CreateTab("Main")
            local MainSection = Main:CreateSection("Click to execute!")

            local Button = Main:CreateButton({
                Name = "V.G Hub",
                Callback = function()
                    loadstring(game:HttpGet('https://raw.githubusercontent.com/1201for/V.G-Hub/main/V.Ghub'))()
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "V.G Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

            local Button = Main:CreateButton({
                Name = "SA Gui",
                Callback = function()
                    loadstring(game:HttpGet("https://venuslockscript.com/wp-content/uploads/2022/12/super-power-fighting-simulator.txt"))()
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "SA Gui is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

            local Button = Main:CreateButton({
                Name = "Pear Hub",
                Callback = function()
                    loadstring(game:HttpGet('https://ppearl.vercel.app'))()
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Pear Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

        -- Destroy UI

            local MainSection = Main:CreateSection("Click to destroy UI")
            local Button = Main:CreateButton({
                Name = "Destroy UI",
                Interact = 'Button',
                Callback = function()
                    Rayfield:Destroy()
                end,
            })

    elseif game.PlaceId == 11040063484 then -- Sword Fighters Simulator
        local Window = Rayfield:CreateWindow({
            Name = "Gnoh Script Hub (v1.6b) | Sword Fighters Simulator",
            LoadingTitle = "Gnoh Script Hub",
            LoadingSubtitle = "Please Join The Discord If You Need Help!",
            ConfigurationSaving = {
            Enabled = false,
            FolderName = nil, -- Create a custom folder for your hub/game
            FileName = "Gnoh Hub"
            },
            Discord = {
            Enabled = true,
            Invite = "ghhzFtbNsh", -- The Discord invite code, do not include discord.gg/
            RememberJoins = fasle -- Set this to false to make them join the discord every time they load it up
            },
            KeySystem = false, -- Set this to true to use our key system
            KeySettings = {
            Title = "Gnoh Script Hub",
            Subtitle = "Key System",
            Note = "Join the discord to get key (discord.gg/ghhzFtbNsh)",
            FileName = "GnohKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
            SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
            GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
            Key = {"https://raw.githubusercontent.com/chauhong11/a/main/b"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
            }
        })
    -- Information
    
        local Information = Window:CreateTab("Information")
        local Paragraph = Information:CreateParagraph({Title = "Welcome to Gnoh Script Hub!",Content = "This hub currently has 80 games and 600+ scripts running."})
        local Paragraph = Information:CreateParagraph({Title = "Credits to everyone", Content = ""})
        local Paragraph = Information:CreateParagraph({Title = "Press K to hide/show GUI", Content = ""})
        local Button = Information:CreateButton({
            Name = "Please Join Discord If You Need Help! (click to copy)",
            Callback = function()
            setclipboard('https://discord.gg/ghhzFtbNsh')
            Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Link is copy (paste it to your website or discord)",
                    Duration = 3,
                    Image = 12139846581,
            })
            end,
        })
    
    -- Supported Games
    
        local Games = Window:CreateTab("Supported Games")
        local Dropdown = Games:CreateDropdown({
            Name = "80 games",
            Options = {"[+1] Blocks Every Second","[+1] Jump Every Second","[+1] Per Second","Adopt Me","Anime Adventures","Anime Champions Simulator","Anime Fighter Simulator","Anime Fighting Simulator X","Anime Fruit Simulator",
            "Anime Souls Simulator","Anime Weapon Simulator","Arm Wrestle Simulator","Bee Swarm Simulator","Blade Ball","Blox Fruits","Brookhaven RP","Build A Boat For Treasure","Car Dealership Tycoon","Car Factory Tycoon!",
            "Clicker Simulator","Combat Warriors","Da Hood","DOORS","Driving Empire","Every Second You Get +1 Damage","Every Second You Get +1 Health","Every Second You Get +1 Jump Power","Every Second You Get +1 Walkspeed",
            "Fly Race","Fruit Battlegrounds","Grand Piece Online","IQ Wars Simulator","Jailbreak","King Legacy","Mad City","Military Tycoon","Murder Mystery 2","Ninja Fighting Simulator",
            "Pet Simulator X!","Pickaxe Mining Simulator","Pixel Piece","Race Clicker","Shindo Life 2","Smoothie Factory Tycoon","Super Hero Tycoon","Super Power Fighting Simulator","Sword Fighters Simulator",
            "The Strongest Battlegrounds","The Survival Game","Ultra Power Tycoon"
        },
            CurrentOption = {"Click to show supported game"},
            MultipleOptions = false,
            Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
            Callback = function(Option)
            -- The function that takes place when the selected option is changed
            -- The variable (Option) is a string for the value that the dropdown was changed to
            end,
        })
    
        local GamesSection = Games:CreateSection("Changelog")
        local Paragraph = Games:CreateParagraph({Title = "10/16/2023", Content = "[=] Fix key system icon"})
        local Paragraph = Games:CreateParagraph({Title = "10/15/2023", Content = "[+] NEW KEY SYSTEM V2\n[+] PREMIUM COMING SOON\n[+] I forgot to note what I updated, but I updated over 20 new scripts"})
        local Paragraph = Games:CreateParagraph({Title = "10/13/2023", Content = "[+] Obby But You're on a Bike\n[=] Fix Toilet Tower Defense and Haze Piece not show up GUI"})
        local Paragraph = Games:CreateParagraph({Title = "10/11/2023", Content = "[+] Toilet Tower Defense"})
        local Paragraph = Games:CreateParagraph({Title = "10/7/2023", Content = "[=] Add Key System again\n[=] Update: Haze Piece, Anime Champions Simulator and Blade Ball (3 new scripts)"})
        
    -- Main
    
        local Main = Window:CreateTab("Main")
        local MainSection = Main:CreateSection("Click to execute!")
        
        local Button = Main:CreateButton({
            Name = "Happy Hub",
            Callback = function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/KodaLINEN/Sword-Fighters-/main/Main'))()
            Rayfield:Notify({ -- Notification
                Title = "Notification",
                Content = "Happy Hub is execute!",
                Duration = 3,
                Image = 12139846581,
            })
            end,
        })
    
        local Button = Main:CreateButton({
            Name = "Kae",
            Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/kae-gg/script/main/loader.lua"))()
            Rayfield:Notify({ -- Notification
                Title = "Notification",
                Content = "Kae is execute!",
                Duration = 3,
                Image = 12139846581,
            })
            end,
        })
    
        local Button = Main:CreateButton({
            Name = "Platinium Gui",
            Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/ZaRdoOx/Platinium/main/Loader"))()
            Rayfield:Notify({ -- Notification
                Title = "Notification",
                Content = "Platinium Gui is execute!",
                Duration = 3,
                Image = 12139846581,
            })
            end,
        })
    
        local Button = Main:CreateButton({
            Name = "Zaque",
            Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/ZaqueHub/Sword-Fighters-Simulator/main/Sword%20Fighters%20Simulator.lua"))()
            Rayfield:Notify({ -- Notification
                Title = "Notification",
                Content = "Zaque is execute!",
                Duration = 3,
                Image = 12139846581,
            })
            end,
        })
        
        local Button = Main:CreateButton({
            Name = "Rip Hub",
            Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/CasperFlyModz/discord.gg-rips/main/SwordFightersSimulator.lua"))()
            Rayfield:Notify({ -- Notification
                Title = "Notification",
                Content = "Rip Hub is execute!",
                Duration = 3,
                Image = 12139846581,
            })
            end,
        })
    
        local Button = Main:CreateButton({
            Name = "Void Hub",
            Callback = function()
            loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Blackout4781/Void-Hub/main/Loader.lua"))()
            Rayfield:Notify({ -- Notification
                Title = "Notification",
                Content = "Void Hub is execute!",
                Duration = 3,
                Image = 12139846581,
            })
            end,
        })
    
        local Button = Main:CreateButton({
            Name = "Aero Hub",
            Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/aerocontentdeliverynetwork/3456465f7453x447r76h86856233423645756354b/master/loader.lua"))()
            Rayfield:Notify({ -- Notification
                Title = "Notification",
                Content = "Aero Hub is execute!",
                Duration = 3,
                Image = 12139846581,
            })
            end,
        })
    
        local Button = Main:CreateButton({
            Name = "Distic Hub",
            Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/bebedi15/DisticHub/main/Loader.lua"))()
            Rayfield:Notify({ -- Notification
                Title = "Notification",
                Content = "Distic Hub is execute!",
                Duration = 3,
                Image = 12139846581,
            })
            end,
        })
    
    -- Destroy UI
    
        local MainSection = Main:CreateSection("Click to destroy UI")
        local Button = Main:CreateButton({
            Name = "Destroy UI",
            Interact = 'Button',
            Callback = function()
                Rayfield:Destroy()
            end,
            })

    elseif game.PlaceId == 10449761463 then -- The Strongest Battlegrounds
        local Window = Rayfield:CreateWindow({
            Name = "Gnoh Script Hub (v1.6b) | The Strongest Battlegrounds",
            LoadingTitle = "Gnoh Script Hub",
            LoadingSubtitle = "Please Join The Discord If You Need Help!",
            ConfigurationSaving = {
                Enabled = false,
                FolderName = nil, -- Create a custom folder for your hub/game
                FileName = "Gnoh Hub"
            },
            Discord = {
                Enabled = true,
                Invite = "ghhzFtbNsh", -- The Discord invite code, do not include discord.gg/
                RememberJoins = fasle -- Set this to false to make them join the discord every time they load it up
            },
            KeySystem = false, -- Set this to true to use our key system
            KeySettings = {
                Title = "Gnoh Script Hub",
                Subtitle = "Key System",
                Note = "Join the discord to get key (discord.gg/ghhzFtbNsh)",
                FileName = "GnohKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
                SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
                GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
                Key = {"https://raw.githubusercontent.com/chauhong11/a/main/b"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
            }
        })

        -- Information
        local Information = Window:CreateTab("Information")
        local Paragraph = Information:CreateParagraph({Title = "Welcome to Gnoh Script Hub!",Content = "This hub currently has 80 games and 600+ scripts running."})
        local Paragraph = Information:CreateParagraph({Title = "Credits to everyone", Content = ""})
        local Paragraph = Information:CreateParagraph({Title = "Press K to hide/show GUI", Content = ""})
        local Button = Information:CreateButton({
            Name = "Please Join Discord If You Need Help! (click to copy)",
            Callback = function()
                setclipboard('https://discord.gg/ghhzFtbNsh')
                Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Link is copy (paste it to your website or discord)",
                    Duration = 3,
                    Image = 12139846581,
                })
            end,
        })

        -- Supported Games
        local Games = Window:CreateTab("Supported Games")
        local Dropdown = Games:CreateDropdown({
            Name = "80 games",
            Options = {"[+1] Blocks Every Second","[+1] Jump Every Second","[+1] Per Second","Adopt Me","Anime Adventures","Anime Champions Simulator","Anime Fighter Simulator","Anime Fighting Simulator X","Anime Fruit Simulator",
            "Anime Souls Simulator","Anime Weapon Simulator","Arm Wrestle Simulator","Bee Swarm Simulator","Blade Ball","Blox Fruits","Brookhaven RP","Build A Boat For Treasure","Car Dealership Tycoon","Car Factory Tycoon!",
            "Clicker Simulator","Combat Warriors","Da Hood","DOORS","Driving Empire","Every Second You Get +1 Damage","Every Second You Get +1 Health","Every Second You Get +1 Jump Power","Every Second You Get +1 Walkspeed",
            "Fly Race","Fruit Battlegrounds","Grand Piece Online","IQ Wars Simulator","Jailbreak","King Legacy","Mad City","Military Tycoon","Murder Mystery 2","Ninja Fighting Simulator",
            "Pet Simulator X!","Pickaxe Mining Simulator","Pixel Piece","Race Clicker","Shindo Life 2","Smoothie Factory Tycoon","Super Hero Tycoon","Super Power Fighting Simulator","Sword Fighters Simulator",
            "The Strongest Battlegrounds","The Survival Game","Ultra Power Tycoon"
        },
            CurrentOption = {"Click to show supported game"},
            MultipleOptions = false,
            Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
            Callback = function(Option)
            -- The function that takes place when the selected option is changed
            -- The variable (Option) is a string for the value that the dropdown was changed to
            end,
        })

        local GamesSection = Games:CreateSection("Changelog")
        local Paragraph = Games:CreateParagraph({Title = "10/16/2023", Content = "[=] Fix key system icon"})
        local Paragraph = Games:CreateParagraph({Title = "10/15/2023", Content = "[+] NEW KEY SYSTEM V2\n[+] PREMIUM COMING SOON\n[+] I forgot to note what I updated, but I updated over 20 new scripts"})
        local Paragraph = Games:CreateParagraph({Title = "10/13/2023", Content = "[+] Obby But You're on a Bike\n[=] Fix Toilet Tower Defense and Haze Piece not show up GUI"})
        local Paragraph = Games:CreateParagraph({Title = "10/11/2023", Content = "[+] Toilet Tower Defense"})
        local Paragraph = Games:CreateParagraph({Title = "10/7/2023", Content = "[=] Add Key System again\n[=] Update: Haze Piece, Anime Champions Simulator and Blade Ball (3 new scripts)"})
        
        -- Main
            local Main = Window:CreateTab("Main")
            local MainSection = Main:CreateSection("Click to execute!")
                
                local Button = Main:CreateButton({
                    Name = "Nicuse Hub",
                    Callback = function()
                        loadstring(game:HttpGet("https://raw.githubusercontent.com/Nicuse/RobloxScripts/main/SaitamaBattlegrounds.lua"))()
                        Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Nicuse Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                        })
                    end,
                })

                local Button = Main:CreateButton({
                    Name = "Hawk Hub",
                    Callback = function()
                        loadstring(game:HttpGet("https://raw.githubusercontent.com/TheHanki/Hawk/main/Loader", true))()
                        Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Hawk Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                        })
                    end,
                })
                
                local Button = Main:CreateButton({
                    Name = "Nex Hub",
                    Callback = function()
                        loadstring(game:HttpGet("https://raw.githubusercontent.com/CopyReal/NexHub/main/NexHubLoader", true))()
                        Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Nex Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                        })
                    end,
                })
                
        -- Destroy UI

        local MainSection = Main:CreateSection("Click to destroy UI")
        local Button = Main:CreateButton({
            Name = "Destroy UI",
            Interact = 'Button',
            Callback = function()
                Rayfield:Destroy()
            end,
        })

    elseif game.PlaceId == 11156779721 then -- The Survival Game
        local Window = Rayfield:CreateWindow({
            Name = "Gnoh Script Hub (v1.6b) | The Survival Game",
            LoadingTitle = "Gnoh Script Hub",
            LoadingSubtitle = "Please Join The Discord If You Need Help!",
            ConfigurationSaving = {
            Enabled = false,
            FolderName = nil, -- Create a custom folder for your hub/game
            FileName = "Gnoh Hub"
            },
            Discord = {
                Enabled = true,
                Invite = "ghhzFtbNsh", -- The Discord invite code, do not include discord.gg/
                RememberJoins = fasle -- Set this to false to make them join the discord every time they load it up
            },
            KeySystem = false, -- Set this to true to use our key system
            KeySettings = {
                Title = "Gnoh Script Hub",
                Subtitle = "Key System",
                Note = "Join the discord to get key (discord.gg/ghhzFtbNsh)",
                FileName = "GnohKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
                SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
                GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
                Key = {"https://raw.githubusercontent.com/chauhong11/a/main/b"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
            }
        })
    
    -- Information
    
        local Information = Window:CreateTab("Information")
        local Paragraph = Information:CreateParagraph({Title = "Welcome to Gnoh Script Hub!",Content = "This hub currently has 80 games and 600+ scripts running."})
        local Paragraph = Information:CreateParagraph({Title = "Credits to everyone", Content = ""})
        local Paragraph = Information:CreateParagraph({Title = "Press K to hide/show GUI", Content = ""})
        local Button = Information:CreateButton({
            Name = "Please Join Discord If You Need Help! (click to copy)",
            Callback = function()
            setclipboard('https://discord.gg/ghhzFtbNsh')
            Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Link is copy (paste it to your website or discord)",
                    Duration = 3,
                    Image = 12139846581,
            })
            end,
        })
    
    -- Supported Games
    
        local Games = Window:CreateTab("Supported Games")
        local Dropdown = Games:CreateDropdown({
            Name = "80 games",
            Options = {"[+1] Blocks Every Second","[+1] Jump Every Second","[+1] Per Second","Adopt Me","Anime Adventures","Anime Champions Simulator","Anime Fighter Simulator","Anime Fighting Simulator X","Anime Fruit Simulator",
            "Anime Souls Simulator","Anime Weapon Simulator","Arm Wrestle Simulator","Bee Swarm Simulator","Blade Ball","Blox Fruits","Brookhaven RP","Build A Boat For Treasure","Car Dealership Tycoon","Car Factory Tycoon!",
            "Clicker Simulator","Combat Warriors","Da Hood","DOORS","Driving Empire","Every Second You Get +1 Damage","Every Second You Get +1 Health","Every Second You Get +1 Jump Power","Every Second You Get +1 Walkspeed",
            "Fly Race","Fruit Battlegrounds","Grand Piece Online","IQ Wars Simulator","Jailbreak","King Legacy","Mad City","Military Tycoon","Murder Mystery 2","Ninja Fighting Simulator",
            "Pet Simulator X!","Pickaxe Mining Simulator","Pixel Piece","Race Clicker","Shindo Life 2","Smoothie Factory Tycoon","Super Hero Tycoon","Super Power Fighting Simulator","Sword Fighters Simulator",
            "The Strongest Battlegrounds","The Survival Game","Ultra Power Tycoon"
        },
            CurrentOption = {"Click to show supported game"},
            MultipleOptions = false,
            Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
            Callback = function(Option)
            -- The function that takes place when the selected option is changed
            -- The variable (Option) is a string for the value that the dropdown was changed to
            end,
        })
        
        local GamesSection = Games:CreateSection("Changelog")
        local Paragraph = Games:CreateParagraph({Title = "10/16/2023", Content = "[=] Fix key system icon"})
        local Paragraph = Games:CreateParagraph({Title = "10/15/2023", Content = "[+] NEW KEY SYSTEM V2\n[+] PREMIUM COMING SOON\n[+] I forgot to note what I updated, but I updated over 20 new scripts"})
        local Paragraph = Games:CreateParagraph({Title = "10/13/2023", Content = "[+] Obby But You're on a Bike\n[=] Fix Toilet Tower Defense and Haze Piece not show up GUI"})
        local Paragraph = Games:CreateParagraph({Title = "10/11/2023", Content = "[+] Toilet Tower Defense"})
        local Paragraph = Games:CreateParagraph({Title = "10/7/2023", Content = "[=] Add Key System again\n[=] Update: Haze Piece, Anime Champions Simulator and Blade Ball (3 new scripts)"})
        
    -- Main
    
        local Main = Window:CreateTab("Main")
        local MainSection = Main:CreateSection("Click to execute!")
    
        local Button = Main:CreateButton({
            Name = "joeengo",
            Callback = function()
            loadstring(game:HttpGet("https://github.com/joeengo/exploiting/blob/main/tsg.lua?raw=true", true))()
            Rayfield:Notify({ -- Notification
                Title = "Notification",
                Content = "joeengo is execute!",
                Duration = 3,
                Image = 12139846581,
            })
            end,
        })
    
        local Button = Main:CreateButton({
            Name = "Legend Handles",
            Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/LOLking123456/Survival808/main/SurvivalGame4"))()
            Rayfield:Notify({ -- Notification
                Title = "Notification",
                Content = "Legend Handles is execute!",
                Duration = 3,
                Image = 12139846581,
            })
            end,
        })
    
        local Button = Main:CreateButton({
            Name = "Kya-Ware",
            Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/qxkya/Kya-Ware/main/TheSurvivalGame.lua"))()
            Rayfield:Notify({ -- Notification
                Title = "Notification",
                Content = "Kya-Ware is execute!",
                Duration = 3,
                Image = 12139846581,
            })
            end,
        })
    
        local Button = Main:CreateButton({
            Name = "Vape V4",
            Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
            Rayfield:Notify({ -- Notification
                Title = "Notification",
                Content = "Vape V4 is execute!",
                Duration = 3,
                Image = 12139846581,
            })
            end,
        })
    
    -- Destroy UI
    
        local MainSection = Main:CreateSection("Click to destroy UI")
        local Button = Main:CreateButton({
            Name = "Destroy UI",
            Interact = 'Button',
            Callback = function()
                Rayfield:Destroy()
            end,
            })

    elseif game.PlaceId == 8146731988 then -- Ultra Power Tycoon
        local Window = Rayfield:CreateWindow({
            Name = "Gnoh Script Hub (v1.6b) | Ultra Power Tycoon",
            LoadingTitle = "Gnoh Script Hub",
            LoadingSubtitle = "Please Join The Discord If You Need Help!",
            ConfigurationSaving = {
                Enabled = false,
                FolderName = nil, -- Create a custom folder for your hub/game
                FileName = "Gnoh Hub"
            },
            Discord = {
                Enabled = true,
                Invite = "ghhzFtbNsh", -- The Discord invite code, do not include discord.gg/
                RememberJoins = fasle -- Set this to false to make them join the discord every time they load it up
            },
            KeySystem = false, -- Set this to true to use our key system
            KeySettings = {
                Title = "Gnoh Script Hub",
                Subtitle = "Key System",
                Note = "Join the discord to get key (discord.gg/ghhzFtbNsh)",
                FileName = "GnohKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
                SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
                GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
                Key = {"https://raw.githubusercontent.com/chauhong11/a/main/b"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
            }
        })
    
        -- Information

            local Information = Window:CreateTab("Information")
            local Paragraph = Information:CreateParagraph({Title = "Welcome to Gnoh Script Hub!",Content = "This hub currently has 80 games and 600+ scripts running."})
            local Paragraph = Information:CreateParagraph({Title = "Credits to everyone", Content = ""})
            local Paragraph = Information:CreateParagraph({Title = "Press K to hide/show GUI", Content = ""})
            local Button = Information:CreateButton({
                Name = "Please Join Discord If You Need Help! (click to copy)",
                Callback = function()
                    setclipboard('https://discord.gg/ghhzFtbNsh')
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Link is copy (paste it to your website or discord)",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

        -- Supported Games

            local Games = Window:CreateTab("Supported Games")
            local Dropdown = Games:CreateDropdown({
                Name = "80 games",
                Options = {"[+1] Blocks Every Second","[+1] Jump Every Second","[+1] Per Second","Adopt Me","Anime Adventures","Anime Champions Simulator","Anime Fighter Simulator","Anime Fighting Simulator X","Anime Fruit Simulator",
                "Anime Souls Simulator","Anime Weapon Simulator","Arm Wrestle Simulator","Bee Swarm Simulator","Blade Ball","Blox Fruits","Brookhaven RP","Build A Boat For Treasure","Car Dealership Tycoon","Car Factory Tycoon!",
                "Clicker Simulator","Combat Warriors","Da Hood","DOORS","Driving Empire","Every Second You Get +1 Damage","Every Second You Get +1 Health","Every Second You Get +1 Jump Power","Every Second You Get +1 Walkspeed",
                "Fly Race","Fruit Battlegrounds","Grand Piece Online","IQ Wars Simulator","Jailbreak","King Legacy","Mad City","Military Tycoon","Murder Mystery 2","Ninja Fighting Simulator",
                "Pet Simulator X!","Pickaxe Mining Simulator","Pixel Piece","Race Clicker","Shindo Life 2","Smoothie Factory Tycoon","Super Hero Tycoon","Super Power Fighting Simulator","Sword Fighters Simulator",
                "The Strongest Battlegrounds","The Survival Game","Ultra Power Tycoon"
            },
                CurrentOption = {"Click to show supported game"},
                MultipleOptions = false,
                Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
                Callback = function(Option)
                -- The function that takes place when the selected option is changed
                -- The variable (Option) is a string for the value that the dropdown was changed to
                end,
            })

        local GamesSection = Games:CreateSection("Changelog")
        local Paragraph = Games:CreateParagraph({Title = "10/16/2023", Content = "[=] Fix key system icon"})
        local Paragraph = Games:CreateParagraph({Title = "10/15/2023", Content = "[+] NEW KEY SYSTEM V2\n[+] PREMIUM COMING SOON\n[+] I forgot to note what I updated, but I updated over 20 new scripts"})
        local Paragraph = Games:CreateParagraph({Title = "10/13/2023", Content = "[+] Obby But You're on a Bike\n[=] Fix Toilet Tower Defense and Haze Piece not show up GUI"})
        local Paragraph = Games:CreateParagraph({Title = "10/11/2023", Content = "[+] Toilet Tower Defense"})
        local Paragraph = Games:CreateParagraph({Title = "10/7/2023", Content = "[=] Add Key System again\n[=] Update: Haze Piece, Anime Champions Simulator and Blade Ball (3 new scripts)"})

        -- Main

            local Main = Window:CreateTab("Main")
            local MainSection = Main:CreateSection("Click to execute!")

            local Button = Main:CreateButton({
                Name = "Hydraa",
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/anisnouacer1/My-Roblox-Scripts/main/Ultra%20Power%20Tycoon.lua"))()
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Hydraa is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

            local Button = Main:CreateButton({
                Name = "Gabescripts",
                Callback = function()
                    loadstring(game:HttpGet("https://gabescripts.com/access.lua"))()
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Gabescripts is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

            local Button = Main:CreateButton({
                Name = "BE&S",
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/PunyGbriel/ScriptUltraPowerTycoon/main/BEESUltraPowerTycoon.txt"))()
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "BE&S is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

            local Button = Main:CreateButton({
                Name = "VcskV",
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/Vcsk/VcskV/main/Hub/VcskV.lua", true))()
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "VcskV is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

        -- Destroy UI

            local MainSection = Main:CreateSection("Click to destroy UI")
            local Button = Main:CreateButton({
                Name = "Destroy UI",
                Interact = 'Button',
                Callback = function()
                    Rayfield:Destroy()
                end,
            })

    elseif game.PlaceId == 8146731988 then -- Ultra Power Tycoon
        local Window = Rayfield:CreateWindow({
            Name = "Gnoh Script Hub (v1.6b) | Ultra Power Tycoon",
            LoadingTitle = "Gnoh Script Hub",
            LoadingSubtitle = "Please Join The Discord If You Need Help!",
            ConfigurationSaving = {
                Enabled = false,
                FolderName = nil, -- Create a custom folder for your hub/game
                FileName = "Gnoh Hub"
            },
            Discord = {
                Enabled = true,
                Invite = "ghhzFtbNsh", -- The Discord invite code, do not include discord.gg/
                RememberJoins = fasle -- Set this to false to make them join the discord every time they load it up
            },
            KeySystem = false, -- Set this to true to use our key system
            KeySettings = {
                Title = "Gnoh Script Hub",
                Subtitle = "Key System",
                Note = "Join the discord to get key (discord.gg/ghhzFtbNsh)",
                FileName = "GnohKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
                SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
                GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
                Key = {"https://raw.githubusercontent.com/chauhong11/a/main/b"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
            }
        })
    
        -- Information

            local Information = Window:CreateTab("Information")
            local Paragraph = Information:CreateParagraph({Title = "Welcome to Gnoh Script Hub!",Content = "This hub currently has 80 games and 600+ scripts running."})
            local Paragraph = Information:CreateParagraph({Title = "Credits to everyone", Content = ""})
            local Paragraph = Information:CreateParagraph({Title = "Press K to hide/show GUI", Content = ""})
            local Button = Information:CreateButton({
                Name = "Please Join Discord If You Need Help! (click to copy)",
                Callback = function()
                    setclipboard('https://discord.gg/ghhzFtbNsh')
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Link is copy (paste it to your website or discord)",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

        -- Supported Games

            local Games = Window:CreateTab("Supported Games")
            local Dropdown = Games:CreateDropdown({
                Name = "80 games",
                Options = {"[+1] Blocks Every Second","[+1] Jump Every Second","[+1] Per Second","Adopt Me","Anime Adventures","Anime Champions Simulator","Anime Fighter Simulator","Anime Fighting Simulator X","Anime Fruit Simulator",
                "Anime Souls Simulator","Anime Weapon Simulator","Arm Wrestle Simulator","Bee Swarm Simulator","Blade Ball","Blox Fruits","Brookhaven RP","Build A Boat For Treasure","Car Dealership Tycoon","Car Factory Tycoon!",
                "Clicker Simulator","Combat Warriors","Da Hood","DOORS","Driving Empire","Every Second You Get +1 Damage","Every Second You Get +1 Health","Every Second You Get +1 Jump Power","Every Second You Get +1 Walkspeed",
                "Fly Race","Fruit Battlegrounds","Grand Piece Online","IQ Wars Simulator","Jailbreak","King Legacy","Mad City","Military Tycoon","Murder Mystery 2","Ninja Fighting Simulator",
                "Pet Simulator X!","Pickaxe Mining Simulator","Pixel Piece","Race Clicker","Shindo Life 2","Smoothie Factory Tycoon","Super Hero Tycoon","Super Power Fighting Simulator","Sword Fighters Simulator",
                "The Strongest Battlegrounds","The Survival Game","Ultra Power Tycoon"
            },
                CurrentOption = {"Click to show supported game"},
                MultipleOptions = false,
                Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
                Callback = function(Option)
                -- The function that takes place when the selected option is changed
                -- The variable (Option) is a string for the value that the dropdown was changed to
                end,
            })

        local GamesSection = Games:CreateSection("Changelog")
        local Paragraph = Games:CreateParagraph({Title = "10/16/2023", Content = "[=] Fix key system icon"})
        local Paragraph = Games:CreateParagraph({Title = "10/15/2023", Content = "[+] NEW KEY SYSTEM V2\n[+] PREMIUM COMING SOON\n[+] I forgot to note what I updated, but I updated over 20 new scripts"})
        local Paragraph = Games:CreateParagraph({Title = "10/13/2023", Content = "[+] Obby But You're on a Bike\n[=] Fix Toilet Tower Defense and Haze Piece not show up GUI"})
        local Paragraph = Games:CreateParagraph({Title = "10/11/2023", Content = "[+] Toilet Tower Defense"})
        local Paragraph = Games:CreateParagraph({Title = "10/7/2023", Content = "[=] Add Key System again\n[=] Update: Haze Piece, Anime Champions Simulator and Blade Ball (3 new scripts)"})

        -- Main

            local Main = Window:CreateTab("Main")
            local MainSection = Main:CreateSection("Click to execute!")

            local Button = Main:CreateButton({
                Name = "Hydraa",
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/anisnouacer1/My-Roblox-Scripts/main/Ultra%20Power%20Tycoon.lua"))()
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Hydraa is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

            local Button = Main:CreateButton({
                Name = "Gabescripts",
                Callback = function()
                    loadstring(game:HttpGet("https://gabescripts.com/access.lua"))()
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Gabescripts is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

            local Button = Main:CreateButton({
                Name = "BE&S",
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/PunyGbriel/ScriptUltraPowerTycoon/main/BEESUltraPowerTycoon.txt"))()
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "BE&S is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

            local Button = Main:CreateButton({
                Name = "VcskV",
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/Vcsk/VcskV/main/Hub/VcskV.lua", true))()
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "VcskV is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

        -- Destroy UI

            local MainSection = Main:CreateSection("Click to destroy UI")
            local Button = Main:CreateButton({
                Name = "Destroy UI",
                Interact = 'Button',
                Callback = function()
                    Rayfield:Destroy()
                end,
            })

    elseif game.PlaceId == 13775256536 or game.PlaceId == 14082129854 then -- Toilet Tower Defense
        local Window = Rayfield:CreateWindow({
            Name = "Gnoh Script Hub (v1.6b) | Toilet Tower Defense",
            LoadingTitle = "Gnoh Script Hub",
            LoadingSubtitle = "Please Join The Discord If You Need Help!",
            ConfigurationSaving = {
                Enabled = false,
                FolderName = nil, -- Create a custom folder for your hub/game
                FileName = "Gnoh Hub"
            },
            Discord = {
                Enabled = true,
                Invite = "ghhzFtbNsh", -- The Discord invite code, do not include discord.gg/
                RememberJoins = fasle -- Set this to false to make them join the discord every time they load it up
            },
            KeySystem = false, -- Set this to true to use our key system
            KeySettings = {
                Title = "Gnoh Script Hub",
                Subtitle = "Key System",
                Note = "Join the discord to get key (discord.gg/ghhzFtbNsh)",
                FileName = "GnohKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
                SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
                GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
                Key = {"https://raw.githubusercontent.com/chauhong11/a/main/b"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
            }
        })
        
        -- Information
        
            local Information = Window:CreateTab("Information")
            local Paragraph = Information:CreateParagraph({Title = "Welcome to Gnoh Script Hub!",Content = "This hub currently has 80 games and 600+ scripts running."})
            local Paragraph = Information:CreateParagraph({Title = "Credits to everyone", Content = ""})
            local Paragraph = Information:CreateParagraph({Title = "Press K to hide/show GUI", Content = ""})
            local Button = Information:CreateButton({
                Name = "Please Join Discord If You Need Help! (click to copy)",
                Callback = function()
                    setclipboard('https://discord.gg/ghhzFtbNsh')
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Link is copy (paste it to your website or discord)",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })
        
        -- Supported Games

            local Games = Window:CreateTab("Supported Games")
            local Dropdown = Games:CreateDropdown({
                Name = "80 games",
                Options = {"[+1] Blocks Every Second","[+1] Jump Every Second","[+1] Per Second","Adopt Me","Anime Adventures","Anime Champions Simulator","Anime Fighter Simulator","Anime Fighting Simulator X","Anime Fruit Simulator",
                "Anime Souls Simulator","Anime Weapon Simulator","Arm Wrestle Simulator","Bee Swarm Simulator","Blade Ball","Blox Fruits","Brookhaven RP","Build A Boat For Treasure","Car Dealership Tycoon","Car Factory Tycoon!",
                "Clicker Simulator","Combat Warriors","Da Hood","DOORS","Driving Empire","Every Second You Get +1 Damage","Every Second You Get +1 Health","Every Second You Get +1 Jump Power","Every Second You Get +1 Walkspeed",
                "Fly Race","Fruit Battlegrounds","Grand Piece Online","IQ Wars Simulator","Jailbreak","King Legacy","Mad City","Military Tycoon","Murder Mystery 2","Ninja Fighting Simulator",
                "Pet Simulator X!","Pickaxe Mining Simulator","Pixel Piece","Race Clicker","Shindo Life 2","Smoothie Factory Tycoon","Super Hero Tycoon","Super Power Fighting Simulator","Sword Fighters Simulator",
                "The Strongest Battlegrounds","The Survival Game","Ultra Power Tycoon"
            },
                CurrentOption = {"Click to show supported game"},
                MultipleOptions = false,
                Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
                Callback = function(Option)
                -- The function that takes place when the selected option is changed
                -- The variable (Option) is a string for the value that the dropdown was changed to
                end,
            })

            local GamesSection = Games:CreateSection("Changelog")
        local Paragraph = Games:CreateParagraph({Title = "10/16/2023", Content = "[=] Fix key system icon"})
        local Paragraph = Games:CreateParagraph({Title = "10/15/2023", Content = "[+] NEW KEY SYSTEM V2\n[+] PREMIUM COMING SOON\n[+] I forgot to note what I updated, but I updated over 20 new scripts"})
        local Paragraph = Games:CreateParagraph({Title = "10/13/2023", Content = "[+] Obby But You're on a Bike\n[=] Fix Toilet Tower Defense and Haze Piece not show up GUI"})
        local Paragraph = Games:CreateParagraph({Title = "10/11/2023", Content = "[+] Toilet Tower Defense"})
        local Paragraph = Games:CreateParagraph({Title = "10/7/2023", Content = "[=] Add Key System again\n[=] Update: Haze Piece, Anime Champions Simulator and Blade Ball (3 new scripts)"})
        
        -- Main

            local Main = Window:CreateTab("Main")
            local MainSection = Main:CreateSection("Click to execute!")

            local Button = Main:CreateButton({
                Name = "Input Recorder",
                Callback = function()
                    loadstring(game:HttpGet('https://raw.githubusercontent.com/ou1z/Roblox-Scripts/master/InputRecorder.lua'))()
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Input Recorder is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

            local Button = Main:CreateButton({
                Name = "LHYT Hub",
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/1f0yt/community/main/toilet"))()
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "LHYT Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

            local Button = Main:CreateButton({
                Name = "Reaper Hub",
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/AyoReaper/Reaper-Hub/main/loader.lua"))()
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Reaper Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })

            local Button = Main:CreateButton({
                Name = "Mukuro Hub",
                Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/xQuartyx/DonateMe/main/ScriptLoader"))()
                    Rayfield:Notify({ -- Notification
                        Title = "Notification",
                        Content = "Mukuro Hub is execute!",
                        Duration = 3,
                        Image = 12139846581,
                    })
                end,
            })
            
        -- Destroy UI

            local MainSection = Main:CreateSection("Click to destroy UI")
            local Button = Main:CreateButton({
                Name = "Destroy UI",
                Interact = 'Button',
                Callback = function()
                    Rayfield:Destroy()
                end,
            })

    elseif game.PlaceId == 14184086618 or game.PlaceId == 14483937954 or game.PlaceId == 14666799841 or game.PlaceId == 14840620690 or game.PlaceId == 14928421933 or game.PlaceId == 14997446013
        or game.PlaceId == 15063879640 then -- Obby But You're on a Bike
        local Window = Rayfield:CreateWindow({
            Name = "Gnoh Script Hub (v1.6b) | Obby But You're on a Bike",
            LoadingTitle = "Gnoh Script Hub",
            LoadingSubtitle = "Please Join The Discord If You Need Help!",
            ConfigurationSaving = {
                Enabled = false,
                FolderName = nil, -- Create a custom folder for your hub/game
                FileName = "Gnoh Hub"
            },
            Discord = {
                Enabled = true,
                Invite = "ghhzFtbNsh", -- The Discord invite code, do not include discord.gg/
                RememberJoins = fasle -- Set this to false to make them join the discord every time they load it up
            },
            KeySystem = false, -- Set this to true to use our key system
            KeySettings = {
                Title = "Gnoh Script Hub",
                Subtitle = "Key System",
                Note = "Join the discord to get key (discord.gg/ghhzFtbNsh)",
                FileName = "GnohKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
                SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
                GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
                Key = {"https://raw.githubusercontent.com/chauhong11/a/main/b"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
            }
        })
            
        -- Information
        local Information = Window:CreateTab("Information")
        local Paragraph = Information:CreateParagraph({Title = "Welcome to Gnoh Script Hub!",Content = "This hub currently has 80 games and 600+ scripts running."})
        local Paragraph = Information:CreateParagraph({Title = "Credits to everyone", Content = ""})
        local Paragraph = Information:CreateParagraph({Title = "Press K to hide/show GUI", Content = ""})
        local Button = Information:CreateButton({
            Name = "Please Join Discord If You Need Help! (click to copy)",
            Callback = function()
                setclipboard('https://discord.gg/ghhzFtbNsh')
                Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Link is copy (paste it to your website or discord)",
                    Duration = 3,
                    Image = 12139846581,
                })
            end,
        })
        
        -- Supported Games
        local Games = Window:CreateTab("Supported Games")
        local Dropdown = Games:CreateDropdown({
            Name = "80 games",
            Options = {"[+1] Blocks Every Second","[+1] Jump Every Second","[+1] Per Second","Adopt Me","Anime Adventures","Anime Champions Simulator","Anime Fighter Simulator","Anime Fighting Simulator X","Anime Fruit Simulator",
            "Anime Souls Simulator","Anime Weapon Simulator","Arm Wrestle Simulator","Bee Swarm Simulator","Blade Ball","Blox Fruits","Brookhaven RP","Build A Boat For Treasure","Car Dealership Tycoon","Car Factory Tycoon!",
            "Clicker Simulator","Combat Warriors","Da Hood","DOORS","Driving Empire","Every Second You Get +1 Damage","Every Second You Get +1 Health","Every Second You Get +1 Jump Power","Every Second You Get +1 Walkspeed",
            "Fly Race","Fruit Battlegrounds","Grand Piece Online","IQ Wars Simulator","Jailbreak","King Legacy","Mad City","Military Tycoon","Murder Mystery 2","Ninja Fighting Simulator",
            "Pet Simulator X!","Pickaxe Mining Simulator","Pixel Piece","Race Clicker","Shindo Life 2","Smoothie Factory Tycoon","Super Hero Tycoon","Super Power Fighting Simulator","Sword Fighters Simulator",
            "The Strongest Battlegrounds","The Survival Game","Ultra Power Tycoon"
        },
            CurrentOption = {"Click to show supported game"},
            MultipleOptions = false,
            Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
            Callback = function(Option)
            -- The function that takes place when the selected option is changed
            -- The variable (Option) is a string for the value that the dropdown was changed to
            end,
        })

        local GamesSection = Games:CreateSection("Changelog")
        local Paragraph = Games:CreateParagraph({Title = "10/16/2023", Content = "[=] Fix key system icon"})
        local Paragraph = Games:CreateParagraph({Title = "10/15/2023", Content = "[+] NEW KEY SYSTEM V2\n[+] PREMIUM COMING SOON\n[+] I forgot to note what I updated, but I updated over 20 new scripts"})
        local Paragraph = Games:CreateParagraph({Title = "10/13/2023", Content = "[+] Obby But You're on a Bike\n[=] Fix Toilet Tower Defense and Haze Piece not show up GUI"})
        local Paragraph = Games:CreateParagraph({Title = "10/11/2023", Content = "[+] Toilet Tower Defense"})
        local Paragraph = Games:CreateParagraph({Title = "10/7/2023", Content = "[=] Add Key System again\n[=] Update: Haze Piece, Anime Champions Simulator and Blade Ball (3 new scripts)"})
        
        -- Main
        local Main = Window:CreateTab("Main")
        local MainSection = Main:CreateSection("Click to execute!")

        local Button = Main:CreateButton({
            Name = "Ginxys Gui",
            Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/Ginxys/ObbyButYouareonbike/main/Script.Lua"))()
                Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Ginxys Gui is execute!",
                    Duration = 3,
                    Image = 12139846581,
                })
            end,
        })

        local Button = Main:CreateButton({
            Name = "Black Gui",
            Callback = function()
                loadstring(game:HttpGet('https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0ObbyBike'))()
                Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Black Gui is execute!",
                    Duration = 3,
                    Image = 12139846581,
                })
            end,
        })
        
        local Button = Main:CreateButton({
            Name = "Vesperia Hub",
            Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/ImPhantoms/Vesperia/main/ObbyButYoureOnABike", true))()
                Rayfield:Notify({ -- Notification
                    Title = "Notification",
                    Content = "Vesperia Hub is execute!",
                    Duration = 3,
                    Image = 12139846581,
                })
            end,
        })
        
        -- Destroy UI
        local MainSection = Main:CreateSection("Click to destroy UI")
        local Button = Main:CreateButton({
            Name = "Destroy UI",
            Interact = 'Button',
            Callback = function()
                Rayfield:Destroy()
            end,
        })
        
    else -- Kick Notify
        game.Players.LocalPlayer:Kick("This game is not supported.") 
    end
    
    -- PandaAuth:LoadScript Example
    local User = {"Encrypted","SkieHacker OwO","9PASA"} -- Fake
    local Fake = {"example","Minecraft","BloxFruit"} -- Fake Script Github Name
    -- PandaAuth:LoadScript(<table> FakeUserTable, <string> FakeScriptName, <table> FakeGithubName, <string> script url link) 
    PandaAuth:LoadScript(User,"Panda",Fake,"https://raw.githubusercontent.com/x9PSwiftz/Panda/main/Example")
end

-- IMPORTANT -----------------------
if islclosure(getgenv().setfenv) then while true do end end -- ANTI SETFENV TAMPERING
if islclosure(getgenv().tostring) then while true do end end -- ANTI TOSTRING TAMPERING
if PandaAuth.GetLink and PandaAuth.LoadScript and PandaAuth.ValidateKey and PandaAuth.SaveKey and PandaAuth.LoadKey then
else -- ANTI Tampering
    while true do end
end
------------------------------------

local function RandomString(length)
    local randomString = ""
    for i = 1, length do
        local randomNumber = math.random(97, 122)
        randomString = randomString .. string.char(randomNumber)
    end
    return tostring(randomString)
end

-- CHECK FOR KEY SYSTEM --
function RemoveKeyUI()
    do
        local keyui = game.CoreGui:FindFirstChild("Panda Key System")
        if keyui then
            keyui:Destroy()
        end
    end
end
RemoveKeyUI()

-- TWEEN GUI --
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
 
local function MakeDraggable(topbarobject, object)
    local Dragging = nil
    local DragInput = nil
    local DragStart = nil
    local StartPosition = nil
 
    local function Update(input)
        local Delta = input.Position - DragStart
        local pos =
            UDim2.new(
                StartPosition.X.Scale,
                StartPosition.X.Offset + Delta.X,
                StartPosition.Y.Scale,
                StartPosition.Y.Offset + Delta.Y
            )
        local Tween = TweenService:Create(object, TweenInfo.new(0.2), {Position = pos})
        Tween:Play()
    end
 
    topbarobject.InputBegan:Connect(
        function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                Dragging = true
                DragStart = input.Position
                StartPosition = object.Position
 
                input.Changed:Connect(
                    function()
                        if input.UserInputState == Enum.UserInputState.End then
                            Dragging = false
                        end
                    end
                )
            end
        end
    )
 
    topbarobject.InputChanged:Connect(
        function(input)
            if
                input.UserInputType == Enum.UserInputType.MouseMovement or
                input.UserInputType == Enum.UserInputType.Touch
            then
                DragInput = input
            end
        end
    )
 
    UserInputService.InputChanged:Connect(
        function(input)
            if input == DragInput and Dragging then
                 Update(input)
            end
        end
    )
end

-- MAIN GUI --
local instance = {obj = {}}
function instance.new(class, properties)
    local inst = Instance.new(class)
    for property, value in next, properties do
        inst[property] = value
    end
    table.insert(instance.obj, inst)
    return inst
end

local object = instance.obj

object.PandaKeySystem = instance.new("ScreenGui", {
    Name = "Panda Key System";
    Parent = game.CoreGui;
    ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
})

object.Main = instance.new("Frame", {
    AnchorPoint = Vector2.new(0.5, 0.5);
    BackgroundColor3 = Color3.fromRGB(17, 24, 39);
    BorderColor3 = Color3.fromRGB(0, 0, 0);
    BorderSizePixel = 0;
    Name = "Main";
    Parent = object.PandaKeySystem;
    Position = UDim2.new(0.492770165, 0, 0.5, 0);
    Size = UDim2.new(0, 380, 0, 200);
})

object.UICorner = instance.new("UICorner", {
    CornerRadius = UDim.new(0, 5);
    Parent = object.Main;
})

object.GetKey = instance.new("TextButton", {
    BackgroundColor3 = Color3.fromRGB(31, 41, 55);
    BorderColor3 = Color3.fromRGB(0, 0, 0);
    BorderSizePixel = 0;
    Font = Enum.Font.Gotham;
    Name = "GetKey";
    Parent = object.Main;
    Position = UDim2.new(0.51810205, 0, 0.742947996, 0);
    Size = UDim2.new(0, 173, 0, 39);
    Text = "Get Key";
    TextColor3 = Color3.fromRGB(225, 225, 225);
    TextSize = 14.000;
})

object.GetKey.MouseButton1Click:Connect(function()
object.TextBox.Text = PandaAuth:GetLink(ServiceName)
setclipboard(PandaAuth:GetLink(ServiceName))
print("[ "..HubName.." ]".." Succesfully copied get key link to clipboard!")
Notify.New("Succesfully copied link!", 2)
end)

object.UICorner = instance.new("UICorner", {
    CornerRadius = UDim.new(0, 5);
    Parent = object.GetKey;
})

object.UIStroke = instance.new("UIStroke", {
    ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
    Color = Color3.fromRGB(51, 61, 77);
    LineJoinMode = Enum.LineJoinMode.Round;
    Parent = object.GetKey;
})

object.TextBox = instance.new("TextBox", {
    BackgroundColor3 = Color3.fromRGB(21, 31, 45);
    BorderColor3 = Color3.fromRGB(0, 0, 0);
    BorderSizePixel = 0;
    Font = Enum.Font.SourceSans;
    Parent = object.Main;
    PlaceholderColor3 = Color3.fromRGB(178, 178, 178);
    PlaceholderText = "Enter your key here..";
    Position = UDim2.new(0.0331600793, 0, 0.414063871, 0);
    Size = UDim2.new(0, 357, 0, 50);
    Text = "";
    TextColor3 = Color3.fromRGB(255, 255, 255);
    TextSize = 14.000;
    TextTruncate = Enum.TextTruncate.AtEnd;
    ClearTextOnFocus = false;
})

if SaveKey and isfile(KeyFile) then
    object.TextBox.Text = readfile(KeyFile)
    Notify.New("Succesfully loaded key!", 5)
end

object.UIPadding = instance.new("UIPadding", {
    PaddingLeft = UDim.new(0, 15);
    Parent = object.TextBox;
})

object.UICorner = instance.new("UICorner", {
    Parent = object.TextBox;
})

object.UIStroke = instance.new("UIStroke", {
ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
Color = Color3.fromRGB(51, 61, 77);
LineJoinMode = Enum.LineJoinMode.Round;
Parent = object.TextBox;
})

object.TopBar = instance.new("Frame", {
    BackgroundColor3 = Color3.fromRGB(31, 41, 55);
    BorderColor3 = Color3.fromRGB(0, 0, 0);
    BorderSizePixel = 0;
    Name = "TopBar";
    Parent = object.Main;
    Size = UDim2.new(0, 380, 0, 30);
})

object.UICorner = instance.new("UICorner", {
    CornerRadius = UDim.new(0, 5);
    Parent = object.TopBar;
})

object.Frame = instance.new("Frame", {
    BackgroundColor3 = Color3.fromRGB(51, 61, 77);
    BorderColor3 = Color3.fromRGB(0, 0, 0);
    BorderSizePixel = 0;
    Parent = object.TopBar;
    Position = UDim2.new(0, 0, 1, 0);
    Size = UDim2.new(0, 380, 0, 1);
})

object.TextLabel = instance.new("TextLabel", {
    BackgroundColor3 = Color3.fromRGB(255, 255, 255);
    BackgroundTransparency = 1;
    BorderColor3 = Color3.fromRGB(0, 0, 0);
    BorderSizePixel = 0;
    Font = Enum.Font.GothamMedium;
    Parent = object.TopBar;
    Position = UDim2.new(0, 0, 0, 0);
    Size = UDim2.new(1, 0, 1, 0);
    Text = HubName.." Key System";
    TextColor3 = Color3.fromRGB(186, 186, 186);
    TextSize = 14.000;
})

object.ImageLabel = instance.new("ImageLabel", {
    BackgroundColor3 = Color3.fromRGB(255, 255, 255);
    BackgroundTransparency = 1.000;
    BorderColor3 = Color3.fromRGB(0, 0, 0);
    BorderSizePixel = 0;
    Image = Icon or "rbxassetid://14692801693";
    Parent = object.Main;
    Position = UDim2.new(0.002, 0, 0, 0);
    Size = UDim2.new(0, 35, 0, 35);
})

object.CheckKey = instance.new("TextButton", {
    BackgroundColor3 = Color3.fromRGB(31, 41, 55);
    BorderColor3 = Color3.fromRGB(0, 0, 0);
    BorderSizePixel = 0;
    Font = Enum.Font.Gotham;
    Name = "Check Key";
    Parent = object.Main;
    Position = UDim2.new(0.0305285007, 0, 0.742947996, 0);
    Size = UDim2.new(0, 173, 0, 39);
    Text = "Check Key";
    TextColor3 = Color3.fromRGB(225, 225, 225);
    TextSize = 14.000;
})

object.CheckKey.MouseButton1Click:Connect(function()
    Check_Key()
end)

object.UICorner = instance.new("UICorner", {
    CornerRadius = UDim.new(0, 5);
    Parent = object.CheckKey;
})

object.UIStroke = instance.new("UIStroke", {
    ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
    Color = Color3.fromRGB(51, 61, 77);
    LineJoinMode = Enum.LineJoinMode.Round;
    Parent = object.CheckKey;
})

object.Desc = instance.new("TextLabel", {
    BackgroundColor3 = Color3.fromRGB(225, 225, 225);
    BackgroundTransparency = 1.000;
    BorderColor3 = Color3.fromRGB(0, 0, 0);
    BorderSizePixel = 0;
    Font = Enum.Font.Gotham;
    Name = "Desc";
    Parent = object.Main;
    Position = UDim2.new(0.17368421, 0, 0.165000007, 0);
    Size = UDim2.new(0, 247, 0, 50);
    Text = Description or "Click 'Get Key' button to get your key!";
    TextColor3 = Color3.fromRGB(61, 71, 85);
    TextSize = 14.000;
})
if Draggable then
    MakeDraggable(object.TopBar, object.Main)
end

oldstring = RandomString(10)
function Check_Key()
    pcall(function()
        print("[ "..HubName.." ]".." Checking key..")
        Notify.New("Checking key..", 2)
        -- Anti Tampering
        if RandomString(10) == oldstring then return Notify.New("Haha kid want to bypass PandaKeySystem v2", 2) end;oldstring = RandomString(10)
        if PandaAuth:GetLink(ServiceName) == nil or PandaAuth:ValidateKey(ServiceName, object.TextBox.Text..RandomString(10)) then
            return Notify.New("Haha kid want to bypass PandaKeySystem v2", 2)
        elseif PandaAuth:ValidateKey(ServiceName, object.TextBox.Text) then
            print("[ "..HubName.." ]".." Key is correct: "..object.TextBox.Text)
            Notify.New("Key is correct: "..object.TextBox.Text, 3)
            PandaAuth:SaveKey(KeyFile, object.TextBox.Text)
            RemoveKeyUI()
            Script()
        else
            print("[ "..HubName.." ]".." Key is invalid!")
            Notify.New("Key is invalid!", 3)
        end
    end)
end

-- AUTO CHECK --
if SaveKey and isfile(KeyFile) then
    Check_Key()
end

-- This is important please dont delete it {
setfenv(1,{})
script = oldscript
-- }
------------------------------------
