/*
-------------------------------------------------------------------------------------
QC file created by Fix decompiled QC script - 2012/06/26 - DJ_Inaki@hotmail.com
-------------------------------------------------------------------------------------
*/

$modelname "weapons\v_colt.mdl"
$cdmaterials "models\weapons\v_models\colt\"


// --------- Body Groups ---------
$body "studio" "v_colt_ref.smd"

$hboxset "Iñaki"
$include .\..\_v_models_hl2_definebones.qci

$definebone "ValveBiped.Colt_1911_base" "ValveBiped.Bip01_Spine2" -1.812054 59.706047 9.542397 -78.698916 -25.131767 107.851222 0 0 0 0 0.000003 0
$definebone "ValveBiped.root2" "ValveBiped.Colt_1911_base" 2.169819 0.195625 -2.231951 -12.252017 161.465988 -106.193146 0 0 0 -0.000005 -0.000002 0
$definebone "ValveBiped.safety_switch" "ValveBiped.root2" -0.000002 0 0 0.000005 163.246099 -0.000001 0 -0.000001 0 0.000005 -0.000002 -0.000001
$definebone "ValveBiped.root3" "ValveBiped.Colt_1911_base" 2.605711 0.073958 -2.411845 -12.252017 161.465988 -106.193146 0 0 0 -0.000005 -0.000002 0
$definebone "ValveBiped.hammer" "ValveBiped.root3" -0.000002 0 0 -0.000005 22.128374 -0.000002 -0.000002 0 0 -0.000005 -0.000002 -0.000002
$definebone "ValveBiped.root1" "ValveBiped.Colt_1911_base" 5.184626 -0.643977 -3.482394 -12.252017 161.465988 -106.193146 0 0 0 -0.000005 -0.000002 0
$definebone "ValveBiped.barrel" "ValveBiped.root1" 0 0 0 0.000005 -179.999966 0 0.000002 0 0 0.000005 -0.000002 0
$definebone "ValveBiped.magazine" "ValveBiped.Colt_1911_base" 3.118778 -0.965209 0.374697 15.814610 -112.060463 -85.293252 0 0 0 0.000005 0.000001 0.000003
$definebone "ValveBiped.trigger" "ValveBiped.Colt_1911_base" 4.995829 -0.926772 -2.240042 15.814610 -112.060463 -12.741951 0 0.000002 0 0 -0.000003 -0.000001
$definebone "ValveBiped.bullet" "ValveBiped.Colt_1911_base" 3.739964 -0.139924 -3.149346 15.814610 -112.060463 -12.741951 0 0 0 0 -0.000003 -0.000001
$definebone "ValveBiped.slide" "ValveBiped.Colt_1911_base" 3.708685 0.085421 -3.845201 15.814610 -112.060518 167.258070 0 0 0 -0.000002 0.000003 -0.000002


// --------- Attachments ---------
$attachment "0" "ValveBiped.root1" -4.60 0.50 0.00 rotate 0 -180 90
$attachment "1" "ValveBiped.root1" 0.00 0.50 -0.00 rotate 45.00 90.00 90.00


// --------- Animation Sequences ---------
$sequence idle "idle_fixed" loop ACT_VM_IDLE 1 fps 12.00
$sequence shoot1 "shoot1_fixed" snap ACT_VM_PRIMARYATTACK 1 fps 50.00 {
  { event 5001 0 "31" }
  { event 6002 2 "0" }
}
$sequence shoot2 "shoot2_fixed" snap ACT_VM_PRIMARYATTACK 1 fps 50.00 {
  { event 5001 0 "31" }
  { event 6002 2 "0" }
}
$sequence shoot3 "shoot3_fixed" snap ACT_VM_PRIMARYATTACK 1 fps 50.00 {
  { event 5001 0 "31" }
  { event 6002 2 "0" }
}
$sequence reload "reload_fixed" ACT_VM_RELOAD 1 fps 34.00 {
  { event 5004 5 "Weapon_Colt.ClipOut" }
  { event 5004 28 "Weapon_Colt.ClipIn" }
}
$sequence reload_noshoot "reload_noshoot_fixed" ACT_VM_RELOAD_EMPTY 1 fps 34.00 {
  { event 5004 5 "Weapon_Colt.ClipOut" }
  { event 5004 28 "Weapon_Colt.ClipIn" }
  { event 5004 45 "Weapon_Colt.BoltForward" }
}
$sequence draw "draw_fixed" snap ACT_VM_DRAW 1 fps 32.00 {
  { event 5004 1 "Weapon_Colt.Draw" }
  { event 5004 15 "Weapon_Colt.BoltBack" }
  { event 5004 26 "Weapon_Colt.BoltForward" }
}
$sequence draw_empty "draw_empty_fixed" snap ACT_VM_DRAW_EMPTY 1 fps 32.00 {
  { event 5004 1 "Weapon_Colt.Draw" }
}
$sequence shoot_empty "shoot_empty_fixed" snap ACT_VM_PRIMARYATTACK_EMPTY 1 fps 50.00 {
  { event 5001 1 "31" }
  { event 6002 1 "0" }
}
$sequence empty_idle "empty_idle_fixed" loop ACT_VM_IDLE_EMPTY 1 fps 30.00

