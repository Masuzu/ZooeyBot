--[[Front line: Elysian (Clarity, Dirge for the Dead, Call of the Abyss), Orchid, Zooey, Narmaya
Support summon: Bahamut, force summon reset if not available--]]
DisableChargeAttack()
Summon(6)
if turn == 1 then
  character_1:UseSkill(4)
  character_1:UseSkill(1):WithWaitTime(3600)
  character_1:UseSkill(3)
  character_2:UseSkill(1)
  character_3:UseSkill(2):WithWaitTime(4500)
  character_3:UseSkill(1)
  character_3:UseSkill(3)
  character_2:UseSkill(3)
  character_4:UseSkill(2)
  character_4:UseSkill(1)
end
if turn == 2 then
  character_1:UseSkill(2)
  character_4:UseSkill(3)
end