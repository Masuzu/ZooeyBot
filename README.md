# ZooeyBot

Showcasing the [beta version demo](https://www.youtube.com/watch?v=6U0AdTji1tA)

[Scripting capabilities](https://www.youtube.com/watch?v=UJmuqbfEaM0)

Cerberus showdown automated grinding [crash-test](https://www.youtube.com/watch?v=n6kIWWtbO7E)

# Scripting Zooey with Lua

You can overwrite the behaviour of Zooey during battles using your own Lua scripts. You can find plenty of Lua tutorials online but all you will need most of the time is conditions using the standard `if then else end` pattern which exists in several other languages.

You will find some examples in the `Scripts` directory.

## Referencing characters
You can reference your characters by name using the syntax following syntax `characters["Orchid"]`. This also works with Unicode characters: you would use `characters["オーキス"]` if you were using the Japanese language settings. We will use Orchid for illustrative purposes in the other sections below.

You can also reference characters by position: `character_1` refers to the character at the first position and `character_4` to the one at the fourth position. You can't reference characters in your back row.

## Accessing characters data
| Field | Description |
| ----- | ----- |
| `characters["Orchid"].name` | will return a Unicode string, "Orchid" in this case |
| `characters["Orchid"].skill_1_available` | true if Orchid's first skill is available, false otherwise |
| `characters["Orchid"].skill_4_available` | true if Orchid's fourth skill is available, false otherwise |
| `characters["Orchid"].hp` | current HP of the character (positive integer) |
| `characters["Orchid"].max_hp` | max HP of the character (positive integer) |
| `characters["Orchid"].charge_gauge` | charge gauge of the character (positive integer) |
| `characters["Orchid"].is_alive` | true if Orchid is still alive, false otherwise |

## Global state of the raid

The current battle/stage index can be accessed via the variable `battle`: you can use it in multi-stage quests to perform some actions in some stage(s).

The current turn of the current battle can be retrieved via the variable `turn`. It is an integer starting from 1 and which will be incremented at each turn, or reset when the stage changes or when the battle ends.

## Using skills
`characters["Orchid"]:UseSkill(<skill_index>)`/`character_2:UseSkill(<skill_index>)`. The skill index should be an integer number between 1 and 4 included. If you try to use a skill while it is on cooldown, the command will be ignored.

## Charge attack
You can enable or disable charge attacks using `EnableChargeAttack` and `DisableChargeAttack`.

## Using summons
`Summon(<summon index as an integer number>)`. The summon index should be an integer number between 1 and 6 included. If you try to use a summon while it is on cooldown, the command will be ignored.