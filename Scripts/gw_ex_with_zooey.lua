--[[Generic script for any element GW 2-turn EX+ kill
Front line: Warlock (Soul splitting, <unused skill slot>, Chaser), Narmaya, Zooey, Vira, Hades x Bahamut or Hades x Hades MLB--]]
if character_1.charge_gauge == 100 and turn == 1 then
  booleans["assault_time"] = true
end
if booleans["assault_time"] == nil then
  if turn == 1 then
    character_1:UseSkill(2)
    character_1:UseSkill(4)
    --[[Use Zooey's Conjuction--]] 
    characters["Zooey"]:UseSkill(2):WithWaitTime(4100)
    characters["Zooey"]:UseSkill(1)
    characters["Vira"]:UseSkill(2)
    character_1:UseSkill(1)
    --[[Use Narmaya buffs--]] 
    characters["Narmaya"]:UseSkill(2)
    characters["Narmaya"]:UseSkill(1):WithWaitTime(3000)
  end
  if turn >= 2 then
    --[[Use Narmaya's ODA buff--]] 
    characters["Narmaya"]:UseSkill(3):WithWaitTime(1500)
  end
else
  if turn == 1 then
    character_1:UseSkill(4)
    --[[Use Zooey's Conjuction--]] 
    characters["Zooey"]:UseSkill(2):WithWaitTime(4100)
    characters["Zooey"]:UseSkill(1)
    characters["Zooey"]:UseSkill(3)
    characters["Vira"]:UseSkill(2)
    character_1:UseSkill(1)
    characters["Narmaya"]:UseSkill(2)
  end
end
