local plr=game.Players.LocalPlayer
invisible=false
m=plr:GetMouse()

invi=function(o,n)
ypcall(function() o.Transparency=n end)
for i,v in pairs(o:children()) do
  pcall(function() invi(i) end)
  if v:IsA'BasePart' then v.Transparency=n end
  end
end

GetChar=function()
local ret={}
for i,v in pairs(workspace:children()) do
if v:findFirstChild'Humanoid' and v:findFirstChild'Torso' then
  if v.Name~=plr.Name then
ret[#ret+1]=v
else
if invisible then
  ret[#ret+1]=v
  end
end
end
end
return ret
end


coroutine.wrap(function()
while wait(0.1) do
pcall(function() workspace.CurrentCamera:clearAllChildren() end)
local chars=GetChar()
  for i,v in pairs(chars) do
  t=false
  v.Archivable=true
  cl=v:clone()
    for _,vv in pairs(v:children()) do
      if (ypcall(function() return vv.Transparency==1 end)==true) then
      t=true
      end
    end
    if t then
    
    for i,v in pairs(cl:children()) do
    if v:IsA'Hat' or v:IsA'Clothing' or v:IsA'CharacterMesh' then
    v:Destroy()
    elseif v:IsA'BasePart' then v.Transparency=0.5 v.BrickColor=BrickColor.New'Really red' v.CanCollide=false v.Anchored=true
    end
  end
  cl.Parent=workspace.CurrentCamera
  cl.Torso.CFrame=v.Torso.CFrame
    end
  end
end
end)

m.Button1Down:connect(function()
  invisible=not invisible
  if invisible then invi(plr.Character,1) else invi(plr.Character,0) end
  
end)
