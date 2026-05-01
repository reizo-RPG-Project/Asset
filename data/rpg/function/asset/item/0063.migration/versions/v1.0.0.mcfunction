#> rpg:asset/item/0063.migration/versions/v1.0.0
#
# 
#
# @within function rpg:asset/item/0063.migration/versions/_

# バージョンアップ
data modify storage rpg:global Version set value "v1.0.1"

# マイグレーションが必要っということを宣言
data modify storage reizo_mcfunc_engin:context this.IsNeedItemMigration set value 1b

tellraw @a "Version1.0.1!"