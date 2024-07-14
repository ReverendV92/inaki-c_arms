/*
-------------------------------------------------------------------------------------
QC file created by Fix decompiled QC script - 2012/06/26 - DJ_Inaki@hotmail.com
-------------------------------------------------------------------------------------
*/

$modelname "weapons\v_mp44.mdl"
$cdmaterials "models\weapons\v_models\mp44\"


// --------- Body Groups ---------
$body "Gun" "v_mp44_ref.smd"

$hboxset "Iñaki"
$include .\..\_v_models_hl2_definebones.qci

$definebone "ValveBiped.mp44_base" "ValveBiped.Bip01_Spine2" 0.000001 5.588617 -3.636882 90 -90 0 0 0 0 0 0 0
$definebone "ValveBiped.safety_switch" "ValveBiped.mp44_base" -2.135456 0.634841 3.132504 0 90 21.819721 0 0 0 0 0 0
$definebone "ValveBiped.magazine" "ValveBiped.mp44_base" 2.309233 0 8.989177 0 90 0 0 0 0 0 0 0
$definebone "ValveBiped.bullet" "ValveBiped.magazine" 0 5.327663 -0.435802 0 0 -90 0 0 0 0 0 0
$definebone "ValveBiped.mag_release" "ValveBiped.mp44_base" -2.193268 0.970724 7.044284 0 -179.999966 0 0 0 0 0 0 0
$definebone "ValveBiped.bolt" "ValveBiped.mp44_base" -5.026816 0.202905 7.146194 0 90 -90 0 0 0 0 0 0
$definebone "ValveBiped.fire_select" "ValveBiped.mp44_base" -3.054300 0.780200 2.288500 0.331112 89.843517 0.318622 0 0 0 0 0 0


// --------- Attachments ---------
$attachment "0" "ValveBiped.mp44_base" -3.20 -1.00 26.50 rotate -90.00 0.00 0.00
$attachment "1" "ValveBiped.mp44_base" -5.00 -0.00 10.00 rotate 0.00 -135.00 180.00


// --------- Animation Sequences ---------
$sequence idle "idle_fixed" loop ACT_VM_IDLE 1 fps 11.00
$sequence reload "reload_fixed" ACT_VM_RELOAD 1 fps 34.00 {
  { event 5004 1 "Weapon_Mp44.Draw" }
  { event 5004 14 "Weapon_Mp44.ClipOut" }
  { event 5004 11 "Player.ReloadRustle" }
  { event 5004 46 "Weapon_Mp44.ClipIn1" }
  { event 5004 60 "Weapon_Mp44.ClipIn2" }
  { event 5004 83 "Weapon_Mp44.Draw" }
  { event 5004 83 "Weapon_Mp44.BoltBack" }
  { event 5004 90 "Weapon_Mp44.BoltForward" }
}
$sequence draw "draw_fixed" snap ACT_VM_DRAW 1 fps 31.00 {
  { event 5004 1 "Weapon_Mp44.Draw" }
  { event 5004 12 "Weapon_Mp44.BoltBack" }
  { event 5004 21 "Weapon_Mp44.BoltForward" }
}
$sequence shoot1 "shoot1_fixed" snap ACT_VM_PRIMARYATTACK 1 fps 55.00 {
  { event 5001 0 "41" }
  { event 6002 2 "1" }
}
$sequence shoot2 "shoot2_fixed" snap ACT_VM_PRIMARYATTACK 1 fps 55.00 {
  { event 5001 0 "51" }
  { event 6002 2 "1" }
}
$sequence shoot3 "shoot3_fixed" snap ACT_VM_PRIMARYATTACK 1 fps 55.00 {
  { event 5001 0 "51" }
  { event 6002 2 "1" }
}
$sequence fireselect_pushin "fireselect_pushin_fixed" ACT_VM_DEPLOY 1 fps 31.00 {
  { event 5004 15 "Weapon_Mp44.SelectorSwitch" }
}
$sequence FA_idle "FA_idle_fixed" loop ACT_VM_IDLE_DEPLOYED 1 fps 11.00
$sequence FA_reload "FA_reload_fixed" ACT_VM_RELOAD_DEPLOYED 1 fps 34.00 {
  { event 5004 1 "Weapon_Mp44.Draw" }
  { event 5004 14 "Weapon_Mp44.ClipOut" }
  { event 5004 11 "Player.ReloadRustle" }
  { event 5004 46 "Weapon_Mp44.ClipIn1" }
  { event 5004 60 "Weapon_Mp44.ClipIn2" }
  { event 5004 83 "Weapon_Mp44.Draw" }
  { event 5004 83 "Weapon_Mp44.BoltBack" }
  { event 5004 90 "Weapon_Mp44.BoltForward" }
}
$sequence FA_draw "FA_draw_fixed" snap ACT_VM_DRAW_DEPLOYED 1 fps 31.00 {
  { event 5004 1 "Weapon_Mp44.Draw" }
  { event 5004 12 "Weapon_Mp44.BoltBack" }
  { event 5004 21 "Weapon_Mp44.BoltForward" }
}
$sequence FA_shoot1 "FA_shoot1_fixed" snap ACT_VM_PRIMARYATTACK_DEPLOYED 1 fps 55.00 {
  { event 5001 0 "41" }
  { event 6002 2 "1" }
}
$sequence FA_shoot2 "FA_shoot2_fixed" snap ACT_VM_PRIMARYATTACK_DEPLOYED 1 fps 55.00 {
  { event 5001 0 "51" }
  { event 6002 2 "1" }
}
$sequence FA_shoot3 "FA_shoot3_fixed" snap ACT_VM_PRIMARYATTACK_DEPLOYED 1 fps 55.00 {
  { event 5001 0 "51" }
  { event 6002 2 "1" }
}
$sequence FA_fireselect_pushin "FA_fireselect_pushin_fixed" ACT_VM_UNDEPLOY 1 fps 31.00 {
  { event 5004 14 "Weapon_Mp44.SelectorSwitch" }
}

