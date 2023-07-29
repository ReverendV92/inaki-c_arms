$modelname "weapons\v_pist_elite.mdl"
$cdmaterials "models\weapons\v_models\pist_elite\"

$include ".\..\_css_hl2skeleton_renamebones.qci"
$include ".\..\_css_hl2skeleton_definebones.qci"

$scale 1.33333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333


$definebone "v_weapon.elite_left" "ValveBiped.Bip01_Spine2" -10.312002 5.092628 -6.623701 3.116948 86.796576 96.724099 -0.000001 0.000000 0.000000 0.000001 -0.000001 0.000000
$definebone "v_weapon.magazine_left" "v_weapon.elite_left" -0.008990 -1.492955 0.024798 0.000001 -0.000001 0.000000 0.000000 0.000000 0.000000 0.000001 -0.000001 0.000000
$definebone "v_weapon.hammer_left" "v_weapon.elite_left" -0.008990 2.134305 -0.458182 0.000001 -0.000001 0.000000 0.000000 0.000000 0.000000 0.000001 -0.000001 0.000000
$definebone "v_weapon.trigger_left" "v_weapon.elite_left" 0.016115 1.079597 1.853016 0.000001 -0.000001 0.000000 0.000000 0.000000 0.000000 0.000001 -0.000001 0.000000
$definebone "v_weapon.slide_left" "v_weapon.elite_left" -0.008991 2.134305 4.311666 0.000001 -0.000001 0.000000 0.000000 0.000000 0.000000 0.000001 -0.000001 0.000000
//$definebone "v_weapon.muzzleflash_left" "v_weapon.elite_left" 0.032009 2.373557 6.028375 0.000001 -0.000001 0.000000 0.000000 0.000000 0.000000 0.000001 -0.000001 0.000000
//$definebone "v_weapon.shelleject_left" "v_weapon.elite_left" 0.009431 2.282212 2.543735 -0.000000 59.999975 0.000001 -0.000000 0.000000 0.000000 -0.000000 0.000000 0.000001


$definebone "v_weapon.elite_right" "ValveBiped.Bip01_Spine2" 0.962812 -4.523572 5.108355 81.522099 -172.850629 -170.374590 0.000000 -0.000000 0.000000 -0.000001 -0.000003 -0.000000
$definebone "v_weapon.magazine_right" "v_weapon.elite_right" -0.004071 -1.722445 -0.189043 -0.000001 -0.000003 -0.000000 0.000000 0.000000 0.000000 -0.000001 -0.000003 -0.000000
$definebone "v_weapon.hammer_right" "v_weapon.elite_right" -0.004072 1.904815 -0.672024 -0.000001 -0.000003 -0.000000 0.000000 0.000000 -0.000001 -0.000001 -0.000003 -0.000000
$definebone "v_weapon.trigger_right" "v_weapon.elite_right" -0.004072 0.790251 1.670745 -0.000001 -0.000003 -0.000000 0.000000 0.000000 -0.000001 -0.000001 -0.000003 -0.000000
$definebone "v_weapon.slide_right" "v_weapon.elite_right" -0.004072 1.904816 4.097825 -0.000001 -0.000003 -0.000000 0.000000 0.000000 -0.000001 -0.000001 -0.000003 -0.000000
//$definebone "v_weapon.muzzleflash_right" "v_weapon.elite_right" -0.002362 2.162465 5.854431 -0.000001 -0.000003 -0.000000 0.000000 0.000000 0.000000 -0.000001 -0.000003 -0.000000
//$definebone "v_weapon.shelleject_right" "v_weapon.elite_right" -0.123096 2.052722 2.190508 0.000001 119.999991 -0.000001 -0.000000 0.000000 0.000000 0.000001 -0.000002 -0.000001

$body "studio" "v_elite_ref.smd"

$attachment "1" "v_weapon.muzzleflash_right" -0.00 0.00 -0.00 rotate 0.00 -0.00 -0.00
$attachment "2" "v_weapon.muzzleflash_left" 0.00 0.00 0.00 rotate 0.00 -0.00 -0.00
$attachment "3" "v_weapon.shelleject_right" -0.00 0.00 -0.00 rotate 0.00 0.00 0.00
$attachment "4" "v_weapon.shelleject_left" -0.00 0.00 0.00 rotate 0.00 0.00 0.00

$sequence idle "idle_merged" loop activity ACT_VM_IDLE 1 fps 16.00
$sequence idle_leftempty "idle_leftempty_merged" loop activity ACT_VM_IDLE_EMPTY_LEFT 1 fps 16.00
$sequence shoot_left1 "shoot_left1_merged" snap activity ACT_VM_PRIMARYATTACK 1 fps 18.00 {
  { event 5001 1 "2" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 4 90" }
}
$sequence shoot_left2 "shoot_left2_merged" snap activity ACT_VM_PRIMARYATTACK 2 fps 18.00 {
  { event 5001 1 "2" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 4 90" }
}
$sequence shoot_leftlast "shoot_leftlast_merged" snap activity ACT_VM_DRYFIRE_LEFT 1 fps 18.00 {
  { event 5001 1 "2" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 4 90" }
}
$sequence shoot_right1 "shoot_right1_merged" snap activity ACT_VM_SECONDARYATTACK 1 fps 18.00 {
  { event 5001 1 "1" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 3 90" }
}
$sequence shoot_right2 "shoot_right2_merged" snap activity ACT_VM_SECONDARYATTACK 2 fps 18.00 {
  { event 5001 1 "1" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 3 90" }
}
$sequence shoot_rightlast "shoot_rightlast_merged" snap activity ACT_VM_DRYFIRE 1 fps 18.00 {
  { event 5001 1 "1" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 3 90" }
}
$sequence reload "reload_merged" snap activity ACT_VM_RELOAD 1 fps 25.00 {
  { event 5004 0 "Weapon_ELITE.Reloadstart" }
  { event 5004 12 "Weapon_ELITE.Clipout" }
  { event 5004 36 "Weapon_ELITE.Rclipin" }
  { event 5004 59 "Weapon_ELITE.Lclipin" }
  { event 5004 81 "Weapon_ELITE.Sliderelease" }
}
$sequence draw "draw_merged" snap activity ACT_VM_DRAW 1 fps 30.00 {
  { event 5004 1 "Weapon_ELITE.Deploy" }
}
