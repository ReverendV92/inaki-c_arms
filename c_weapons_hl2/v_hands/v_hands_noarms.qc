/*
==============================================================================

View model Hands

==============================================================================
*/

$modelname weapons/v_hands.mdl
$cdmaterials models/Weapons/v_hand 

$include .\..\_v_models_hl2_definebones.qci

$bodygroup studio {
	blank
	studio "Hands_reference.smd"
}


$origin 0 13 68
$sequence admire "admire" fps 30

$origin 0 0 68

$sequence fists_idle "fists_idle" fps 30 activity ACT_VM_IDLE 1

$sequence fists_left_punch01 "fists_left_punch1" fps 30 activity ACT_VM_HITLEFT 100
$sequence fists_right_punch01 "fists_right_punch1" fps 30 activity ACT_VM_HITRIGHT 100

$sequence fists_left_punch02 "fists_left_punch2" fps 30 activity ACT_VM_HITLEFT 50
$sequence fists_right_punch02 "fists_right_punch2" fps 30 activity ACT_VM_HITRIGHT 50

$sequence fists_left_punch03 "fists_left_punch3" fps 30 activity ACT_VM_HITLEFT 25
$sequence fists_right_punch03 "fists_right_punch3" fps 30 activity ACT_VM_HITRIGHT 25

$sequence fists_left_pounce01 "fists_left_pounce" fps 30 activity ACT_VM_HITLEFT2 1
$sequence fists_right_pounce01 "fists_right_pounce" fps 30 activity ACT_VM_HITRIGHT2 1

$sequence fists_draw "fists_draw" fps 30 activity ACT_VM_DRAW 1
$sequence fists_holster "fists_holster" fps 30 activity ACT_VM_HOLSTER 1

