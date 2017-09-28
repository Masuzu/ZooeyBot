Summon(6)
DisableChargeAttack();
characters["Zooey"]:WithWaitTime(4100):UseSkill(2)
Refresh()
if characters["<main_character>"]:HasStatusEffect("1028") then
  characters["<main_character>"]:UseSkill(1)
end
