/*
-------------------------------------------------------------------------------------
QC file created by Fix decompiled QC script - 2012/06/26 - DJ_Inaki@hotmail.com
-------------------------------------------------------------------------------------
*/

$modelname "weapons\v_springfield.mdl"
$cdmaterials "models\weapons\v_models\springfield\"


// --------- Body Groups ---------
$body "gun" "v_springfield_ref.smd"

$hboxset "Iñaki"
$include .\..\_v_models_hl2_definebones.qci

$definebone "ValveBiped.springfield_BASE" "ValveBiped.Bip01_Spine2" -0.448062 65.500824 3.441707 0.872672 -77.546963 -30.290216 0 0 0 0 0 0
$definebone "ValveBiped.bullet" "ValveBiped.springfield_BASE" -6.600551 0.284238 -7.613379 0 90 -90 0 0 0 0 0 0
$definebone "ValveBiped.bolt" "ValveBiped.springfield_BASE" -2.438697 0.012837 -8.082120 0 90 -90 0 0 0 0 0 0
$definebone "ValveBiped.bolt_handle" "ValveBiped.bolt" -0.023782 -3.410932 -0.013002 -90 90 0 0 0 0 0 0 0
$definebone "ValveBiped.firing_pin" "ValveBiped.bolt" -0.002178 -5.308925 -0.016654 0 0 0 0 0 0 0 0 0


// --------- Attachments ---------
$attachment "0" "ValveBiped.springfield_BASE" -1.80 0.20 -34.00 rotate 90.00 90.00 0.00
$attachment "1" "ValveBiped.springfield_BASE" -2.00 -0.00 -8.00 rotate -0.00 135.00 -0.00


// --------- Animation Sequences ---------
$sequence idle "idle_fixed" loop ACT_VM_IDLE 1 fps 10.00
$sequence shoot "shoot_fixed" snap ACT_VM_PRIMARYATTACK 1 fps 33.00 {
  { event 6002 26 "2" }
  { event 5001 1 "41" }
  { event 5004 18 "Weapon_K98.BoltBack1" }
  { event 5004 21 "Weapon_K98.BoltBack2" }
  { event 5004 26 "Weapon_K98.BoltForward1" }
  { event 5004 31 "Weapon_K98.BoltForward2" }
}
$sequence shoot_empty "shoot_empty_fixed" snap ACT_VM_PRIMARYATTACK_EMPTY 1 fps 33.00 {
  { event 5001 1 "41" }
}
$sequence reload "reload_fixed" ACT_VM_RELOAD 1 fps 32.00 {
  { event 6002 18 "2" }
  { event 5004 11 "Weapon_K98.BoltBack1" }
  { event 5004 15 "Weapon_K98.Draw" }
  { event 5004 15 "Weapon_K98.BoltBack2" }
  { event 5004 39 "Weapon_K98.ClipIn2" }
  { event 5004 57 "Weapon_K98.ClipIn2" }
  { event 5004 74 "Weapon_K98.ClipIn2" }
  { event 5004 33 "Player.ReloadRustle" }
  { event 5004 91 "Weapon_K98.ClipIn2" }
  { event 5004 108 "Weapon_K98.ClipIn2" }
  { event 5004 119 "Weapon_K98.Draw" }
  { event 5004 119 "Weapon_K98.BoltForward1" }
  { event 5004 124 "Weapon_K98.BoltForward2" }
}
$sequence draw "draw_fixed" snap ACT_VM_DRAW 1 fps 30.00 {
  { event 5004 1 "Weapon_Springfield.Draw" }
}


//NEW
$sequence reload_start "reload_fixed" fadeout 0 frames 0 43 ACT_VM_RELOAD_START 1 fps 32.00 {
  { event 5004 11 "Weapon_K98.BoltBack1" }
  { event 5004 15 "Weapon_K98.Draw" }
  { event 5004 15 "Weapon_K98.BoltBack2" }
  { event 5004 39 "Weapon_K98.ClipIn2" }
}
$sequence reload_loop "reload_fixed" frames 77 94 fixuploop 0 17 ACT_VM_RELOAD_LOOP 1 loop fps 32.00 {
  { event 5004 14 "Weapon_K98.ClipIn2" }
}
$sequence reload_end "reload_fixed" fadein 0 frames 114 145 ACT_VM_RELOAD_END 1 fps 32.00 {
  { event 5004 5 "Weapon_K98.Draw" }
  { event 5004 5 "Weapon_K98.BoltForward1" }
  { event 5004 20 "Weapon_K98.BoltForward2" }
}
