/*
-------------------------------------------------------------------------------------
QC file created by Fix decompiled QC script - 2012/06/26 - DJ_Inaki@hotmail.com
-------------------------------------------------------------------------------------
*/
$include .\..\_v_models_name.qci

$modelname $modeldir$smoke_us$CArmSuffix$
$cdmaterials "models/jessev92/dods/weapons/smoke_us\"


// --------- Body Groups ---------
$body "smoke_us" "v_smoke_us_ref.smd"

$hboxset "Iñaki"
$include .\..\_v_models_hl2_definebones.qci

$definebone "ValveBiped.smoke_ger_BASE" "ValveBiped.Bip01_Spine2" 0.000001 0 -0.875873 90 -90 0 0 0 0 0 0 0
$definebone "ValveBiped.pin" "ValveBiped.smoke_ger_BASE" -2.576845 -0.444524 -0.293285 0 90 52.742773 0 0 0 0 0 0
$definebone "ValveBiped.spoon" "ValveBiped.smoke_ger_BASE" -2.809590 0.335290 0.005397 0 0 0 0 0 0 0 0 0


// --------- Attachments ---------
$attachment "0" "ValveBiped.smoke_ger_BASE" -2.50 0.00 0.00 rotate 0.00 180.00 -0.00


// --------- Animation Sequences ---------
$sequence idle "idle_fixed" loop ACT_VM_IDLE 1 fps 10.00
$sequence draw "draw_fixed" snap ACT_VM_DRAW 1 fps 33.00 {
  { event 5004 1 "DODS.Grenade.Draw" }
}
$sequence pinpull "pinpull_fixed" snap ACT_VM_PULLPIN 1 fps 35.00 {
  { event 5004 10 "DODS.Grenade.PinPull" }
}
$sequence idle_live "idle_live_fixed" loop ACT_VM_IDLE_EMPTY 1 fps 10.00
$sequence draw_live "draw_live_fixed" snap ACT_VM_DRAW_EMPTY 1 fps 33.00 {
  { event 5004 1 "DODS.Grenade.Draw" }
}
$sequence pinpull_live "pinpull_live_fixed" snap ACT_VM_PRIMARYATTACK_EMPTY 1 fps 35.00

