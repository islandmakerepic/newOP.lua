local Attachblock=Instance.new("Part",script.Parent)
Attachblock.Size=Vector3.new(1,1,1)
Attachblock.Anchored=true
Attachblock.CanCollide=false
Attachblock.Transparency=1
local char=script.Parent
local plr=game.Players.LocalPlayer
local m=plr:GetMouse()
colors={workspace.Base.BrickColor,BrickColor.New'Dirt brown',workspace.Base.BrickColor}
mole=false
digging=false
odear=false
m.Button1Down:connect(function()
mole=not mole
end)
turn=false
asd,dir=0,math.rad(0)
m.KeyDown:connect(function(k)
 if k=='w' then
  asd=1
 elseif k=='s' then
  turn=true
  
 elseif k=='a' then
  turn2=true
  dir=math.rad(5)
 elseif k=='d' then
  turn2=true
  dir=math.rad(-5)
  end
end)
m.KeyUp:connect(function(k)
 if k=='w' then 
  asd=0 
 elseif k=='s' then
  turn=false
  elseif k=='a' or k=='d' then turn2=false
 end 
 end)
ang=math.rad(0)
while wait() do
 coroutine.wrap(function()
  if turn then
   repeat dir=math.rad(10) wait(0) until turn==false
   end
  end)()
 if mole then
    if not digging then
      
      digging=true
      
      char.Humanoid.PlatformStand=true
      char.Torso.Anchored=true
      char.Humanoid.Jump=true
      cf=char.Torso.CFrame
      local cf2=cf
        for i=0,-135,-10 do
    cf2=cf*CFrame.Angles(math.rad(i),0,0)*CFrame.new(0,0,-i/30)
  end
for i=1,10 do
cf2=cf2*CFrame.new(0,1,0)
end

  for i=0,-135,-10 do
    Attachblock.CFrame=cf*CFrame.Angles(math.rad(i),0,0)*CFrame.new(0,0,-i/30)
    char.Torso.CFrame=Attachblock.CFrame
    wait(0)
  end
  local hole=Instance.new("Part",workspace.Base)
  Instance.new("CylinderMesh",hole)
  hole.FormFactor='Custom'
  hole.Size=Vector3.new(5.25,0.1,5.25)
      hole.BrickColor=BrickColor.new'Really black'
      hole.Anchored=true
  hole.CFrame=CFrame.new(cf2.X,0.05,cf2.Z)
  local h2=hole:clone()
  h2.Size=Vector3.new(4,0.1,4)
  h2.Parent=hole
  h2.BrickColor=colors[2]
  h2.CFrame=CFrame.new(hole.CFrame.X,-0.2,hole.CFrame.Z)*CFrame.Angles(math.rad(15),0,math.rad(20))
np=Instance.new("Part",Attachblock)
  np.Anchored=true
  np.Transparency=1
  np.CFrame=hole.CFrame*CFrame.new(0,-10,-10)
for i=1,20 do
Attachblock.CFrame=Attachblock.CFrame*CFrame.new(0,1,0)
char.Torso.CFrame=Attachblock.CFrame
wait(0)
end
for i=35,0,-5 do
 Attachblock.CFrame=Attachblock.CFrame*CFrame.Angles(math.rad(5),0,0)
 char.Torso.CFrame=Attachblock.CFrame
 wait(0)
end
odear=true
end

if odear then
 if turn2 or turn then
 Attachblock.CFrame=Attachblock.CFrame*CFrame.Angles(0,0,dir or 0)
end
if asd~=0 then
local block=Instance.new("Part",workspace.Base)
block.Size=Vector3.new(math.random(3,5),math.random(3,5),math.random(3,5))
block.Anchored=true
block.CFrame=CFrame.new(np.CFrame.X,-0.5,np.CFrame.Z)*CFrame.Angles(math.rad(math.random(-100,100)),math.rad(math.random(-100,100)),math.rad(math.random(-100,100)))
block.CFrame=block.CFrame*CFrame.new(math.random(0,15)/10,0,math.random(-20,20)/13)
block.Material='Grass'
block.BrickColor=colors[math.random(1,#colors)]
ang=ang+1
if ang<=10 then
 np.CFrame=np.CFrame*CFrame.new(0,1,0)
elseif ang<=20 then
 np.CFrame=np.CFrame*CFrame.new(0,-1,0)
else ang=0
end
if turn2 or turn then
 np.CFrame=np.CFrame*CFrame.Angles(0,dir,0)
 end
np.CFrame=np.CFrame*CFrame.new(0,0,-1)
Attachblock.CFrame=CFrame.new(Attachblock.Position,np.CFrame.p)*CFrame.new(0,0,-1)
char.Torso.CFrame=Attachblock.CFrame*CFrame.Angles(math.rad(-90),0,0)
end

  --char.Torso.CFrame=Attachblock.CFrame
 end
elseif digging and odear then
 odear=false
 repeat np.CFrame=np.CFrame*CFrame.new(0,1,-0.25)
  Attachblock.CFrame=CFrame.new(Attachblock.Position,np.CFrame.p)*CFrame.new(0,0,-1)
  char.Torso.CFrame=Attachblock.CFrame*CFrame.Angles(math.rad(-90),0,0)
  wait(0) until Attachblock.CFrame.Y>4
 cf3=char.Torso.CFrame
 local hole=Instance.new("Part",workspace.Base)
  Instance.new("CylinderMesh",hole)
  hole.FormFactor='Custom'
  hole.Size=Vector3.new(5.25,0.1,5.25)
      hole.BrickColor=BrickColor.new'Really black'
      hole.Anchored=true
  hole.CFrame=CFrame.new(cf3.X,0.05,cf3.Z)
  local h2=hole:clone()
  h2.Size=Vector3.new(4,0.1,4)
  h2.Parent=hole
  h2.BrickColor=colors[2]
  h2.CFrame=CFrame.new(hole.CFrame.X,-0.2,hole.CFrame.Z)*CFrame.Angles(math.rad(15),0,math.rad(20))
 char.Torso.Anchored=false
 char.Humanoid.PlatformStand=false
 char.Humanoid.Jump=true
 digging=true
 mole=false
digging=false
odear=false
turn=false
asd,dir=0,math.rad(0)
 end
end

