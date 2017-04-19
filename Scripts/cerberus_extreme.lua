--[[Disable charge attack on raid battles preceding Cerberus--]]
if battle < 3 then
  DisableChargeAttack()
else
  EnableChargeAttack()
end
if battle == 2 and turn == 1 then
  Summon(6)
end
--[[My second character is Orchid: use Orchid's buff on the first turn--]]
if battle == 1 and turn == 1 then
  character_2:UseSkill(1)
end
--[[Use Orchid's third skill on the last stage--]]
if battle == 3 then
  character_2:UseSkill(3)
end