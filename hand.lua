local plr=game.Players.LocalPlayer
local char=script.Parent
local Torso=char.Torso
local mouse=plr:GetMouse()

active=false

partz={}

local create=function()
  local part=Instance.new("Part",workspace)
  nextcf=Torso.CFrame*CFrame.new(-1,0,0)
  nextcf=CFrame.new(nextcf.p,mouse.Hit.p)
  nextcf=nextcf*CFrame.new(0,0,-(#partz or 1))
  pcall(function() last=partz[#partz].CFrame.Z-nextcf end)
  part.Size=Vector3.new(1,1,last~=nil and last or 2)
  part.Anchored=true
  if not last then
  part.CFrame=nextcf*CFrame.new(0,0,-1.5)
else
  part.CFrame=CFrame.new(parts[#partz].CFrame.p,m.Hit.p)*CFrame.new(0,0,-1.5)
  end
  return part
end
can=true
mouse.Button1Down:connect(function() if not can then return end active=true end)

mouse.Button1Up:connect(function() active=false end)
num=0
maxi=75
while wait(0) do
  if active==true then
    local part=create()
    num=num+1
    if num>maxi then active=false end
    partz[#partz+1]=part
    local part=create()
    num=num+1
    if num>maxi then active=false end
    partz[#partz+1]=part
    elseif active==false then
      if num<1 then partz={} can=true else
partz[num]:Destroy()
num=num-1
can=false
print(num..' destroyed')
if num>1 then
  partz[num]:Destroy()
num=num-1
can=false
print(num..' destroyed')
  end
end
  end
end
