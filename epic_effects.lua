local sp=function(s,cf,tt)
if math.random(1,5)==math.random(1,5) then
game.Lighting.TimeOfDay=tostring(math.random(10,120)/10)..":00:00"
game.Lighting.Ambient=Color3.new(math.random(1,250)/250,math.random(1,250)/250,math.random(1,250)/250)
game.Lighting.OutdoorAmbient=Color3.new(math.random(1,250)/250,math.random(1,250)/250,math.random(1,250)/250)
game.Lighting.Brightness=math.random(0,100)/10
end
local part=Instance.new("Part",workspace)
part.BrickColor=BrickColor.Red()
part.Size=s
part.Transparency=0.5
part.CFrame=cf
part.Anchored=false
part.CanCollide=false
part:breakJoints()
part.CFrame=cf
part:breakJoints()
part.Anchored=false
coroutine.wrap(function()
  repeat wait()
    x=math.random(0,1)
    y=math.random(0,1)
    z=math.random(0,1)
    part.Transparency=part.Transparency+0.05
    r=function() return math.random(-10,10) end
    --part.CFrame=part.CFrame*CFrame.Angles(z*r(),y*r(),z*r())
    until part.Parent~=workspace
  end)()
game.Debris:AddItem(part,tt)
end

p=game.Players.LocalPlayer
c=p.Character
local block=Instance.new("Part",workspace)
block.BrickColor=BrickColor.new'Toothpaste'
block.FormFactor='Custom'
block.Size=Vector3.new(2,1,2)
block.Anchored=true
cf=c.Torso.CFrame
cf=CFrame.new(cf.X,workspace.Base.CFrame.Y+0.3,cf.Z)


coroutine.wrap(function() 
for asd=0,50,10 do
wait(0)
  for i=0,360,64 do
    
    
    
    
sp(Vector3.new(10,10,10),c.Torso.CFrame*CFrame.Angles(0,math.rad(i),0)*CFrame.Angles(math.rad(asd),0,math.rad(45))*CFrame.new(0,asd,-(asd*1.5))*CFrame.new(0,0,-5),5)
  end
end
end)()
for i=1,50,5 do wait(0) 
block.CFrame=cf*CFrame.Angles(0,math.rad(i*(7.2)),0)
cff=block.CFrame block.Size=block.Size+Vector3.new(5,0,5) block.CFrame=cff 
block.Transparency=i/50 
end
block:Destroy()

local CLerp=function(p,cf2,v)

        local st,cf1=tick'',p.CFrame;local c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12=cf1:components'';

        local s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12=cf2:components'';

        local glv=function(v1,v2)return v1+(v2-v1)*v*(1+tick''-st);end;

        p.CFrame=CFrame.new(glv(c1,s1),glv(c2,s2),glv(c3,s3),glv(c4,s4),glv(c5,s5)

        ,glv(c6,s6),glv(c7,s7),glv(c8,s8),glv(c9,s9),glv(c10,s10),glv(c11,s11),glv(c12,s12));wait'';

end

wait(1)

local plr=game.Players.LocalPlayer
local char=plr.Character
local m=plr:GetMouse()

m.KeyDown:connect(function(k)
  if k=='h' then
    local t=char.Torso
    cf=t.CFrame*CFrame.new(0,10,0)
    o=0
    asd=Instance.new("Part",char)
    asd.Size=Vector3.new(1,1,1)
    asd.CFrame=t.CFrame
    asd.Anchored=true
    local w=Instance.new("Weld",t)
    w.Part0=t
    w.Part1=asd
    coroutine.wrap(function()
     repeat o=o+5
       wait(0)  CLerp(asd,cf,0.15) t.CFrame=asd.CFrame until o>150
    end)()
  coroutine.wrap(function()
   for ang=0,-90,-25 do
    wait(0)
    local B=Instance.new("Part",workspace)
    B.Size=Vector3.new(7.5,7.5,1)
    B.Transparency=0.5
    B.Anchored=true
    B.BrickColor=BrickColor.Red()
    B.Material='Neon'
      coroutine.wrap(function() 
        while wait() and o<150 do
          B.CFrame=cf*CFrame.Angles(0,math.rad(ang),0)*CFrame.new(0,0,-o/10)
        end
        wait()
        for i=1,10 do
          wait(0)
          B.CFrame=cf*CFrame.Angles(0,math.rad(ang),0)*CFrame.new(0,0,-o/10)
          B.CFrame=B.CFrame*CFrame.new(0,0,-i*2)
        end
        B:breakJoints()
        for i=1,40 do
          wait(0)
          B.CFrame=B.CFrame*CFrame.Angles(math.rad(-2),0,0)*CFrame.new(0,0,-0.5)
        end
        local cl=B:clone()

      cl.CanCollide=false
      cl.Transparency=0
      cl.Parent=workspace
      cl.CFrame=CFrame.new((B.CFrame*CFrame.new(0,1,0)).p)
      cl.Touched:connect(function(h) pcall(function() h.Parent.Humanoid.Sit=true h.Parent.Humanoid:takeDamage(1)
        h.Parent.Humanoid.Parent.Torso.Velocity=h.Parent.Torso.CFrame.lookVector*50 end) end)
      local CF=cl.CFrame
      cl.Anchored=false
      B:Destroy()
      for i=1,20 do
        wait(0)
        cl.FormFactor='Custom'
        cl.Size=cl.Size+Vector3.new(3,i>10 and -0.25 or 0.25,3)
        cl.CFrame=CF*CFrame.Angles(0,math.rad(i*13),0)
        cl.Transparency=i/18
      end
      cl:Destroy()
      asd:Destroy()
      end)()
   end
 end)()
 
 coroutine.wrap(function()
   for ang=0,90,25 do
    wait(0)
    local B=Instance.new("Part",workspace)
    B.Size=Vector3.new(7.5,7.5,1)
    B.Transparency=0.5
    B.Anchored=true
    B.BrickColor=BrickColor.Red()
    B.Material='Neon'
      coroutine.wrap(function() 
        while wait() and o<150 do
          B.CFrame=cf*CFrame.Angles(0,math.rad(ang),0)*CFrame.new(0,0,-o/10)
        end
        wait()
        for i=1,10 do
          wait(0)
          B.CFrame=cf*CFrame.Angles(0,math.rad(ang),0)*CFrame.new(0,0,-o/10)
          B.CFrame=B.CFrame*CFrame.new(0,0,-i*2)
        end
        B:breakJoints()
        for i=1,40 do
          wait(0)
          B.CFrame=B.CFrame*CFrame.Angles(math.rad(-2),0,0)*CFrame.new(0,0,-0.5)
        end
      local cl=B:clone()

      cl.CanCollide=false
      cl.Transparency=0
      cl.Parent=workspace
      cl.CFrame=CFrame.new((B.CFrame*CFrame.new(0,1,0)).p)
      cl.Touched:connect(function(h) pcall(function() h.Parent.Humanoid.Sit=true h.Parent.Humanoid:takeDamage(1)
        h.Parent.Humanoid.Parent.Torso.Velocity=h.Parent.Torso.CFrame.lookVector*50 end) end)
      local CF=cl.CFrame
      cl.Anchored=false
      B:Destroy()
      for i=1,20 do
        wait(0)
        cl.FormFactor='Custom'
        cl.Size=cl.Size+Vector3.new(3,i>10 and -0.25 or 0.25,3)
        cl.CFrame=CF*CFrame.Angles(0,math.rad(i*13),0)
        cl.Transparency=i/18
      end
      cl:Destroy()
      end)()
   end
   end)()
  
   end
  end)
