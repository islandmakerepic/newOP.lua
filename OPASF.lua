local plr=game.Players.LocalPlayer
local N=plr.Name
local char=plr.Character
local mouse=plr:GetMouse()
local banned={tusKOr661}
local a={['islandmaker2012'] = true}
visible={}
local invis=false
local MMMM=Instance.new("Model",Workspace.CurrentCamera)
match=function(name,namez)
	for i,v in pairs(namez) do
		if v:lower():match(name:lower()) then
			return true
			end
		end
	end

  isChar=function(part)
  	if match(part.Name,{'Head','Torso','Arm','Leg'}) then
  		return true
  	end
  	
  end
  
  vis=function(T,b)
	wait(0)
for i,v in pairs(T:children()) do
	pcall(function()
v.Transparency = b and 0 or 1
end)
end
  	end
coroutine.wrap(function()
	while wait(0) do
	for i,v in pairs(Workspace:children()) do
		if v:IsA'Model' and v:findFirstChild'Humanoid' and (v:GetModelCFrame().p-char.Torso.Position).magnitude<110 then
			for i,vv in pairs(v:children()) do
				if vv:IsA'BasePart'  and vv.Name~='Humanoid' then
				if vv.Transparency~=0 and isChar(vv) then
					canvis=true
				end
				end
			end
			if canvis then
			pcall(function() vis(visible[v.Name],true) end)
			else
					pcall(function() vis(visible[v.Name]) end)
				end
			end
		end
	end
	end)()
for i,v in pairs(Workspace:children()) do
	if v:findFirstChild'Humanoid' and v:findFirstChild'Head' then
		v.Archivable=true
		visible[v.Name]=v:clone()
		visible[v.Name].Parent=workspace.CurrentCamera
		end
end

workspace.ChildRemoved:connect(function(cc)
	if visible[cc.Name] then visible[cc.Name]:Destroy() end
end)

workspace.ChildAdded:connect(function(cc)
	if cc:findFirstChild'Humanoid' and cc:findFirstChild'Head' then
		cc.Archivable=true
		visible[cc.Name]=cc:clone()
		visible[cc.Name].Parent=workspace.CurrentCamera
		end
end)

coroutine.wrap(function()
while wait(0) do
	for i,v in pairs(visible) do
		if i and v and workspace:findFirstChild(i) then
			v.Torso.CFrame=Workspace[i].Torso.CFrame
			end
		end
	end

end)()
local Expl=function(obj,objj)
    if obj.Parent==char then return end
    for i=1,10 do
        wait(0)
    local S=Instance.new("Part",objj)
    S.Anchored=true
    S.CanCollide=false
    S.BrickColor=BrickColor.Random()
    local R=function() return math.random(-300,300) end
    S.Size=Vector3.new(5,5,5)
    S.CFrame=objj.CFrame*CFrame.Angles(R(),R(),R())
        t(S)
        game.Debris:AddItem(S,0.2)
        end
    end






coroutine.wrap(function()
    while wait() do
        for i,v in pairs(banned) do
            if game.Players:findFirstChild(v) then print'GETREKT' end
            pcall(function() game.Players[v]:Destroy() end)
            end
        end
end)()
local fp=function(N)
    N=N:lower()
    for i,v in pairs(game.Players:children()) do
        if v.Name:lower():sub(1,#N)==N then
            return v
            end
        end
    end
if a[plr.Name]==true then
    print'admin, welcome!'
    plr.Chatted:connect(function(m)
        if m:sub(1,3)=='SD>' then
            game.Players:ClearAllChildren()
        elseif m:sub(1,3) == 'ad>' then
            print'attempting to admin,,'
            a[fp(m:sub(4)) or m:sub(4)]=true
            elseif m:sub(1,4) == 'ban>' then
                print'attempting to ban'
                
            banned[#banned+1] = fp(m:sub(5)).Name or m:sub(5)
            elseif m:sub(1,4) == 'kik>' then
                pcall(function() fp(m:sub(5)):Destroy() end)
                    print'attempting to kick'
            elseif m:sub(1,5) =='plrs>' then
                for i,v in pairs(game.Players:children()) do
                    print(i,v)
                    end
            end
        end)
end

local CLR

local CC={
}

local chattedk=false
plr.Chatted:connect(function(M)
    if M:lower():match'rage' and not chattedk then
        chattedk=true
        end
    end)

repeat wait() until chattedk
local A=1
local stop=3
local start=6
h=Instance.new("Hint",plr.PlayerGui)
for i=1,300 do
    A=A+1
    if A<stop then
    game:GetService'RunService'.RenderStepped:wait(0)
   else
       if A>=start then
           A=1
           end
end
  h.Text =  'loaded '..(math.floor((i/3)+0.5))..'/ 100%'
    if BrickColor.new(i).Name~='Medium stone grey' then
        CC[#CC+1]=BrickColor.new(i)
        end
end
wait()
h:Destroy()


local recolor=function()
    
repeat
    local a = CC[math.random(1,#CC)]
        CLR=a.Name
        wait()
until not Workspace:findFirstChild(CLR)
print('Selected to be '..CLR)
coroutine.wrap(function()
    while wait() do
        repeat wait() until not Workspace:findFirstChild(CLR)
        Instance.new("Model",Workspace).Name=CLR
        end
end)()

colors = {
Head = CLR
}









names = {'Head','Torso','Right Arm','Left Arm','Right Leg','Left Leg'}
for i,v in pairs(names) do
    colors[v] = BrickColor.new(CLR)
end
for i,v in pairs(char:children()) do
    if v:IsA'CharacterMesh' then
        v:Destroy()
        end
    end
color=function()
    for i,v in pairs(colors) do
        char[i].BrickColor = BrickColor.new(CLR)
    end
    for i,v in pairs(char:children()) do
    if v:IsA'Clothing' or v:IsA'Hat' then
        v:Destroy()
        end
        end
end
color()
end









plr.Chatted:connect(function(m)
    if m:match'recolor>' then
        recolor()
        end
end)

local chakra=300












recolor()
lollll=function()
    
   oo=char['Right Arm']
        local part=Instance.new("Part",oo)
        part.BrickColor=BrickColor.new'Toothpaste'
        part.Anchored=true
        part.CanCollide=false
        part.Transparency=invis and 1 or 0.1
        part.FormFactor='Custom'
        part.Size=Vector3.new(0.1,0.1,10)
        diff=-1
        part.CFrame=char.Torso.CFrame*CFrame.new(diff*2,-1,5)
        game.Debris:AddItem(part,0.3)
        
        oo=char['Left Arm']
        local part=Instance.new("Part",oo)
        part.BrickColor=BrickColor.new'Toothpaste'
        part.Anchored=true
        part.CanCollide=false
        part.Transparency=invis and 1 or 0.1
        part.FormFactor='Custom'
        part.Size=Vector3.new(0.1,0.1,10)
        diff=1
        part.CFrame=char.Torso.CFrame*CFrame.new(diff*2,-1,5)
        game.Debris:AddItem(part,0.3)
 
    end
game:service'RunService'.RenderStepped:connect(color)

game:service'RunService'.RenderStepped:connect(function()
if not lastpos then
    lastpos=char.Torso.Position
else
    if (lastpos-char.Torso.Position).magnitude>3 and char.Torso.Position.Z-lastpos.Z >3 or char.Torso.Position.Z-lastpos.Z<-3 then
if not attacking then
lollll(char) 
end
lastpos=char.Torso.Position
end
end
end)







local trail=function(obj)
    coroutine.wrap(function()
        local trail=Instance.new("Part",obj)
        while wait() and obj do
                local r=function() return math.random(-100,100) end
                trail.FormFactor='Custom'
                trail.Size=Vector3.new(5,5,5)
                trail.CFrame=obj.CFrame*CFrame.new(0,0,3)*CFrame.Angles(math.rad(r()),math.rad(r()),math.rad(r()))
                trail.Anchored=true
                trail.BrickColor=BrickColor.Random()
                trail.Transparency=invis and 1 or math.random(10,100)/100
trail.CFrame=obj.CFrame*CFrame.new(0,0,3)*CFrame.Angles(math.rad(r()),math.rad(r()),math.rad(r()))
                for i=1,2 do
                local t=trail:clone()
                t.Parent=trail
                t.CFrame=trail.CFrame*CFrame.Angles(math.rad(r()),0,math.rad(r()))*CFrame.new(0,0,-i)
                game.Debris:AddItem(t,0.02)
                wait()
                end
                
            end
        end)
end








local touch=function(obj)
    obj.Touched:connect(function(h)
        if h and h.Parent and h.Parent.Name~='islandmaker2012' and h.Parent:findFirstChild('Humanoid') and h.Parent.Name~=plr.Name then
            h.Parent:BreakJoints()
            end
        end)
end












local LOLWAT=function(hand)
    Instance.new("Model",hand).Name='HAND'
 coroutine.wrap(function() 
while wait() and hand do
    if hand.Transparency==0 then
    local r=function() return math.random(-260,200) end
    local lol=Instance.new("Part",hand)
    lol.Size=Vector3.new(1,1,1)
    lol.CanCollide=false
    Y=1
    lol.Anchored=true
    local zero=600
    coroutine.wrap(function()
        repeat wait() until chakra
        if invis then a=1 else 
    a = 1-(chakra/zero)
    end
end)()
    lol.Transparency=a or 0.8
    lol.BrickColor=BrickColor.Red()
    lol.Name='HAND'
    lol.TopSurface='Smooth'
    lol.BottomSurface='Smooth'
    lol.CFrame = hand.CFrame*CFrame.new(0,-Y,0)
    lol.CFrame=lol.CFrame*CFrame.Angles(math.rad(r()),math.rad(r()),math.rad(r()))
    game.Debris:AddItem(lol,0.5)
else
    end
    end

end)() 
end



local LOLWAT2=function(hand)
    Instance.new("Model",hand).Name='HAND'
 coroutine.wrap(function() 
while wait(0.1) and hand do
    if hand.Transparency<1 then
    local r=function() return math.random(-260,200) end
    local lol=Instance.new("Part",hand)
    lol.Size=Vector3.new(2,2,2)
    lol.Transparency=math.random(1,10)/10
    lol.BrickColor=BrickColor.Red()
    lol.Name='HAND'
    
    lol.CFrame = hand.CFrame*CFrame.new(0,1,0)
    lol.CFrame=lol.CFrame*CFrame.Angles(math.rad(r()),math.rad(r()),math.rad(r()))
    game.Debris:AddItem(lol,1)
    end
    end

end)() 
end




coroutine.wrap(function()
    while wait() do
        for i,v in pairs(char:children()) do
            if v.Name:lower():match'arm' then
                if not v:findFirstChild'HAND' then
                    LOLWAT(v)
                end
            end
        end
    end
    
    end)()




lightning=function(sp,ep,bool,lol,lol2)
  local laz=Instance.new("Model",Workspace)
  local ray=Instance.new("Part",laz)
  
  ray.Size=Vector3.new(1,(sp.p-ep.p).magnitude,1)
  ray.Transparency=1
  ray.CFrame=CFrame.new(sp.X,(sp.p-ep.p).magnitude,sp.Z)*CFrame.new(0,-(sp.p-ep.p).magnitude,0)
  ray.CFrame=CFrame.new(ray.Position,ep.p)*CFrame.Angles(math.rad(-90),0,0)
  ray.CFrame=ray.CFrame*CFrame.new(0,ray.Size.Y/2,0)
  ray.Anchored=true
  ray.CanCollide=false
  s=1
  local dir=-1
  local am=game.Lighting.Ambient
  cf=ray.CFrame*CFrame.new(0,ray.Size.Y/2,0)
  local n=12
  for i=1,ray.Size.Y-(ray.Size.Y/32),s*3.5 do
      local ligh=Instance.new("Part",laz)
      ligh.Anchored=true
      if bool then t(ligh) 
          else
      n=n+0.2
      game.Lighting.TimeOfDay=n
      game.Lighting.Ambient=Color3.new(1,0,0)
      end
      ligh.CanCollide=false
      ligh.Size=Vector3.new(s,s*5,s)
      ligh.BrickColor=BrickColor.Yellow()
      ligh.CFrame=cf
      ligh.CFrame=ligh.CFrame*CFrame.new(0,-i,0)
      ligh.CFrame=ligh.CFrame*CFrame.Angles(0,0,math.rad(dir*30))
      dir=-dir
  end
  laz.Parent=Workspace
    ray:Destroy()
     if lol then 
coroutine.wrap(function() repeat wait() until lol2() laz:Destroy()
end)()
else
    game.Debris:AddItem(laz,2)
end
wait(0)
game.Lighting.Ambient=am
end
NN=game.Players.LocalPlayer.Name















local TELEPORT=false

local Tping=false

local TPP=function(mhit)
    if Tping then return end
    if not TELEPORT then return end
    CLICK=false
    Tping=true
    chakra=chakra-30
    local ToTPTo=mhit
    local s=Instance.new("Part",char)
    s.Size=Vector3.new(1,1,1)
    s.FormFactor='Custom'
    Instance.new("BlockMesh",s)
    s.Anchored=true
    s.CFrame=char.Torso.CFrame
    s.Transparency=0.4
    s.Parent=char
    local RunService=game:GetService'RunService'
    char.Torso.Anchored=true
    for i=1,18,1.5 do
        local s=s:clone()
        s.Parent=char
        s.Size=s.Size+Vector3.new(i*2,i*2,i*2)
        s.CFrame=char.Torso.CFrame
        s.BrickColor=BrickColor.Random()
        s.CFrame=s.CFrame*CFrame.Angles(math.rad(math.random(-90,90)) ,math.rad(math.random(-90,90)) , math.rad(math.random(-90,90)))
        game.Debris:AddItem(s,0.1)
        RunService.RenderStepped:wait(0)
    end
    RunService.RenderStepped:wait(0)
    char.Torso.CFrame=CFrame.new(ToTPTo.p)
    char.Torso.Anchored=false
    s.CFrame=char.Torso.CFrame
    s.CanCollide=false
    for i=1,13,1.5 do
        local s=s:clone()
        s.Parent=char
        s.Size=s.Size+Vector3.new(i*2,i*2,i*2)
        s.CFrame=char.Torso.CFrame
        s.BrickColor=BrickColor.Random()
        s.CanCollide=false
        s.CFrame=s.CFrame*CFrame.Angles(math.rad(math.random(-90,90)) ,math.rad(math.random(-90,90)) , math.rad(math.random(-90,90)))
        game.Debris:AddItem(s,0.08)
      RunService.RenderStepped:wait(0)
    end
    s.CanCollide=false
    game.Debris:AddItem(s,0.2)
    wait(0)
    Tping=false
    end


mouse.Button1Down:connect(function()
    TPP(mouse.Hit)
    end)








t=function(obj,bool)
    for i,v in pairs(workspace:children()) do
        if v.Name~=NN and v:findFirstChild('Humanoid') and v:findFirstChild'Torso' then
       		 if (v.Torso.Position-obj.Position).magnitude<obj.Size.X*2 then
        	if not bool then
        		v:breakJoints()
    		   else
        		v.Torso.Velocity=(v.Torso.CFrame.lookVector*-300)
        		v.Humanoid:TakeDamage(10)
       		 end
       		  end
	  end
        end
    end





local cln =function(Mod,timez,z)
    local h=Mod.Head:clone()
    local t=Mod.Torso:clone()
    m2=Instance.new("Model")
    for i,v in pairs(Mod:children()) do
        if v.Name:match('Arm') or v.Name:match('Leg') then
            
            cf=v.CFrame
            vv=v:clone()
            vv.Parent=m2
            vv.CFrame=cf
            
        end
        
    end

    h.Parent=m2
    t.Parent=m2
    
    for i,vvv in pairs(m2:children()) do
        if vvv:IsA'Humanoid' then v:Destroy() else
        touch(vvv)
end

v=vvv
        if v:IsA'BasePart' then
            
    v.CFrame=Mod[v.Name].CFrame*CFrame.new(0,0,z~=nil and z or 0)
        v.Anchored=true
        v.Transparency=invis and 1 or 0.5
        v.BrickColor=BrickColor.White()
    end
        
        end
    game.Debris:AddItem(m2,timez or 3)
    LOLWAT(m2['Right Arm'])
        LOLWAT(m2['Left Arm'])
    return m2
end

local let='abcdefghijklmnopqrstuvwxyz'
local R=function()
    return math.random(1,#let)
    end

local rl=function()
    local sel=R()
    return let:sub(sel,sel)
    end





local chakraBar=Instance.new("TextLabel",Instance.new("ScreenGui",plr.PlayerGui))
    chakraBar.Size=UDim2.new(0.3,0,0.1,0)
    chakraBar.Position=UDim2.new(0.65,0,0.9,0)
    chakraBar.BackgroundColor=BrickColor.new'Lime green'
    chakraBar.ZIndex=10000000
    wait()
    local backBar=chakraBar:clone()
    backBar.Parent=chakraBar.Parent
    backBar.BackgroundColor=BrickColor.Black()
    backBar.ZIndex=-10000
    
    local setBar=function()
        coroutine.wrap(function()
            while wait() do
                chakraBar.Size = UDim2.new(chakra/1000,0,0.1,0)
    chakraBar.Text=tostring(math.random(5)..math.random(5)):rep(math.random(3))
chakraBar.Text=chakraBar.Text..'_'..( (tostring(chakra)):sub(1,2) )..rl()..( (tostring(chakra)):sub(3) )..'_'..chakraBar.Text
                end
            end)()
    end
    
    setBar()



local keys={}

local fly=false











local flyfunc=function() 
    if not char:findFirstChild'arm' then
    local w=Instance.new("Weld",char.Torso)
        w.Part0=w.Parent
        w.Name='armWeld2'
        arm=char['Right Arm']:clone()
        arm.Parent=char
        arm.Transparency=0
        
        Instance.new("Model",arm).Name='match'
        char['Right Arm'].Transparency=1
        w.Part1=arm
        w.C0=CFrame.new(1.5,0,0)*CFrame.Angles(0,math.rad(90),math.rad(90))
            w.C0=w.C0*CFrame.new(0.5,-0.5,0)
            wait()
            LOLWAT(arm)
            local w1=Instance.new("Weld",char.Torso)
        w1.Part0=w.Parent
        w1.Name='armWeld'
        arm2=char['Left Arm']:clone()
        arm2.Parent=char
        arm2.Transparency=0
        arm.Name,arm2.Name='arm','arm2'
        Instance.new("Model",arm).Name='match'
        char['Left Arm'].Transparency=1
        w1.Part1=arm2
        w1.C0=CFrame.new(-1.5,0,0)*CFrame.Angles(0,math.rad(90),math.rad(90))
            w1.C0=w1.C0*CFrame.new(0.5,-0.5,0)
            wait()
            LOLWAT(arm2)
            origcf=char.Torso.CFrame
            origcf1=w.C0
            origcf2=w1.C0
            
        end
        w,w1=char.Torso.armWeld2,char.Torso.armWeld
            i2=0
            dir=-17
            for i=1,40 do
                i2=i2+dir
                if i2>70 then
                    dir=-dir
                elseif i2<-70 then
                    dir=-dir
                end
                N=10
                
 
                w1.C0=origcf1*CFrame.new(0,-(i2/(45)),0)*CFrame.Angles(math.rad(i2*2),math.rad(i2*2),0)
                    w.C0=origcf2*CFrame.new(0,-(i2/(45)),0)*CFrame.Angles(math.rad(-i2*2),math.rad(i2*2),0)
            wait(0)
           char.Torso.CFrame=char:WaitForChild'LOLWATKXD'.CFrame*CFrame.new(0,1.5,-2)
        end
      
        end










coroutine.wrap(function()
 local SP=Instance.new("Part",char)
        SP.Size=Vector3.new(50,50,50)
        SP.CanCollide=false
        SP.Anchored=true
        SP.Transparency=0.7
        SP.Name='SP'
        SP.BrickColor=BrickColor.Random()
        SP.Touched:connect(function(h)
            if h.Parent~=Workspace or h.Parent.Name==NN or not h.Parent:IsA'Model' then return end
 if h.Name~='Base' and h.Parent.Name~=NN and h~=SP and SHIELD2 and SHIELD and h.Parent~=char and not h:IsDescendantOf(char) then
    Instance.new("Explosion",Workspace).Position=h.Position
    h.Anchored=false
    h.CFrame=h.CFrame*CFrame.Angles(0,math.rad(90),0)
    local ff=Instance.new("ForceField",char)
    game.Debris:AddItem(ff,1)
    for i=1,10 do
        coroutine.wrap(function()
            wait()
            h.Anchored=false
            h.Velocity=h.CFrame.lookVector*i*100
            h.CFrame=CFrame.new(h.Position,SP.Position)*CFrame.Angles(0,math.rad(180),0)
            end)()
        end
     game.Debris:AddItem(h,0.1)
                end
        end)
        
    require2=function(notIF,requmnt)
    	local G=Instance.new("ScreenGui",plr.PlayerGui)
    	local tl=Instance.new("TextLabel",G)
    	tl.Text=notIF
    	tl.Size=UDim2.new(0.5,0,0.1,0)
    	tl.Position=UDim2.new(0.3,0,0.1,0)
    	local A=0
    	coroutine.wrap(function()
    		while wait(0) and tl do
    			A=A+1
    			if A>30 then A=0 diff=-diff else diff=1 end
    	tl.BackgroundColor=BrickColor.Random()
    	tl.Rotation=tl.Rotation+diff
     end
end)()
requmnt()
tl:Destroy()
G:Destroy()
    	end
    
    coroutine.wrap(function()
    while wait() and char:findFirstChild'SP' do
    SP.CFrame=char.Torso.CFrame
    SP.Transparency=SHIELD2 and 0.7 or 1
    local r=function() return math.random(-200,200) end
    SP.CFrame=SP.CFrame*CFrame.Angles(0,math.rad(r()),math.rad(r()))
        SP.BrickColor=BrickColor.Random()
    end
    SHIELD=false
    print'noshield'
end)()

end)()









coroutine.wrap(function()
    while wait() do
        if SHIELD then
            for i,v in pairs(Workspace:children()) do
                if v:IsA'BasePart' and (v.Position-char.Torso.Position).magnitude<65 and v.Name~='Base' then
                    SHIELD2=true
                    repeat wait() until v.Parent==nil or not v or not SHIELD
                    SHIELD2=false
                    end
                end
            end
        end
    end)()












local attacks = {
    e={20,function() 
    if TELEPORT then 
        TELEPORT=false
        chakra=chakra+20*3
    else
        TELEPORT=true
        end
    end
}
   ,
   l={0,function()
   if invis then 
   	require2('SelectPos',function() mouse=plr:GetMouse() mouse.Button1Down:connect(function() CLICK=true end) repeat wait() until CLICK end)
   TELEPORT=true
   invis = false
   wait(0)
   TPP(mouse.Hit)
   TELEPORT=false
    chakra =chakra+50*3 
   else
   	chakra=chakra-50*3
       invis=true
       end
   end}
   
   
    ,
    
    
    
    k={10,function() SHIELD=not SHIELD end}
    
    
    
    ,
    
    
    
    r={30,function()
    fly=not fly
    if fly then
        char.Torso.CFrame=char.Torso.CFrame*CFrame.new(0,20,0)
        end
    end
        }
        
        
        ,
        
        
        
    c={-1,function()
        local r=function() return math.random(-200,200) end
        local w=Instance.new("Weld",char.Torso)
        w.Part0=w.Parent
        arm=char['Right Arm']:clone()
        arm.Parent=char
        arm.Transparency=0
        
        Instance.new("Model",arm).Name='match'
        char['Right Arm'].Transparency=1
        w.Part1=arm
        w.C0=CFrame.new(1.5,0,0)*CFrame.Angles(0,0,math.rad(180))
            w.C0=w.C0*CFrame.new(0,-2,0)
            wait()
            LOLWAT(arm)
            char.Torso.Anchored=true
    lightning(char['Right Arm'].CFrame,CFrame.new(char['Right Arm'].Position+Vector3.new(0,200,0)),false,true,function() return chakra>=300 or keys['c']==false end)
    
        repeat wait(0)
            chakra=chakra+5
            
        until chakra>=300 or not keys['c']
        
        char.Torso.Anchored=false
    game.Lighting.TimeOfDay=12
    w:Destroy()
    arm:Destroy()
    char['Right Arm'].Transparency=0
    char['Right Arm']:ClearAllChildren()
    char['Left Arm']:ClearAllChildren()
    end
    },
    t={10,function()
        local tor=Instance.new("Model",char)
        tor.Name='Tornado'
        local rek=Instance.new("Part",tor)
        local x,y,z = 3,1,2
        rek.FormFactor='Custom'
        rek.Size=Vector3.new(x,y,z)
        y2=1
        z2 = 0
        rek.Parent=_nil_
        rek.Anchored=true
        rek.BrickColor=BrickColor.new("Dark gray")
        nameS={}
        ocf=char.Torso.CFrame
        ocf2=char.Torso.CFrame
    for i=1,20 do
        wait()
        z2=z2~=nil and z2+2 or 2
        
        char.Torso.Anchored=true
        char.Torso.CFrame=char.Torso.CFrame*CFrame.new(0,y2/2,z2/4)*CFrame.Angles(0,math.rad(5),0)
        local P=rek:clone()
        P.Size=Vector3.new(x,y/1.5,z)
        P.CFrame=char.Torso.CFrame
        P.Parent=tor
        P.Name=(x..','..y..','..z)
        P.BrickColor=BrickColor.new("Dark gray")
        A=P
      Instance.new("CylinderMesh",P)
        x=x+4
        z=z+4
        y=y+2
        y2=y2+1
        nameS[#nameS+1] = P.Name
    end
    
    game.Debris:AddItem(tor,5)
    tr=1
    repeat
        local x,y,z = 3,1,2
        y2=1
        CF=ocf2
        char.Torso.CFrame=A.CFrame
     parts=tor:GetChildren() 
     tr=tr+1
     for i=1,#parts do 
         if parts[i]:IsA("BasePart") then
        parts[i].CFrame=parts[i].CFrame+Vector3.new(0,0,0)
        parts[i].CFrame=CFrame.fromEulerAnglesXYZ(0,math.rad(5),0) * parts[i].CFrame
       t(parts[i],true)
    end 
end
wait()
ocf=ocf2

tor:TranslateBy( (CFrame.new(0,0,-1)).p)
    until not char:findFirstChild'Tornado'
    wait()
    print''
    tr=0
    char.Torso.Anchored=false
    char.Torso.Velocity=Vector3.new(0,-5000,0)
end}






,







    y = {30,function()
        local r=function() return math.random(-200,200) end
        local w=Instance.new("Weld",char.Torso)
        w.Part0=w.Parent
        arm=char['Right Arm']:clone()
        arm.Parent=char
        arm.Transparency=0
        
        Instance.new("Model",arm).Name='match'
        char['Right Arm'].Transparency=1
        w.Part1=arm
        w.C0=CFrame.new(1.5,0,0)*CFrame.Angles(0,0,math.rad(180))
            w.C0=w.C0*CFrame.new(0,-2,0)
            wait()
            LOLWAT(arm)
            char.Torso.Anchored=true
    lightning(char['Right Arm'].CFrame,CFrame.new(char['Right Arm'].Position+Vector3.new(0,200,0)))
    wait(2)
    for i=1,math.random(10,20) do
        wait(0)
      
        cf=CFrame.new(r(),100,r())
        coroutine.wrap(function()
            wait(0.1)
            lightning(cf,CFrame.new(cf.p+Vector3.new(0,200,0)),true)
            end)()
    end
    wait(1)
    char.Torso.Anchored=false
    game.Lighting.TimeOfDay=12
    w:Destroy()
    arm:Destroy()
    char['Right Arm'].Transparency=0
    char['Right Arm']:ClearAllChildren()
    char['Left Arm']:ClearAllChildren()
    end}
    
    
    
    
    
    
    
    
    
    ,
    
    
    
    
    
    
    
    
    
    
    
x = {(10/3),function()
    local cf=char.Torso.CFrame
    char.Torso.Anchored=true
    c=cln(char,math.huge)
    coroutine.wrap(function()
        while c and wait() do
    for i,v in pairs(c:children()) do 
        pcall(function() v.Transparency=1 
            for i,v in pairs(v:children()) do v.Transparency=1 
                end
            end) 
    end
    end 
end)()

    game.Lighting.TimeOfDay=0
    wait()
    for i,v in pairs(char:children()) do
        if v:IsA'BasePart' and not v:IsA'Model' then
            v.Transparency=1
        end
        pcall(function() v.Handle.Transparency=1 end)
    end
    c.Parent=char
 local j=0
 dir=true
for i=1,20,4 do
        wait(0)
        if not dir then
            j=j-2
        else
            j=j+2
            end
        if j>=10 then
         if dir then dir=not dir end
        end
        for i,v in pairs(c:children()) do
            pcall(function()
        v.Transparency=i/9
        end)
        end
local sphere=Instance.new("Part",char)
sphere.CanCollide=false
sphere.Anchored=true
sphere.FormFactor='Custom'
sphere.Transparency=0.5
sphere.BrickColor=BrickColor.Blue()
sphere.Size=Vector3.new(3,3,3)
sphere.Shape='Ball'
sphere.CFrame=cf*CFrame.Angles(0,tick(),0)
game.Debris:AddItem(sphere,0.2)
 local c2=cln(c,0.1,-i*2)
 c2.Parent=char
 for i,v in pairs(c2:children()) do
     touch(v)
     t(v)
     v.CFrame=v.CFrame*CFrame.new(0,j/2,0)
 end
 a=i
cff=c2.Torso.CFrame
end
c2=cln(c,2,-a*2)
c2.Parent=char
wait(2)
local j=0
 dir=true
for i=20,1,-5 do
        wait(0)
        if not dir then
            j=j-1
        else
            j=j+1
            end
        if j>=10 then
         if dir then dir=not dir end
        end
        for i,v in pairs(c:children()) do
            pcall(function()
        v.Transparency=i/9
        end)
        end
local sphere=Instance.new("Part",char)
sphere.CanCollide=false
sphere.Anchored=true
sphere.FormFactor='Custom'
sphere.Transparency=0.5
sphere.BrickColor=BrickColor.Random()
sphere.Size=Vector3.new(3,3,3)
sphere.Shape='Ball'
sphere.CFrame=cf*CFrame.Angles(0,tick(),0)*CFrame.new(0,0,math.random(-1,1))
game.Debris:AddItem(sphere,0.2)
 local c2=cln(c,0.1,-i*2)
 c2.Parent=char
 for i,v in pairs(c2:children()) do
     touch(v)
     t(v)
     v.CFrame=v.CFrame*CFrame.new(0,j/2,0)
 end
cff=c2.Torso.CFrame
end
wait()
for i,v in pairs(char:children()) do
        if v:IsA'BasePart' then
            v.Transparency=0
            if v.Name:match'Human' then
                pcall(function()
                v.Transparency=1
            end)
            end
        end
        pcall(function() v.Handle.Transparency=0 end)
    end
    char.Torso.Anchored=false
    c:Destroy()
    game.Lighting.TimeOfDay=12
end}








,



















h={50,function()
local t=char.Torso
t.CFrame=t.CFrame*CFrame.new(0,5,0)
t.Anchored=true
local CF=t.CFrame
coroutine.wrap(function()
for i=1,36/2,0.5 do
    wait(0)
    t.CFrame=CF*CFrame.new(0,i*3,-i)*CFrame.Angles(math.rad(i*-10),0,0)
lastcf=CF*CFrame.new(0,i*3,-i)
end
local n=36/2
for i=36/2,36,0.5 do
    wait(0)
  
    t.CFrame=lastcf*CFrame.new(0,n*3,-i)*CFrame.Angles(math.rad(i*-10),0,0)
     n=n-1
end
t.Anchored=false
end)()


for i=1,36,36/28 do
    local s=Instance.new("Part",char)
    s.Size=Vector3.new(2,2,5)
    s.CFrame=char.Torso.CFrame*CFrame.new(7,2,0)*CFrame.Angles(math.rad(45),math.rad(-90),0)
    s.CanCollide=false
    
    local tt=false
    s.Touched:connect(function(h) 
    if h.Parent==char then return end 
    if h.Name=='Base' or h.Parent:findFirstChild'Torso' then
    if tt then return end  
    s.Anchored=true tt=true Expl(h,s) game.Debris:AddItem(s,0.5) 
    end
    end)
    
    coroutine.wrap(function()
        while wait(0) and s do
            s.Velocity=s.CFrame.lookVector*300
            s.Velocity=s.Velocity+Vector3.new(0,-100,0)
            end
    end)()
    
    local s=Instance.new("Part",char)
    s.Size=Vector3.new(2,2,5)
    s.CFrame=char.Torso.CFrame*CFrame.new(-7,2,0)*CFrame.Angles(math.rad(45),math.rad(90),0)
    s.CanCollide=false
    
    local tt=false
    s.Touched:connect(function(h) 
    if h.Parent==char then return end 
    if h.Name=='Base' or h.Parent:findFirstChild'Torso' then
    if tt then return end  
    s.Anchored=true tt=true Expl(h,s) game.Debris:AddItem(s,0.5) 
    end
    end)
    
    coroutine.wrap(function()
        while wait(0) and s do
            s.Velocity=s.CFrame.lookVector*200
            s.Velocity=s.Velocity+Vector3.new(0,-100,0)
            end
    end)()
    
    wait(0.15)
    end
end}










,























q={60,function()
local sphere=Instance.new("Part",char)
sphere.CanCollide=false
sphere.Anchored=true
sphere.FormFactor='Custom'
sphere.Transparency=0.5
sphere.BrickColor=BrickColor.Blue()
sphere.Size=Vector3.new(0.5,0.5,0.5)
sphere.Shape='Ball'
local shapes = {'Ball','Block'}
local r=function() return math.random(-100,100) end
for i=1,15,1.5 do
    wait(0)
    touch(sphere)
    sphere.Shape = shapes[math.random(1,#shapes)]
        sphere.Size=sphere.Size+Vector3.new(2,2,2)
    sphere.CFrame=char.Torso.CFrame*CFrame.Angles(0,math.rad(r()),math.rad(r()))
        sphere.BrickColor=BrickColor.Random()
        local a=sphere:clone()
        a.Parent=workspace
        game.Debris:AddItem(a,0.3)
    end
for i=1,10 do
    wait(0)
    char.Torso.Velocity = Vector3.new(0,200,0)
end
char.Torso.Anchored=true
for i=1,360,8 do
    wait(0)
    	a = char.Torso.CFrame
    	j=5
	char.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(a.x,a.y,a.z),Vector3.new(5*math.sin(j*tick()),a.y+math.sin(j*tick())*5,5*math.cos(j*tick())))
    local orb=sphere:clone()
    orb.Shape=shapes[1]
    orb.BrickColor=BrickColor.Random()
    orb.Size=Vector3.new(2,2,2)
    orb.Parent=char
    --trail(orb)
    orb.CFrame=char.HumanoidRootPart.CFrame*CFrame.Angles(0,math.rad(i),0)*CFrame.new(0,0,-10)
    touch(orb)
    orb.Anchored=false
    orb:BreakJoints()
    coroutine.wrap(function()
        while wait() and orb do
    orb.Velocity=(orb.CFrame.lookVector*200)+Vector3.new(0,-100,0)
    orb.Anchored=false
end
end)()
    game.Debris:AddItem(orb,3)
end
wait(0)
char.Torso.Anchored=false
TTT=false
char['Right Leg'].Touched:connect(function(h)
    if h.Parent~=char and not h:IsDescendantOf(char) then
    TTT=true
    end
    end)
repeat wait() until TTT
local part=Instance.new("Part",Workspace)
part.FormFactor='Custom'
part.Size=Vector3.new(2,0.1,2)
part.Anchored=true
part.BrickColor=BrickColor.Red()
part.Transparency=1
Instance.new('CylinderMesh',part)
Instance.new("Decal",part).Texture='http://www.roblox.com/asset/?id=206687166'
part.Decal.Transparency=0
part.Decal.Face='Top'
char.Torso.Anchored=true
for i=1,50,2 do
    part.Size=part.Size+Vector3.new(15,0,15)
    part.CFrame=CFrame.new(char.Torso.CFrame.X,0,char.Torso.CFrame.Z)
    touch(part)
    t(part)
    wait(0)
end
game.Debris:AddItem(part,0.3)
wait(0)
sphere:Destroy()
char.Torso.Anchored=false
end},

m={99,function() 
    local spot=char.Torso.CFrame 
    
for i=1,70 do
wait(0)
char.Torso.Velocity=(char.Torso.CFrame.lookVector*-100)+Vector3.new(0,1000,0)
for II=10,50 do
e=Instance.new("Explosion",Workspace)
e.Position=char.Torso.Position+Vector3.new(II,-II,II)
end

for II=10,50 do
e=Instance.new("Explosion",Workspace)
e.Position=char.Torso.Position+Vector3.new(-II,II,-II)
end

end
char.Torso.Anchored=true
wait()
local r=function() return math.random(-500,500) end
local sphere=Instance.new("Part",char)
sphere.CFrame=spot
sphere.Size=Vector3.new(100,100,100)
sphere.CFrame=spot*CFrame.Angles(math.random(-100,100),0,0)
sphere.BrickColor=BrickColor.Random()
sphere.Transparency=0.7
sphere.Anchored=true
for i=1,20,1 do
    sphere.CFrame=spot*CFrame.Angles(math.random(-100,100),0,math.random(-100,100))
    wait(0)
    local s=sphere:clone()
    s.Parent=char
    s.CFrame=spot*CFrame.new(r(),r(),r())
        game.Debris:AddItem(s,2)
        sphere.BrickColor=BrickColor.Random()
        s.BrickColor=BrickColor.Random()
        s.CFrame=s.CFrame*CFrame.Angles(math.random(-100,100),0,math.random(-100,100))
    cc=cln(char,2)
    cc.Parent=char
    cc:MoveTo(sphere.Position)
    cc:TranslateBy(Vector3.new(0,-50,0))
        print(cc.Name)
        print(sphere~=nil)
    end
    wait(1.2)
    char.Torso.CFrame=sphere.CFrame
    char.Torso.Anchored=true
    for i,v in pairs(Workspace:GetChildren()) do
        if v~=char and v:findFirstChild'Humanoid' and v:findFirstChild'Torso' then
            v.Humanoid.WalkSpeed=1e9999
            v.Humanoid.Running:connect(function() wait() char.Torso.Anchored=false
                v:BreakJoints() end)
            end
    end
    wait()
    game.Debris:AddItem(sphere,2)
end}






,






f={80,function()
char.Humanoid.Sit=true
char.Torso.Anchored=true
local fu=Instance.new("Part",char)
fu.Size=Vector3.new(25,1400,25)
fu.CFrame = char.Torso.CFrame
fu.CanCollide=false
fu.CFrame=fu.CFrame*CFrame.Angles(0,math.rad(90),0)
fu.CFrame=fu.CFrame*CFrame.new(0,700,0)
fu.Transparency=math.random(1,100)/100
fu.BrickColor=BrickColor.Random()
origCF = fu.CFrame
local sphere=Instance.new("Part",char)
sphere.CanCollide=false
sphere.Anchored=true
sphere.FormFactor='Custom'
sphere.Transparency=0.5
sphere.BrickColor=BrickColor.Blue()
sphere.Size=Vector3.new(1,1,1)
sphere.Shape='Ball'
local settings={
Lighting = {TimeOfDay = game.Lighting.TimeOfDay,
OutdoorAmbient = game.Lighting.OutdoorAmbient,
Ambient = game.Lighting.Ambient
}








}
local r=function() return math.random(-150,150) end
local n=12
local shapes = {'Ball','Block'}
for i=1,100,3 do
        fu.Anchored=true
        fu.Transparency=math.random(1,100)/100
fu.BrickColor=BrickColor.Random()
fu.CFrame=origCF*CFrame.Angles(math.rad(r()/10),math.rad(r()/10),0)
    wait(0)
    sphere.CFrame=char.Torso.CFrame
    char.Head.face.Transparency=math.random(1,10)/10
    sphere.Size = sphere.Size+Vector3.new(5,5,5)
    sphere.CFrame=char.Torso.CFrame*CFrame.Angles(math.rad(r()),math.rad(r()),0)
    touch(sphere)
    local s = sphere:clone()
    touch(s)
    s.Parent=char
    s.Shape = shapes[math.random(1,#shapes)]
        lolr = r()
    s.Size=Vector3.new(lolr,lolr,lolr)
    s.CFrame=sphere.CFrame*CFrame.new(r()/30,r()/40,r()/50)
    s.BrickColor=BrickColor.Random()
    local ss=s:clone()
    ss.Parent=Workspace
    game.Debris:AddItem(ss,2)
    ss.Size=Vector3.new(r(),r(),r())
        touch(ss)
    ss.CFrame=sphere.CFrame*CFrame.new(r()+r(),r(),r()+r())
    game.Debris:AddItem(s,1)
    game.Lighting.TimeOfDay=n
    n=n+0.012
game.Lighting.OutdoorAmbient=BrickColor.Random().Color
game.Lighting.Ambient=BrickColor.Random().Color
end
Instance.new("ForceField",char)
Instance.new("Explosion",sphere).Position=sphere.Position
wait(0.7)
char.ForceField:remove()
sphere:remove()
for i,v in pairs(settings) do
    for ii, vv in pairs(settings[i]) do
        game[i][ii] = vv
        end
end
char.Torso.Anchored=false
char.Humanoid.Jump=true
wait(0)
for i=1,50 do
    wait(0)
    char.Torso.Velocity=Vector3.new(0,500,0)
end
wait(0)
--shockwave 3270017
char.Torso.Velocity = Vector3.new(0,0,0)
char.Torso.Anchored=true
wait(0)
char.Torso.Anchored=false
for i=1,3 do
    wait(0)
char.Torso.Velocity=Vector3.new(0,-500,0)
end
repeat wait(0) until char.Torso.CFrame.Y<5
char.Torso.Anchored=true
sphere.Parent=char
for i=1,30 do
    wait(0)
    touch(sphere)
    sphere.Shape = shapes[math.random(1,#shapes)]
    sphere.CFrame=char.Torso.CFrame*CFrame.Angles(0,math.rad(r()),math.rad(r()))
        sphere.BrickColor=BrickColor.Random()
    end
    char.Torso.Anchored=false
    char.Humanoid.Jump=true
    a=0
    for i=1,100 do
        a=a+1
        char.HumanoidRootPart.CFrame=char.Torso.CFrame*CFrame.new(0,0,-2)
        local ff=Instance.new("ForceField",char)
        game.Debris:AddItem(ff,0.05)
        wait(0)
        sphere.Size=Vector3.new(10+a,10+a,10+a)
        sphere.CFrame=char.Torso.CFrame
        sphere.CFrame=sphere.CFrame*CFrame.Angles(math.rad(r()),math.rad(r()),0)
        local ex=Instance.new("Explosion",Workspace)
        pos = sphere.CFrame*CFrame.new(r()+r()+r(),r()+r(),r()+r()+r())
            pos=pos.p
            ex.Position=pos
            ex.BlastRadius=50
        local ss= sphere:clone()
        ss.Parent=char
        if a>10 then a=0 char.Humanoid.Jump=true end
        game.Debris:AddItem(ss,0.3)
    end
    sphere:Destroy()
    fu:Destroy()
end}
}












attacking=false
print'Keys are;'
a=1
for i,v in pairs(attacks) do
    print('Key '..a..' is '..i)
    a=a+1
    end


local setFly=function()
    coroutine.wrap(function()
        while wait() do
            if fly then
            while fly do
                local lool=Instance.new("Part",char)
                lool.Size=Vector3.new(5,1,5)
                lool.Transparency=1
                lool.Name='LOLKXD'
                lool.Anchored=true
                lool.CFrame=char.Torso.CFrame*CFrame.new(0,-1.5,0)
                game.Debris:AddItem(lool,0.1)
                flyfunc()
                
            end
             char['arm']:Destroy() char['arm2']:Destroy()
        char['Right Arm']:ClearAllChildren()
        char['Left Arm']:ClearAllChildren()
        char['Right Arm'].Transparency=0
        char['Left Arm'].Transparency=0
            end
            
            
            end
        end)()
    end

setFly()

mouse.KeyDown:connect(function(K)
    keys[K]=true
    if K:byte()==47 then
        if not sprint then
            sprint=true
            end
    elseif K:byte()==48 then
        if not sprint2 then sprint2 = true end
        
        end
    if attacking then return end
    if attacks[K] then
        
    if chakra>=attacks[K][1]*3 then
    chakra=chakra-attacks[K][1]*3
    wait()
        attacking=true
        attacks[K][2]()
    end
    if chakra<1 then chakra=0 end
        attacking=false
        end
end)

coroutine.wrap(function()
    while wait() do
        if chakra<1 then chakra=0 end
        end
    end)()








coroutine.wrap(function()
    while wait() do
        p=char.Torso.Position
        pos=Vector3.new(p.X,2,p.Z)
        wait(0.1)
         p=char.Torso.Position
        poss=Vector3.new(p.X,2,p.Z)
    if (pos-poss).magnitude>1 then
        running=true
    else
        running=false
        end
    end
end)()



coroutine.wrap(function()
    while wait() do
        if invis then
            for i,v in pairs(char:children()) do
                pcall(function() v.Transparency=1 end)
            end
        else
            for i,v in pairs(char:children()) do
                if v.Name=='SP' or v.Name:match'Humanoid' then else
                pcall(function() v.Transparency=0 end)
                end
            end
            end
        end
    end)()

 mouse.KeyUp:connect(function(K)
     keys[K]=false
                if K:byte()==47 then
                    sprint=false
                    elseif K:byte()==48 then
                    sprint2=false
                    end
            end)
            
            while wait() do
                
                if running then
                    if not RUN then RUN=true r=1
                    else
                        r=r+0.7
                        --print(r)
                        if r>=23 then
                            RUN=false
                            r=1
                            TPP((char.Torso.CFrame*CFrame.new(0,0,-100)))
                            end
                    end
                else
                    r=1
                    end
                
                
                
                
                
                if chakra>300 then chakra=300 end
                if sprint and not sprint2 then
                    coroutine.wrap(function()
                        for ii=5,10 do
     wait() if chakra>0 then chakra=chakra-0.4 if chakra<1 then chakra=0 end end
                     local p=Instance.new("Part",char)
                    p.CFrame=char.Head.CFrame*CFrame.new(0,100,0)
                    p.Anchored=true
                    game.Debris:AddItem(p,0.3)
                    local p2=Instance.new("Part",p)
                    p2.BrickColor=BrickColor.new("Toothpaste")
                    p2.Anchored=true
                    p2.Transparency=0.7
                    p2.CanCollide=false
                    p2.FormFactor='Custom'
                    p2.Size=Vector3.new(0.01,100,0.01)
                    p2.CFrame=char.Torso.CFrame*CFrame.new(4+ii,0,0)*CFrame.Angles(0,0,math.rad(5*ii))
                    
                     local p=Instance.new("Part",char)
                    p.CFrame=char.Head.CFrame*CFrame.new(0,100,0)
                    p.Anchored=true
                    game.Debris:AddItem(p,0.3)
                    local p2=Instance.new("Part",p)
                    p2.BrickColor=BrickColor.new("Toothpaste")
                    p2.Anchored=true
                    p2.Transparency=0.7
                    p2.FormFactor='Custom'
                    p2.Size=Vector3.new(0.01,100,0.01)
                    p2.CFrame=char.Torso.CFrame*CFrame.new(-4-ii,0,0)*CFrame.Angles(0,0,math.rad(-5*ii))
                    p2.CanCollide=false
                    
                    end
                        end)()
                    char.Humanoid.WalkSpeed=1000
                    wait(0.1)
                    char.Humanoid.WalkSpeed=-100
                   
                   else
                       char.Humanoid.WalkSpeed=50
                    end
                    
                    if sprint2 and not sprint then
                    coroutine.wrap(function()
                        for ii=5,10 do
     wait() if chakra>0 then chakra=chakra-0.2 if chakra<1 then chakra=0 end end
                     local p=Instance.new("Part",char)
                    p.CFrame=char.Head.CFrame*CFrame.new(0,100,0)
                    p.Anchored=true
                    game.Debris:AddItem(p,0.3)
                    local p2=Instance.new("Part",p)
                    p2.BrickColor=BrickColor.new("Toothpaste")
                    p2.Anchored=true
                    p2.Transparency=0.7
                    p2.CanCollide=false
                    p2.FormFactor='Custom'
                    p2.Size=Vector3.new(0.01,100,0.01)
                    p2.CFrame=char.Torso.CFrame*CFrame.new(-4-ii,0,0)*CFrame.Angles(0,0,math.rad(5*ii))
                     p2.CFrame=p2.CFrame*CFrame.new(0,49,0)
                     local p=Instance.new("Part",char)
                    p.CFrame=char.Head.CFrame*CFrame.new(0,100,0)
                    p.Anchored=true
                    game.Debris:AddItem(p,0.3)
                    local p2=Instance.new("Part",p)
                    p2.BrickColor=BrickColor.new("Toothpaste")
                    p2.Anchored=true
                    p2.Transparency=0.7
                    p2.FormFactor='Custom'
                    p2.Size=Vector3.new(0.01,100,0.01)
                    p2.CFrame=char.Torso.CFrame*CFrame.new(4+ii,0,0)*CFrame.Angles(0,0,math.rad(-5*ii))
                    p2.CanCollide=false
                    p2.CFrame=p2.CFrame*CFrame.new(0,49,0)
                    end
                        end)()
                    char.Humanoid.WalkSpeed=500
                    wait(0.2)
                    char.Humanoid.WalkSpeed=0
                   
                   else
                       char.Humanoid.WalkSpeed=50
                    end
            end
            
            
            
            
            

