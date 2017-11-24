[General]
# Possible values: jp, en. Default to en when the string is malformed. Please make sure that your configuration file is encoded using UTF8 if you use non Unicode characters.
Language=en
# ChromeDevToolsWindowDockedOnTheRight should be set to false if your Chrome DevTools console is docked on the bottom (as seen here https://i.imgur.com/bvTOq0g.png), and to true if it is docked on the right
ChromeDevToolsWindowDockedOnTheRight=false
MaxPageLoadDelayInMsBeforeRetry=3500
# Maximum amount of time Zooey will wait for an expected event to occur (for instance, the attack button appearance) before triggering the fallback policy.
MaxTriggerDelayInMsBeforeFallback=5000
# Maximum delay before an action is deemed to have failed due to a lack of response from the GBF servers
MaxResponseDelayInMs=2500
# Maximum number of retry attempts when an action fails (due to a lack of response for instance) before the fallback policy kicks in
MaxNumActionRetries=2
MinWaitTimeInMsAfterRefresh=2000
# The bot will stop after the given parameter no matter what.
TimeLimitInSeconds=7000
UseViramate=false
# Zooey-bot will stop after using the given number of 1/2 AP potions (resets each time you restart Zooey-bot)
MaxNumPotionsToUse=9999
# Zooey-bot will start using full elixirs when this parameter is set to true if there is no 1/2 AP potions left. In any case, no more than MaxNumPotionsToUse potions will be used
UseFullElixirsWhenNoRemainingHalfAPPotions=false

# Set this parameter to true to use full elixirs instead of half AP potions in priority
UseFullElixirsFirst=false

# Horizontal position of the countdown timer which appears when a nightmare mode is available, with regards to the top left corner of your desktop. No countdown timer is displayed when the Event mode is activated.
CountdownTimerHorizontalPosition=0
# Vertical position of the countdown timer which appears when a nightmare mode is available, with regards to the top left corner of your desktop. No countdown timer is displayed when the Event mode is activated.
CountdownTimerVerticalPosition=0

# The "slave mode" is used to host Co-Op quests (the slime H2-1 stage for instance) using 2 accounts on a same computer.
# It requires the use of 2 accounts and the "zooey-bot-slave" Chrome extension installed in addition to the "zooey-bot" Chrome extension.
# The "slave account" will host the quests and pay the AP cost.
# You can log into a second account on a same computer using Chrome Incognito mode.
# To use this mode, set the parameter Active to true and follow the console instructions.
[SlaveMode]
Active=false
# Relative path to the script to use to customize the behaviour of the main account.
# If left blank, the slave account will attack at each turn.
MainAccountLuaScript=Scripts/slime_blasting_sword_master.lua
# Relative path to the script to use to customize the behaviour of the slave account.
# If left blank, the slave account will attack at each turn.
SlaveLuaScript=Scripts/slime_blasting_sword_master.lua
# By default, Zooey will make the slave account attack first. Set this parameter to true if you would like your main account to attack first.
ProcessMainAccountTurnFirst=false

[Inputs]
DelayInMsBetweenMouseDownAndUp=40
RandomDelayInMsBetweenMouseDownAndUp=20
MouseSpeed=580
MouseScrollSpeed=250
# The bot will stop when you press the given key. The default key is F1. Please refer to https://msdn.microsoft.com/en-us/library/windows/desktop/dd375731(v=vs.85).aspx (the values on this page are given in hexadecimal base).
# If you also use Viramate, DO NOT use a key which is shared by Viramate shortcuts.
ExitKeyCode=112
# After the bot moves the cursor to the target position, wait for the given duration before performing the click
WaitTimeInMsBeforeClickInput=50

[PartySelection]
# Integer which defines the party group to use. If an integer outside of the range [1, 7] (boundaries included) is provided, the current party group will be selected.
PreferredPartyGroup=0
# Integer which defines the party deck to use. If an integer outside of the range [1, 6] (boundaries included) is provided, the current party deck will be selected.
PreferredPartyDeck=0
# Integer which defines the party group to use for the nightmare mode. If an integer outside of the range [1, 7] (boundaries included) is provided, the current party group will be selected.
PreferredNightmareModePartyGroup=0
# Integer which defines the party deck to use for the nightmare mode. If an integer outside of the range [1, 6] (boundaries included) is provided, the current party deck will be selected.
PreferredNightmareModePartyDeck=0

[Summons]
# Comma-delimited list of summons which will be selected in priority if they are available
PreferredSummons=Kaguya,White Rabbit
# In case none of the preferred summons was found, select a random summon in the given summon attribute tab, unless the parameter RerollSummonWhenNoPreferredSummonWasFound is set to true.
# Possible values are 'misc' (Kaguya, White Rabbit fall into this category), 'fire', 'water', 'earth', 'wind', 'light' or 'dark'.
# Not case-sensitive.
DefaultSummonAttributeTab=Dark
# Zooey will reroll summons until one of the preferred summons is available, using trial battles to refresh the summon list. This does not apply to the summon selection for the nightmare stage (see the EventMode section).
RerollSummonWhenNoPreferredSummonWasFound=false

[Combat]
# Zooey-bot will wait at least the given number of milliseconds after pressing the attack button
MinWaitTimeInMsAfterAttack=500
# Zooey-bot will wait at least the given number of milliseconds after using a summon
MinWaitTimeInMsAfterSummon=3000
# Zooey-bot will wait at least the given number of milliseconds after using a skill
MinWaitTimeInMsAfterAbility=2200
# Relative path to the script to use to customize the pace of combats. Embrace a world of infinite possibilities!
# Leave this parameter blank if you do not want to use any script. In this case Zooey will just attack at each turn. You can test your scripts using the TrialBattleMode (see the Debug section).
# Please refer to https://github.com/Masuzu/ZooeyBot/wiki/Lua-scripts for a comprehensive overview of the scripting features.
LuaScript=
# If set to true, Zooey will refresh the page after each attack on the last stage of a quest.
# This saves up some precious seconds and that is what every MVP racer does.
ReloadPageOnLastBattle=true
# If set to true, Zooey won't wait for a response from GBF servers after using a skill or summon or after attacking. Use this parameter if you know what you are doing, or else this may result in Zooey going out of control in case you use several skills each turn. The main use of this parameter is to make skill usage slightly more responsive during slime blasting.
DoNotWaitForServerResponse=false
# Maximum wait time in milliseconds to load the character selection menu when an ability targetting a party member is used.
MaxWaitTimeToLoadCharacterSelectionMenuInMs=1100
# Retrieving party members status effects at each turn may degrade the performance depending on your ping.
RetrieveStatusEffects=false

# After performing a chain burst with 2 or more characters, you can't take any actions for a short period of time.
# Use the parameters below to configure how long you would like to wait when it happens.
AdditionalDelayInMsAfter2ChainBurst=3000
AdditionalDelayInMsAfter3ChainBurst=7000
AdditionalDelayInMsAfter4ChainBurst=11500
AdditionalDelayInMsAfterOverchainBurst=11500

# Showcase: Zooey bot project - Cerberus showdown 3-hour demo - automated event grinding
# https://www.youtube.com/watch?v=-xvDRwB4QEk
# Applicable to any quest with a nightmare mode such as Angel Halo and Xeno showdowns.
# Please refer to https://github.com/Masuzu/ZooeyBot/wiki/Event-mode for more information.
[EventMode]
# Set this parameter to true to use the event mode. Zooey will enter autopilot mode when you navigate to the quest menu.
Enabled=false
# Url of the summon selection page for Angel Halo (Extreme)
EventRaidUrl=http://game.granbluefantasy.jp/#quest/supporter/510031/5
EventRaidScript=
# Url of the summon selection page for Dimensional Halo
NightmareModeUrl=http://game.granbluefantasy.jp/#quest/supporter/510051/5
NightmareModeScript=
# Some events such as Rise of the Beasts require to navigate to the home page of the event before navigating to the event raid url defined above. If EventPageUrl is provided, Zooey will first navigate to this url before hosting the raid. Leave EventPageUrl blank for events which do not require you to do so.
EventPageUrl=
# Comma-delimited list of summons which will be selected in priority if they are available for the nightmare mode.
# In case none of the preferred summons was found, select a random summon in the summon attribute tab defined by the parameter DefaultSummonAttributeTab, unless the parameter RerollSummonWhenNoPreferredSummonWasFoundForNightmareMode is set to true.
NightmareModePreferredSummons=Bahamut
# Zooey will reroll summons until one of the preferred summons for the nightmare mode is available, using trial battles to refresh the summon list.
RerollSummonWhenNoPreferredSummonWasFoundForNightmareMode=true
# Set this parameter to true if the nightmare mode is available when you start Zooey so she can proceed to the nightmare stage right ahead.
NightmareModeAvailableAtStart=false
# Wait time in milliseconds after Zooey finishes loading the EventPageUrl
WaitTimeInMsAfterEventPageIsLoaded=1000

# Use this special event mode to automate farming of events stages which require a certain number of items to be hosted, such as Guild War nightmare modes.
# Please refer to https://github.com/Masuzu/ZooeyBot/wiki/Treasure-Raid-Event-mode for more information
[TreasureEventMode]
Enabled=false
# Url of the event page. The URL of the June 2017 dark GW is given as an example.
TreasureEventUrl=http://game.granbluefantasy.jp/#quest/extra/event/2018
# Supported value are 'vh' (for "very hard"), 'ex' (for "extreme"), 'xeno-raid' (for the level 100 Xeno raid), 'gw' (for the preliminary round and first day of "Unite and Fight" nightmare mode level 90), 'gw-day-2-nm-90' for the second and 3rd days of "Unite and Fight" nightmare mode level 90, 'gw-day-2-nm-95' for the second and 3rd days of "Unite and Fight" nightmare mode level 95, 'gw-day-4-nm-90' for the 4th and last days of "Unite and Fight" nightmare mode level 90, 'gw-day-4-nm-95' for the 4th and last days of "Unite and Fight" nightmare mode level 95, 'gw-day-4-nm-100' for the 4th and last days of "Unite and Fight" nightmare mode level 100
Difficulty=gw-day-4-nm-90
# Action point cost of the quest you are trying to start
ActionPointCost=30
TreasureEventModeScript=


NightmareModeUrl=
NightmareModeScript=
# Comma-delimited list of summons which will be selected in priority if they are available for the nightmare mode.
# In case none of the preferred summons was found, select a random summon in the summon attribute tab defined by the parameter DefaultSummonAttributeTab, unless the parameter RerollSummonWhenNoPreferredSummonWasFoundForNightmareMode is set to true.
NightmareModePreferredSummons=Bahamut
# Zooey will reroll summons until one of the preferred summons for the nightmare mode is available, using trial battles to refresh the summon list.
RerollSummonWhenNoPreferredSummonWasFoundForNightmareMode=true
# Set this parameter to true if the nightmare mode is available when you start Zooey so she can proceed to the nightmare stage right ahead.
NightmareModeAvailableAtStart=false

# Use this mode to host and repeat co-op stages on your own.
# More information about this mode can be found here https://github.com/Masuzu/ZooeyBot/wiki/Solo-co-op-mode
[SoloCoOpMode]
Enabled=false
# Relative path to the script to use to customize the behaviour of the main account.
# If left blank, the slave account will attack at each turn.
LuaScript=Scripts/slime_blasting_sword_master.lua

# Use this mode to repeat a certain number of times raid A, then move on to raid B and so on. 
# More information to get started with the customized raid scheduling mode can be found here https://github.com/Masuzu/ZooeyBot/wiki/Customized-raid-scheduling
[CustomizedScheduling]
Enabled=false
SchedulingLuaScript=scheduling.lua

[Debug]
Clicks=false
# When this parameter is set to true, Zooey bot won't start until you press ENTER. This is especially useful to test your Lua scripts using trial battles.
TrialBattleMode=false

[Alerting]
# Relative path to the mp3 or wav file to play when the captcha window appears
CaptchaNotificationSoundPath=captcha_notification.mp3
# Number of times the captcha notification sound is played before Zooey stops, following a captcha appearance.
NumNotifications=9999
# Maximum number of times in a row allowed when Zooey has to refresh the summon page. Reloading an abnormally high amount of times can indicate that the captcha popup is displayed but that Zooey somehow missed it.
# A sound notification will be played when the summon selection page is refreshed more than this number of times. 
MaxNumSummonSelectionFailuresBeforePlayingSoundNotification=3

[DimensionalHalo]
# It is possible to know in advance whether the Dimensional Halo boss will transform or not.
# Unless you are not already drowning in Angel fodder, set this parameter to true to retreat immediately at the start of the battle if the boss won't transform.
RetreatWhenNoDimensionalHaloTransformation=true
