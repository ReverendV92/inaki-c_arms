$modelname "weapons\v_smg_mac10.mdl"
$cdmaterials "models\weapons\V_models\smg_mac10\"

$include ".\..\_css_hl2skeleton_renamebones_mirrored.qci"
$include ".\..\_css_hl2skeleton_definebones.qci"

$scale 1.33333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333

$definebone "v_weapon.mac10_parent" "ValveBiped.Bip01_Spine2" -2.311734 -16.902687 8.112211 7.635580 -175.064909 90.488717 -0.000000 -0.000001 0.000000 0.000000 0.000000 0.000000
$definebone "v_weapon.mac10_trigger" "v_weapon.mac10_parent" -0.044107 2.282363 -0.168411 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
$definebone "v_weapon.mac10_bolt" "v_weapon.mac10_parent" -0.064652 3.718757 -1.187635 0.000000 0.000000 0.000000 -0.000000 -0.000001 0.000000 0.000000 0.000000 0.000000
$definebone "v_weapon.mac10_clip" "v_weapon.mac10_parent" -0.022479 1.125086 1.170843 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000001 0.000000 0.000000 0.000000
$definebone "v_weapon.mac10_leather1" "v_weapon.mac10_parent" -0.071799 2.262531 -3.009708 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
$definebone "v_weapon.mac10_leather2" "v_weapon.mac10_leather1" -2.205386 -19.941500 9.781365 7.635580 -175.064909 90.488717 0.000000 0.000001 0.000000 0.000000 0.000000 0.000000
$definebone "v_weapon.mac10_leather3" "v_weapon.mac10_leather2" 0.005937 -0.824810 -0.012905 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
$definebone "v_weapon.mac10_leather4" "v_weapon.mac10_leather3" -2.020525 -19.976187 8.352937 7.635580 -175.064909 90.488717 0.000000 0.000000 -0.000002 0.000000 0.000000 0.000000

$body "studio" "mac10_mirrored_ref.smd"

$attachment "1" "v_weapon.mac10_parent" -0.00 3.00 -5.00 rotate -0.00 180.00 -180.00
$attachment "2" "v_weapon.mac10_parent" -0.00 3.50 -0.00 rotate 160.00 195.00 180.00

$sequence mac10_idle "mac10_idle_mirrored_merged" loop activity ACT_VM_IDLE 1 fps 12.00
$sequence mac10_reload "mac10_reload_mirrored_merged" snap activity ACT_VM_RELOAD 1 fps 35.00 {
  { event 5004 22 "Weapon_MAC10.Clipout" }
  { event 5004 55 "Weapon_MAC10.Clipin" }
  { event 5004 87 "Weapon_MAC10.Boltpull" }
}
$sequence mac10_fire "mac10_fire_mirrored_merged" snap activity ACT_VM_PRIMARYATTACK 1 fps 40.00 {
  { event 5001 0 "1" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 100" }
}
$sequence mac10_fire2 "mac10_fire2_mirrored_merged" snap activity ACT_VM_PRIMARYATTACK 1 fps 40.00 {
  { event 5001 0 "1" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 100" }
}
$sequence mac10_fire3 "mac10_fire3_mirrored_merged" snap activity ACT_VM_PRIMARYATTACK 1 fps 40.00 {
  { event 5001 0 "1" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 100" }
}
$sequence mac10_draw "mac10_draw_mirrored_merged" snap activity ACT_VM_DRAW 1 fps 30.00
