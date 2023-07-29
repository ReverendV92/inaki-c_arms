$modelname "weapons\v_snip_sg550.mdl"
$cdmaterials "models\weapons\V_models\snip_sg550\"
$cdmaterials "models\weapons\v_models\snip_awp\"

$include ".\..\_css_hl2skeleton_renamebones_mirrored.qci"
$include ".\..\_css_hl2skeleton_definebones.qci"

$scale 1.33333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333

$definebone "v_weapon.sg550_Parent" "ValveBiped.Bip01_Spine2" -1.660082 0.399838 -0.741126 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "v_weapon.sg550_Trigger" "v_weapon.sg550_Parent" 0.000000 2.447988 -0.570270 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "v_weapon.sg550_Release" "v_weapon.sg550_Parent" 0.000000 1.780356 -2.114163 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "v_weapon.sg550_Clip" "v_weapon.sg550_Parent" 0.000000 2.893072 -3.449421 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "v_weapon.sg550_Chamber" "v_weapon.sg550_Parent" 0.000000 4.492602 -1.822074 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000

$body "studio" "sg550_mirrored_ref.smd"

$attachment "1" "v_weapon.sg550_Parent" 0.30 3.50 -31.00 rotate 0.00 180.00 180.00
$attachment "2" "v_weapon.sg550_Parent" -0.20 4.10 -4.10 rotate 180.00 0.00 180.00

$sequence idle1 "idle1_mirrored_merged" loop activity ACT_VM_IDLE 1 fps 16.00
$sequence shoot "shoot_mirrored_merged" snap activity ACT_VM_PRIMARYATTACK 1 fps 45.00 {
  { event 5001 0 "1" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_556 2 85" }
}
$sequence shoot2 "shoot2_mirrored_merged" snap activity ACT_VM_PRIMARYATTACK 1 fps 45.00 {
  { event 5001 0 "1" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass­556 2 80" }
}
$sequence reload "reload_mirrored_merged" snap activity ACT_VM_RELOAD 1 fps 28.00 {
  { event 5004 22 "Weapon_SG550.Clipout" }
  { event 5004 46 "Weapon_SG550.Clipin" }
  { event 5004 82 "Weapon_SG550.Boltpull" }
}
$sequence draw "draw_mirrored_merged" snap activity ACT_VM_DRAW 1 fps 30.00
