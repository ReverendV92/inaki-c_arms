$modelname "weapons\v_rif_sg552.mdl"
$cdmaterials "models\weapons\V_models\rif_sg552\"
$cdmaterials "models\weapons\v_models\snip_awp\"

$include ".\..\_css_hl2skeleton_renamebones_mirrored.qci"
$include ".\..\_css_hl2skeleton_definebones.qci"

$scale 1.33333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333

$definebone "v_weapon.sg552_Parent" "ValveBiped.Bip01_Spine2" 2.728443 2.083735 -16.681652 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "v_weapon.sg552_Trigger" "v_weapon.sg552_Parent" 0.000000 2.465867 -0.430113 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "v_weapon.sg552_Release" "v_weapon.sg552_Parent" 0.000000 1.617355 -1.684435 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000002 -0.000000 0.000000 0.000000
$definebone "v_weapon.sg552_Clip" "v_weapon.sg552_Parent" 0.000000 2.189178 -3.030987 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000002 -0.000000 0.000000 0.000000
$definebone "v_weapon.sg552_Chamber" "v_weapon.sg552_Parent" -0.073054 4.004260 -2.532948 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000

$body "studio" "sg552_mirrored_ref.smd"

$attachment "1" "v_weapon.sg552_Parent" 0.20 3.50 -17.00 rotate 0.00 180.00 180.00
$attachment "2" "v_weapon.sg552_Parent" 0.00 4.80 -4.60 rotate 175.00 348.00 -180.00

$sequence idle "idle_mirrored_merged" loop activity ACT_VM_IDLE 1 fps 30.00
$sequence reload "reload_mirrored_merged" snap activity ACT_VM_RELOAD 1 fps 37.00 {
  { event 5004 16 "Weapon_SG552.Clipout" }
  { event 5004 61 "Weapon_SG552.Clipin" }
  { event 5004 90 "Weapon_SG552.Boltpull" }
}
$sequence draw "draw_mirrored_merged" snap activity ACT_VM_DRAW 1 fps 37.00 {
  { event 5004 12 "Weapon_SG552.Boltpull" }
}
$sequence shoot1 "shoot1_mirrored_merged" snap activity ACT_VM_PRIMARYATTACK 1 fps 35.00 {
  { event 5001 0 "1" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_556 2 90" }
}
$sequence shoot2 "shoot2_mirrored_merged" snap activity ACT_VM_PRIMARYATTACK 1 fps 35.00 {
  { event 5001 0 "1" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_556 2 90" }
}
$sequence shoot3 "shoot3_mirrored_merged" snap activity ACT_VM_PRIMARYATTACK 1 fps 35.00 {
  { event 5001 0 "1" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_556 2 90" }
}
