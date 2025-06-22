#スペシャルポイント増加処理
#塗り可能範囲内の全てのブロック数を取得
$execute store result score @s nowPaintAreaBlocks run clone ~$(fx) ~$(fy) ~$(fz) ~$(tx) ~$(ty) ~$(tz) ~$(fx) ~$(fy) ~$(fz) filtered #core:can_inking force
#塗り可能範囲内の既存の自チームブロック数を取得
$execute store result score @s nowPaitnAreaMyTeamBlocks run clone ~$(fx) ~$(fy) ~$(fz) ~$(tx) ~$(ty) ~$(tz) ~$(fx) ~$(fy) ~$(fz) filtered $(color)_concrete force
#(塗り可能範囲内の全てのブロック数)-(塗り可能範囲内の既存の自チームブロック数)で、今回塗ることができるブロック数を取得
scoreboard players operation @s nowPaintAreaBlocks -= @s nowPaitnAreaMyTeamBlocks
#計算した数を塗りポイントとして追加
$execute if score @s nowPaintAreaBlocks > 0 num run scoreboard players operation @a[level=$(owner)] specialPoint += @s nowPaitnAreaMyTeamBlocks