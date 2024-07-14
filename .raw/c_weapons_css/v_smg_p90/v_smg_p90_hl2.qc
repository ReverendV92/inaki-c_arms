$modelname "weapons\v_smg_p90.mdl"
$cdmaterials "models\weapons\V_models\smg_p90\"

$include ".\..\_css_hl2skeleton_renamebones_mirrored.qci"
$include ".\..\_css_hl2skeleton_definebones.qci"

$scale 1.33333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333

$definebone "v_weapon.p90_Parent" "ValveBiped.Bip01_Spine2" -2.589499 -15.492606 1.664235 0.000000 179.999980 90.000038 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "v_weapon.p90_Clip" "v_weapon.p90_Parent" -2.589499 -12.871007 5.297306 0.000000 179.999980 90.000038 0.000000 0.000000 -0.000001 -0.000000 0.000000 0.000000
$definebone "v_weapon.p90_Trigger" "v_weapon.p90_Parent" -2.589499 -16.240227 3.660698 0.000000 179.999980 90.000038 0.000000 0.000000 0.000002 -0.000000 0.000000 0.000000
$definebone "v_weapon.p90_Release" "v_weapon.p90_Parent" -2.589499 -11.556944 5.297306 0.000000 179.999980 90.000038 0.000000 0.000000 -0.000001 -0.000000 0.000000 0.000000

$body "studio" "p90_mirrored_ref.smd"

$attachment "1" "v_weapon.p90_Parent" 0.00 3.00 -9.50 rotate 0.00 180.00 180.00
$attachment "2" "v_weapon.p90_Parent" 0.00 -0.00 2.20 rotate 200.00 30.00 130.00

$sequence idle "idle_mirrored_merged" loop activity ACT_VM_IDLE 1 fps 30.00
$sequence reload "reload_mirrored_merged" snap activity ACT_VM_RELOAD 1 fps 40.00 {
  { event 5004 17 "Weapon_P90.Cliprelease" }
  { event 5004 35 "Weapon_P90.Clipout" }
  { event 5004 75 "Weapon_P90.Clipin" }
  { event 5004 108 "Weapon_P90.Boltpull" }
}
$sequence draw "draw_mirrored_merged" snap activity ACT_VM_DRAW 1 fps 30.00 {
  { event 5004 9 "Weapon_P90.Boltpull" }
}
$sequence shoot1 "shoot2_mirrored_merged" snap activity ACT_VM_PRIMARYATTACK 1 fps 30.00 {
  { event 5001 0 "1" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_57 2 100" }
}
$sequence shoot2 "shoot2_mirrored_merged" snap activity ACT_VM_PRIMARYATTACK 1 fps 30.00 {
  { event 5001 0 "1" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_57 2 100" }
}
$sequence shoot3 "shoot2_mirrored_merged" snap activity ACT_VM_PRIMARYATTACK 1 fps 30.00 {
  { event 5001 0 "1" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_57 2 100" }
}
