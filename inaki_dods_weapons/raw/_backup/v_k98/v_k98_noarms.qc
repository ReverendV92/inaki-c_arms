/*
-------------------------------------------------------------------------------------
QC file created by Fix decompiled QC script - 2012/06/26 - DJ_Inaki@hotmail.com
-------------------------------------------------------------------------------------
*/
$include .\..\_v_models_name.qci

$modelname $modeldir$k98$CArmSuffix$
$cdmaterials "models/jessev92/dods/weapons/k98\"


// --------- Body Groups ---------
$body "gun" "v_k98_ref.smd"

$hboxset "Iñaki"
$include .\..\_v_models_hl2_definebones.qci

$definebone "ValveBiped.k98_base" "ValveBiped.Bip01_Spine2" -0.534768 67.303009 3.689641 -0.872672 102.452989 30.290216 0 0 0 0 0 0
$definebone "ValveBiped.bullets" "ValveBiped.k98_base" -3.024770 0 -8.338420 0 -90 -90 0 0 0 0 0 0
$definebone "ValveBiped.stripper_clip" "ValveBiped.bullets" 0 -1.487046 -0.015588 0 0 -90 0 0 0 0 0 0
$definebone "ValveBiped.bolt" "ValveBiped.k98_base" 2.073901 0 -6.709000 0 -90 -90 0 0 0 0 0 0
$definebone "ValveBiped.firing_pin" "ValveBiped.bolt" 0 -4.727000 0.033158 0 0 0 0 0 0 0 0 0
$definebone "ValveBiped.bolt_handle" "ValveBiped.bolt" 0.011790 -2.893542 -0.013048 -56.374005 -0.000001 -90 0 0 0 0 0 0


// --------- Attachments ---------
$attachment "0" "ValveBiped.k98_base" 2.00 -1.00 -33.50 rotate 90.00 -90.00 0.00
$attachment "1" "ValveBiped.k98_base" 2.00 -0.00 -6.50 rotate -0.00 -25.00 0.00


// --------- Animation Sequences ---------
$sequence idle "idle_fixed" loop ACT_VM_IDLE 1 fps 16.00
$sequence shoot "shoot_fixed" snap ACT_VM_PRIMARYATTACK 1 fps 32.00 {
  //{ event CL_EVENT_MUZZLEFLASH0 1 "41" }
  //{ event CL_EVENT_SPRITEGROUP_CREATE 26 "2" }
  { event 5004 17 "DODS.K98.BoltBack1" }
  { event 5004 20 "DODS.K98.BoltBack2" }
  { event 5004 27 "DODS.K98.BoltForward1" }
  { event 5004 30 "DODS.K98.BoltForward2" }
}
$sequence shoot_empty "shoot_empty_fixed" snap ACT_VM_PRIMARYATTACK_EMPTY 1 fps 50.00 {
  //{ event CL_EVENT_MUZZLEFLASH0 1 "41" }
}
$sequence reload "reload_fixed" ACT_VM_RELOAD 1 fps 32.00 {
  //{ event CL_EVENT_SPRITEGROUP_CREATE 16 "2" }
  { event 5004 7 "DODS.K98.BoltBack1" }
  { event 5004 5 "DODS.Player.ReloadRustle" }
  { event 5004 11 "DODS.K98.BoltBack2" }
  { event 5004 44 "DODS.K98.ClipIn" }
  { event 5004 47 "DODS.K98.Draw" }
  { event 5004 65 "DODS.K98.ClipOut" }
  { event 5004 65 "DODS.K98.BoltForward1" }
  { event 5004 68 "DODS.K98.BoltForward2" }
}
$sequence draw "draw_fixed" snap ACT_VM_DRAW 1 fps 30.00 {
  { event 5004 1 "DODS.K98.Draw" }
}

