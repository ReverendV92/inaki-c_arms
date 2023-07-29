/*
-------------------------------------------------------------------------------------
QC file created by Fix decompiled QC script - 2012/06/26 - DJ_Inaki@hotmail.com
-------------------------------------------------------------------------------------
*/
$include .\..\_v_models_name.qci

$modelname $modeldir$frag$CArmSuffix$
$cdmaterials "models/jessev92/dods/weapons/frag\"


// --------- Body Groups ---------
$body "studio" "v_frag_ref.smd"

$hboxset "Iñaki"
$include .\..\_v_models_hl2_definebones.qci

$definebone "ValveBiped.frag_base" "ValveBiped.Bip01_Spine2" 0.000001 0.147767 -0.597738 0 0 90 0 0 0 0 0 0
$definebone "ValveBiped.pin" "ValveBiped.frag_base" 0.381752 2.456603 0.304418 0 0 -14.184315 0 0 0 0 0 0
$definebone "ValveBiped.spoon" "ValveBiped.frag_base" -0.482210 2.727235 -0.088029 0 90 -90 0 0 0 0 0 0


// --------- Animation Sequences ---------
$sequence idle "idle_fixed" loop ACT_VM_IDLE 1 fps 11.00
$sequence draw "draw_fixed" snap ACT_VM_DRAW 1 fps 30.00 {
  { event 5004 1 "DODS.Grenade.Draw" }
}
$sequence pinpull "pinpull_fixed" snap ACT_VM_PULLPIN 1 fps 30.00 {
  { event 5004 5 "DODS.Grenade.PinPull" }
  { event 5004 15 "DODS.Grenade.Spoon" }
}
$sequence throw "throw_fixed" snap ACT_VM_THROW 1 fps 32.00
$sequence idle_LIVE "idle_LIVE_fixed" loop ACT_VM_IDLE_EMPTY 1 fps 30.00
$sequence draw_LIVE "draw_LIVE_fixed" snap ACT_VM_DRAW_EMPTY 1 fps 30.00 {
  { event 5004 1 "DODS.Grenade.Draw" }
}
$sequence pinpull_LIVE "pinpull_LIVE_fixed" snap ACT_VM_PRIMARYATTACK_EMPTY 1 fps 30.00

