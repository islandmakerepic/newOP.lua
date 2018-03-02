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
b.Name='BURNER'
for i=0-((b.Size.X)/2),b.Size.X/2,150 do
	for z=0-((b.Size.Z)/2),b.Size.Z/2,150 do
	local flame=Instance.new("Part",workspace)
	flame.Size=Vector3.new(10,10,10)
	flame.Transparency=1
	flame.CanCollide=false
	flame.CFrame=CFrame.new(i,b.CFrame.Y,z)
	ypcall(function()
	local fire=Instance.new("Fire",flame)
	fire.Enabled=true fire.Color=BrickColor.Red().Color
	fire.Heat=99999
	fire.Size=9999
	end) --line 38
	game.Debris:AddItem(flame,3)
	end
end

burn=function(obj)
	wait(0)
	for i,v in pairs(obj:GetChildren()) do
		burn(v)
		if v:IsA"BasePart" and v.Name~='BURNER' then
			coroutine.wrap(function()
				local color=v.Color
				local r,g,b=color.r,color.g,color.b
				local diffR=255-r 
				local diffG,diffB=g,b
				for i=r,255,10 do
					wait(0)
					v.Color=Color3.fromRGB(i,g-(diffG/diffR),b-(diffB/diffR))
				end
			end) 
			wait(0)
ypcall(function()			
			local f=Instance.new("Fire",v) f.Heat=9999
end)			
			 end
		coroutine.wrap(function()
			wait(1.5)
			v:explode()
		end)()
	end
end

burn(workspace)
