wait(3)
local b=workspace.Base
local l=game.Lighting
local sky=Instance.new("Sky",game.Lighting) 
sky.SunTextureId='rbxasset://sky/sun.jpg'
sky.CelestialBodiesShown=true
l.GeographicLatitude=101
l.ClockTime=14
for i=1,60,0.1 do sky.SunAngularSize=i	game.Lighting.OutdoorAmbient=Color3.fromRGB(i*4.25, 51, 14) b.Color=Color3.fromRGB(15+(i*4),176,101)
	if math.random(1,5) ==3 then else
	wait(0)
	end
end
sky.CelestialBodiesShown=false
local SUN=Instance.new("Part",workspace)
SUN.Shape='Ball'
SUN.Size=Vector3.new(500,500,500)
SUN.Material='Neon'
SUN.BrickColor=BrickColor.new(Color3.fromRGB(255, 255, 204))
SUN.CFrame=CFrame.new(-50,223,1200)
SUN.CFrame=CFrame.new(SUN.CFrame.p,b.CFrame.p)
repeat wait(0)
SUN.Velocity=SUN.CFrame.lookVector*1000
until SUN.Touched:wait()
b.Anchored=false
for i=0-((b.Size.X)/2),b.Size.X/2,20 do
	for z=0-((b.Size.Z)/2),b.Size.Z/2,20 do
	local flame=Instance.new("Part",workspace)
	flame.Size=Vector3.new(10,10,10)
	flame.Transparency=1
	flame.CanCollide=false
	flame.CFrame=CFrame.new(i,b.CFrame.Y,z)
	local fire=Instance.new("Fire",flame)
	fire.Enabled=true fire.Color=BrickColor.Red().Color
	fire.Heat=99999
	fire.Size=9999
	game.Debris:AddItem(flame,3)
	end
end

burn=function(obj)
	for i,v in pairs(obj:GetChildren()) do
		burn(v)
		if v:IsA"BasePart" then local f=Instance.new("Fire",v) f.Heat=9999 end
		coroutine.wrap(function()
			wait(2)
			v:explode()
		end)()
	end
end

burn(workspace)
