EnableChargeAttack()
--[[Use treasure hunt whenever it is off cooldown (bound to the skills at position 4 and 2 in my case)--]]
if character_1.name == "<main_character_name>" then
  character_1:UseSkill(4)
  character_1:UseSkill(2)
end
--[[As long as Orchid is alive, use her first and third skills whenever they are off cooldown--]]
if character_2.name == "Orchid" then
  character_2:UseSkill(1)
  character_2:UseSkill(3)
end
if turn == 1 then
  characters["Zeta"]:UseSkill(3)
  characters["Vira"]:UseSkill(2)
end
if turn == 2 then
  characters["Vira"]:UseSkill(4)
end
if turn == 3 then
  characters["Zeta"]:UseSkill(1)
  characters["Vira"]:UseSkill(3)
end
--[[Forte is in my back row, should one of my frontline character fall and be replaced by Forte, use her second and first skills--]]
if characters["Forte"] ~= nil then
  characters["Forte"]:UseSkill(2)
  characters["Forte"]:UseSkill(1)
end