#チャージ時間あたりのチャージゲージ変化量を計算
$scoreboard players set @s chargeCarry $(ChargeTime)
$scoreboard players set @s maxChageValue $(ChargeTime)

#チャージ
scoreboard players add @s charge 1
execute if score @s charge > @s maxChageValue run scoreboard players operation @s charge = @s maxChageValue

#表示用変換
scoreboard players operation @s chargeDisplay = @s charge
scoreboard players operation @s chargeDisplay *= 100 num
scoreboard players operation @s chargeDisplay /= @s maxChageValue