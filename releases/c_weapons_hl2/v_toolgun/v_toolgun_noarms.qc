/*
==============================================================================

View model 357

==============================================================================
*/

$modelname "weapons/v_toolgun.mdl"
$cdmaterials "models\Weapons\v_toolgun\"

$include .\..\_v_models_hl2_definebones.qci

$definebone "Python" "ValveBiped.Bip01_Spine2" 0.099780 3.177673 4.325962 0.207296 -1.050805 -0.515146 0.000000 0.000004 -0.000002 -0.000000 -0.000000 -0.000000
$definebone "spinner" "Python" 0.051734 0.215107 1.061640 -89.236402 0.000001 1.044161 -0.000002 -0.000004 0.000000 -0.000000 0.000000 0.000000

//$definebone "muzzle" "Python" -0.000131 0.765274 8.032602 -0.000000 -0.000000 -0.000000 0.000000 0.000000 0.000000 -0.000000 -0.000000 -0.000000
/*
$definebone "Cylinder_release" "Python" 0.025546 -1.273518 1.753300 -0.000000 -0.000000 -0.000000 -0.000000 -0.000004 0.000002 -0.000000 -0.000000 -0.000000
$definebone "Cylinder" "Cylinder_release" 0.001031 1.440437 -1.526783 -0.000000 -0.000000 -0.000000 -0.000000 0.000004 0.000000 -0.000000 -0.000000 -0.000000
$definebone "Bullet1" "Cylinder" 0.004413 0.696499 -1.430599 -0.000000 -0.000000 -0.000000 0.000000 0.000000 0.000000 -0.000000 -0.000000 -0.000000
$definebone "Bullet2" "Cylinder" 0.580660 0.349014 -1.430599 -0.000000 -0.000000 -0.000000 0.000000 0.000000 0.000000 -0.000000 -0.000000 -0.000000
$definebone "Bullet3" "Cylinder" 0.583443 -0.305904 -1.430599 -0.000000 -0.000000 -0.000000 0.000000 0.000000 0.000000 -0.000000 -0.000000 -0.000000
$definebone "Bullet4" "Cylinder" 0.005317 -0.648720 -1.430599 -0.000000 -0.000000 -0.000000 0.000000 0.000000 0.000002 -0.000000 -0.000000 -0.000000
$definebone "Bullet5" "Cylinder" -0.574618 -0.303123 -1.430599 -0.000000 -0.000000 -0.000000 0.000000 -0.000004 0.000000 -0.000000 -0.000000 -0.000000
$definebone "Bullet6" "Cylinder" -0.573714 0.348114 -1.430599 -0.000000 -0.000000 -0.000000 -0.000000 0.000000 0.000000 -0.000000 -0.000000 -0.000000
*/

// whole body
$body studio toolgun_ref

$origin 2 -4 67

//Muzzle flash
$attachment "muzzle" "muzzle" 0 0 0 rotate -90 90 0
$sequence idle01 "Idle01_merged" loop fps 30 activity ACT_VM_IDLE 1 node Ready
$sequence fire01 "Fire01_toolgun_merged_merged" snap fps 30 activity ACT_VM_PRIMARYATTACK 1 node Fire
$sequence fire02 "Fire01_toolgun_merged_merged2" snap fps 30 activity ACT_VM_PRIMARYATTACK 1 node Fire
$sequence fire03 "Fire01_toolgun_merged_merged3" snap fps 30 activity ACT_VM_PRIMARYATTACK 1 node Fire
$sequence draw "Draw_merged" snap fps 30 activity ACT_VM_DRAW 1 node Ready
$sequence reload "Reload_reworked_merged" fps 30 activity ACT_VM_RELOAD 1 node Ready {
{ event AE_CL_PLAYSOUND 28 "Weapon_357.OpenLoader" }
{ event AE_CL_PLAYSOUND 39 "Weapon_357.RemoveLoader" }
{ event 3015 55 } 
{ event AE_CL_PLAYSOUND 67 "Weapon_357.ReplaceLoader" }
{ event AE_CL_PLAYSOUND 92 "Weapon_357.Spin" }
}

$sequence holster "Holster_merged" fps 30 activity ACT_VM_HOLSTER 1 node Ready
$sequence idletolow "idle_to_low_merged" fps 30 activity ACT_VM_LOWERED_TO_IDLE 1  transition Ready Low 
$sequence lowtoidle "low_to_idle_merged" fps 30 activity ACT_VM_IDLE_TO_LOWERED 1 transition Low Ready
$sequence lowidle "Low_idle_merged" fps 30 loop activity ACT_VM_IDLE_LOWERED 1 node Low
