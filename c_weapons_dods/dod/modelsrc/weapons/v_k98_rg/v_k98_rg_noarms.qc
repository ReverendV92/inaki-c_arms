/*
-------------------------------------------------------------------------------------
QC file created by Fix decompiled QC script - 2012/06/26 - DJ_Inaki@hotmail.com
-------------------------------------------------------------------------------------
*/

$modelname "weapons\v_k98_rg.mdl"
$cdmaterials "models\weapons\v_models\k98\"


// --------- Body Groups ---------
$body "gun" "v_k98_rg_ref.smd"

$hboxset "I�aki"
$include .\..\_v_models_hl2_definebones.qci

$definebone "ValveBiped.k98_RG_BASE" "ValveBiped.Bip01_Spine2" 0.000001 -11.859226 -0.867800 -90 90 0 0 0 0 0 0 0
$definebone "ValveBiped.bolt" "ValveBiped.k98_RG_BASE" 2.738123 0 -9.508497 0 -90 90 0 0 0 0 0 0
$definebone "ValveBiped.firing_pin" "ValveBiped.bolt" 0 6.229000 0 0 0 -179.999966 0 0 0 0 0 0
$definebone "ValveBiped.bolt_handle" "ValveBiped.bolt" 0 4.027105 0 0 -90.000038 179.999980 0 0 0 0 0 0
$definebone "ValveBiped.grenade" "ValveBiped.k98_RG_BASE" -2.507125 0 -31.692928 0 -90 90 0 0 0 0 0 0


// --------- Attachments ---------
$attachment "0" "ValveBiped.k98_RG_BASE" 2.00 -0.00 -33.50 rotate 90.00 -90.00 0.00
$attachment "1" "ValveBiped.bolt" 0.00 -0.00 0.00 rotate 0.00 0.00 0.00


// --------- Animation Sequences ---------
$sequence idle "idle_fixed" loop ACT_VM_IDLE 1 fps 16.00
$sequence shoot "shoot_fixed" snap ACT_VM_PRIMARYATTACK 1 fps 50.00
$sequence reload "reload_fixed" ACT_VM_RELOAD 1 fps 32.00 {
  { event 5004 1 "Weapon_K98.Draw" }
  { event 5004 14 "Weapon_Grenade.ReloadGarand1" }
  { event 5004 44 "Weapon_Grenade.ReloadK98" }
  { event 5004 60 "Weapon_K98.Draw" }
}
$sequence draw "draw_fixed" snap ACT_VM_DRAW 1 fps 30.00 {
  { event 5004 1 "Weapon_K98.Draw" }
  { event 5004 18 "Weapon_Grenade.ReloadK98" }
  { event 5004 29 "Weapon_K98.Draw" }
}

