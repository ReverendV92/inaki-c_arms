$modelname "weapons\v_smg_mp5.mdl"
$cdmaterials "models\weapons\V_models\smg_mp5\"

$include ".\..\_css_hl2skeleton_renamebones_mirrored.qci"
$include ".\..\_css_hl2skeleton_definebones.qci"

$scale 1.33333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333

$definebone "v_weapon.MP5_Parent" "ValveBiped.Bip01_Spine2" 2.158390 -4.251608 1.785025 3.198251 86.857707 99.289416 0.000000 0.000000 0.000000 -0.000003 0.000000 -0.000001
$definebone "v_weapon.MP5_Clip" "v_weapon.MP5_Parent" 0.021119 1.535271 5.547589 -0.000003 0.000000 -0.000001 0.000000 -0.000000 0.000002 -0.000003 0.000000 -0.000001
$definebone "v_weapon.MP5_Bolt" "v_weapon.MP5_Parent" 0.021120 3.809487 9.375476 -0.000003 0.000000 -0.000001 0.000000 -0.000000 0.000002 -0.000003 0.000000 -0.000001
$definebone "v_weapon.MP5_ClipRelease" "v_weapon.MP5_Parent" 0.021120 0.994864 4.827046 -0.000003 0.000000 -0.000001 0.000000 -0.000000 0.000002 -0.000003 0.000000 -0.000001
$definebone "v_weapon.MP5_Trigger" "v_weapon.MP5_Parent" 0.021119 1.084930 2.845551 -0.000003 0.000000 -0.000001 0.000000 -0.000000 0.000002 -0.000003 0.000000 -0.000001

$body "studio" "mp5_mirrored_ref.smd"

$attachment "1" "v_weapon.MP5_Parent" 0.10 3.00 13.50 rotate 0.00 0.00 -0.00
$attachment "2" "v_weapon.MP5_Parent" -0.00 3.50 4.50 rotate 0.00 0.00 -0.00

$sequence idle "idle_mirrored_merged" loop activity ACT_VM_IDLE 1 fps 12.00
$sequence reload1 "reload1_mirrored_merged" snap activity ACT_VM_RELOAD 1 fps 38.00 {
  { event 5004 12 "Weapon_MP5Navy.Clipout" }
  { event 5004 44 "Weapon_MP5Navy.Clipin" }
  { event 5004 86 "Weapon_MP5Navy.Slideback" }
}
$sequence draw "draw_mirrored_merged" snap activity ACT_VM_DRAW 1 fps 35.00 {
  { event 5004 13 "Weapon_MP5Navy.Slideback" }
}
$sequence shoot1 "shoot1_mirrored_merged" snap activity ACT_VM_PRIMARYATTACK 1 fps 30.00 {
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 100" }
  { event 5001 0 "1" }
}
$sequence shoot2 "shoot2_mirrored_merged" snap activity ACT_VM_PRIMARYATTACK 1 fps 30.00 {
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 100" }
  { event 5001 0 "1" }
}
$sequence shoot3 "shoot3_mirrored_merged" snap activity ACT_VM_PRIMARYATTACK 1 fps 30.00 {
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 100" }
  { event 5001 0 "1" }
}
