/*
-------------------------------------------------------------------------------------
QC file created by Fix decompiled QC script - 2012/06/26 - DJ_Inaki@hotmail.com
-------------------------------------------------------------------------------------
*/

$modelname "weapons\v_k98_rglive.mdl"
$cdmaterials "models\weapons\v_models\k98\"


// --------- Body Groups ---------
$body "studio" "v_k98_rglive_ref.smd"

$hboxset "Iñaki"
$include .\..\_v_models_hl2_definebones.qci

$definebone "ValveBiped.thumb_muscle4" "ValveBiped.Bip01_L_Finger02" 0.517773 0 0.000001 0.000003 -0.000004 -0.000001 -0.000004 0 0.000001 0.000003 -0.000004 -0.000001
$definebone "ValveBiped.thumb_muscle3" "ValveBiped.Bip01_L_Finger01" 1 0.414001 0.000001 0.000003 -2.864794 -0.000002 0 0 0 0.000003 -0.000005 -0.000002
$definebone "ValveBiped.thumb_muscle2" "ValveBiped.Bip01_L_Finger01" 0.661800 -0.000001 0.000001 0.000003 -0.000004 -0.000001 0 0 0 0.000003 -0.000004 -0.000001
$definebone "ValveBiped.rocket_BASE" "ValveBiped.Bip01_Spine2" 0.000002 0 0.000004 90 -90 0 0 0 0 0 0 0


// --------- Animation Sequences ---------
$sequence idle "idle_fixed" loop ACT_VM_IDLE_EMPTY 1 fps 30.00
$sequence draw "draw_fixed" snap ACT_VM_DRAW_EMPTY 1 fps 35.00 {
  { event 5004 1 "Weapon_Grenade.Draw" }
}
$sequence throw "throw_fixed" snap ACT_VM_PRIMARYATTACK_EMPTY 1 fps 35.00

