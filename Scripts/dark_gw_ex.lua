--[[2-turn light GW EX+
Front line: Elysian (Overdrive Surge, Rage, Call of the Abyss), Narmaya, Zooey, Dark Jeanne d'Arc
Support summon: Bahamut or max limit break Hades--]]
if turn == 1 then
  --[[Casat Elysian buffs--]] 
  character_1:UseSkill(4)
  character_1:UseSkill(1):WithWaitTime(3600)
  character_1:UseSkill(3):WithWaitTime(1300)
  --[[Use Zooey's Conjunction--]] 
  characters["Zooey"]:UseSkill(2):WithWaitTime(4100)
  characters["Zooey"]:UseSkill(1)
  characters["Jeanne d'Arc"]:UseSkill(1):WithWaitTime(1600)
  characters["Jeanne d'Arc"]:UseSkill(2):WithWaitTime(1600)
  characters["Jeanne d'Arc"]:UseSkill(3):WithWaitTime(1200)
  --[[Use Narmaya buffs--]] 
  characters["Narmaya"]:UseSkill(2)
  characters["Narmaya"]:UseSkill(1):WithWaitTime(3000)
end
if turn == 2 then
  characters["Zooey"]:UseSkill(3):WithWaitTime(1600)
  --[[Use Narmaya's ODA buff--]] 
  characters["Narmaya"]:UseSkill(3):WithWaitTime(1500)
  --[[Use Overdrive Surge--]] 
  character_1:UseSkill(2)
end
