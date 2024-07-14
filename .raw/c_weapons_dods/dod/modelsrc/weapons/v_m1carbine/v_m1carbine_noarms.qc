/*
-------------------------------------------------------------------------------------
QC file created by Fix decompiled QC script - 2012/06/26 - DJ_Inaki@hotmail.com
-------------------------------------------------------------------------------------
*/

$modelname "weapons\v_m1carbine.mdl"
$cdmaterials "models\weapons\v_models\m1carbine\"


// --------- Body Groups ---------
$body "m1_carbine" "v_m1carbine_ref.smd"

$hboxset "Iñaki"
$include .\..\_v_models_hl2_definebones.qci

$definebone "ValveBiped.m1_base" "ValveBiped.Bip01_Spine2" -8.855663 64.114349 -11.419310 0.872672 -77.546963 -30.290216 0 0 0 0 0 0
$definebone "ValveBiped.trigger" "ValveBiped.m1_base" -0.785719 -0.265267 4.020000 0 90 0 0 0 0 0 0 0
$definebone "ValveBiped.magazine" "ValveBiped.m1_base" -0.327168 -0.219561 7.516273 0 90 0 0 0 0 0 0 0
$definebone "ValveBiped.bullet" "ValveBiped.magazine" -0.069996 2.310799 0 0 0 -90 0 0 0 0 0 0
$definebone "ValveBiped.bolt" "ValveBiped.m1_base" -3.028184 -1.015393 8.443000 0 90 -90 0 0 0 0 0 0
$definebone "ValveBiped.bolt_latch" "ValveBiped.bolt" 0.738464 1.112487 -0.104141 0 0 0 0 0 0 0 0 0


// --------- Attachments ---------
$attachment "0" "ValveBiped.m1_base" -2.70 -1.00 26.30 rotate -90.00 90.00 0.00
$attachment "1" "ValveBiped.m1_base" -3.00 0.00 7.00 rotate 0.00 -130.00 -180.00


// --------- Animation Sequences ---------
$sequence idle "idle_fixed" loop ACT_VM_IDLE 1 fps 10.00
$sequence reload "reload_fixed" ACT_VM_RELOAD 1 fps 32.00 {
  { event 5004 1 "Weapon_Carbine.Draw" }
  { event 5004 5 "Player.ReloadRustle" }
  { event 5004 21 "Weapon_Carbine.ClipOut" }
  { event 5004 45 "Weapon_Carbine.ClipIn1" }
  { event 5004 55 "Weapon_Carbine.ClipIn2" }
  { event 5004 71 "Weapon_Carbine.Draw" }
  { event 5004 71 "Weapon_Carbine.BoltBack" }
  { event 5004 77 "Weapon_Carbine.BoltForward" }
}
$sequence draw "draw_fixed" snap ACT_VM_DRAW 1 fps 32.00 {
  { event 5004 1 "Weapon_Carbine.Draw" }
}
$sequence shoot "shoot_fixed" snap ACT_VM_PRIMARYATTACK 1 fps 50.00 {
  { event 5001 0 "31" }
  { event 6002 2 "1" }
}
$sequence shoot2 "shoot2_fixed" snap ACT_VM_PRIMARYATTACK 1 fps 50.00 {
  { event 5001 0 "31" }
  { event 6002 2 "1" }
}
$sequence shoot3 "shoot3_fixed" snap ACT_VM_PRIMARYATTACK 1 fps 50.00 {
  { event 5001 0 "31" }
  { event 6002 2 "1" }
}

