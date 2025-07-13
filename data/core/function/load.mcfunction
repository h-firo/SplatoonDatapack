#スコアボード
#Core
scoreboard objectives add shotX dummy
scoreboard objectives add tX dummy
scoreboard objectives add shotY dummy
scoreboard objectives add shotZ dummy
scoreboard objectives add tZ dummy
scoreboard objectives add shotBlur dummy
scoreboard objectives add setAirBlur dummy
scoreboard objectives add playerCount dummy

#IIN
scoreboard objectives add pNum dummy
scoreboard objectives add shotNum dummy
scoreboard objectives add bombNum dummy
scoreboard objectives add objNum dummy

#Player
scoreboard objectives add team dummy
scoreboard objectives add ink dummy
scoreboard objectives add specialPoint dummy
scoreboard objectives add MaxSpecialPoint dummy
scoreboard objectives add inkTo100 dummy
scoreboard objectives add useSpecialWeapon dummy
scoreboard objectives add specialUseCount dummy
scoreboard objectives add maxSpecialUseCount dummy
scoreboard objectives add markingTimer dummy
scoreboard objectives add nowPaintAreaBlocks dummy
scoreboard objectives add nowPaitnAreaMyTeamBlocks dummy
scoreboard objectives add weaponCount dummy

#Health
scoreboard objectives add health dummy
scoreboard players set @a health 100

#weapon
scoreboard objectives add accuracy dummy
scoreboard objectives add damage dummy
scoreboard objectives add speed dummy
scoreboard objectives add removeInk dummy
scoreboard objectives add charge dummy
scoreboard objectives add chargeCarry dummy
scoreboard objectives add maxChageValue dummy
scoreboard objectives add chargeDisplay dummy

#subweapon
scoreboard objectives add explosionTimer dummy
scoreboard objectives add isSticking dummy

#SpecialWeapon
scoreboard objectives add shotFireRate dummy
scoreboard objectives add killerwailDamageDelay dummy
scoreboard objectives add killerwailTargetDelay dummy
scoreboard objectives add objTimer dummy
scoreboard objectives add drinkNum dummy
scoreboard objectives add drinkTimer dummy
scoreboard objectives add isHaveDrinker dummy
scoreboard objectives add isKillerWail dummy
scoreboard objectives add objDamage dummy
scoreboard objectives add isCube dummy

#Delay
scoreboard objectives add delay dummy
scoreboard objectives add shotDelay dummy
scoreboard objectives add preDelay dummy
scoreboard objectives add sprintDelay dummy
scoreboard players set @a delay 0
scoreboard players set @a shotDelay 0
scoreboard players set @a sprintDelay 0
scoreboard players set @a preDelay 0

#Number
scoreboard objectives add num dummy
scoreboard players set 1600 num 1600
scoreboard players set 100 num 100
scoreboard players set 10 num 10
scoreboard players set 16 num 16
scoreboard players set 2 num 2
scoreboard players set 0 num 0
scoreboard players set -1 num -1

#flag
scoreboard objectives add rightHold dummy
scoreboard objectives add rightClick used:carrot_on_a_stick
scoreboard objectives add rightDown used:carrot_on_a_stick
scoreboard objectives add isSprint dummy
scoreboard objectives add isSquid dummy
scoreboard objectives add isInAir dummy
scoreboard objectives add isDamageSet dummy

#ダメージを受けなくする
title @a times 0 8 0

#初期化
scoreboard players set num pNum 0
scoreboard players set num shotNum 0
scoreboard players set num objNum 0
scoreboard players set num bombNum 0
scoreboard players set @a drinkTimer 0
scoreboard players set @a ink 999
scoreboard players set @a specialPoint 0
tag @a remove pNumAlreadySet
tag @a[tag=!player] add player

#ストレージ
data merge storage team_color: {0:"blue",1:"yellow",2:"orange",3:"pink",4:"lime"}

#[連射レート(フレーム/3×10),ダメージ,インク消費量(割合×10),拡散,ジャンプ中拡散,射程(着弾速度),射程(落下速度,デフォ0.08),イカ速,ヒト速,威力減衰,前隙\
(ローラー:塗り進み最小,塗り進み最大,塗り進み速度,塗り進みダメージ,縦振りレート,縦振り速度),\
(チャージャー:チャージ時間,チャージキープ時間,チャージキープレート,射程増加割合,空中チャージ減衰,最大チャージレート,最大ダメージ),\
(スピナー:チャージ時間,チャージキープ時間,チャージキープレート,射程増加割合,空中チャージ減衰,最大チャージレート]
data merge storage weapons: {\
shooter:{\
splattershot:{FireRate:20,Damage:37,Ink:9,Blur:1,AirBlur:3,Speed:0.001,Gravity:0.14,SSpeed:2,HSpeed:0.4,DamageAT:1,PreGap:2},\
splattershot_pro:{FireRate:26,Damage:45,Ink:20,Blur:1,AirBlur:1,Speed:0.0012,Gravity:0.07,SSpeed:2,HSpeed:0.32,DamageAT:1,PreGap:2},\
ftgal:{FireRate:31,Damage:52,Ink:13,Blur:5,AirBlur:5,Speed:0.001,Gravity:0.1,SSpeed:2,HSpeed:0.2,DamageAT:0,PreGap:2}},\
roller:{\
splatroller:{FireRate:140,Damage:120,Ink:85,Blur:1,AirBlur:3,Speed:0.001,Gravity:0.1,SSpeed:2,HSpeed:1,DamageAT:2,PreGap:2,MinRange:0,MaxRange:1,RollingSpeed:0.6,RollingDamage:125,FireRate2:145,VSpeed:0.001},\
carbonroller:{FireRate:100,Damage:107,Ink:39,Blur:1,AirBlur:3,Speed:0.001,Gravity:0.3,SSpeed:2,HSpeed:1,DamageAT:2,PreGap:1,MinRange:0,MaxRange:1,RollingSpeed:0.7,RollingDamage:70,FireRate2:140,VSpeed:0.001},\
dynamoroller:{FireRate:40,Damage:180,Ink:180,Blur:1,AirBlur:3,Speed:0.001,Gravity:0.1,SSpeed:2,HSpeed:1,DamageAT:7,PreGap:19,MinRange:-1,MaxRange:1,RollingSpeed:0.4,RollingDamage:125,FireRate2:42,VSpeed:0.002},\
wideroller:{FireRate:130,Damage:70,Ink:90,Blur:1,AirBlur:3,Speed:0.001,Gravity:0.08,SSpeed:2,HSpeed:1,DamageAT:3,PreGap:2,MinRange:-2,MaxRange:2,RollingSpeed:0.7,RollingDamage:70,FireRate2:150,VSpeed:0.002}},\
charger:{\
eliter4k:{FireRate:40,Damage:180,Ink:250,Blur:0,AirBlur:1,Speed:0.008,Gravity:0,SSpeed:2,HSpeed:0.1,DamageAT:0,PreGap:2,ChargeTime:30,CKTime:25,CKRate:8,DeltaRange:1},\
splatcharger:{FireRate:40,Damage:160,Ink:180,Blur:0,AirBlur:1,Speed:0.006,Gravity:0,SSpeed:2,HSpeed:0.2,DamageAT:0,PreGap:2,ChargeTime:20,CKTime:25,CKRate:8,DeltaRange:1}}}

#対物性能
data merge storage objectdamage: {\
shooter:{splattershot:35,splattershot_pro:40,ftgal:48},\
roller:{splatroller:150,carbonroller:181,dynamoroller:306,wideroller:300},\
charger:{eliter4k:360,splatcharger:320},\
specialweapon:{trizooka:1320,crabtank:100,killerwail51:7}\
}

#スペシャル組み合わせ
data merge storage subspecials: {\
shooter:{\
splattershot:{subWeapon:"suctionbomb",specialWeapon:"trizooka",specialPoint:210},\
splattershot_pro:{subWeapon:"angleshooter",specialWeapon:"crabtank",specialPoint:180},\
ftgal:{subWeapon:"splashwall",specialWeapon:"killerwail51",specialPoint:200}},\
roller:{\
splatroller:{subWeapon:"curingbomb",specialWeapon:"bigbubbler",specialPoint:180},\
carbonroller:{subWeapon:"autobomb",specialWeapon:"trizooka",specialPoint:190},\
dynamoroller:{subWeapon:"sprinkler",specialWeapon:"tacticooler",specialPoint:190},\
wideroller:{subWeapon:"splashwall",specialWeapon:"inkvac",specialPoint:190}},\
charger:{\
eliter4k:{subWeapon:"inkmine",specialWeapon:"wavebreaker",specialPoint:210},\
splatcharger:{subWeapon:"splatbomb",specialWeapon:"inkvac",specialPoint:200}}}

tellraw @a[tag=operator] {"text":"リロードしました[1.21.6]"}
tellraw @a[tag=operator] {"text":"ゲームを開始する際は、pNumを付与してください"}