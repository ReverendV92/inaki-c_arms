/*
-------------------------------------------------------------------------------------
QC file created by Fix decompiled QC script - 2012/06/26 - DJ_Inaki@hotmail.com
-------------------------------------------------------------------------------------
*/

$modelname "weapons\v_mp40.mdl"
$cdmaterials "models\weapons\v_models\mp40\"


// --------- Body Groups ---------
$body "gun" "v_mp40_ref.smd"

$hboxset "Iñaki"
$include .\..\_v_models_hl2_definebones.qci

$definebone "v_mp40.handle" "ValveBiped.Bip01_Spine2" -4.129098 -13.027463 -7.056627 4.875011 -106.869512 176.640879 0 0 0 0 0 0
$definebone "v_mp40.mag_release" "v_mp40.handle" 13.815084 -4.336394 -4.247049 1.758006 -106.906190 -95.804503 0 0 -0.000002 0 0 0
$definebone "v_mp40.bolt" "v_mp40.handle" 8.466016 -2.130554 -4.894823 1.758006 -106.906190 -5.804522 0 0 0 0 -0.000002 0
$definebone "v_mp40.magazine" "v_mp40.handle" 15.954368 -4.658280 3.047725 1.758006 -106.906190 -95.804503 0 -0.000001 0 0 0 0
$definebone "v_mp40.bullet" "v_mp40.magazine" 0 8.574492 -0.095423 0 0 0 0 0 -0.000002 0 0 0


// --------- Attachments ---------
$attachment "0" "v_mp40.mag_release" -2.00 0.50 12.00 rotate -90.00 0.00 0.00
$attachment "1" "v_mp40.mag_release" -0.70 1.80 0.80 rotate 0.00 135.00 180.00


// --------- Animation Sequences ---------
$sequence idle "idle_fixed" loop ACT_VM_IDLE 1 fps 7.00
$sequence reload "reload_fixed" ACT_VM_RELOAD 1 fps 33.00 {
  { event 5004 1 "Weapon_Mp40.Draw" }
  { event 5004 11 "Weapon_Mp40.BoltBack" }
  { event 5004 34 "Weapon_Mp40.ClipOut" }
  { event 5004 31 "Player.ReloadRustle" }
  { event 5004 66 "Weapon_Mp40.ClipIn" }
  { event 5004 88 "Weapon_Mp40.Draw" }
  { event 5004 88 "Weapon_Mp40.BoltForward" }
}
$sequence draw "draw_fixed" snap ACT_VM_DRAW 1 fps 30.00 {
  { event 5004 1 "Weapon_Mp40.Draw" }
  { event 5004 12 "Weapon_Mp40.BoltForward" }
}
$sequence shoot1 "shoot1_fixed" snap ACT_VM_PRIMARYATTACK 1 fps 50.00 {
  { event 5001 0 "31" }
  { event 6002 2 "0" }
}
$sequence shoot2 "shoot2_fixed" snap ACT_VM_PRIMARYATTACK 2 fps 50.00 {
  { event 5001 0 "41" }
  { event 6002 2 "0" }
}
$sequence shoot3 "shoot3_fixed" snap ACT_VM_PRIMARYATTACK 2 fps 50.00 {
  { event 5001 0 "41" }
  { event 6002 2 "0" }
}
$sequence empty_idle "empty_idle_fixed" loop ACT_VM_IDLE_EMPTY 1 fps 30.00
$sequence hand_signal "hand_signal_fixed" ACT_VM_HANDSIGNAL 1 fps 30.00
$sequence punch "punch_fixed" snap ACT_VM_SECONDARYATTACK 1 fps 32.00 {
  { event 5004 1 "Weapon_Mp40.Draw" }
}

