/*
==============================================================================

Physics Cannon

==============================================================================
*/

$modelname weapons/v_physcannon.mdl

$cdmaterials models/weapons/v_physcannon

$include .\..\_v_models_hl2_definebones_l.qci

$definebone "Base" "ValveBiped.Bip01_Spine2" -12.471216 -41.194546 57.519260 -0.000000 0.000000 89.999983 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
//$definebone "Muzzle" "Base" -0.075553 -1.431870 18.091213 -89.999983 -89.999983 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
$definebone "Prong_A" "Base" -0.049619 1.866989 17.056721 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "Base_A" "Prong_A" -0.025934 7.221245 4.806774 -89.999983 -89.999983 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
$definebone "Prong_B" "Base" 4.711560 -5.687351 16.612518 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "Tip_B" "Prong_B" 1.959469 -2.289867 11.821243 -89.999983 -89.999983 0.000000 0.000000 0.000000 -0.000004 0.000000 0.000000 0.000000
$definebone "Base_B" "Prong_B" 4.433215 -5.125233 5.288799 -89.999983 -89.999983 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
$definebone "Tip_A" "Prong_A" -0.025934 3.504986 11.386189 -89.999983 -89.999983 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000

$definebone "Doodad_4" "Base" -0.049619 5.897995 12.646206 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "Doodad_3" "Base" -0.049619 0.933495 12.264530 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "Doodad_2" "Base" 3.876497 -4.750324 10.231926 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "Doodad_1" "Base" 7.106016 -8.507946 12.683632 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "Handle" "Base" 11.494860 -4.366188 -5.947350 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "square" "Base" 4.374483 -1.318226 -8.948822 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000

// whole body
$body studio "Physcannon_ref.smd"

$origin 0 0 68

// attachment points
$attachment muzzle "muzzle" 0 0.25 -2

//Upper fork
$attachment "fork1b" "Base_A"  0 0 0
$attachment "fork1m" "Prong_A" 0 0 0
$attachment "fork1t" "Tip_A" 0 0 0

$attachment "fork2b" "Base_B" 0 0 0
$attachment "fork2m" "Prong_B" 0 0 0
$attachment "fork2t" "Tip_B" 0 0 0

$poseparameter active 0 1
$weightlist prongweights "Prong_A" 1.0 "Prong_B" 1.0

// Blend animations
$animation ProngsShut "prongs" frame 0 0 weightlist prongweights
$animation ProngsOpen "prongs" frame 1 1 weightlist prongweights

$sequence idle "Idle01_merged" loop fps 15 activity ACT_VM_IDLE 1
$sequence hold_idle "hold_Idle01_merged" loop activity ACT_VM_RELOAD 1
$sequence draw "Draw_merged" snap activity ACT_VM_DRAW 1
$sequence holster "Holster_merged" activity ACT_VM_HOLSTER 1
$sequence fire "Fire_merged" snap activity ACT_VM_PRIMARYATTACK 1
$sequence altfire "Alt_fire_merged" snap activity ACT_VM_SECONDARYATTACK 1

$sequence prong_blend { "ProngsShut" "ProngsOpen" blend "active" 0 1 } autoplay hidden
