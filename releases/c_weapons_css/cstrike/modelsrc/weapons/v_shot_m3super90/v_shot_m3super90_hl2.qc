$modelname "weapons\v_shot_m3super90.mdl"
$cdmaterials "models\weapons\V_models\shot_m3super90\"

$include ".\..\_css_hl2skeleton_renamebones_mirrored.qci"
$include ".\..\_css_hl2skeleton_definebones.qci"

$scale 1.33333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333

$definebone "v_weapon.M3_PARENT" "ValveBiped.Bip01_Spine2" 2.724713 2.405631 -16.455919 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "v_weapon.M3_SHELL" "v_weapon.M3_PARENT" 0.004671 -1.948978 8.116230 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "v_weapon.M3_TRIGGER" "v_weapon.M3_PARENT" -0.000000 2.280415 -0.889580 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "v_weapon.M3_LOADER" "v_weapon.M3_PARENT" 0.000000 2.199520 -2.804167 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "v_weapon.M3_CHAMBER" "v_weapon.M3_PARENT" -0.000000 3.197261 -2.938997 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "v_weapon.M3_PUMP" "v_weapon.M3_PARENT" -0.000001 2.455696 -8.129936 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000

$body "studio" "m3_mirrored_ref.smd"

$attachment "1" "v_weapon.M3_PARENT" 0.00 3.00 -18.00 rotate 0.00 180.00 180.00
$attachment "2" "v_weapon.M3_PARENT" -0.50 3.50 -5.00 rotate 145.00 0.00 180.00

$sequence idle "idle_mirrored_merged" loop activity ACT_VM_IDLE 1 fps 12.00
$sequence shoot1 "shoot1_mirrored_merged" snap activity ACT_VM_PRIMARYATTACK 1 fps 32.00 {
  { event 5001 0 "1" }
  { event AE_CLIENT_EFFECT_ATTACH 22 "EjectBrass_12Gauge 2 70" }
  { event 5001 0 "1" }
}
$sequence shoot2 "shoot2_mirrored_merged" snap activity ACT_VM_PRIMARYATTACK 1 fps 37.00 {
  { event 5001 0 "1" }
  { event AE_CLIENT_EFFECT_ATTACH 23 "EjectBrass_12Gauge 2 70" }
  { event 5001 0 "1" }
}
$sequence insert "insert_mirrored_merged" loop snap activity ACT_VM_RELOAD 1 fps 55.00 {
  { event 5004 0 "Weapon_M3.Insertshell" }
}
$sequence after_reload "after_reload_mirrored_merged" snap activity ACT_SHOTGUN_RELOAD_FINISH 1 fps 40.00 {
  { event 5004 12 "Weapon_M3.Pump" }
}
$sequence start_reload "start_reload_mirrored_merged" snap activity ACT_SHOTGUN_RELOAD_START 1 fps 40.00
$sequence draw "draw_mirrored_merged" snap activity ACT_VM_DRAW 1 fps 30.00 {
  { event 5004 11 "Weapon_M3.Pump" }
}
