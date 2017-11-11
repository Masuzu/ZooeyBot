--[[4-turn Fire GW NM 90
Front line: Luchador (Miserable Mist, Armor Break, Tag Team), Summer Diantha (required), Altair, Anre final uncap (required)
Varuna MLB x Varuna MLB or Varuna MLB x Europa
Xuanwu Shellfists required 
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
end
if turn == 3 then
  --[[Damage cut for the 25% trigger--]]
  characters["Anre"]:UseSkill(3)
end
