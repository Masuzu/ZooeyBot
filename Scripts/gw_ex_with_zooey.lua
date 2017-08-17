--[[2-turn water GW EX+
Front line: Warlock (Soul splitting, Chaser, Rage III), Vira, Zooey, Narmaya, Hades x Bahamut or Hades x Hades MLB--]]
if turn == 1 and character_1.charge_gauge == 100 then
  booleans["assault_time"] = true
end
if booleans["assault_time"] == nil then
  --[[Command list for non-assault time (ATなし-)-]]
  if turn == 1 then
    character_1:UseSkill(2)
    character_1:UseSkill(3)
    character_1:UseSkill(4)
    --[[Use Zooey's Conjunction--]] 
    characters["Zooey"]:UseSkill(2):WithWaitTime(4100)
    characters["Zooey"]:UseSkill(1)
    characters["Zooey"]:UseSkill(3)
    characters["Vira"]:UseSkill(2)
    character_1:UseSkill(1)
    --[[Use Narmaya buffs--]] 
    characters["Narmaya"]:UseSkill(2)
    characters["Narmaya"]:UseSkill(1):WithWaitTime(3000)
  end
  if turn == 2 then
    --[[Use Narmaya's ODA buff--]] 
    characters["Narmaya"]:UseSkill(3):WithWaitTime(1500)
  end
else
  --[[Command list for assault time (AT)--]]
  if turn == 1 then
    character_1:UseSkill(3)
    character_1:UseSkill(4)
    --[[Use Zooey's Conjunction--]] 
    characters["Zooey"]:UseSkill(2):WithWaitTime(4100)
    characters["Zooey"]:UseSkill(1)
    characters["Zooey"]:UseSkill(3)
    characters["Vira"]:UseSkill(2)
    character_1:UseSkill(1)
    --[[Use Narmaya buffs--]] 
    characters["Narmaya"]:UseSkill(2)
  end
end