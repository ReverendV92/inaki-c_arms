/*
==============================================================================

Rocket launcher

==============================================================================
*/

$modelname weapons/v_rpg.mdl

$cdmaterials models/weapons/v_rocket_launcher models\Weapons\V_hand

$include .\..\_v_models_hl2_definebones_l.qci

$definebone "base" "ValveBiped.Bip01_Spine2" -16.057949 -24.995756 64.720612 -0.000000 0.000000 89.999983 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
//$definebone "muzzle" "base" -0.454765 0.279388 29.004242 -89.999983 -0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000

// whole body
$body studio "RPG_ref"

$origin 4 0 68

// attachment points
$attachment 0 "muzzle" 0 0 0
$attachment "laser" "muzzle" -9.00 -5.00 0.50
$attachment "laser_end" "muzzle" 100.00 -5.00 0.50

$sequence idle1 "Idle01_arms" loop fps 30 activity ACT_VM_IDLE 1 node Idle
$sequence draw "Draw_arms" fps 30 snap activity ACT_VM_DRAW 1 node Idle
$sequence fire "Fire_arms" fps 30 snap activity ACT_VM_PRIMARYATTACK 1 { event 5001 "0" } Node Fire
$sequence reload "Reload_arms" fps 30 activity ACT_VM_RELOAD 1 node Idle
$sequence up_to_down "up_to_down_arms" fps 15 ACT_VM_IDLE_TO_LOWERED 1 transition Idle Low
$sequence down_to_up "down_to_up_arms" fps 15 ACT_VM_LOWERED_TO_IDLE 1 transition Low Idle
$sequence down_idle "down_idle_arms" loop fps 30 ACT_VM_IDLE_LOWERED 1 node Low
