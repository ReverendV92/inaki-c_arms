$modelname "weapons\v_pist_deagle.mdl"
$cdmaterials "models\weapons\V_models\pist_deagle\"

$include ".\..\_css_hl2skeleton_renamebones_mirrored.qci"
$include ".\..\_css_hl2skeleton_definebones.qci"

$scale 1.33333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333

$definebone "v_weapon.Deagle_Parent" "ValveBiped.Bip01_Spine2" -2.716680 -16.733912 2.336491 0.000000 179.999980 90.000038 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "v_weapon.Deagle_Trigger" "v_weapon.Deagle_Parent" 0.000000 2.136541 -0.268839 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "v_weapon.Deagle_Slide" "v_weapon.Deagle_Parent" 0.000000 2.943050 0.962150 -0.000000 0.000000 0.000000 0.000000 0.000000 -0.000001 -0.000000 0.000000 0.000000
$definebone "v_weapon.Deagle_Hammer" "v_weapon.Deagle_Parent" 0.000000 2.439041 1.839406 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "v_weapon.Deagle_ClipRelease" "v_weapon.Deagle_Parent" 0.000000 1.995049 0.820658 -0.000000 -0.006016 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "v_weapon.Deagle_Clip" "v_weapon.Deagle_Parent" 0.000000 1.245136 1.018746 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000

$body "studio" "deagle_mirrored_ref.smd"

$attachment "1" "v_weapon.Deagle_Parent" 0.00 2.75 6.50 rotate 0.00 0.00 0.00
$attachment "2" "v_weapon.Deagle_Parent" 0.00 2.90 0.00 rotate -10.00 -180.00 0.00

$sequence idle1 "idle1_mirrored_merged" loop activity ACT_VM_IDLE 1 fps 16.00
$sequence shoot1 "shoot1_mirrored_merged" snap activity ACT_VM_PRIMARYATTACK 1 fps 40.00 {
  { event 5001 0 "1" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 100" }
}
$sequence shoot2 "shoot2_mirrored_merged" snap activity ACT_VM_PRIMARYATTACK 1 fps 40.00 {
  { event 5001 0 "1" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 100" }
}
$sequence shoot_empty "shoot_empty_mirrored_merged" snap activity ACT_VM_DRYFIRE 1 fps 40.00 {
  { event 5001 0 "21" }
}
$sequence reload "reload_mirrored_merged" snap activity ACT_VM_RELOAD 1 fps 30.00 {
  { event 5004 0 "Weapon_DEagle.Slideback" }
  { event 5004 14 "Weapon_DEagle.Clipout" }
  { event 5004 34 "Weapon_DEagle.Clipin" }
}
$sequence draw "draw_mirrored_merged" snap activity ACT_VM_DRAW 1 fps 30.00 {
  { event 5004 1 "Weapon_DEagle.Deploy" }
}
