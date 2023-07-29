$modelname "weapons\v_snip_g3sg1.mdl"
$cdmaterials "models\weapons\V_models\snip_g3sg1\"
$cdmaterials "models\weapons\v_models\snip_awp\"

$include ".\..\_css_hl2skeleton_renamebones_mirrored.qci"
$include ".\..\_css_hl2skeleton_definebones.qci"

$scale 1.33333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333

$definebone "v_weapon.g3sg1_Parent" "ValveBiped.Bip01_Spine2" 2.670029 2.044671 -16.304064 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "v_weapon.g3sg1_Trigger" "v_weapon.g3sg1_Parent" 0.000000 2.115426 -1.163485 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000002 -0.000000 0.000000 0.000000
$definebone "v_weapon.g3sg1_Release" "v_weapon.g3sg1_Parent" 0.000000 2.054984 -3.022036 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000002 -0.000000 0.000000 0.000000
$definebone "v_weapon.g3sg1_Clip" "v_weapon.g3sg1_Parent" 0.000000 2.190977 -4.366840 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000002 -0.000000 0.000000 0.000000

$body "studio" "g3sg1_mirrored_ref.smd"

$attachment "1" "v_weapon.g3sg1_Parent" 0.00 3.70 -21.00 rotate 0.00 180.00 180.00
$attachment "2" "v_weapon.g3sg1_Parent" 0.00 3.50 -4.50 rotate 180.00 0.00 180.00

$sequence idle1 "idle1_mirrored_merged" loop activity ACT_VM_IDLE 1 fps 16.00
$sequence shoot "shoot_mirrored_merged" snap activity ACT_VM_PRIMARYATTACK 1 fps 30.00 {
  { event 5001 0 "1" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_762Nato 2 90" }
}
$sequence shoot2 "shoot2_mirrored_merged" snap activity ACT_VM_PRIMARYATTACK 2 fps 30.00 {
  { event 5001 0 "1" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_762Nato 2 90" }
}
$sequence reload "reload_mirrored_merged" snap activity ACT_VM_RELOAD 1 fps 30.00 {
  { event 5004 16 "Weapon_G3SG1.Slide" }
  { event 5004 54 "Weapon_G3SG1.Clipout" }
  { event 5004 85 "Weapon_G3SG1.Clipin" }
  { event 5004 116 "Weapon_G3SG1.Slide" }
}
$sequence draw "draw_mirrored_merged" snap activity ACT_VM_DRAW 1 fps 30.00
