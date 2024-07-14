$modelname "weapons\v_snip_scout.mdl"
$cdmaterials "models\weapons\V_models\snip_scout\"
$cdmaterials "models\weapons\v_models\snip_awp\"

$include ".\..\_css_hl2skeleton_renamebones_mirrored.qci"
$include ".\..\_css_hl2skeleton_definebones.qci"

$scale 1.33333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333

$definebone "v_weapon.scout_Parent" "ValveBiped.Bip01_Spine2" 2.604639 2.694102 -15.079121 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "v_weapon.scout__BoltBase" "v_weapon.scout_Parent" 0.000000 2.821310 -0.903516 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "v_weapon.scout_Bolt" "v_weapon.scout_Parent" 0.000000 2.821310 -1.648315 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "v_weapon.scout_Clip" "v_weapon.scout_Parent" 0.000000 1.065705 -4.379257 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000002 -0.000000 0.000000 0.000000

$body "studio" "scout_mirrored_ref.smd"

$attachment "1" "v_weapon.scout_Parent" 0.00 2.45 -21.00 rotate 0.00 180.00 180.00
$attachment "2" "v_weapon.scout_Parent" 0.00 2.85 -4.00 rotate 200.00 0.00 180.00

$sequence idle1 "idle1_mirrored_merged" loop activity ACT_VM_IDLE 1 fps 16.00
$sequence shoot "shoot_mirrored_merged" snap activity ACT_VM_PRIMARYATTACK 1 fps 35.00 {
  { event 5001 0 "1" }
  { event 5004 13 "Weapon_Scout.Bolt" }
  { event AE_CLIENT_EFFECT_ATTACH 20 "EjectBrass_762Nato 2 40" }
}
$sequence reload "reload_mirrored_merged" snap activity ACT_VM_RELOAD 1 fps 30.00 {
  { event 5004 13 "Weapon_Scout.Clipout" }
  { event 5004 37 "Weapon_Scout.Clipin" }
  { event 5004 52 "Weapon_Scout.Bolt" }
}
$sequence draw "draw_mirrored_merged" snap activity ACT_VM_DRAW 1 fps 30.00
