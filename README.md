# Who is Zooey?

Zooey is a bot for Granblue Fantasy which can:
- farm story quests, free quests, special quests ([Dimension Halo demo](https://youtu.be/S_esoRe9xtM)) and even event quests (showdowns, guild wars) on its own
- **[slime-blast](https://www.youtube.com/watch?v=GKHdazIbK_8)** using two accounts on a _same_ computer. Other co-op quests can be used too, such as the EX1-3 stage for creed farming.
- parse user scripts to **[use skills and summons](https://www.youtube.com/watch?v=SwWNsTNXWSc)** and customize the sequences of actions performed during fights. This offers a plethora of possibilities to help you tackle the harder quests.
- proceed to the nightmare mode stage automatically when it appears ([Dimension Halo demo](https://youtu.be/S_esoRe9xtM), [Cerberus showdown demo](https://www.youtube.com/watch?v=-xvDRwB4QEk))
- choose summons among a user-defined list of preferences, and refresh summons when some are not available (check the first minutes of the Dimensional Halo demo above)
- refill AP on its own when needed
- stop automatically when the captcha screen appears, when X AP potions were used or when Y minutes were elapsed

It is compatible with Viramate skill and summon hotkeys, should you use it. It is generally faster to use the hotkeys instead of clicking on the character whose ability you want to use, then on that ability icon.

Zooey Bot consists in an executable program and a Chrome Extension. Contrary to Chrome Web Store extensions which can be tracked by ID (such as Viramate or AnCheera), the Zooey Bot extension has no fixed ID: its ID is generated randomly at installation and can be easily *[regenerated on demand](https://github.com/Masuzu/ZooeyBot/wiki/Regenerating-your-Zooey-extension-ID)*. Zooey does not inject any Javascript code or HTML contents tampering with the original GBF webpage. As you can see in the demo videos, Zooey controls your mouse and keyboard inputs in the same way as a human would do: click positions, mouse trajectories and delays are all randomized.

Zooey Bot does not store any personal information about the user account.

# [Getting started](https://github.com/Masuzu/ZooeyBot/wiki/Setup-and-installation)

# [Download website](https://gbtools.azurewebsites.net/ZooeyBot/en/Home)

## Why Viramate or (insert here any other extension name which can be found on the Chrome store) can be easily detected?

By design from Google, the only way to know whether a Chrome extension is used is to know its ID. As stated above, Chrome Web Store extensions have a fixed ID from the first day they are released on the store. Zooey is not available on the Chrome Web Store and is installed by loading it manually. Therefore, regenerating its ID on demand and at any time makes it untrackable.

## Why tampering with frame per seconds and other similar hacks can be easily detected?

Just to give you some context, this allowed players to increase the speed of the animations by a significant amount, resulting in faster turns and thus much more damage dealt than regular players. This was achieved by *modifying* some of the Javascript variables on the GBF webpage. Detecting that a variable has an impossible value in your webpage is easy, isn't it? Bingo!

**Zooey does not mess with any of the elements of the HTML page, neither does it try to modify any of the Javascript variables on the GBF webpage.**

# Resources

[Setup and installation](https://github.com/Masuzu/ZooeyBot/wiki/Setup-and-installation)

[Basic mode - story quests, free quests and special quests automated farming](https://github.com/Masuzu/ZooeyBot/wiki/Basic-mode---story-quests,-free-quests-and-special-quests-automated-farming)

[Event mode - Dimensionial Halo, events and showdowns automated farming](https://github.com/Masuzu/ZooeyBot/wiki/Event-mode)

[Slave mode (slime-blasting)](https://github.com/Masuzu/ZooeyBot/wiki/Slave-mode-(slime-basting))

[Lua scripts](https://github.com/Masuzu/ZooeyBot/wiki/Lua-scripts)

[Regenerating your Zooey extension ID](https://github.com/Masuzu/ZooeyBot/wiki/Regenerating-your-Zooey-extension-ID)

[Frequently Asked Questions](https://github.com/Masuzu/ZooeyBot/wiki/FAQ)
