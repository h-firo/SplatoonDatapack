playsound item.bucket.empty_axolotl master @a ~ ~ ~ 1
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.2 1.5
particle explosion ~ ~ ~ 0 0 0 0 1
function core:subweapons/splashbomb/particle
fill ~-2 ~-1 ~-2 ~2 ~2 ~2 blue_concrete replace #core:can_inking
execute positioned ~ ~0.5 ~ run function core:subweapons/splashbomb/particle
execute positioned ~ ~1 ~ run function core:subweapons/splashbomb/particle
execute positioned ~ ~1.5 ~ run function core:subweapons/splashbomb/particle
execute positioned ~ ~2 ~ run function core:subweapons/splashbomb/particle