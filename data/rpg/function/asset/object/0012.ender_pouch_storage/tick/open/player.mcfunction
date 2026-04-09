#> rpg:asset/object/0012.ender_pouch_storage/tick/open/player
#
# 
#
# @within function rpg:asset/object/0012.ender_pouch_storage/tick/open/_

# プレイヤーから何かしらの入力が受け取れたらもう開けていないということ
    execute if predicate rpg:asset/object/0012/forward run return run data modify storage reizo_mcfunc_engin:context this.Close set value 1b
    execute if predicate rpg:asset/object/0012/backward run return run data modify storage reizo_mcfunc_engin:context this.Close set value 1b
    execute if predicate rpg:asset/object/0012/right run return run data modify storage reizo_mcfunc_engin:context this.Close set value 1b
    execute if predicate rpg:asset/object/0012/left run return run data modify storage reizo_mcfunc_engin:context this.Close set value 1b
    execute if predicate rpg:asset/object/0012/jump run return run data modify storage reizo_mcfunc_engin:context this.Close set value 1b
    execute if predicate rpg:asset/object/0012/sprint run return run data modify storage reizo_mcfunc_engin:context this.Close set value 1b