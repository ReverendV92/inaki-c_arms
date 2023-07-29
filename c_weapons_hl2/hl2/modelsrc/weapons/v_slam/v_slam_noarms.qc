$modelname "weapons/v_slam.mdl"
$cdmaterials "models\Weapons\V_slam\"

$renamebone "Rig_base" "ValveBiped.Bip01_Spine4"
$renamebone "Bip01_L_Clavicle" "ValveBiped.Bip01_L_Clavicle"
$renamebone "Bip01_L_UpperArm" "ValveBiped.Bip01_L_UpperArm"
$renamebone "Bip01_L_Forearm" "ValveBiped.Bip01_L_Forearm"
$renamebone "Bip01_L_Hand" "ValveBiped.Bip01_L_Hand"
$renamebone "Bip01_L_Finger4" "ValveBiped.Bip01_L_Finger4"
$renamebone "Bip01_L_Finger41" "ValveBiped.Bip01_L_Finger41"
$renamebone "Bip01_L_Finger42" "ValveBiped.Bip01_L_Finger42"
$renamebone "Bip01_L_Finger3" "ValveBiped.Bip01_L_Finger3"
$renamebone "Bip01_L_Finger31" "ValveBiped.Bip01_L_Finger31"
$renamebone "Bip01_L_Finger32" "ValveBiped.Bip01_L_Finger32"
$renamebone "Bip01_L_Finger2" "ValveBiped.Bip01_L_Finger2"
$renamebone "Bip01_L_Finger21" "ValveBiped.Bip01_L_Finger21"
$renamebone "Bip01_L_Finger22" "ValveBiped.Bip01_L_Finger22"
$renamebone "Bip01_L_Finger1" "ValveBiped.Bip01_L_Finger1"
$renamebone "Bip01_L_Finger11" "ValveBiped.Bip01_L_Finger11"
$renamebone "Bip01_L_Finger12" "ValveBiped.Bip01_L_Finger12"
$renamebone "Bip01_L_Finger0" "ValveBiped.Bip01_L_Finger0"
$renamebone "Bip01_L_Finger01" "ValveBiped.Bip01_L_Finger01"
$renamebone "Bip01_L_Finger02" "ValveBiped.Bip01_L_Finger02"
$renamebone "Bip01_R_Clavicle" "ValveBiped.Bip01_R_Clavicle"
$renamebone "Bip01_R_UpperArm" "ValveBiped.Bip01_R_UpperArm"
$renamebone "Bip01_R_Forearm" "ValveBiped.Bip01_R_Forearm"
$renamebone "Bip01_R_Hand" "ValveBiped.Bip01_R_Hand"
$renamebone "Bip01_R_Finger4" "ValveBiped.Bip01_R_Finger4"
$renamebone "Bip01_R_Finger41" "ValveBiped.Bip01_R_Finger41"
$renamebone "Bip01_R_Finger42" "ValveBiped.Bip01_R_Finger42"
$renamebone "Bip01_R_Finger3" "ValveBiped.Bip01_R_Finger3"
$renamebone "Bip01_R_Finger31" "ValveBiped.Bip01_R_Finger31"
$renamebone "Bip01_R_Finger32" "ValveBiped.Bip01_R_Finger32"
$renamebone "Bip01_R_Finger2" "ValveBiped.Bip01_R_Finger2"
$renamebone "Bip01_R_Finger21" "ValveBiped.Bip01_R_Finger21"
$renamebone "Bip01_R_Finger22" "ValveBiped.Bip01_R_Finger22"
$renamebone "Bip01_R_Finger1" "ValveBiped.Bip01_R_Finger1"
$renamebone "Bip01_R_Finger11" "ValveBiped.Bip01_R_Finger11"
$renamebone "Bip01_R_Finger12" "ValveBiped.Bip01_R_Finger12"
$renamebone "Bip01_R_Finger0" "ValveBiped.Bip01_R_Finger0"
$renamebone "Bip01_R_Finger01" "ValveBiped.Bip01_R_Finger01"
$renamebone "Bip01_R_Finger02" "ValveBiped.Bip01_R_Finger02"
/*
$renamebone "HandControlRotGrandmaR" "ValveBiped.HandControlRotGrandmaR"
$renamebone "HandControlRotParentR" "ValveBiped.HandControlRotParentR"
$renamebone "HandControlRotR" "ValveBiped.HandControlRotR"
$renamebone "HandControlRotR1" "ValveBiped.HandControlRotR1"
$renamebone "HandControlRotConstrainerR" "ValveBiped.HandControlRotConstrainerR"
$renamebone "Detonator" "ValveBiped.Detonator"
$renamebone "Slam_base" "ValveBiped.Slam_base"
$renamebone "Slam_panel" "ValveBiped.Slam_panel"
*/

//$origin 2 -4 67
//$origin 0 0 68
//$origin 0 13 68

$include .\..\_v_models_hl2_definebones.qci

$definebone "Detonator" "ValveBiped.Bip01_Spine2" 14.618301 25.225084 9.500004 0.000000 0.889975 0.000000 -0.000008 0.000000 0.000000 0.000000 -0.000000 0.000000
$definebone "Slam_base" "ValveBiped.Bip01_Spine2" 12.618538 25.194691 -0.499996 0.000000 0.889975 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000
$definebone "Slam_panel" "Slam_base" 1.295933 -0.000433 -2.710378 0.000000 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000

$body "studio" "V_slam_ref.smd"

$origin 0 0 0 270

$sequence throw_idle "throw_idle" ACT_SLAM_THROW_IDLE 1 fps 30.00
$sequence throw_idle_ND "throw_idle_ND" ACT_SLAM_THROW_ND_IDLE 1 fps 30.00
$sequence throw_throw1 "throw_throw1" ACT_SLAM_THROW_THROW 1 fps 30.00
$sequence throw_throw2 "throw_throw2" ACT_SLAM_THROW_THROW2 1 fps 30.00
$sequence throw_throw_ND1 "throw_throw_ND1" ACT_SLAM_THROW_THROW_ND 1 fps 30.00
$sequence throw_throw_ND2 "throw_throw_ND2" ACT_SLAM_THROW_THROW_ND2 1 fps 30.00
$sequence throw_draw "throw_draw" ACT_SLAM_THROW_DRAW 1 fps 30.00
$sequence throw_draw_ND "throw_draw_ND" ACT_SLAM_THROW_ND_DRAW 1 fps 30.00
$sequence throw_to_tripmine_ND "throw_to_tripmine_ND" ACT_SLAM_THROW_TO_TRIPMINE_ND 1 fps 30.00 {
  { event AE_CL_PLAYSOUND 30 "Weapon_SLAM.TripMineMode" }
}

$sequence throw_detonate "throw_detonate" ACT_SLAM_THROW_DETONATE 1 fps 30.00
$sequence throw_to_stickwall "throw_to_stickwall" ACT_SLAM_THROW_TO_STICKWALL 1 fps 30.00
$sequence throw_to_stickwall_ND "throw_to_stickwall_ND" ACT_SLAM_THROW_TO_STICKWALL_ND 1 fps 30.00
$sequence detonator_draw "detonator_draw" ACT_SLAM_DETONATOR_DRAW 1 fps 30.00
$sequence detonator_idle "detonator_idle" ACT_SLAM_DETONATOR_IDLE 1 fps 30.00
$sequence detonator_detonate "detonator_detonate" ACT_SLAM_DETONATOR_DETONATE 1 fps 30.00
$sequence detonator_throw_draw "detonator_throw_draw" ACT_SLAM_DETONATOR_THROW_DRAW 1 fps 30.00
$sequence detonator_holster "detonator_holster" ACT_SLAM_DETONATOR_HOLSTER 1 fps 30.00
$sequence tripmine_idle "tripmine_idle" ACT_SLAM_TRIPMINE_IDLE 1 fps 30.00
$sequence tripmine_draw "tripmine_draw" ACT_SLAM_TRIPMINE_DRAW 1 fps 30.00
$sequence tripmine_to_throw "tripmine_to_throw" ACT_SLAM_TRIPMINE_TO_THROW_ND 1 fps 30.00
$sequence tripmine_attach1 "tripmine_attach1" ACT_SLAM_TRIPMINE_ATTACH 1 fps 30.00
$sequence tripmine_attach2 "tripmine_attach2" ACT_SLAM_TRIPMINE_ATTACH2 1 fps 30.00
$sequence stickwall_idle "stickwall_idle" ACT_SLAM_STICKWALL_IDLE 1 fps 30.00
$sequence stickwall_idle_ND "stickwall_idle_ND" ACT_SLAM_STICKWALL_ND_IDLE 1 fps 30.00
$sequence stickwall_attach1 "stickwall_attach1" ACT_SLAM_STICKWALL_ATTACH 1 fps 30.00
$sequence stickwall_attach2 "stickwall_attach2" ACT_SLAM_STICKWALL_ATTACH2 1 fps 30.00
$sequence stickwall_to_throw "stickwall_to_throw" ACT_SLAM_STICKWALL_TO_THROW 1 fps 30.00
$sequence stickwall_to_throw_ND "stickwall_to_throw_ND" ACT_SLAM_STICKWALL_TO_THROW_ND 1 fps 30.00
