$modelname "weapons\v_smg_ump45.mdl"
$cdmaterials "models\weapons\V_models\smg_ump45\"

$include ".\..\_css_hl2skeleton_renamebones_mirrored.qci"
$include ".\..\_css_hl2skeleton_definebones.qci"

$scale 1.33333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333

$definebone "v_weapon.ump45_Parent" "ValveBiped.Bip01_Spine2" 2.955137 2.068424 -16.802582 -0.000000 0.000000 0.000000 0.000000 0.000000 -0.000002 -0.000000 0.000000 0.000000
$definebone "v_weapon.ump45_Trigger" "v_weapon.ump45_Parent" 0.117065 2.775321 -0.979109 -0.000000 0.000000 0.000000 0.000000 0.000000 -0.000002 -0.000000 0.000000 0.000000
$definebone "v_weapon.ump45_Release" "v_weapon.ump45_Parent" 0.101292 2.231411 -3.297770 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "v_weapon.ump45_Clip" "v_weapon.ump45_Parent" 0.134393 2.973696 -4.186611 -0.000000 0.000000 0.000000 0.000000 0.000000 -0.000002 -0.000000 0.000000 0.000000
$definebone "v_weapon.ump45_Eject" "v_weapon.ump45_Parent" 0.185319 4.312195 -2.721334 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "v_weapon.ump45_Bolt" "v_weapon.ump45_Parent" 0.228666 5.111710 -8.660244 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000

$body "studio" "ump45_mirrored_ref.smd"

$attachment "1" "v_weapon.ump45_Parent" 0.00 4.30 -14.00 rotate 180.00 180.00 180.00
$attachment "2" "v_weapon.ump45_Parent" 0.00 4.50 -4.00 rotate 168.00 345.00 -180.00

$sequence idle1 "idle1_mirrored_merged" loop activity ACT_VM_IDLE 1 fps 12.00
$sequence reload "reload_mirrored_merged" snap activity ACT_VM_RELOAD 1 fps 33.00 {
  { event 5004 23 "Weapon_UMP45.Clipout" }
  { event 5004 59 "Weapon_UMP45.Clipin" }
  { event 5004 86 "Weapon_UMP45.Boltslap" }
}
$sequence draw "draw_mirrored_merged" snap activity ACT_VM_DRAW 1 fps 25.00
$sequence shoot1 "shoot1_mirrored_merged" snap activity ACT_VM_PRIMARYATTACK 1 fps 32.00 {
  { event 5001 0 "1" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 100" }
}
$sequence shoot2 "shoot2_mirrored_merged" snap activity ACT_VM_PRIMARYATTACK 1 fps 32.00 {
  { event 5001 0 "1" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 100" }
}
$sequence shoot3 "shoot3_mirrored_merged" snap activity ACT_VM_PRIMARYATTACK 1 fps 32.00 {
  { event 5001 0 "1" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 100" }
}
