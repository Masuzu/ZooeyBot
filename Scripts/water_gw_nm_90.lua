--[[Elysian (Miserable mist, Clear, Call of the Abyss), Siegfried, Mahira, Ayer, De La Fille, Cagliostro, Godsworn Alexiel x Titan--]]
if turn == 1 then
  DisableChargeAttack()
  character_1:UseSkill(1):WithWaitTime(3200)
  character_1:UseSkill(4)
  --[[Mahira's echo buff--]]
  character_3:UseSkill(3)
  --[[Miserable Mist--]]
  character_1:UseSkill(2)
  --[[Mahira's defense down debuff--]]
  character_3:UseSkill(2)
  character_4:UseSkill(1)
end

--[[React to special boss triggers--]]
if enemy_1.hp_percentage < 75 and enemy_1.hp_percentage > 50 then
  if booleans["75% trigger reached"] == nil then
    booleans["75% trigger reached"] = true
    --[[Use clear--]]
    character_1:UseSkill(3)
  end
end
if enemy_1.hp_percentage <= 65 then
  if booleans["Nearing 50% trigger"] == nil then
    booleans["Nearing 50% trigger"] = true
    EnableChargeAttack()
	--[[Summon Titan--]]
	Summon(6)
  end
end
if enemy_1.hp_percentage < 50 then
  if booleans["50% trigger reached"] == nil then
    booleans["50% trigger reached"] = true
	--[[Wait for the Ougi lockout period to end--]]	
	Wait(5000)
	if character_1.hp_percentage < 23 then
	  UseGreenPotionOnPartyMember(1)
	end
	if character_2.hp_percentage < 23 then
	  UseGreenPotionOnPartyMember(2)
	end
	if character_3.hp_percentage < 23 then
	  UseGreenPotionOnPartyMember(3)
	end
	if character_4.hp_percentage < 23 then
	  UseGreenPotionOnPartyMember(4)
	end
	if character_3.name == "Mahira" then
      character_3:UseSkill(1)
	end
  end
end

if enemy_1.hp_percentage > 15 then
  --[[Siegfried--]]
  if characters["Siegfried"] ~= nil then
    characters["Siegfried"]:UseSkill(2)
    characters["Siegfried"]:UseSkill(1)
  end
end

if enemy_1.hp_percentage < 45 then
  --[[Summon Godsworn Alexiel--]]
  Summon(1)
end

if turn > 1 and character_1.charge_gauge < 90 then
  character_1:UseSkill(4)
end

--[[In case backline characters enter into the fray--]]
if characters["De La Fille"] ~= nil then
  characters["De La Fille"]:UseSkill(1)
  characters["De La Fille"]:UseSkill(3)
end
if characters["Cagliostro"] ~= nil then
  characters["Cagliostro"]:UseSkill(2)
end
