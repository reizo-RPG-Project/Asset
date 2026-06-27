#> rpg:asset/item/0030.copper_sword/is_clicked/_
#
# 
#
# @within function rpg:asset/item/0002.abstract_weapon/tick/_

# 親クラスのメソッドを呼ぶ
function reizo_mcfunc_engin:api/super/_.m {Type:"item",Method:"is_clicked/_"}

# +1していく
execute store result storage reizo_mcfunc_engin:context this.oxidationProgress int -1 run data get storage reizo_mcfunc_engin:context this.oxidationProgress -1.00000000001

# 値で変える
    # 10で風化
    execute if data storage reizo_mcfunc_engin:context this{oxidationProgress:5} run return run function rpg:asset/item/0030.copper_sword/is_clicked/exposed
    # 15で錆びる
    execute if data storage reizo_mcfunc_engin:context this{oxidationProgress:10} run return run function rpg:asset/item/0030.copper_sword/is_clicked/weathered
    # 25で酸化
    execute if data storage reizo_mcfunc_engin:context this{oxidationProgress:20} run return run function rpg:asset/item/0030.copper_sword/is_clicked/oxidized
    # 35で戻る
    execute if data storage reizo_mcfunc_engin:context this{oxidationProgress:25} run return run function rpg:asset/item/0030.copper_sword/is_clicked/unaffected