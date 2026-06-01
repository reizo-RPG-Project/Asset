#> rpg:asset/item/9000.echo_shell/tick/used/show_entity_lore/_
#
# 
#
# @within function rpg:asset/item/9000.echo_shell/tick/used/_

# エンティティを探す
execute anchored eyes positioned ^ ^ ^ run function rpg:asset/item/9000.echo_shell/tick/used/show_entity_lore/find_rec

# Entityが見つかっていなかったら終わり
execute unless entity @n[tag=RPG.Item.9000.Target] run return fail

#> 見つかったら詳細を表示
    # TODO: MobごとにLoreを説明しておいてここで出せるように、とりあえず今はステータスのみ。
    # フィールドの取得
    data modify storage reizo_mcfunc_engin:context this.TargetData set from entity @n[tag=RPG.Item.9000.Target] data.Field
    # 基本データ
    data modify storage reizo_mcfunc_engin:context this.Lore.Name set value ["",{"text":"名前: "},{"selector":"@n[tag=RPG.Item.9000.Target]"},"\n"]
    data modify storage reizo_mcfunc_engin:context this.Lore.Lore set from storage reizo_mcfunc_engin:context this.TargetData.Lore
    data modify storage reizo_mcfunc_engin:context this.Lore.Lore prepend value [{"text":"<",color:"white"},{"text":"0",color:"white",font:"icon/face/0001.tubo/_"},{"text":"壺人> ",color:"white"}]
    # ステータス類
        data modify storage reizo_mcfunc_engin:context this.Lore.HP set value ["",{"text":"\uE007",font:"icon/_"},{"text":"最大体力: "},{storage:"reizo_mcfunc_engin:context",nbt:"this.TargetData.HP",color:"green"},"\n"]
        execute if data storage reizo_mcfunc_engin:context this.TargetData.STR run data modify storage reizo_mcfunc_engin:context this.Lore.STR set value ["",{"text":"\uE003",font:"icon/_"},{"text":"物理攻撃力: "},{storage:"reizo_mcfunc_engin:context",nbt:"this.TargetData.STR",color:"green"},"\n"]
    # 実際の表示
    tellraw @a [{"storage":"reizo_mcfunc_engin:context",nbt:"this.Lore.Name",interpret:true},{"storage":"reizo_mcfunc_engin:context",nbt:"this.Lore.HP",interpret:true},{"storage":"reizo_mcfunc_engin:context",nbt:"this.Lore.STR",interpret:true},"------------------------------------\n",{storage:"reizo_mcfunc_engin:context",nbt:"this.Lore.Lore",interpret:true}]

# お掃除
    data remove storage reizo_mcfunc_engin:context this.TargetData
    data remove storage reizo_mcfunc_engin:context this.Lore
    tag @n[tag=RPG.Item.9000.Target] remove RPG.Item.9000.Target