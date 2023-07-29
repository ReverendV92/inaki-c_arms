/*
-------------------------------------------------------------------------------------
QC file created by Fix decompiled QC script - 2012/06/26 - DJ_Inaki@hotmail.com
-------------------------------------------------------------------------------------
*/
$include .\..\_v_models_name.qci


$modelname $modeldir$p38$CArmSuffix$
$cdmaterials "models/jessev92/dods/weapons/p38\"


// --------- Body Groups ---------
$body "studio" "v_p38_ref.smd"

$hboxset "Iñaki"
$include .\..\_v_models_hl2_definebones.qci

$definebone "ValveBiped.p38_base" "ValveBiped.Bip01_Spine2" 4.519026 69.512947 6.567647 -1.107413 102.953601 29.919801 0 0 0 0 0 0.000002
$definebone "ValveBiped.clip" "ValveBiped.p38_base" -0.262160 0 1.205968 0.000002 -90 13.130989 0 0 0 0.000002 0 0.000003
$definebone "ValveBiped.bullet1" "ValveBiped.clip" 0 2.853455 0.026089 0.000002 0 67.296489 0 0 0 0 -0.000002 0.000005
$definebone "ValveBiped.bullet2" "ValveBiped.clip" 0 2.448247 0.213192 0.000002 0 70.222801 0 0 0 0 -0.000002 0.000001
$definebone "ValveBiped.hammer" "ValveBiped.p38_base" 2.534019 0 0.503922 0.000002 -90 -12.672566 0 0 0 0.000002 0.000001 -0.000002
$definebone "ValveBiped.barrel" "ValveBiped.p38_base" 3.060508 0 6.819592 0.000002 -90 -90 0 0 0 0 0.000002 0
$definebone "ValveBiped.trigger" "ValveBiped.p38_base" 1.810545 0 3.319562 0.000002 -90 -12.944547 0 0 0 0.000002 0.000001 -0.000002
$definebone "ValveBiped.slide" "ValveBiped.p38_base" 3.424894 0 2.024512 0.000002 -90 -90 0 -0.000002 0 0 0.000002 0


// --------- Attachments ---------
$attachment "0" "ValveBiped.p38_base" 3.05 0.00 8.50 rotate -90 -0 0
$attachment "1" "ValveBiped.p38_base" 3.00 0.00 4.00 rotate -0.00 45.00 180.00


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
$sequence reload "reload_fixed" ACT_VM_RELOAD 1 fps 32.00 {
  { event 5004 15 "DODS.P38.ClipOut" }
  { event 5004 46 "DODS.P38.ClipIn" }
}
$sequence reload_noshoot "reload_noshoot_fixed" ACT_VM_RELOAD_EMPTY 1 fps 32.00 {
  { event 5004 15 "DODS.P38.ClipOut" }
  { event 5004 46 "DODS.P38.ClipIn" }
  { event 5004 59 "DODS.P38.BoltForward" }
}
$sequence draw "draw_fixed" snap ACT_VM_DRAW 1 fps 35.00 {
  { event 5004 1 "DODS.P38.Draw" }
  { event 5004 10 "DODS.P38.BoltBack" }
  { event 5004 20 "DODS.P38.BoltForward" }
}
$sequence draw_empty "draw_empty_fixed" snap ACT_VM_DRAW_EMPTY 1 fps 35.00 {
  { event 5004 1 "DODS.P38.Draw" }
}
$sequence shoot_empty "shoot_empty_fixed" snap ACT_VM_PRIMARYATTACK_EMPTY 1 fps 50.00 {
  //{ event CL_EVENT_MUZZLEFLASH0 1 "31" }
  //{ event CL_EVENT_SPRITEGROUP_CREATE 1 "0" }
}
$sequence empty_idle "empty_idle_fixed" loop ACT_VM_IDLE_EMPTY 1 fps 30.00

