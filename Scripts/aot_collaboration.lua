--[[Main character: Treasure Hunt II, III, IV, Hades/Celeste x Kaguya/White Rabbit/Any]]
EnableChargeAttack()
if battle == 1 then
  characters["Narmaya"]:UseSkill(1)
end
if battle == 3 then
  characters["Zooey"]:WithWaitTime(3700):UseSkill(2)
  character_1:UseSkill(2)
  character_1:UseSkill(3)
  character_1:UseSkill(4)
  characters["Tien"]:UseSkill(1)
end
