$modelname "weapons\v_pist_p228.mdl"
$cdmaterials "models\weapons\V_models\pist_p228\"

$include ".\..\_css_hl2skeleton_renamebones_mirrored.qci"
$include ".\..\_css_hl2skeleton_definebones.qci"

$scale 1.33333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333

$definebone "v_weapon.p228_Parent" "ValveBiped.Bip01_Spine2" -2.705393 -16.588713 2.279943 0.000000 179.999980 90.000038 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "v_weapon.p228_Clip" "v_weapon.p228_Parent" -2.730330 -15.711340 4.016057 0.000000 179.999980 90.000038 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "v_weapon.p228_Trigger" "v_weapon.p228_Parent" -2.705393 -17.146511 4.176460 0.000000 179.999980 90.000038 0.000000 0.000000 0.000002 -0.000000 0.000000 0.000000
$definebone "v_weapon.p228_Hammer" "v_weapon.p228_Parent" -2.705393 -15.045467 4.641293 0.000000 179.999980 90.000038 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "v_weapon.p228_Slide" "v_weapon.p228_Parent" -2.705393 -15.528893 5.199091 0.000000 179.999980 90.000038 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000

$body "studio" "p228_mirrored_ref.smd"

$attachment "1" "v_weapon.p228_Parent" 0.00 3.00 -4.20 rotate 0.00 180.00 180.00
$attachment "2" "v_weapon.p228_Parent" 0.00 3.10 -1.00 rotate 170.00 -0.00 180.00

$sequence idle "idle_mirrored_merged" loop activity ACT_VM_IDLE 1 fps 16.00
$sequence shoot1 "shoot1_mirrored_merged" snap activity ACT_VM_PRIMARYATTACK 1 fps 34.00 {
  { event 5001 1 "1" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 100" }
}
$sequence shoot2 "shoot2_mirrored_merged" snap activity ACT_VM_PRIMARYATTACK 1 fps 34.00 {
  { event 5001 1 "1" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 100" }
}
$sequence shoot3 "shoot3_mirrored_merged" snap activity ACT_VM_PRIMARYATTACK 1 fps 34.00 {
  { event 5001 1 "1" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 100" }
}
$sequence shoot_empty "shoot_empty_mirrored_merged" snap activity ACT_VM_DRYFIRE 1 fps 34.00 {
  { event 5001 0 "11" }
}
$sequence reload "reload_mirrored_merged" snap activity ACT_VM_RELOAD 1 fps 35.00 {
  { event 5004 0 "Weapon_P228.Slideback" }
  { event 5004 24 "Weapon_P228.Clipout" }
  { event 5004 49 "Weapon_P228.Clipin" }
  { event 5004 81 "Weapon_P228.Sliderelease" }
}
$sequence draw "draw_mirrored_merged" snap activity ACT_VM_DRAW 1 fps 30.00 {
  { event 5004 15 "Weapon_P228.Slidepull" }
}
