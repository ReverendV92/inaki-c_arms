/*
-------------------------------------------------------------------------------------
QC file created by Fix decompiled QC script - 2012/06/26 - DJ_Inaki@hotmail.com
-------------------------------------------------------------------------------------
*/

$modelname "weapons\v_amerk.mdl"
$cdmaterials "models\weapons\v_models\amerk\"


// --------- Body Groups ---------
$body "studio" "v_amerk_ref.smd"

$hboxset "Iñaki"
$include .\..\_v_models_hl2_definebones.qci

$definebone "ValveBiped.cube" "ValveBiped.Bip01_Spine2" 0.548410 63.659550 13.992369 -65.006531 141.476114 -120.181223 0 0 0.000001 0.000002 0 0.000003


// --------- Animation Sequences ---------
$sequence idle "idle_fixed" loop ACT_VM_IDLE 1 fps 9.00
$sequence punch1 "punch1_fixed" snap ACT_VM_PRIMARYATTACK 1 fps 31.00
$sequence punch2 "punch2_fixed" snap ACT_VM_PRIMARYATTACK 1 fps 36.00
$sequence knifebutt "knifebutt_fixed" snap ACT_VM_PRIMARYATTACK 1 fps 31.00
$sequence slash2 "slash2_fixed" snap ACT_VM_SECONDARYATTACK 1 fps 33.00
$sequence draw "draw_fixed" snap ACT_VM_DRAW 1 fps 30.00 {
  { event 5004 1 "Weapon_Knife.Draw" }
}

