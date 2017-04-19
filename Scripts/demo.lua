--[[Disable charge attack by default--]]
if character_1.charge_gauge >= 100 then
  EnableChargeAttack()
else
  DisableChargeAttack()
end
--[[Use the suport summon on the first turn--]]
if turn == 1 then
  Summon(6)
end
--[[Use treasure hunt whenever it is off cooldown (bound to the skills at position 4 and 2 in this demo)--]]
character_1:UseSkill(4)
character_1:UseSkill(2)