/*
-------------------------------------------------------------------------------------
QC file created by Fix decompiled QC script - 2012/06/26 - DJ_Inaki@hotmail.com
-------------------------------------------------------------------------------------
*/
$include .\..\_v_models_name.qci

$modelname $modeldir$c96$CArmSuffix$
$cdmaterials "models/jessev92/dods/weapons/c96\"


// --------- Body Groups ---------
$body "studio" "v_c96_ref.smd"

$hboxset "Iñaki"
$include .\..\_v_models_hl2_definebones.qci

$definebone "ValveBiped.c96_base" "ValveBiped.Bip01_Spine2" 0 -0.687635 -1.727514 90 -90 0 0 0 0 0 0 0
$definebone "ValveBiped.hammer" "ValveBiped.c96_base" -2.714439 0 0.701974 0 90 0 0 0 0 0 0 0
$definebone "ValveBiped.trigger" "ValveBiped.c96_base" -1.825196 0 2.854990 0 90 0 0 0 0 0 0 0
$definebone "ValveBiped.slide" "ValveBiped.c96_base" -3.853817 0 2.281731 0 90 -90 0 0 0 0 0 0
$definebone "ValveBiped.magazine" "ValveBiped.c96_base" 0.381115 0 5.091718 0 90 0 0 0 0 0 0 0
$definebone "ValveBiped.bullet" "ValveBiped.magazine" 0 4.238106 -0.029703 0 0 -90 0 0 0 0 0 0


// --------- Attachments ---------
$attachment "0" "ValveBiped.c96_base" -3.90 -0.00 12.50 rotate -90 -0 0
$attachment "1" "ValveBiped.c96_base" -4.00 0.00 5.00 rotate 0.00 -135.00 180.00


// --------- Animation Sequences ---------
$sequence idle "idle_fixed" loop ACT_VM_IDLE 1 fps 12.00
$sequence shoot1 "shoot1_fixed" snap ACT_VM_PRIMARYATTACK 1 fps 50.00 {
  //{ event CL_EVENT_MUZZLEFLASH0 0 "31" }
  //{ event CL_EVENT_SPRITEGROUP_CREATE 2 "0" }
}
$sequence shoot2 "shoot2_fixed" snap ACT_VM_PRIMARYATTACK 1 fps 50.00 {
  //{ event CL_EVENT_MUZZLEFLASH0 0 "31" }
  //{ event CL_EVENT_SPRITEGROUP_CREATE 2 "0" }
}
$sequence shoot3 "shoot3_fixed" snap ACT_VM_PRIMARYATTACK 1 fps 50.00 {
  //{ event CL_EVENT_MUZZLEFLASH0 0 "31" }
  //{ event CL_EVENT_SPRITEGROUP_CREATE 2 "0" }
}
$sequence reload "reload_fixed" ACT_VM_RELOAD 1 fps 34.00 {
  { event 5004 5 "DODS.Player.ReloadRustle" }
  { event 5004 16 "DODS.c96.ClipOut" }
  { event 5004 36 "DODS.c96.ClipIn1" }
  { event 5004 47 "DODS.C96.ClipIn2" }
}
$sequence reload_noshoot "reload_noshoot_fixed" ACT_VM_RELOAD_EMPTY 1 fps 34.00 {
  { event 5004 5 "DODS.Player.ReloadRustle" }
  { event 5004 16 "DODS.C96.ClipOut" }
  { event 5004 36 "DODS.C96.ClipIn1" }
  { event 5004 47 "DODS.C96.ClipIn2" }
  { event 5004 67 "DODS.C96.BoltForward" }
}
$sequence draw "draw_fixed" snap ACT_VM_DRAW 1 fps 32.00 {
  { event 5004 1 "DODS.C96.Draw" }
  { event 5004 19 "DODS.C96.BoltBack" }
  { event 5004 22 "DODS.C96.BoltForward" }
}
$sequence draw_empty "draw_empty_fixed" snap ACT_VM_DRAW_EMPTY 1 fps 32.00 {
  { event 5004 1 "DODS.C96.Draw" }
}
$sequence shoot_empty "shoot_empty_fixed" snap ACT_VM_PRIMARYATTACK_EMPTY 1 fps 50.00 {
  //{ event CL_EVENT_MUZZLEFLASH0 1 "31" }
  //{ event CL_EVENT_SPRITEGROUP_CREATE 1 "0" }
}
$sequence empty_idle "empty_idle_fixed" loop ACT_VM_IDLE_EMPTY 1 fps 30.00

