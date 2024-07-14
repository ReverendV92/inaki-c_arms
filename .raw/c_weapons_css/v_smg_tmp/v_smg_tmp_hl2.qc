$modelname "weapons\v_smg_tmp.mdl"
$cdmaterials "models\weapons\V_models\smg_tmp\"

$include ".\..\_css_hl2skeleton_renamebones_mirrored.qci"
$include ".\..\_css_hl2skeleton_definebones.qci"

$scale 1.33333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333

$definebone "v_weapon.TMP_Parent" "ValveBiped.Bip01_Spine2" -2.914068 -16.779594 2.322320 0.000000 179.999980 90.000038 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "v_weapon.TMP_Clip" "v_weapon.TMP_Parent" -0.000002 1.648692 1.303941 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "v_weapon.TMP_ShellEject" "v_weapon.TMP_Parent" -0.000004 2.787787 2.368081 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "v_weapon.TMP_Trigger" "v_weapon.TMP_Parent" -0.000005 2.083331 -0.269800 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000002 -0.000000 0.000000 0.000000

$body "studio" "tmp_mirrored_ref.smd"

$attachment "1" "v_weapon.TMP_Parent" 0.00 2.50 -14.00 rotate 0.00 180.00 180.00
$attachment "2" "v_weapon.TMP_Parent" 0.00 3.00 1.20 rotate 150.00 345.00 0.00

$sequence idle1 "idle1_mirrored_merged" frames 0 0 loop activity ACT_VM_IDLE 1 fps 12.00
$sequence reload "reload_mirrored_merged" snap activity ACT_VM_RELOAD 1 fps 25.00 {
  { event 5004 12 "Weapon_TMP.Clipout" }
  { event 5004 32 "Weapon_TMP.Clipin" }
}
$sequence draw "draw_mirrored_merged" snap activity ACT_VM_DRAW 1 fps 18.00 {
  { event 5004 9 "Weapon_TMP.Deploy" }
}
$sequence fire1 "fire1_mirrored_merged" snap activity ACT_VM_PRIMARYATTACK 1 fps 15.00 {
  { event 5001 0 "1" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 100" }
}
$sequence fire2 "fire2_mirrored_merged" snap activity ACT_VM_PRIMARYATTACK 1 fps 15.00 {
  { event 5001 0 "1" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 100" }
}
