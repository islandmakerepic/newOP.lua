_G.tw=function(o1,o2)
o1.CFrame=CFrame.new(o1.CFrame.p,o2.CFrame.p)*CFrame.new(0,0,-1)
end
deadbutstanding={}
_G.fp=function(n)
  for i,v in pairs(workspace:GetChildren()) do
    if v.Name:lower():sub(1,#n)==n:lower() and v:findFirstChild'Torso' then return v end
    end
  end

move=false
dum=workspace:waitForChild'Dummy'
dum.Name=owner.Name.."'s Demon"

_G.Demonize=_G.Demonize or function(p)
  for i,v in pairs(p:children()) do
    if v:IsA'BasePart' then
v.BrickColor=BrickColor.new('Really black')
v.Transparency=0.1
v.Material='Neon'
if not v:findFirstChild'Fire' then
f=Instance.new("Fire",v)
f.Heat=2
f.Size=0.1
f.Color=Color3.new(255/255, 78/255, 19/255)
f.SecondaryColor=Color3.new(255/255, 145/255, 101/255)
s=f:clone()
s.Parent=v
s.Heat=1
s.Size=0.1
s.Color=Color3.new(0,0,0)
s.Enabled,f.Enabled=true,true
end
v.Touched:connect(function(h)
  if h.Name=='Base' then return end
h.BrickColor=BrickColor.Red()
h.Material='Neon'
h.Transparency=0.1
h:BreakJoints()
deadbutstanding[#deadbutstanding+1]=h
end)
elseif v:IsA'Hat' or v:IsA'Clothing' then
v:Destroy()
    end
  end
end
targ='none'
Demonize(dum)

owner.Chatted:connect(function(m)
if m:match'stop' or m:match('e'..'nd') then
move=false
targ='none'
end


if m:lower():sub(1,5)=="targ'" then
targ=m:lower():sub(6)
targ=fp(targ).Name
if targ then
move=true
else
targ='none'
end
end
        
if m:lower():match('eat the') and ( (m:lower():match('ir souls')) or (m:lower():match('m!'))) then
  for i,v in pairs(deadbutstanding) do
  if i and v then
    dum.CFrame=v:GetModelCFrame()
    game.Debris:AddItem(v,0.4)
    deadbutstanding[i]=nil
    wait()
  end
  end
end

end)



while wait() do
if targ~='none' and fp(targ) and fp(targ).Torso then
tw(dum.Head,workspace:findFirstChild(targ).Torso)
end
end
