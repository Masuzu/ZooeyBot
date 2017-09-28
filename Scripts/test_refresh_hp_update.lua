Summon(6)
DisableChargeAttack();
--[[Use Conjuction]]
characters["Zooey"]:WithWaitTime(4100):UseSkill(2)
character_1:UseSkill(2)
Refresh()
if characters["<main_character>"].hp == 1 then
  characters["<main_character>"]:UseSkill(1)
end
