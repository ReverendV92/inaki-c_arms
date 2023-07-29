$modelname "weapons\v_snip_awp.mdl"
$cdmaterials "models\weapons\v_models\snip_awp\"

$include ".\..\_css_hl2skeleton_renamebones_mirrored.qci"
$include ".\..\_css_hl2skeleton_definebones.qci"

$scale 1.33333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333

$definebone "v_weapon.awm_parent" "ValveBiped.Bip01_Spine2" -5.035346 -9.680325 -1.028232 0.000000 -177.751618 89.999983 0.000000 -0.000000 0.000000 -0.000000 0.000000 -0.000000
$definebone "v_weapon.awm_clip" "v_weapon.awm_parent" 0.000001 2.060852 -3.199940 -0.000000 0.000000 -0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 -0.000000
$definebone "v_weapon.awm_bolt_action" "v_weapon.awm_parent" 0.000000 3.466954 -1.176561 -0.000000 0.000000 -0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 -0.000000

$body "studio" "awm_mirrored_ref.smd"

$attachment "1" "v_weapon.awm_parent" 0.00 3.50 -28.00 rotate 0.00 180.00 180.00
$attachment "2" "v_weapon.awm_parent" -0.00 3.50 -4.20 rotate 200.00 0.00 180.00

$sequence awm_idle "awm_idle_mirrored_merged" loop activity ACT_VM_IDLE 1 fps 10.00
$sequence awm_fire "awm_fire_mirrored_merged" snap activity ACT_VM_PRIMARYATTACK 1 fps 30.00 {
  { event 5001 0 "1" }
  { event 5004 15 "Weapon_AWP.Bolt" }
  { event 5004 19 "Weapon_AWP.Bolt" }
  { event 5004 32 "Weapon_AWP.Bolt" }
  { event AE_CLIENT_EFFECT_ATTACH 26 "EjectBrass_338Mag 2 70" }
}
$sequence awm_draw "awm_draw_mirrored_merged" snap activity ACT_VM_DRAW 1 fps 30.00
$sequence awm_reload "awm_reload_mirrored_merged" snap activity ACT_VM_RELOAD 1 fps 30.00 {
  { event 5004 26 "Weapon_AWP.Clipout" }
  { event 5004 50 "Weapon_AWP.Clipin" }
  { event 5004 89 "Weapon_AWP.Bolt" }
}
