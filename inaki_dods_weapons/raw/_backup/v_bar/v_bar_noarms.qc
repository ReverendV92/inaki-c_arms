/*
-------------------------------------------------------------------------------------
QC file created by Fix decompiled QC script - 2012/06/26 - DJ_Inaki@hotmail.com
-------------------------------------------------------------------------------------
*/
$include .\..\_v_models_name.qci

$modelname $modeldir$bar$CArmSuffix$
$cdmaterials "models/jessev92/dods/weapons/bar\"


// --------- Body Groups ---------
$body "gun" "v_bar_ref.smd"

$hboxset "Iñaki"
$include .\..\_v_models_hl2_definebones.qci

$definebone "ValveBiped.bar_base" "ValveBiped.Bip01_Spine2" -9.005976 78.828133 -5.367155 0.872672 -77.546963 -30.290216 0 0 0 0 0 0
$definebone "ValveBiped.mag_release" "ValveBiped.bar_base" -0.032110 1.363300 6.285662 0 90 90 0 0 0 0 0 0
$definebone "ValveBiped.fire_select" "ValveBiped.bar_base" -0.498892 1.363300 4.070020 0 90 -138.851505 0 0 0 0 0 0
$definebone "ValveBiped.bolt" "ValveBiped.bar_base" -1.927743 1.363300 7.341013 0 90 -90 0 0 0 0 0 0
$definebone "ValveBiped.magazine" "ValveBiped.bar_base" 1.687117 0 9.910956 0 90 0 0 0 0 0 0 0
$definebone "ValveBiped.bullet" "ValveBiped.magazine" 0 3.986711 -0.040604 0 0 -90 0 0 0 0 0 0
$definebone "ValveBiped.magazine1" "ValveBiped.bar_base" -0.773260 0.120446 27.837101 0 90 0 0 0 0 0 0 0


// --------- Attachments ---------
$attachment "0" "ValveBiped.bar_base" -2.30 -0.50 38.50 rotate -90.00 90.00 0.00
$attachment "1" "ValveBiped.bolt" -2.00 -2.00 1.00 rotate -20.00 -180.00 90.00


// --------- Animation Sequences ---------
$sequence up_idle "up_idle_fixed" loop ACT_VM_IDLE 1 fps 12.00
$sequence up_reload "up_reload_fixed" ACT_VM_RELOAD 1 fps 43.00 {
  { event 5004 1 "DODS.BAR.Draw" }
  { event 5004 20 "DODS.BAR.ClipOut" }
  { event 5004 17 "DODS.Player.ReloadRustle" }
  { event 5004 50 "DODS.BAR.ClipIn1" }
  { event 5004 63 "DODS.BAR.ClipIn2" }
  { event 5004 81 "DODS.BAR.Draw" }
  { event 5004 91 "DODS.BAR.BoltBack" }
  { event 5004 102 "DODS.BAR.BoltForward" }
}
$sequence up_draw "up_draw_fixed" snap ACT_VM_DRAW 1 fps 33.00 {
  { event 5004 1 "DODS.BAR.Draw" }
  { event 5004 17 "DODS.BAR.BoltBack" }
  { event 5004 27 "DODS.BAR.BoltForward" }
}
$sequence up_shoot1 "up_shoot1_fixed" snap ACT_VM_PRIMARYATTACK 1 fps 50.00 {
  //{ event CL_EVENT_MUZZLEFLASH0 0 "61" }
  //{ event CL_EVENT_SPRITEGROUP_CREATE 2 "2" }
}
$sequence up_shoot2 "up_shoot2_fixed" snap ACT_VM_PRIMARYATTACK 1 fps 50.00 {
  //{ event CL_EVENT_MUZZLEFLASH0 0 "61" }
  //{ event CL_EVENT_SPRITEGROUP_CREATE 2 "2" }
}
$sequence up_shoot3 "up_shoot3_fixed" snap ACT_VM_PRIMARYATTACK 1 fps 50.00 {
  //{ event CL_EVENT_MUZZLEFLASH0 0 "61" }
  //{ event CL_EVENT_SPRITEGROUP_CREATE 2 "2" }
}
$sequence up_to_down "up_to_down_fixed" ACT_VM_DEPLOY 1 fps 33.00 {
  { event 5004 17 "DODS.BAR.SelectorSwitch" }
}
$sequence down_idle "down_idle_fixed" loop ACT_VM_IDLE_DEPLOYED 1 fps 12.00
$sequence down_reload "down_reload_fixed" ACT_VM_RELOAD_DEPLOYED 1 fps 43.00 {
  { event 5004 1 "DODS.BAR.Draw" }
  { event 5004 20 "DODS.BAR.ClipOut" }
  { event 5004 17 "DODS.Player.ReloadRustle" }
  { event 5004 50 "DODS.BAR.ClipIn1" }
  { event 5004 63 "DODS.BAR.ClipIn2" }
  { event 5004 91 "DODS.BAR.BoltBack" }
  { event 5004 102 "DODS.BAR.BoltForward" }
}
$sequence down_draw "down_draw_fixed" snap ACT_VM_DRAW_DEPLOYED 1 fps 33.00 {
  { event 5004 1 "DODS.BAR.Draw" }
  { event 5004 17 "DODS.BAR.BoltBack" }
  { event 5004 27 "DODS.BAR.BoltForward" }
}
$sequence down_shoot1 "down_shoot1_fixed" snap ACT_VM_PRIMARYATTACK_DEPLOYED 1 fps 50.00 {
  //{ event CL_EVENT_MUZZLEFLASH0 0 "61" }
  //{ event CL_EVENT_SPRITEGROUP_CREATE 2 "2" }
}
$sequence down_shoot2 "down_shoot2_fixed" snap ACT_VM_PRIMARYATTACK_DEPLOYED 1 fps 50.00 {
  //{ event CL_EVENT_MUZZLEFLASH0 0 "61" }
  //{ event CL_EVENT_SPRITEGROUP_CREATE 2 "2" }
}
$sequence down_shoot3 "down_shoot3_fixed" snap ACT_VM_PRIMARYATTACK_DEPLOYED 1 fps 50.00 {
  //{ event CL_EVENT_MUZZLEFLASH0 0 "61" }
  //{ event CL_EVENT_SPRITEGROUP_CREATE 2 "2" }
}
$sequence down_to_up "down_to_up_fixed" ACT_VM_UNDEPLOY 1 fps 33.00 {
  { event 5004 17 "DODS.BAR.SelectorSwitch" }
}

