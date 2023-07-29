/*
==============================================================================

Stun Stick

==============================================================================
*/

$modelname weapons/v_stunstick.mdl
$cdmaterials models\weapons\v_stunstick\

$include .\..\_v_models_hl2_definebones_r.qci

// whole body
$body studio "stunstick_ref.smd"

//Light effects attachments
$attachment "Spark1a" "ValveBiped.Bip01_R_Hand" 5.57 -2.17 -15.96 rotate -0.00 0.00 -0.00
$attachment "Spark1b" "ValveBiped.Bip01_R_Hand" 5.29 -2.16 -13.30 rotate -0.00 0.00 -0.00
$attachment "Spark2a" "ValveBiped.Bip01_R_Hand" 5.16 -2.55 -16.00 rotate -0.00 0.00 -0.00
$attachment "Spark2b" "ValveBiped.Bip01_R_Hand" 4.89 -2.53 -13.30 rotate -0.00 0.00 -0.00
$attachment "Spark3a" "ValveBiped.Bip01_R_Hand" 4.65 -2.74 -16.00 rotate -0.00 0.00 -0.00
$attachment "Spark3b" "ValveBiped.Bip01_R_Hand" 4.37 -2.67 -13.39 rotate -0.00 0.00 -0.00
$attachment "Spark4a" "ValveBiped.Bip01_R_Hand" 4.12 -2.59 -16.07 rotate -0.00 0.00 -0.00
$attachment "Spark4b" "ValveBiped.Bip01_R_Hand" 3.80 -2.54 -13.43 rotate -0.00 0.00 -0.00
$attachment "Spark5a" "ValveBiped.Bip01_R_Hand" 3.69 -2.20 -16.13 rotate -0.00 0.00 -0.00
$attachment "Spark5b" "ValveBiped.Bip01_R_Hand" 3.46 -2.17 -13.49 rotate -0.00 0.00 -0.00
$attachment "Spark6a" "ValveBiped.Bip01_R_Hand" 3.54 -1.69 -16.17 rotate -0.00 0.00 -0.00
$attachment "Spark6b" "ValveBiped.Bip01_R_Hand" 3.31 -1.65 -13.54 rotate -0.00 0.00 -0.00
$attachment "Spark7a" "ValveBiped.Bip01_R_Hand" 3.67 -1.16 -16.17 rotate -0.00 0.00 -0.00
$attachment "Spark7b" "ValveBiped.Bip01_R_Hand" 3.44 -1.12 -13.53 rotate -0.00 0.00 -0.00
$attachment "Spark8a" "ValveBiped.Bip01_R_Hand" 4.05 -0.73 -16.12 rotate -0.00 0.00 -0.00
$attachment "Spark8b" "ValveBiped.Bip01_R_Hand" 3.83 -0.70 -13.49 rotate -0.00 0.00 -0.00
$attachment "Spark9a" "ValveBiped.Bip01_R_Hand" 4.61 -0.61 -16.04 rotate -0.00 0.00 -0.00
$attachment "Spark9b" "ValveBiped.Bip01_R_Hand" 4.38 -0.58 -13.40 rotate -0.00 0.00 -0.00
$attachment "Sparkrear" "ValveBiped.Bip01_R_Hand" 5.63 -1.20 -14.70 rotate -0.00 0.00 -0.00

$origin 0 0 68

$sequence idle01 "Idle01" loop fps 30 activity ACT_VM_IDLE 1
$sequence draw "draw" fps 30 snap activity ACT_VM_DRAW 1
$sequence misscenter1 "Attackcenter_miss_1" fps 30 snap activity ACT_VM_MISSCENTER 1
$sequence misscenter2 "Attackcenter_miss_2" fps 30 snap activity ACT_VM_MISSCENTER 1
$sequence hitcenter1 "Attackcenter01" fps 30 snap activity ACT_VM_HITCENTER 1
$sequence hitcenter2 "Attackcenter02" fps 30 snap activity ACT_VM_HITCENTER 1
$sequence hitcenter3 "Attackcenter03" fps 30 snap activity ACT_VM_HITCENTER 1
$sequence hitkill1 "Hitkill01" fps 30 snap activity ACT_VM_HITKILL 1
$sequence holster "Holster" fps 30 activity ACT_VM_HOLSTER 1
