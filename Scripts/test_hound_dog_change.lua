--[[Use the change skill to swap the main character with a sub party member]]
character_1:UseSkill(3)
--[[Cast a skill of that sub party member now available in the front]]
characters["Diantha"]:UseSkill(2)
