/*
==============================================================================

View model 357

==============================================================================
*/

$modelname weapons/v_357.mdl
$cdmaterials models\weapons\V_357

$include .\..\_v_models_hl2_definebones.qci

$definebone "Python" "ValveBiped.Bip01_Spine2" 0.099780 3.177673 4.325962 0.207296 -1.050805 -0.515146 0.000000 0.000004 -0.000002 -0.000000 -0.000000 -0.000000
//$definebone "muzzle" "Python" -0.000131 0.765274 8.032602 -0.000000 -0.000000 -0.000000 0.000000 0.000000 0.000000 -0.000000 -0.000000 -0.000000

$definebone "Cylinder_release" "Python" 0.025546 -1.273518 1.753300 -0.000000 -0.000000 -0.000000 -0.000000 -0.000004 0.000002 -0.000000 -0.000000 -0.000000
$definebone "Cylinder" "Cylinder_release" 0.001031 1.440437 -1.526783 -0.000000 -0.000000 -0.000000 -0.000000 0.000004 0.000000 -0.000000 -0.000000 -0.000000
$definebone "Bullet1" "Cylinder" 0.004413 0.696499 -1.430599 -0.000000 -0.000000 -0.000000 0.000000 0.000000 0.000000 -0.000000 -0.000000 -0.000000
$definebone "Bullet2" "Cylinder" 0.580660 0.349014 -1.430599 -0.000000 -0.000000 -0.000000 0.000000 0.000000 0.000000 -0.000000 -0.000000 -0.000000
$definebone "Bullet3" "Cylinder" 0.583443 -0.305904 -1.430599 -0.000000 -0.000000 -0.000000 0.000000 0.000000 0.000000 -0.000000 -0.000000 -0.000000
$definebone "Bullet4" "Cylinder" 0.005317 -0.648720 -1.430599 -0.000000 -0.000000 -0.000000 0.000000 0.000000 0.000002 -0.000000 -0.000000 -0.000000
$definebone "Bullet5" "Cylinder" -0.574618 -0.303123 -1.430599 -0.000000 -0.000000 -0.000000 0.000000 -0.000004 0.000000 -0.000000 -0.000000 -0.000000
$definebone "Bullet6" "Cylinder" -0.573714 0.348114 -1.430599 -0.000000 -0.000000 -0.000000 -0.000000 0.000000 0.000000 -0.000000 -0.000000 -0.000000

$poseparameter "gun_spin" 0 360 wrap

// whole body
$body studio Python_357_ref

$bodygroup shells {
	studio Python_357_shell_6_ref
	studio Python_357_shell_5_ref
	studio Python_357_shell_4_ref
	studio Python_357_shell_3_ref
	studio Python_357_shell_2_ref
	studio Python_357_shell_1_ref
	blank
}

$origin 2 -4 67

//Muzzle flash
$attachment "muzzle" "muzzle" 0 0 0 rotate -90 90 0
$sequence idle01 "Idle01_merged" loop fps 30 activity ACT_VM_IDLE 1 node Ready
$sequence fire "Fire01_merged" snap fps 30 activity ACT_VM_PRIMARYATTACK 1 { event AE_MUZZLEFLASH 0 "357 muzzle" } node Fire
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

$sequence reload_start "Reload_start_merged" fadeout 0 frames 0 70 fps 40 activity ACT_VM_RELOAD_START 1 node Ready {
{ event AE_CL_PLAYSOUND 28 "Weapon_357.OpenLoader" }
{ event AE_CL_PLAYSOUND 39 "Weapon_357.RemoveLoader" }
{ event 3015 55 } 
{ event AE_CL_PLAYSOUND 67 "Weapon_357.ReplaceLoader" }
}

$sequence reload_loop "Reload_loop_merged" fadein 0 fadeout 0 frames 30 70 fps 40 activity ACT_VM_RELOAD_LOOP 1 node Ready {
{ event AE_CL_PLAYSOUND 9 "Weapon_357.RemoveLoader" }
}

$sequence reload_end "Reload_reworked_merged" fps 30 fadein 0 frames 70 110 activity ACT_VM_RELOAD_END 1 node Ready {
{ event AE_CL_PLAYSOUND 22 "Weapon_357.Spin" }
}

// gun cylinder spin
$animation neutral "python_spin" frame 0 0 fps 30

$weightlist gunspin { "Cylinder" 1.0 }
$animation gun_spin0 "python_spin" frame 0 0 noanimation
$animation gun_spin120 "python_spin" frame 1 1 subtract neutral 0 weightlist gunspin
$animation gun_spin240 "python_spin" frame 2 2 subtract neutral 0 weightlist gunspin 
$sequence gun_spinning { gun_spin0 gun_spin120 gun_spin240 gun_spin0 blendwidth 4 blend "gun_spin" -0 360 } weightlist gunspin delta autoplay hidden
