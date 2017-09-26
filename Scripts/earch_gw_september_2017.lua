--[[Chaos Ruler (Rain of Arrows, Unpredictable, Splitting Spirit), Lecia, Melissabelle, summer Siegfried. Tiamat_1 x Setekh_1/Anat_1--]]
--[[Summon Morrigna when available, usually never happens as the battles ends before--]]
EnableChargeAttack()
if characters["<main_character>"] ~= nil and characters["<main_character>"].hp_percentage <=27 and enemy_1.hp_percentage > 13 then
  UseGreenPotionOnPartyMember(1)
end
if turn == 1 then
  Summon(6)
  character_1:UseSkill(4)
  characters["Melissabelle"]:UseSkill(1)
end
--[[Siegfried buff]]
if characters["Siegfried"] ~= nil then
  characters["Siegfried"]:UseSkill(3)
end
--[[Use Unpredictable and rain of Arrow off cooldown]]
if characters["<main_character>"] ~= nil then
  characters["<main_character>"]:UseSkill(3)
end
if turn == 1 then
  --[[Lecia's buff orders]]
  characters["Lecia"]:UseSkill(3)
  character_4:UseSkill(2)
  character_4:UseSkill(1)
end
--[[Use Rain of Arrow off cooldown]]
if characters["<main_character>"] ~= nil then
  characters["<main_character>"]:UseSkill(2)
end
if turn == 2 then
  --[[Wait a bit after the 2-chain Ougi on the first turn]]
  Wait(1000)
  characters["Lecia"]:UseSkill(1)
  --[["Consume" Lecia's buff orders]]
  characters["Lecia"]:UseSkill(3)
end
if characters["Melissabelle"] ~= nil then
  characters["Melissabelle"]:UseSkill(2):WithWaitTime(3000)
  characters["Melissabelle"]:UseSkill(3):WithWaitTime(3000)
end
if characters["Siegfried"] ~= nil then
  characters["Siegfried"]:UseSkill(3)
  characters["Siegfried"]:UseSkill(2)
  characters["Siegfried"]:UseSkill(1)
end
if enemy_1.hp_percentage <= 50 then
  if characters["<main_character>"] ~= nil then
    characters["<main_character>"]:UseSkill(1)
  end
end
if characters["Gawain"] ~= nil and enemy_1.hp_percentage >= 13 then
  characters["Gawain"]:UseSkill(2)
end
