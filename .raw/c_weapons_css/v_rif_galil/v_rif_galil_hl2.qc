$modelname "weapons\v_rif_galil.mdl"
$cdmaterials "models\weapons\v_models\rif_galil\"

$include ".\..\_css_hl2skeleton_renamebones.qci"
$include ".\..\_css_hl2skeleton_definebones.qci"

$scale 1.33333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333

$definebone "v_weapon.galil" "ValveBiped.Bip01_Spine2" -7.692219 -5.557733 -3.519905 81.522099 -172.850588 -170.374590 0.000000 0.000000 0.000000 0.000001 -0.000003 -0.000000

$definebone "v_weapon.trigger" "v_weapon.galil" 0.056707 -1.326842 0.675817 0.000001 -0.000003 -0.000000 -0.000000 0.000000 0.000000 0.000001 -0.000003 -0.000000
$definebone "v_weapon.latch" "v_weapon.galil" 0.056707 -1.800653 2.445950 0.000001 -0.000003 -0.000000 0.000000 0.000000 0.000000 0.000001 -0.000003 -0.000000
$definebone "v_weapon.magazine" "v_weapon.galil" 0.056707 -1.016898 4.017104 0.000001 -0.000003 -0.000000 -0.000000 0.000000 0.000000 0.000001 -0.000003 -0.000000
$definebone "v_weapon.handle" "v_weapon.galil" 0.496224 0.901149 7.091095 0.000001 -0.000003 89.999983 0.000000 0.000000 0.000000 -0.000003 -0.000001 0.000000
$definebone "v_weapon.bolt" "v_weapon.galil" 0.654042 1.213004 5.896589 0.000001 -0.000003 -0.000000 0.000000 0.000000 0.000000 0.000001 -0.000003 -0.000000
//$definebone "v_weapon.attachment1" "v_weapon.galil" -0.000000 -6.476742 25.618650 0.000001 -0.000003 -0.000000 0.000000 0.000000 0.000000 0.000001 -0.000003 -0.000000
//$definebone "v_weapon.attachment2" "v_weapon.galil" -0.000000 -6.476742 25.618650 -0.000001 -179.999980 0.000000 0.000000 0.000000 0.000000 -0.000001 -0.000003 0.000000

$body "studio" "v_galil_ref.smd"

$attachment "1" "v_weapon.attachment1" 0.00 -0.00 -0.00 rotate 0.00 -0.00 -0.00
$attachment "2" "v_weapon.attachment2" 0.00 -0.00 0.00 rotate -0.00 -0.00 0.00

$sequence idle "idle_merged" loop activity ACT_VM_IDLE 1 fps 30.00
$sequence reload "reload_merged" snap activity ACT_VM_RELOAD 1 fps 42.00 {
  { event 5004 16 "Weapon_Galil.Clipout" }
  { event 5004 55 "Weapon_Galil.Clipin" }
  { event 5004 91 "Weapon_Galil.Boltpull" }
}
$sequence draw "draw_merged" snap activity ACT_VM_DRAW 1 fps 32.00
$sequence shoot1 "shoot1_merged" snap activity ACT_VM_PRIMARYATTACK 1 fps 35.00 {
  { event 5001 0 "1" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_556 2 75" }
}
$sequence shoot2 "shoot2_merged" snap activity ACT_VM_PRIMARYATTACK 1 fps 35.00 {
  { event 5001 0 "1" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_556 2 100" }
}
$sequence shoot3 "shoot3_merged" snap activity ACT_VM_PRIMARYATTACK 1 fps 35.00 {
  { event 5001 0 "1" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_556 2 115" }
}
