_G.create = {
Building=function(X,Y,Z,Pos)
  coroutine.wrap(function()
  local Build=Instance.new("Model",Workspace)
  for x=-(X/2),X/2 do
     for y=1,Y do
        for z=-(Z/2),Z/2 do
          local part=Instance.new("Part",Build)
          part.Name='Wall'
          part.Size=Vector3.new(5,5,5)
          wait(0)
          end
       end
    end
  end)()
  end
}
