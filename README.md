# Space Exploration Rebalancing

You're not playing [Space Exploration](https://mods.factorio.com/mod/space-exploration) without knowing how to play the base game and by design it is not a mod about large volume logistics challenges. So why are base game items and logistics resources locked so far into the game?

This mod changes research and recipes for some items and technologies to make them quicker to access. This is not meant to be an "easy mode" and each change can be enabled/disabled from the Mod Settings as well. Here are the currently implemented changes:

## Spidertron

There are two options for the Spidertron:
- **Base Game** :  Reverts research/recipe to be as equivalent to the original as possible
- **Space Rebalance (Default)** :  Requires Cryonite at most to research and build, putting it in line with other logistics and character upgrades.

Now I'm going to contradict the purpose of this mod and say you *should withhold* from using the Spidertron for at least your first trip into space and planet output building. To spoil why, the Spidertron is both "free air" in space, and a risk free way of building out on remote planets. It is extremely powerful in Space Exploration. By using it before those points you deprive yourself what is actually an interesting challenge that *is fun* to solve. However, I'm not your parents trying to get you to eat your veggies, if you want it before that I've got you covered. I just don't recommend it.

## Logistics System

Withholding logistics chests is very punishing in a mod that adds new and extremely complicated recipes for required items/buildings. Even the mod itself acknowledges this by giving you a handful of requester chests before you leave Nauvis. The only thing having logistics early does is give you an alternative to space belts in your first trip to orbit. I would rather see the mod add space bots as a whole new category to address this(I mean, the flying robot frame shows a *fan* in it, that's not gonna fly in space.)

This mod adds an option to return the logistics system research to an approximate point to the base game. It's slightly earlier because there is no terrestrial utility science.

## Robot Attrition

Oh boy, this one. Let's tackle this from a positive prospective because I have some strong feelings about this. Space Exploration requires the [Robot Attrition](https://mods.factorio.com/mod/robot_attrition) mod as a non-optional dependency. There is a future plan to make different planet surfaces harsher for robots which I agree could lead to interesting logistic challenges. In the current state all planets are equal and it only limits player freedom.

As a workaround this mod changes the attrition factor setting to allow a `0` value (and sets that as the default value). This will stop bots from crashing. *If you had previously changed this value, you will need to manually set it to `0` to enable it.*

Additionally it has an option to reduce the cost of the Swarm Safety research to the bare minimum. This research does not prevent bots from crashing, only preventing them from doing damage when they do. The safe bot limit is hard coded and can not be externally changed by other mods. It would be nice if it were exposed as a setting. Even if it was a hidden one to allow better interoperability with other mods.

Robot Attrition can be removed from the Space Exploration mod manually by removing the handful of lines of code that read from it, but it's not permitted to distribute a modified version of the code with the current license. The rest of this mod will work with or without it present if you chose to hack it out.

## Deep Space Belts

\*50's Radio Announcer Voice\*

*In a stunning scientific break through, researchers have discovered a new way to secure your whatsits and doodads to a moving conveyor in the cold depths of space with the marvelous technology of thermomagnetics! With new ferrofluid filled bells wizzing about, you needn't fear about flinging your hard earned products off into the void. Available now at your nearest mod portal!*

There's your lore reason, put more plainly this mod offers a vulcanite based recipe set for deep space belts so you can gain access to them earlier. They are **way** too far into the tech tree in the mod, it makes them basically useless. You get every other kind of production technology before them and will be set in your designs. The mod isn't about raw item throughput anyway, most sciences use less than 1000 packs and just setting up the bare infrastructure is the challenge itself.

The implementation I've used here requires pyroflux instead of lubricant and other earlier ingredients, I wasn't joking about the pyroflux as ferrofluid lore either, if you squint right at [Wikipedia](https://en.wikipedia.org/wiki/Thermomagnetic_convection) it might even be actually possible. I've also added optional support for [AAI Loaders](https://mods.factorio.com/mod/aai-loaders), this also required changing the Express (Blue) Loader to be in line with the express belt research.
