/*
-------------------------------------------------------------------------------------
QC file created by Fix decompiled QC script - 2012/06/26 - DJ_Inaki@hotmail.com
-------------------------------------------------------------------------------------
*/
$include .\..\_v_models_name.qci

$modelname $modeldir$spade$CArmSuffix$
$cdmaterials "models/jessev92/dods/weapons/spade\"


// --------- Body Groups ---------
$body "studio" "v_spade_ref.smd"

$hboxset "Iñaki"
$include .\..\_v_models_hl2_definebones.qci

$definebone "ValveBiped.spade_bone" "ValveBiped.Bip01_Spine2" -0.414806 65.989449 12.976147 30.621443 7.694709 151.355518 0 0.000001 0.000001 -0.000003 0 0.000001


// --------- Animation Sequences ---------
$sequence idle "idle_fixed" loop ACT_VM_IDLE 1 fps 12.00
$sequence slash1 "slash1_fixed" snap ACT_VM_PRIMARYATTACK 1 fps 33.00
$sequence slash2 "slash2_fixed" snap ACT_VM_PRIMARYATTACK 1 fps 33.00
$sequence uberswing "uberswing_fixed" snap ACT_VM_SECONDARYATTACK 1 fps 33.00
$sequence draw "draw_fixed" snap ACT_VM_DRAW 1 fps 33.00 {
  { event 5004 1 "DODS.Spade.Draw" }
}

