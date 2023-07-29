/*
-------------------------------------------------------------------------------------
QC file created by Fix decompiled QC script - 2012/06/26 - DJ_Inaki@hotmail.com
-------------------------------------------------------------------------------------
*/

$modelname "weapons\v_panzerschreck.mdl"
$cdmaterials "models\weapons\v_models\panzerschreck\"


// --------- Body Groups ---------
$body "gun" "v_panzerschreck_ref.smd"

$hboxset "Iñaki"
$include .\..\_v_models_hl2_definebones.qci

$definebone "ValveBiped.panzer_BASE" "ValveBiped.Bip01_Spine2" -5.070109 63.920563 -5.177171 0.872672 -77.546963 -30.290216 0 0 0 0 0 0
$definebone "ValveBiped.latch" "ValveBiped.panzer_BASE" -7.390190 0 -29.715605 0 90 -94.917391 0 0 0 0 0 0
$definebone "ValveBiped.rocket" "ValveBiped.panzer_BASE" -13.159372 -0.008971 -11.577474 0 90 -90 0 0 0 0 0 0
$definebone "ValveBiped.swivel_clip1" "ValveBiped.panzer_BASE" -7.311798 0 12.241474 0 90 -90 0 0 0 0 0 0
$definebone "ValveBiped.swivel_clip2" "ValveBiped.panzer_BASE" -7.312130 0 -18.470749 0 90 -90 0 0 0 0 0 0
$definebone "ValveBiped.trigger1" "ValveBiped.panzer_BASE" -1.218126 0 1.812247 0 90 -90 0 0 0 0 0 0
$definebone "ValveBiped.trigger2" "ValveBiped.panzer_BASE" -1.912562 0 5.573451 0 90 -29.529671 0 0 0 0 0 0


// --------- Attachments ---------
$attachment "0" "ValveBiped.panzer_BASE" -5.10 0.00 33.00 rotate -90 90 0

// --------- Animation Sequences ---------
$sequence idle "idle_fixed" loop ACT_VM_IDLE 1 fps 20.00
$sequence draw "draw_fixed" snap ACT_VM_DRAW 1 fps 30.00 {
  { event 5004 2 "Weapon_Grenade.Draw" }
}
$sequence aimed "aimed_fixed" loop ACT_VM_IDLE_DEPLOYED 1 fps 30.00
$sequence launch "launch_fixed" snap ACT_VM_PRIMARYATTACK 1 fps 30.00 {
  { event 5001 1 "71" }
}
$sequence down_to_up "down_to_up_fixed" ACT_VM_DEPLOY 1 fps 49.60 {
  { event 5004 3 "Weapon_Grenade.Draw" }
}
$sequence up_to_down "up_to_down_fixed" ACT_VM_UNDEPLOY 1 fps 35.00 {
  { event 5004 3 "Weapon_Grenade.Draw" }
}
$sequence reload_aimed "reload_aimed_fixed" ACT_VM_RELOAD_DEPLOYED 1 fps 30.00 {
  { event 5004 1 "Player.ReloadRustle" }
  { event 5004 39 "Weapon_Panzerschreck.ClipIn" }
  { event 5004 40 "Weapon_Panzerschreck.Draw" }
}
$sequence reload_idle "reload_idle_fixed" ACT_VM_RELOAD 1 fps 30.00 {
  { event 5004 1 "Player.ReloadRustle" }
  { event 5004 39 "Weapon_Panzerschreck.ClipIn" }
  { event 5004 40 "Weapon_Panzerschreck.Draw" }
}

