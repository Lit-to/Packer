#> pack:main
data modify storage pack: item merge from storage pack: merge
data modify entity @e[tag=giveaway,sort=nearest,limit=1] HandItems[0] set from storage pack: item
item replace entity @s weapon.mainhand from entity @e[type=armor_stand,tag=giveaway,sort=nearest,limit=1] weapon.mainhand

