/*
==============================================================================

View model SMG1

==============================================================================
*/

$modelname weapons/v_smg1.mdl
$cdmaterials models\weapons\v_smg1

$include .\..\_v_models_hl2_definebones.qci

// whole body
$body studio "Smg1_ref.smd" 

$origin 0 0 68

//Muzzle flash
$attachment "muzzle" "ValveBiped.muzzle" 0 0 0 
//Shell eject
$attachment 1 "ValveBiped.eject" 0 0 0 

$sequence idle01 "Idle01_fixed_merged" loop fps 30 activity ACT_VM_IDLE 1 node Ready

$sequence fire01 "Fire01_fixed_merged" fps 30 snap activity ACT_VM_PRIMARYATTACK 1 node Fire {
{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" } 
{ event 6001 0 "0" }
}

$sequence fire02 "Fire02_fixed_merged" fps 30 snap activity ACT_VM_RECOIL1 1 node Fire {
{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" } 
{ event 6001 0 "0" }
}
$sequence fire03 "Fire03_fixed_merged" fps 30 snap activity ACT_VM_RECOIL2 1 node Fire {
{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" } 
{ event 6001 0 "0" }
}
$sequence fire04 "Fire04_fixed_merged" fps 30 snap activity ACT_VM_RECOIL3 1 node Fire {
{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" } 
{ event 6001 0 "0" }
}
$sequence altfire "alt_fire_arms" fps 30 snap activity ACT_VM_SECONDARYATTACK 1 node Fire
$sequence draw "Draw_fixed_merged" fps 30 snap activity ACT_VM_DRAW 1 node Ready
$sequence reload "Reload_fixed_merged" fps 30 activity ACT_VM_RELOAD 1 node Ready
$sequence dryfire "Dryfire_fixed_merged" fps 30 snap activity ACT_VM_DRYFIRE 1 node Fire
$sequence idletolow "idle_to_low_fixed_merged" fps 30 activity ACT_VM_LOWERED_TO_IDLE 1  transition Ready Low
$sequence lowtoidle "low_to_idle_fixed_merged" fps 30 activity ACT_VM_IDLE_TO_LOWERED 1 transition Low Ready
$sequence lowidle "Low_idle_fixed_merged" fps 30 loop activity ACT_VM_IDLE_LOWERED 1 node Low




