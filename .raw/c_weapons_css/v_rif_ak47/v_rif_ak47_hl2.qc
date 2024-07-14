$modelname "weapons\v_rif_ak47.mdl"
$cdmaterials "models\weapons\V_models\rif_ak47\"

$include ".\..\_css_hl2skeleton_renamebones_mirrored.qci"
$include ".\..\_css_hl2skeleton_definebones.qci"

$scale 1.33333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333

$definebone "v_weapon.AK47_Parent" "ValveBiped.Bip01_Spine2" -2.832610 -16.223627 7.396107 0.000000 179.999980 90.000038 0.000000 0.000000 0.000002 -0.000000 0.000000 0.000000
$definebone "v_weapon.AK47_Bolt" "v_weapon.AK47_Parent" 0.000003 3.939871 -3.605309 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "v_weapon.AK47_Clip" "v_weapon.AK47_Parent" 0.000004 2.712059 -4.185108 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000002 -0.000000 0.000000 0.000000
$definebone "v_weapon.AK47_ClipRelease" "v_weapon.AK47_Parent" 0.000002 1.398984 -2.633291 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "v_weapon.AK47_Trigger" "v_weapon.AK47_Parent" 0.000001 2.660904 -1.183790 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000002 -0.000000 0.000000 0.000000

$body "studio" "ak47_mirrored_ref.smd"

$attachment "1" "v_weapon.AK47_Parent" 0.00 3.50 -19.00 rotate 0.00 180.00 180.00

//ttachment "2" "v_weapon.AK47_Parent" 0.00 4.10 5.00 rotate -30.00 165.00 -0.00
$attachment "2" "v_weapon.AK47_Parent" 0.00 4.10 -5.00 rotate 150.00 348.00 180.00

$sequence ak47_idle "ak47_idle_mirrored_merged.smd" loop ACT_VM_IDLE 1 fps 30.00
$sequence ak47_fire1 "ak47_fire1_mirrored_merged.smd" snap activity ACT_VM_PRIMARYATTACK 1 fps 20.00 {
  { event 5001 0 "1" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_762Nato 2 150" }
}
$sequence ak47_fire2 "ak47_fire2_mirrored_merged.smd" snap activity ACT_VM_PRIMARYATTACK 1 fps 20.00 {
  { event 5001 0 "1" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_762Nato 2 150" }
}
$sequence ak47_fire3 "ak47_fire3_mirrored_merged.smd" snap activity ACT_VM_PRIMARYATTACK 1 fps 20.00 {
  { event 5001 0 "1" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_762Nato 2 150" }
}
$sequence ak47_draw "ak47_draw_mirrored_merged.smd" snap activity ACT_VM_DRAW 1 fps 30.00 {
  { event 5004 11 "Weapon_AK47.BoltPull" }
}
$sequence ak47_reload "ak47_reload_mirrored_merged.smd" snap activity ACT_VM_RELOAD 1 fps 37.00 {
  { event 5004 13 "Weapon_AK47.Clipout" }
  { event 5004 57 "Weapon_AK47.Clipin" }
}
