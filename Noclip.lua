_G.noclip = not _G.noclip\r\nif not game:GetService('Players').LocalPlayer.Character:FindFirstChild(\"LowerTorso\") then\r\nwhile _G.noclip do\r\ngame:GetService(\"RunService\").Stepped:wait()\r\ngame.Players.LocalPlayer.Character.Head.CanCollide = false\r\ngame.Players.LocalPlayer.Character.Torso.CanCollide = false\r\nend\r\nelse\r\nif _G.InitNC ~= true then     \r\n_G.NCFunc = function(part)      \r\nlocal pos = game:GetService('Players').LocalPlayer.Character.LowerTorso.Position.Y  \r\nif _G.noclip then             \r\nif part.Position.Y > pos then\r\npart.CanCollide = false\r\nend\r\nend\r\nend\r\n_G.InitNC = true \r\nend \r\ngame:GetService('Players').LocalPlayer.Character.Humanoid.Touched:connect(_G.NCFunc) \r\nend
