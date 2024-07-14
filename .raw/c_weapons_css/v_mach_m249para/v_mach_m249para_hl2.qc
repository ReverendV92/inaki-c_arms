$modelname "weapons\v_mach_m249para.mdl"
$cdmaterials "models\weapons\V_models\mach_m249para\"

$include ".\..\_css_hl2skeleton_renamebones.qci"
$include ".\..\_css_hl2skeleton_definebones.qci"

$scale 1.33333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333

$definebone "v_weapon.m249" "ValveBiped.Bip01_Spine2" -7.700242 -5.751358 -3.515126 81.522099 -172.850588 -170.374590 0.000000 0.000000 0.000000 0.000001 -0.000003 -0.000000
$definebone "v_weapon.trigger" "v_weapon.m249" 0.056707 -1.395789 2.675755 0.000001 -0.000003 -0.000000 -0.000000 0.000000 0.000000 0.000001 -0.000003 -0.000000
$definebone "v_weapon.receiver" "v_weapon.m249" 0.022371 1.787714 6.744241 -89.999983 89.999976 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000001 -0.000003
$definebone "v_weapon.handle" "v_weapon.m249" 0.090652 1.015074 7.992082 0.000001 -0.000003 89.999983 -0.000000 0.000000 0.000000 -0.000003 -0.000001 0.000000
$definebone "v_weapon.ammobox" "v_weapon.m249" 0.056707 -3.400000 5.216804 0.000001 -0.000003 -0.000000 0.000000 0.000000 0.000000 0.000001 -0.000003 -0.000000
$definebone "v_weapon.bullet1" "v_weapon.ammobox" 1.709456 2.443064 0.120831 0.000001 -0.000003 89.999983 0.000000 0.000000 0.000000 -0.000003 -0.000001 0.000000
$definebone "v_weapon.bullet2" "v_weapon.bullet1" -0.089176 0.000000 -0.317625 -0.000003 -0.000001 0.000000 0.000000 0.000000 0.000000 -0.000003 -0.000001 0.000000
$definebone "v_weapon.bullet3" "v_weapon.bullet2" -0.269703 0.000000 -0.184916 -0.000003 -0.000001 0.000000 0.000000 0.000000 0.000000 -0.000003 -0.000001 0.000000
$definebone "v_weapon.bullet4" "v_weapon.bullet3" -0.215328 0.000000 -0.252358 -0.000003 -0.000001 0.000000 0.000000 -0.000000 0.000000 -0.000003 -0.000001 0.000000
$definebone "v_weapon.bullet5" "v_weapon.bullet4" -0.069601 0.000000 -0.324150 -0.000003 -0.000001 0.000000 -0.000000 0.000000 0.000000 -0.000003 -0.000001 0.000000
$definebone "v_weapon.bullet6" "v_weapon.bullet5" -0.030450 0.000000 -0.337203 -0.000003 -0.000001 0.000000 0.000000 -0.000000 0.000000 -0.000003 -0.000001 0.000000
$definebone "v_weapon.bullet7" "v_weapon.bullet6" -0.015225 0.000000 -0.330676 -0.000003 -0.000001 0.000000 0.000000 0.000000 0.000000 -0.000003 -0.000001 0.000000
$definebone "v_weapon.bullet8" "v_weapon.bullet7" -0.026100 0.000000 -0.328501 -0.000003 -0.000001 0.000000 0.000000 -0.000000 0.000000 -0.000003 -0.000001 0.000000
$definebone "v_weapon.bullet9" "v_weapon.bullet8" -0.150077 0.000000 -0.300219 -0.000003 -0.000001 0.000000 0.000000 0.000000 0.000000 -0.000003 -0.000001 0.000000
$definebone "v_weapon.bullet10" "v_weapon.bullet9" -0.332779 0.000000 -0.067441 -0.000003 -0.000001 0.000000 -0.000000 0.000000 0.000000 -0.000003 -0.000001 0.000000
/*
$definebone "v_weapon.attachment2" "v_weapon.m249" -1.591176 1.371838 6.712955 0.000001 -0.000003 -0.000000 0.000000 0.000000 0.000000 0.000001 -0.000003 -0.000000
$definebone "v_weapon.attachment1" "v_weapon.m249" 0.056707 1.028998 23.229542 0.000001 -0.000003 -0.000000 -0.000000 0.000000 0.000000 0.000001 -0.000003 -0.000000
*/

$body "studio" "v_m249_ref.smd"

$attachment "1" "v_weapon.attachment1" -0.00 -0.00 -0.00 rotate 0.00 -0.00 -0.00
$attachment "2" "v_weapon.attachment2" -0.00 0.00 -0.00 rotate 0.00 -0.00 -0.00

$sequence idle1 "idle1_merged" loop ACT_VM_IDLE 1 fps 30.00
$sequence shoot1 "shoot1_merged" snap activity ACT_VM_PRIMARYATTACK 1 fps 38.00 {
  { event 5001 0 "1" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_556 2 90" }
}
$sequence shoot2 "shoot2_merged" snap activity ACT_VM_PRIMARYATTACK 1 fps 35.00 {
  { event 5001 0 "1" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_556 2 105" }
}
$sequence reload "reload_merged" snap activity ACT_VM_RELOAD 1 fps 30.00 {
  { event 5004 14 "Weapon_M249.Boxout" }
  { event 5004 45 "Weapon_M249.Coverup" }
  { event 5004 80 "Weapon_M249.Boxin" }
  { event 5004 99 "Weapon_M249.Chain" }
  { event 5004 135 "Weapon_M249.Coverdown" }
}
$sequence draw "draw_merged" snap activity ACT_VM_DRAW 1 fps 25.00
