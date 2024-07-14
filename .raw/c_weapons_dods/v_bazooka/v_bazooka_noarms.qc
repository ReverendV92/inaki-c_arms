/*
-------------------------------------------------------------------------------------
QC file created by Fix decompiled QC script - 2012/06/26 - DJ_Inaki@hotmail.com
-------------------------------------------------------------------------------------
*/

$modelname "weapons\v_bazooka.mdl"
$cdmaterials "models\weapons\v_models\bazooka\"


// --------- Body Groups ---------
$body "gun" "v_bazooka_ref.smd"

$hboxset "Iñaki"
$include .\..\_v_models_hl2_definebones.qci

$definebone "ValveBiped.bazooka_BASE" "ValveBiped.Bip01_Spine2" -3.583196 62.917675 -3.081300 0.872672 -77.546963 -30.290216 0 0 0 0 0 0
$definebone "ValveBiped.latch" "ValveBiped.bazooka_BASE" -5.629921 0 -34.616398 0 90 -93.956999 0 -0.000002 0 0 0 0
$definebone "ValveBiped.rocket" "ValveBiped.bazooka_BASE" -9.191585 0 -28.766584 0 90 -90 0 0 0 0 0 0
$definebone "ValveBiped.trigger" "ValveBiped.bazooka_BASE" -0.712345 0 2.285000 0 90 -90 0 0 0 0 0 0


// --------- Attachments ---------
$attachment "0" "ValveBiped.bazooka_BASE" -3.20 0.00 25.00 rotate -90.00 90.00 0.00


// --------- Animation Sequences ---------
$sequence idle "idle_fixed" loop ACT_VM_IDLE 1 fps 30.00
$sequence draw "draw_fixed" snap ACT_VM_DRAW 1 fps 35.00 {
  { event 5004 2 "Weapon_Grenade.Draw" }
}
$sequence aimed "aimed_fixed" loop ACT_VM_IDLE_DEPLOYED 1 fps 30.00
$sequence launch "launch_fixed" snap ACT_VM_PRIMARYATTACK 1 fps 35.00 {
  { event 5001 1 "71" }
}
$sequence down_to_up "down_to_up_fixed" ACT_VM_DEPLOY 1 fps 41.00 {
  { event 5004 3 "Weapon_Grenade.Draw" }
}
$sequence up_to_down "up_to_down_fixed" ACT_VM_UNDEPLOY 1 fps 33.00 {
  { event 5004 3 "Weapon_Grenade.Draw" }
}
$sequence reload_aimed "reload_aimed_fixed" ACT_VM_RELOAD_DEPLOYED 1 fps 30.00 {
  { event 5004 1 "Player.ReloadRustle" }
  { event 5004 30 "Weapon_Bazooka.ClipIn" }
  { event 5004 31 "Weapon_Bazooka.Draw" }
}
$sequence reload_idle "reload_idle_fixed" ACT_VM_RELOAD 1 fps 30.00 {
  { event 5004 1 "Player.ReloadRustle" }
  { event 5004 30 "Weapon_Bazooka.ClipIn" }
  { event 5004 31 "Weapon_Bazooka.Draw" }
}

