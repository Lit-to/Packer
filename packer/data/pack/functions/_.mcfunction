#> pack:_
#ストレージに入れたアイテム情報を手に持ってるアイテムに追加する補助DTP
#アマスタを利用しているので、読み込まれているチャンクでの利用をお願いします。
#declare storage pack:
#使い方
#1.ストレージ pack: merge にアイテムの情報を入れる
#2.変更を加えたいアイテムを持って/function pack:を実行する
#3.(ミスった場合は/function pack:undoで元に戻ります)

#オマケ&使用例
#このDTPは、ブロックエンティティのロック用に作成したものです。
#ただ、他のアイテムでも使いやすくなるようにしました。
#したがって、ロックを簡単にできるものも置いておきました。
##使い方
##ブロックエンティティを手にもって/function pack:lock/

summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,NoAI:1b,Silent:1b,Invisible:1b,Tags:["giveaway"]}

data modify storage pack: item set from entity @s SelectedItem
data modify storage pack: old set from entity @s SelectedItem
function pack:main

kill @e[type=armor_stand,tag=giveaway]

