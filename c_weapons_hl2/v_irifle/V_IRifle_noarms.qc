/*
==============================================================================

IRifle

==============================================================================
*/

$modelname weapons/v_irifle.mdl
$cdmaterials models\Weapons\V_hand models\Weapons\V_irifle

$include .\..\_v_models_hl2_definebones.qci

$definebone "Base" "ValveBiped.Bip01_Spine2" -5.846632 -11.638401 61.824333 -0.000000 0.000000 89.999983 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "Reload" "Base" 1.526086 -2.764851 14.082603 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "Reload1" "Reload" 0.832381 1.842239 -0.000374 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "Shell1" "Base" -0.050460 -0.056503 18.287695 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "Bolt1" "Base" -0.112315 0.055737 8.441936 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "Bolt2" "Bolt1" 0.487353 -0.167217 2.950581 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "Shell2" "Base" 1.617459 -1.028969 14.611862 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "Vent" "Base" 0.790197 0.067791 19.411802 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "Claw2" "Base" 0.599579 0.805454 17.492916 -0.000000 -38.249978 -30.000015 -0.000004 -0.000002 0.000000 -0.000000 0.000000 -0.000003
$definebone "Claw1" "Base" 1.023674 -0.207504 17.423468 30.000018 -6.750017 0.000000 0.000000 0.000000 0.000000 -0.000000 -0.000000 0.000000

// whole body
$body studio "IRifle_ref.smd"

$origin 0 0 67

//Muzzle flash
$attachment "muzzle" "Base" 0 0 20 rotate -90

$poseparameter "VentPoses" 0 1 

$sequence IR_idle "Idle_merged" loop fps 30 activity ACT_VM_IDLE 1 node Ready
$sequence IR_fire "Fire01_merged" fps 30 snap activity ACT_VM_PRIMARYATTACK 1 { event AE_MUZZLEFLASH 0 "COMBINE MUZZLE" } node Fire
$sequence fire2 "Fire02_merged" snap fps 30 activity ACT_VM_RECOIL1 1 { event AE_MUZZLEFLASH 0 "COMBINE MUZZLE" } node Fire
$sequence fire3 "Fire03_merged" snap fps 30 activity ACT_VM_RECOIL2 1 { event AE_MUZZLEFLASH 0 "COMBINE MUZZLE" } node Fire
$sequence fire4 "Fire04_merged" snap fps 30 activity ACT_VM_RECOIL3 1 { event AE_MUZZLEFLASH 0 "COMBINE MUZZLE" } node Fire
$sequence IR_fire2 "Alt_fire_merged" fps 30 snap activity ACT_VM_SECONDARYATTACK 1 { event AE_MUZZLEFLASH 0 "COMBINE MUZZLE" }

$sequence IR_reload "Reload_merged" fps 30 activity ACT_VM_RELOAD 1 node Ready {
{ event AE_CL_PLAYSOUND 1 "Weapon_AR2.Reload_Rotate" }
{ event AE_CL_PLAYSOUND 19 "Weapon_AR2.Reload_Push" }
}

$sequence IR_draw "Draw_merged" fps 30 snap activity ACT_VM_DRAW 1 node Ready
$sequence IR_holster "Holster_merged" fps 30 activity ACT_VM_HOLSTER 1 node Ready
$sequence idletolow "idle_to_low_merged" fps 30 activity ACT_VM_LOWERED_TO_IDLE 1  transition Ready Low
$sequence lowtoidle "Low_to_idle_merged" fps 30 activity ACT_VM_IDLE_TO_LOWERED 1 transition Low Ready
$sequence lowidle "Low_idle_merged" fps 30 loop activity ACT_VM_IDLE_LOWERED 1 node Low
$sequence shake "Shake_merged" fps 30 loop activity ACT_VM_FIDGET 1 node Fire

$animation a_vent_neutral "Vent_Poses" frame 0 0
$animation a_vent_open "Vent_Poses" frame 0 0 subtract a_vent_neutral 0 
$animation a_vent_closed "Vent_Poses" frame 1 1 subtract a_vent_neutral 0
$sequence VentPoses a_vent_open a_vent_closed blend "VentPoses" 1 0 delta autoplay