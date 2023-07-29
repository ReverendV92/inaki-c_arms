$modelname "weapons\v_pist_fiveseven.mdl"
$cdmaterials "models\weapons\V_models\pist_fiveseven\"

$include ".\..\_css_hl2skeleton_renamebones_mirrored.qci"
$include ".\..\_css_hl2skeleton_definebones.qci"

$scale 1.33333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333

$definebone "v_weapon.FIVESEVEN_PARENT" "ValveBiped.Bip01_Spine2" -2.925139 -14.530878 3.221168 0.000000 179.999980 90.000038 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "v_weapon.FIVESEVEN_TRIGGER" "v_weapon.FIVESEVEN_PARENT" 0.000000 1.423862 -2.892688 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "v_weapon.FIVESEVEN_CLIP" "v_weapon.FIVESEVEN_PARENT" 0.000000 1.049161 -1.378898 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "v_weapon.FIVESEVEN_SLIDE" "v_weapon.FIVESEVEN_PARENT" -2.925139 -15.610015 5.514334 0.000000 179.999980 -179.999980 0.000000 0.000000 0.000000 -0.000000 0.000000 -0.000000

$body "studio" "fiveseven_mirrored_ref.smd"

$hboxset "Iñaki"

$attachment "1" "v_weapon.FIVESEVEN_PARENT" 0.00 2.20 -7.50 rotate 0.00 180.00 180.00
$attachment "2" "v_weapon.FIVESEVEN_PARENT" 0.00 2.40 -2.40 rotate 0.00 140.00 180.00

$sequence idle "idle_mirrored_merged" loop activity ACT_VM_IDLE 1 fps 16.00
$sequence shoot1 "shoot1_mirrored_merged" snap activity ACT_VM_PRIMARYATTACK 1 fps 36.00 {
  { event 5001 0 "1" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_57 2 100" }
}
$sequence shoot2 "shoot2_mirrored_merged" snap activity ACT_VM_PRIMARYATTACK 1 fps 36.00 {
  { event 5001 0 "1" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_57 2 100" }
}
$sequence shoot_empty "shoot_empty_mirrored_merged" snap activity ACT_VM_DRYFIRE 1 fps 36.00 {
  { event 5001 0 "11" }
}
$sequence reload "reload_mirrored_merged" snap activity ACT_VM_RELOAD 1 fps 30.00 {
  { event 5004 0 "Weapon_FiveSeven.Slideback" }
  { event 5004 15 "Weapon_FiveSeven.Clipout" }
  { event 5004 41 "Weapon_FiveSeven.Clipin" }
  { event 5004 75 "Weapon_FiveSeven.Sliderelease" }
}
$sequence draw "draw_mirrored_merged" snap activity ACT_VM_DRAW 1 fps 30.00 {
  { event 5004 13 "Weapon_FiveSeven.Slidepull" }
}
