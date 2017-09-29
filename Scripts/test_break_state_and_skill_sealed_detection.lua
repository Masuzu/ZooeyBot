Summon(6)
EnableChargeAttack();
--[[Cast soul split]]
character_1:UseSkill(2)
characters["Zooey"]:WithWaitTime(4100):UseSkill(2)
characters["Zooey"]:UseSkill(1)
--[[Cast Treasure Hunt IV]]
character_1:UseSkill(3)
characters["Seox"]:UseSkill(3)
characters["Narmaya"]:WithWaitTime(3000):UseSkill(1)
--[[Display an error message as Narmaya is still skill sealed and skip casting the skill]]
characters["Narmaya"]:UseSkill(3)
if enemy_1.break_state then
  character_1:UseSkill(1)
end
