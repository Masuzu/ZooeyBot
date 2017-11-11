--[[4-turn Fire GW NM 90
Front line: Luchador (Miserable Mist, Armor Break, Tag Team), Summer Diantha (required), Altair final uncap (or any other water attacker), Anre final uncap (required)
Varuna MLB x Varuna MLB or Varuna MLB x Europa
Xuanwu Shellfists required 
2+ Fimbuls, 3+ Murgleis
--]]
if turn == 1 then
  DisableChargeAttack()
  characters["Altair"]:UseSkill(1)
  --[[Cast defence down debuffs]]
  characters["Altair"]:UseSkill(2)
  character_1:UseSkill(3)
  characters["Diantha"]:UseSkill(1)
  characters["Anre"]:UseSkill(2)
  characters["Anre"]:UseSkill(1)
  --[[Use tag team]]
  character_1:WithWaitTime(500):UseSkill(4)
  if turn == 1 then
    Refresh()
  end
end
if turn == 2 then
  EnableChargeAttack()
  characters["Diantha"]:UseSkill(2)
  characters["Anre"]:UseSkill(3)
end
