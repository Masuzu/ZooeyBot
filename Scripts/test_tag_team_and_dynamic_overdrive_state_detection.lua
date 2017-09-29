EnableChargeAttack()
characters["Zooey"]:WithWaitTime(4100):UseSkill(2)
characters["Narmaya"]:WithWaitTime(3000):UseSkill(1)
characters["Seox"]:UseSkill(3)
--[[Cast Tag Team - the boss enters Overdrive state]]
character_1:WithWaitTime(7000):UseSkill(3)
if enemy_1.overdrive_state then
  --[[Cast Overdrive surge during the same turn when Tag Team was used]]
  character_1:UseSkill(4)
end
