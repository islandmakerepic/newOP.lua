local Player=game.Players.LocalPlayer
local Char=Player.Character
local Mouse=Player:GetMouse()



local Explode=function(Obj)
local Exp=Instance.new("Explosion",Workspace)
Exp.Position=Obj.Position
end




local Surround=function(Pos,Cha)

local Mod=Instance.new("Model",Cha or Char)
Mod.Name='Surrounder'

for i=1,360,(360/100) do
local part=Instance.new("Part",Mod)
part.Size=Vector3.new(2,2,2)
part.BrickColor=BrickColor.Random()
part.Shape='Ball'
part.TopSurface='Smooth'
part.BottomSurface='Smooth'
part.Anchored=true
part.CFrame = CFrame.new(Pos)*CFrame.Angles(0,math.rad(i),0)*CFrame.new(0,0,-4)
part.Name = i
end

game.Debris:AddItem(Mod,5)

local nw=coroutine.wrap(function()

while wait(0) and Mod and Mod.Parent~=nil do
for i=1,360,(360/100) do
  local diff=1
  for _=1,360,(360/100) do
    if Mod then
local N=Mod:findFirstChild(tostring(_))
  diff=diff+(360/100)
if Cha then Pos=Cha.Position end
if N then
N.CFrame = CFrame.new(Pos)*CFrame.Angles(0,math.rad(i+diff),0)*CFrame.new(0,0,-4)
end
end
end

wait(0)
end

end

end)


nw()
wait(4.5)
if Cha then Cha:BreakJoints() end

for i,v in pairs(Mod:children()) do
Explode(v)
end
end


Mouse.Button1Down:connect(function()
local pos=Mouse.Hit.p
local t=Mouse.Target
if not t.Parent:findFirstChild'Humanoid' then t=nil end
local raypart=Instance.new("Part",Char)
raypart.Size=Vector3.new(1,1,4)
raypart.Anchored=true
raypart.CFrame=CFrame.new(Char.Torso.Position,pos)
for i=4,((pos-Char.Torso.Position).magnitude)-3, 4 do
wait(0)
r=raypart:clone()
r.CFrame=raypart.CFrame*CFrame.new(0,0,-4)
raypart=r
raypart.Parent=Char
end
Surround(pos,t)
end)
