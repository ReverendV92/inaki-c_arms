$modelname "weapons\v_rif_famas.mdl"
$cdmaterials "models\weapons\v_models\rif_famas\"

$include ".\..\_css_hl2skeleton_renamebones.qci"
$include ".\..\_css_hl2skeleton_definebones.qci"

$scale 1.33333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333

$definebone "v_weapon.famas" "ValveBiped.Bip01_Spine2" -7.700243 -5.751358 -3.515125 81.522099 -172.850698 -170.374467 0.000000 0.000000 0.000000 -0.000000 0.000006 -0.000002
//$definebone "v_weapon.famas1" "v_weapon.famas" 0.056708 0.562303 22.239389 -0.000000 0.000006 -0.000002 0.000000 0.000000 0.000000 -0.000000 0.000006 -0.000002
//$definebone "v_weapon.famas2" "v_weapon.famas" -0.519818 1.171996 10.850005 -0.000000 0.000006 -0.000002 0.000000 -0.000000 0.000000 -0.000000 0.000006 -0.000002
$definebone "v_weapon.magazine" "v_weapon.famas" 0.056707 -3.134738 4.779715 -0.000000 0.000006 -0.000002 0.000000 0.000000 0.000000 -0.000000 0.000006 -0.000002
$definebone "v_weapon.trigger" "v_weapon.famas" 0.056707 -0.601114 10.605145 -0.000000 0.000006 -0.000002 -0.000000 0.000000 0.000000 -0.000000 0.000006 -0.000002
$definebone "v_weapon.bolt" "v_weapon.famas" 0.056707 1.641035 12.442394 -0.000000 0.000006 -0.000002 0.000000 0.000000 0.000000 -0.000000 0.000006 -0.000002

$body "studio" "v_famas_ref.smd"

$attachment "1" "v_weapon.famas1" -0.00 0.00 0.00 rotate 0.00 0.00 -0.00
$attachment "2" "v_weapon.famas2" -0.00 0.00 0.00 rotate 0.00 0.00 -0.00

$sequence idle "idle_merged" loop activity ACT_VM_IDLE 1 fps 30.00
$sequence reload "reload_merged" snap activity ACT_VM_RELOAD 1 fps 27.00 {
  { event 5004 14 "Weapon_FAMAS.Clipout" }
  { event 5004 40 "Weapon_FAMAS.Clipin" }
  { event 5004 63 "Weapon_FAMAS.Forearm" }
}
$sequence draw "draw_merged" snap activity ACT_VM_DRAW 1 fps 30.00
$sequence shoot1 "shoot1_merged" snap activity ACT_VM_PRIMARYATTACK 1 fps 35.00 {
  { event 5001 0 "1" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_556 2 130" }
}
$sequence shoot2 "shoot2_merged" snap activity ACT_VM_PRIMARYATTACK 1 fps 35.00 {
  { event 5001 0 "1" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_556 2 125" }
}
$sequence shoot3 "shoot3_merged" snap activity ACT_VM_PRIMARYATTACK 1 fps 35.00 {
  { event 5001 0 "1" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_556 2 155" }
}
