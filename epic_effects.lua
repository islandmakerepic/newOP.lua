local sp=function(s,cf,tt)
if math.random(1,100)==math.random(1,100) then
game.Lighting.TimeOfDay=tostring(math.random(10,120)/10)..":00:00"
end
local part=Instance.new("Part",workspace)
part.Size=s
part.Transparency=0.5
part.CFrame=cf
part.Anchored=false
coroutine.wrap(function()
  while wait(0) do
    x=math.random(1,2)
    y=math.random(1,2)
    z=math.random(1,2)
    r=function() return math.random(-10,10) end
    part.CFrame=part.CFrame*CFrame.Angles(z*r(),y*r(),z*r())
    end
  end)()
game.Debris:AddItem(part,tt)
end

p=game.Players.LocalPlayer
c=p.Character
for asd=0,50,10 do
wait(0)
  for i=0,360,20 do
     if i==100 or i==200 or i==300 then
       if math.random(1,5) == math.random(1,5) then
        wait(0)
        end
      end
sp(Vector3.new(4,4,4),c.Torso.CFrame*CFrame.Angles(0,math.rad(i),0)*CFrame.Angles(0,0,math.rad(45))*CFrame.new(0,asd,-20),1.5)
  end
end
