/*
-------------------------------------------------------------------------------------
QC file created by Fix decompiled QC script - 2012/06/26 - DJ_Inaki@hotmail.com
-------------------------------------------------------------------------------------
*/
$include .\..\_v_models_name.qci


$modelname $modeldir$k98_scoped$CArmSuffix$
$cdmaterials "models/jessev92/dods/weapons/k98"
$cdmaterials "models/jessev92/dods/weapons/k98_scoped"


// --------- Body Groups ---------
$body "gun" "v_k98_scoped_ref.smd"

$hboxset "Iñaki"
$include .\..\_v_models_hl2_definebones.qci

$definebone "ValveBiped.k98_scoped_BASE" "ValveBiped.Bip01_Spine2" 0 -10.857164 -0.393501 90 -90 0 0 0 0 0 0 0
$definebone "ValveBiped.bolt" "ValveBiped.k98_scoped_BASE" -2.284352 0 -7.873001 0 90 -90 0 0 0 0 0 0
$definebone "ValveBiped.firing_pin" "ValveBiped.bolt" 0 -5.281000 -0.014291 0 0 0 0 0 0 0 0 0
$definebone "ValveBiped.bolt_handle" "ValveBiped.bolt" 0 -3.395685 -0.024920 90 -90 0 0 0 0 0 0 0
$definebone "ValveBiped.bullet" "ValveBiped.k98_scoped_BASE" 1.883556 0 -7.378365 0 90 -90 0 0 0 0 0 0


// --------- Attachments ---------
$attachment "0" "ValveBiped.k98_scoped_BASE" -2.20 0.00 -33.50 rotate 90.00 0.00 0.00
$attachment "1" "ValveBiped.k98_scoped_BASE" -2.50 -0.00 -7.00 rotate -0.00 150.00 0.00


// --------- Animation Sequences ---------
$sequence idle "idle_fixed" loop ACT_VM_IDLE 1 fps 16.00
$sequence shoot "shoot_fixed" snap ACT_VM_PRIMARYATTACK 1 fps 33.00 {
  //{ event CL_EVENT_MUZZLEFLASH0 1 "41" }
  //{ event CL_EVENT_SPRITEGROUP_CREATE 26 "2" }
  { event 5004 17 "DODS.K98.BoltBack1" }
  { event 5004 20 "DODS.K98.BoltBack2" }
  { event 5004 27 "DODS.K98.BoltForward1" }
  { event 5004 30 "DODS.K98.BoltForward2" }
}
$sequence shoot_empty "shoot_empty_fixed" snap ACT_VM_PRIMARYATTACK_EMPTY 1 fps 43.00 {
  //{ event CL_EVENT_MUZZLEFLASH0 1 "41" }
}
$sequence reload "reload_fixed" ACT_VM_RELOAD_EMPTY 1 fps 33.00 {
  //{ event CL_EVENT_SPRITEGROUP_CREATE 17 "2" }
  { event 5004 10 "DODS.K98.BoltBack1" }
  { event 5004 14 "DODS.K98.Draw" }
  { event 5004 14 "DODS.K98.BoltBack2" }
  { event 5004 34 "DODS.K98.ClipIn2" }
  { event 5004 49 "DODS.K98.ClipIn2" }
  { event 5004 64 "DODS.K98.ClipIn2" }
  { event 5004 32 "DODS.Player.ReloadRustle" }
  { event 5004 79 "DODS.K98.ClipIn2" }
  { event 5004 94 "DODS.K98.ClipIn2" }
  { event 5004 109 "DODS.K98.Draw" }
  { event 5004 109 "DODS.K98.BoltForward1" }
  { event 5004 112 "DODS.K98.BoltForward2" }
}
$sequence draw "draw_fixed" snap ACT_VM_DRAW 1 fps 30.00 {
  { event 5004 1 "DODS.K98.Draw" }
}


//NEW
//$sequence reload_start "reload_fixed" fadeout 0 frames 0 41 ACT_VM_RELOAD_START 1 fps 33.00 {
$sequence reload_start "reload_fixed" fadeout 0 frames 0 41  ACT_SHOTGUN_RELOAD_START 1 fps 33.00 {
  { event 5004 10 "DODS.K98.BoltBack1" }
  { event 5004 14 "DODS.K98.Draw" }
  { event 5004 14 "DODS.K98.BoltBack2" }
  { event 5004 34 "DODS.K98.ClipIn2" }

}
//$sequence reload_loop "reload_fixed" fixuploop 0 15 frames 56 71 ACT_VM_RELOAD_LOOP 1 loop fps 33.00 {
$sequence reload_loop "reload_fixed" fixuploop 0 15 frames 56 71 ACT_VM_RELOAD 1 fps 33.00 {
  { event 5004 7 "DODS.K98.ClipIn2" }
}
$sequence reload_end "reload_fixed" fadein 0 frames 100 140  ACT_SHOTGUN_RELOAD_FINISH 1 fps 33.00 {
  { event 5004 9 "DODS.K98.Draw" }
  { event 5004 9 "DODS.K98.BoltForward1" }
  { event 5004 12 "DODS.K98.BoltForward2" }
}
