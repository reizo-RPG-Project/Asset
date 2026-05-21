#> rpg:asset/item/0064.his_jacket/tick/hurt/_
#
# 
#
# @within function rpg:asset/item/0064.his_jacket/tick/_

# 配列の中から取り出す
    # 配列の長さ取得
    execute store result storage reizo_mcfunc_engin:context this.Hurt.Len int 1 run data get storage reizo_mcfunc_engin:context this.Texts
    # 取得した長さを最大値とした疑似乱数を生成
    function rpg:asset/item/0064.his_jacket/tick/hurt/random.m with storage reizo_mcfunc_engin:context this.Hurt
    # 取得した乱数を入れる
    function rpg:asset/item/0064.his_jacket/tick/hurt/get.m with storage reizo_mcfunc_engin:context this.Hurt
    # 出す
    tellraw @a {storage:"reizo_mcfunc_engin:context",nbt:"this.Hurt.text",interpret:true}

# お掃除
data remove storage reizo_mcfunc_engin:context this.Hurt