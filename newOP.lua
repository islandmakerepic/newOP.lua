wait(1)
M=game.Players.LocalPlayer:GetMouse()
    Z=20
    --print''
    
    M.KeyDown:connect(function(K)
        kd=true
        if K=='u' then repeat Z=Z+1 wait() until not kd elseif K=='n' then repeat wait() Z=Z-1 until not kd end
        end)
        M.KeyUp:connect(function(K)
            if K=='u' or K=='n' then kd=false end
            end)
    M.Button1Down:connect(function()
        down=true
        local T=M.Target
        while down and wait() do
            
            if not T or T.Name=='Base' then else
        local cf=M.Hit
            local CF=CFrame.new(script.Parent.Torso.Position,cf.p)*CFrame.new(0,0,-Z)
            T.Anchored=true
            T.CFrame=CF
            local ray = Ray.new(CF.p, (CF.p - script.Parent.Torso.CFrame.p).unit*300)

        local distance = (CF.p - script.Parent.Torso.CFrame.p).magnitude
        local rayPart = Instance.new("Part", workspace)
        rayPart.Name= "RayPart"
        rayPart.BrickColor = BrickColor.new("Bright red")
        rayPart.Transparency = 1
        rayPart.Anchored = true
        rayPart.CanCollide = false
        rayPart.Size = Vector3.new(0.2, 0.2, distance)
        rayPart.CFrame = CFrame.new(CF.p, script.Parent.Torso.CFrame.p) * CFrame.new(0, 0, -distance/2)
        game.Debris:AddItem(rayPart,0.1)
    end
    
            end
    T.Anchored=false
    T.BrickColor=BrickColor.Random()
    end)
    
    M.Button1Up:connect(function()
        down=false
    end)
    --a
