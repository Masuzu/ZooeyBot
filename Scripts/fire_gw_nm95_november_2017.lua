--[[Fire GW NM 95
Front line: Holy saber (Rain of Arrows, Delay, Armomr break), Anre final uncap, Altair, Feower final uncap), no backline
Varuna MLB x Varuna MLB
3-5 Murgleis, 2 Fimbuls, Ultima spear (main hand), Gabriel wand, 0-2 Durandal
2 Shivas in support summons
--]]

--[[Constants]]
DoubleAttackBuff = "1004"

--[[Helper functions]]
function NumCharactersBelowHPPercentage(percentage)
  local sum = 0
  for name,character in pairs(characters) do
    if character.hp_percentage <= percentage then
      sum = sum + 1
    end
  end
  return sum
end

--[[Assumes no charge bar slowed]]
function MaxChainBurst()
  local sum = 0
  if character_1.charge_gauge == 100 and
     character_2.charge_gauge >= 90 and
	 character_3.charge_gauge >= 80 and
	 character_4.charge_gauge >= 70 then
    return 4
  end
  if (character_1.charge_gauge == 100 and
     character_2.charge_gauge >= 90 and
	 (character_3.charge_gauge >= 80 or character_4.charge_gauge >= 80)) or
	 (character_1.charge_gauge == 100 and
     character_3.charge_gauge >= 90 and
	 character_4.charge_gauge >= 80) or
	 (character_2.charge_gauge == 100 and
     character_3.charge_gauge >= 90 and
	 character_4.charge_gauge >= 80) then
    return 3
  end
  if (character_1.charge_gauge == 100 and
     (character_2.charge_gauge >= 90 or character_3.charge_gauge >= 90 or character_4.charge_gauge >= 90)) or
	 (character_2.charge_gauge == 100 and
     (character_3.charge_gauge >= 90 or character_4.charge_gauge >= 90)) or
	 (character_3.charge_gauge == 100 and character_4.charge_gauge >= 90) then
    return 2
  end 
  if character_1.charge_gauge == 100 or
     character_2.charge_gauge == 90 or
	 character_3.charge_gauge == 80 or
	 character_4.charge_gauge == 70 then
    return 1
  end 
  return 0
end

if not booleans["Once"] and enemy_1.hp_percentage > 30 and NumCharactersBelowHPPercentage(70) >= 2 then
  UseSupportPotion()
  booleans["Once"] = true
end

characters["Altair"]:UseSkill(1)
if MaxChainBurst() <= 2 then
  characters["Altair"]:UseSkill(3)
end

--[[Cast water SR buncle every 4 turns]]
if turn >= 6 and (turn - 6) % 4 == 0 then
  Summon(4)
  Summon(5)
end

if turn >= 14 then
  --[[Refresh debuffs]]
  characters["Altair"]:UseSkill(2)
  character_1:UseSkill(4)
  character_1:UseSkill(2)
end

if turn == 1 then
  EnableChargeAttack()
  --[[Cast defence down debuffs]]
  characters["Altair"]:UseSkill(2)
  character_1:UseSkill(4)
  --[[Cast Rain of Arrows]]
  character_1:UseSkill(2)
  characters["Feower"]:UseSkill(1)
  characters["Anre"]:UseSkill(2)
  characters["Anre"]:UseSkill(1)
end
if turn == 2 then
  characters["Feower"]:UseSkill(2)
end

characters["Feower"]:UseSkill(1)

if not(character_1.charge_gauge == 100 and characters["Anre"].charge_gauge >= 90 or
       characters["Anre"].charge_gauge == 100) then
  characters["Anre"]:UseSkill(2)
  characters["Anre"]:UseSkill(1)
end

if enemy_1.hp_percentage < 79 and enemy_1.hp_percentage > 75 then
  --[[Cast phalanx]]
  character_1:UseSkill(1)
end

if enemy_1.hp_percentage < 44.5 and enemy_1.hp_percentage > 50 then
  if characters["Anre"].skill_3_available then
    characters["Anre"]:UseSkill(3)
  else
    --[[In case we did not deal enough damage, cast phalanx]]
    character_1:UseSkill(1)
  end
end

if enemy_1.hp_percentage < 30 and enemy_1.hp_percentage > 25 then
  if characters["Anre"].skill_3_available then
    characters["Anre"]:UseSkill(3)
  else
    --[[In case we did not deal enough damage, cast phalanx]]
    character_1:UseSkill(1)
  end
end

if enemy_1.hp_percentage < 25 then
  if not booleans["Used support potion"] then
    UseSupportPotion()
	booleans["Used support potion"] = true
  end
  --[[Activate Uno's god mode]]
  characters["Anre"]:WithWaitTime(5000):UseSkill(4)
  characters["Feower"]:UseSkill(3)
  if character_2:HasStatusEffect(DoubleAttackBuff) and not booleans["Shiva1"] then
	Summon(2)
	DisableChargeAttack()
	booleans["Shiva1"] = true
  end
  if character_2:HasStatusEffect(DoubleAttackBuff) and not booleans["Shiva2"] then
	Summon(3)
	DisableChargeAttack()
	booleans["Shiva2"] = true
  end
end
