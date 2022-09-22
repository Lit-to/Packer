#> pack:undo
summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,NoAI:1b,Silent:1b,Invisible:1b,Tags:["giveaway"]}

data modify storage pack: item set from storage pack: old
function pack:main

kill @e[type=armor_stand,tag=giveaway]
