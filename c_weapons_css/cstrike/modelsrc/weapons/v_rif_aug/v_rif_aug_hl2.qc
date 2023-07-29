$modelname "weapons\v_rif_aug.mdl"
$cdmaterials "models\weapons\V_models\rif_aug\"
$cdmaterials "models\weapons\v_models\snip_awp\"

$include ".\..\_css_hl2skeleton_renamebones_mirrored.qci"
$include ".\..\_css_hl2skeleton_definebones.qci"

$scale 1.33333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333

$definebone "v_weapon.aug_Parent" "ValveBiped.Bip01_Spine2" -2.231493 -16.537058 2.168746 0.000000 179.999980 90.000038 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "v_weapon.aug_Trigger" "v_weapon.aug_Parent" -2.507869 -16.369875 3.726204 0.000000 179.999980 90.000038 0.000000 0.000000 0.000002 -0.000000 0.000000 0.000000
$definebone "v_weapon.aug_Bolt" "v_weapon.aug_Parent" 0.323567 2.879052 -2.513947 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "v_weapon.aug_Handle" "v_weapon.aug_Parent" 0.021090 2.011113 -4.844337 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000002 -0.000000 0.000000 0.000000
$definebone "v_weapon.aug_Clip" "v_weapon.aug_Parent" -2.748503 -11.777338 3.349762 0.000000 179.999980 90.000038 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000

$body "studio" "aug_mirrored_ref.smd"

$attachment "1" "v_weapon.aug_Parent" -0.20 2.70 -14.00 rotate 0.00 180.00 180.00
$attachment "2" "v_weapon.aug_Parent" 0.30 3.30 5.00 rotate 150.00 15.00 180.00

$sequence idle "idle_mirrored_merged" loop activity ACT_VM_IDLE 1 fps 30.00
$sequence shoot1 "shoot1_mirrored_merged" snap activity ACT_VM_PRIMARYATTACK 1 fps 35.00 {
  { event 5001 0 "1" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_762Nato 2 150" }
}
$sequence shoot2 "shoot2_mirrored_merged" snap activity ACT_VM_PRIMARYATTACK 2 fps 35.00 {
  { event 5001 0 "1" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_762Nato 2 150" }
}
$sequence shoot3 "shoot3_mirrored_merged" snap activity ACT_VM_PRIMARYATTACK 3 fps 35.00 {
  { event 5001 0 "1" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_762Nato 2 150" }
}
$sequence draw "draw_mirrored_merged" snap activity ACT_VM_DRAW 1 fps 30.00 {
  { event 5004 9 "Weapon_AUG.Forearm" }
}
$sequence reload "reload_mirrored_merged" snap activity ACT_VM_RELOAD 1 fps 35.00 {
  { event 5004 10 "Weapon_AUG.Boltpull" }
  { event 5004 50 "Weapon_AUG.Clipout" }
  { event 5004 88 "Weapon_AUG.Clipin" }
  { event 5004 112 "Weapon_AUG.Boltslap" }
}
