Cmdz={}

NewCmd=function(cmd,sep,action)
Cmdz[cmd]={['Sep']=sep,['Action']=loadstring(action)}
end

Chat=function(plr,msg)
  for i,v in pairs(Cmdz) do
    if i:lower()==msg:lower():sub(1,#i) then
      if msg:lower():sub(#i,#i+#Cmdz[i]['Sep'])==Cmdz[i]['Sep'] then
      local Act=msg:lower():sub(#i+#Cmdz[i]['Sep']+1)
      Cmdz[i].Action(Act)
      end
    end
  end
end

game.Players.LocalPlayer.Chatted:conenct(function(m)
  Chat(nil,m)
  end)
