/*
-------------------------------------------------------------------------------------
QC file created by Fix decompiled QC script - 2012/06/26 - DJ_Inaki@hotmail.com
-------------------------------------------------------------------------------------
*/

$modelname "weapons\v_garand_rg.mdl"
$cdmaterials "models\weapons\v_models\garand\"


// --------- Body Groups ---------
$body "garand" "v_garand_rg_ref.smd"

$hboxset "Iñaki"
$include .\..\_v_models_hl2_definebones.qci

$definebone "ValveBiped.garand_base" "ValveBiped.Bip01_Spine2" -7.868012 67.785736 -8.361200 0.872672 -77.546963 -30.290216 0 0 0 0 0 0
$definebone "ValveBiped.trigger" "ValveBiped.garand_base" -0.025686 0 3.379000 0 90 0 0 0 0 0 0 0
$definebone "ValveBiped.rocket" "ValveBiped.garand_base" 6.683352 -0.594286 30.232414 0 90 -90 0 0 0 0 0 0


// --------- Animation Sequences ---------
$sequence idle "idle_fixed" loop ACT_VM_IDLE 1 fps 5.00
$sequence shoot "shoot_fixed" snap ACT_VM_PRIMARYATTACK 1 fps 50.00
$sequence reload "reload_fixed" ACT_VM_RELOAD 1 fps 30.00 {
  { event 5004 0 "Weapon_Garand.Draw" }
  { event 5004 22 "Weapon_Grenade.ReloadGarand1" }
  { event 5004 40 "Weapon_Grenade.ReloadGarand2" }
  { event 5004 47 "Weapon_Grenade.ReloadGarand3" }
  { event 5004 53 "Weapon_Garand.Draw" }
  { event 5004 71 "Weapon_Grenade.ReloadGarand4" }
}
$sequence draw "draw_fixed" snap ACT_VM_DRAW 1 fps 30.00 {
  { event 5004 0 "Weapon_Garand.Draw" }
  { event 5004 20 "Weapon_Grenade.ReloadGarand2" }
  { event 5004 27 "Weapon_Grenade.ReloadGarand3" }
  { event 5004 38 "Weapon_Garand.Draw" }
  { event 5004 50 "Weapon_Grenade.ReloadGarand4" }
}
$sequence empty_idle "empty_idle_fixed" loop ACT_VM_IDLE_EMPTY 1 fps 30.00

