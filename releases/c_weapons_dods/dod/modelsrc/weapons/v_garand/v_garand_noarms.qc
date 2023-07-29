/*
-------------------------------------------------------------------------------------
QC file created by Fix decompiled QC script - 2012/06/26 - DJ_Inaki@hotmail.com
-------------------------------------------------------------------------------------
*/

$modelname "weapons\v_garand.mdl"
$cdmaterials "models\weapons\v_models\garand\"


// --------- Body Groups ---------
$body "Garand" "v_garand_ref.smd"

$hboxset "Iñaki"
$include .\..\_v_models_hl2_definebones.qci

$definebone "ValveBiped.garand_base" "ValveBiped.Bip01_Spine2" -11.764009 67.031288 -15.151827 0.872672 -77.546963 -30.290216 0 0 0 0 0 0
$definebone "ValveBiped.bullets" "ValveBiped.garand_base" 2.517231 1.425090 9.652107 0 90 -90 0 0 0 0 0 0
$definebone "ValveBiped.clip" "ValveBiped.bullets" -0.004638 1.187160 -0.070447 0 0 -179.999966 0 0 0 0 0 0
$definebone "ValveBiped.bolt" "ValveBiped.garand_base" -2.983492 -1.416306 10.776999 0 90 -90 0 0 0 0 0 0
$definebone "ValveBiped.bolt_latch" "ValveBiped.bolt" 0.880128 2.967364 -0.142703 30.000015 0 0 0 0 0 0 0 0
$definebone "ValveBiped.sling_clip1" "ValveBiped.garand_base" -1.120434 -0.594286 19.984028 0 90 179.999966 0 0 0 0 0 0
$definebone "ValveBiped.sling_clip2" "ValveBiped.garand_base" -1.438824 -0.656426 28.300732 0 90 179.999966 0 0 0 0 0 0


// --------- Attachments ---------
$attachment "0" "ValveBiped.garand_base" -2.50 -1.60 33.85 rotate -90.00 90.00 0.00
$attachment "1" "ValveBiped.bolt" 0.60 -2.00 -0.00 rotate -45.00 180.00 90.00


// --------- Animation Sequences ---------
$sequence idle "idle_fixed" loop ACT_VM_IDLE 1 fps 5.00
$sequence shoot1 "shoot1_fixed" snap ACT_VM_PRIMARYATTACK 1 fps 50.00 {
  { event 5001 0 "41" }
  { event 6002 2 "2" }
}
$sequence shoot2 "shoot2_fixed" snap ACT_VM_PRIMARYATTACK 1 fps 50.00 {
  { event 5001 0 "41" }
  { event 6002 2 "2" }
}
$sequence shoot3 "shoot3_fixed" snap ACT_VM_PRIMARYATTACK 1 fps 50.00 {
  { event 5001 0 "41" }
  { event 6002 2 "2" }
}
$sequence shoot_empty "shoot_empty_fixed" snap ACT_VM_PRIMARYATTACK_EMPTY 1 fps 50.00 {
  { event 5001 2 "41" }
  { event 6002 1 "2" }
  { event 6002 1 "4" }
  { event 5004 0 "Weapon_Garand.ClipDing" }
}
$sequence reload "reload_fixed" ACT_VM_RELOAD 1 fps 35.00 {
  { event 5004 1 "Weapon_Garand.Draw" }
  { event 5004 12 "Weapon_Garand.ClipIn1" }
  { event 5004 17 "Weapon_Garand.ClipIn2" }
  { event 5004 28 "Weapon_Garand.Draw" }
  { event 5004 33 "Weapon_Garand.BoltForward" }
}
$sequence draw "draw_fixed" snap ACT_VM_DRAW 1 fps 32.00 {
  { event 5004 1 "Weapon_Garand.Draw" }
}
$sequence empty_idle "empty_idle_fixed" loop ACT_VM_IDLE_EMPTY 1 fps 30.00
$sequence draw_empty "draw_empty_fixed" snap ACT_VM_DRAW_EMPTY 1 fps 32.00 {
  { event 5004 1 "Weapon_Garand.Draw" }
}
$animation ironsight_anim "ironsight_anim" fps 50.000000
$sequence shoot_ironsight "ironsight_anim" snap ACT_VM_PRIMARYATTACK_DEPLOYED 1 fps 50.00 {
  { event 5001 0 "41" }
  { event 6002 2 "2" }
}

