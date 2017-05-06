EnableChargeAttack()
Summon(6)
--[[Use treasure hunt whenever it is off cooldown (bound to the skills at position 4 and 2 in my case)--]]
if character_1.name == "<main character name>" then
  character_1:UseSkill(4)
  character_1:UseSkill(3)
  character_1:UseSkill(2)
end
if characters["Zooey"] ~= nil then
  characters["Zooey"]:UseSkill(2)
  characters["Zooey"]:UseSkill(1)
end
--[[As long as Orchid is alive, use her first and third skills whenever they are off cooldown--]]
if character_2.name == "Orchid" then
  character_2:UseSkill(1)
  character_2:UseSkill(3)
end
if turn == 1 then
  characters["Vira"]:UseSkill(2)
end
if character_4.name == "Vira" then
  character_4:UseSkill(1)
end
if turn == 2 then
  characters["Vira"]:UseSkill(4)
  characters["Vira"]:UseSkill(3)
end
--[[Narmaya is in my back row, should one of my frontline character fall and be replaced by Forte, use her second and first skills--]]
if characters["Narmaya"] ~= nil then
  characters["Narmaya"]:UseSkill(2)
  characters["Narmaya"]:UseSkill(1)
end
--[[Six is in my back row, should one of my frontline character fall and be replaced by Six, use his skills--]]
if characters["Seox"] ~= nil then
  characters["Seox"]:UseSkill(3)
  characters["Seox"]:UseSkill(2)
  characters["Seox"]:UseSkill(1)
end