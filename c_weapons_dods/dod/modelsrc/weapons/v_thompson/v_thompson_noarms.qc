/*
-------------------------------------------------------------------------------------
QC file created by Fix decompiled QC script - 2012/06/26 - DJ_Inaki@hotmail.com
-------------------------------------------------------------------------------------
*/

$modelname "weapons\v_thompson.mdl"
$cdmaterials "models\weapons\v_models\thompson\"


// --------- Body Groups ---------
$body "gun" "v_thompson_ref.smd"

$hboxset "Iñaki"
$include .\..\_v_models_hl2_definebones.qci

//$definebone "v_thompson" "ValveBiped.Bip01_Spine2" -10.725907 -0.849942 -66.076752 12.451519 -30.482902 89.106342 0 0 0 0 0 0
$definebone "v_thompson.torus" "ValveBiped.Bip01_Spine2" -4.442599 -7.240295 13.905603 -75.144164 -11.102779 109.478945 0 -0.000001 0.000008 0 0.000005 0
$definebone "v_thompson.root2" "v_thompson.torus" 8.045057 -2.397007 1.845436 6.912334 -16.357255 -88.352500 0 0 0 -0.000003 -0.000001 0
$definebone "v_thompson.magazine" "v_thompson.root2" 0.000002 0 0.000002 0 -90.214553 0.000003 0 0 0 0 0.000001 0.000003
$definebone "v_thompson.root5" "v_thompson.root2" -0.549925 6.442467 0.000002 -0.000003 -1.190893 0 0 0 0 -0.000003 0 0
$definebone "v_thompson.bullet" "v_thompson.root5" 0 0 0.000002 -0.000003 -0.120894 0 0 0 0 -0.000003 0 0
$definebone "v_thompson.root3" "v_thompson.torus" 4.871660 -1.254449 -4.842049 5.721900 -16.391628 -88.356284 0 -0.000008 0 -0.000006 0 0
$definebone "v_thompson.bolt" "v_thompson.root3" 0 -0.000008 -0.000002 -0.000006 -0.029679 0 0 0 0 -0.000006 0 0
$definebone "v_thompson.root4" "v_thompson.torus" 16.792078 -4.818754 -4.146057 5.721900 -16.391628 -88.356284 0 0 -0.000002 -0.000006 0 0
$definebone "v_thompson.swivel_clip" "v_thompson.root4" -0.000002 0 -0.000002 0 -90.180696 0.000006 0 -0.000002 -0.000002 0 0 0.000006


// --------- Attachments ---------
$attachment "0" "v_thompson.root5" 14.00 0.40 0 rotate -0.00 0.00 0.00
$attachment "1" "v_thompson.root5" 1.50 0.50 0.50 rotate -45.00 90.00 -90.00


// --------- Animation Sequences ---------
$sequence idle "idle_fixed" loop ACT_VM_IDLE 1 fps 12.00
$sequence reload "reload_fixed" ACT_VM_RELOAD 1 fps 32.00 {
  { event 5004 1 "Weapon_Thompson.Draw" }
  { event 5004 9 "Weapon_Thompson.ClipOut" }
  { event 5004 9 "Player.ReloadRustle" }
  { event 5004 41 "Weapon_Thompson.ClipIn" }
  { event 5004 75 "Weapon_Thompson.Draw" }
  { event 5004 72 "Weapon_Thompson.BoltBack" }
  { event 5004 75 "Weapon_Thompson.BoltForward" }
}
$sequence draw "draw_fixed" snap ACT_VM_DRAW 1 fps 32.00 {
  { event 5004 1 "Weapon_Thompson.Draw" }
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
$sequence hand_signal "hand_signal_fixed" ACT_VM_HAND_SIGNAL 1 fps 30.00
$sequence punch "punch_fixed" snap ACT_VM_SECONDARYATTACK 1 fps 33.00 {
  { event 5004 1 "Weapon_Thompson.Draw" }
}

