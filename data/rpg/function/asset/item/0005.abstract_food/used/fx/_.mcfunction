#> rpg:asset/item/0005.abstract_food/used/fx/_
#
# 
#
# @within function rpg:asset/item/0005.abstract_food/used/_

# FX
    # 音
        playsound entity.generic.eat master @s ~ ~ ~ 0.7 1
    # パーティクル
        # パーティクルにアイテムの見た目を使いたいのでitem_modelを取得
        function rpg:asset/item/0005.abstract_food/used/fx/particle/get_data
        # データを代入してパーティクルを表示
        execute anchored eyes positioned ^ ^ ^0.5 run function rpg:asset/item/0005.abstract_food/used/fx/particle/show.m with storage reizo_mcfunc_engin:context this.FX.particle

# お掃除
data remove storage reizo_mcfunc_engin:context this