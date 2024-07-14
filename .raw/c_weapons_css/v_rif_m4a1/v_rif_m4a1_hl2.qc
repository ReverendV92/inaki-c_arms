$modelname "weapons\v_rif_m4a1.mdl"
$cdmaterials "models\weapons\V_models\rif_m4a1\"

$include ".\..\_css_hl2skeleton_renamebones_mirrored.qci"
$include ".\..\_css_hl2skeleton_definebones.qci"

$scale 1.33333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333

$definebone "v_weapon.m4_Parent" "ValveBiped.Bip01_Spine2" -2.546008 -16.301992 2.134703 0.000000 179.999980 90.000038 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "v_weapon.cube_Trigger" "v_weapon.m4_Parent" 0.274872 2.055756 -0.833790 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000002 -0.000000 0.000000 0.000000
$definebone "v_weapon.m4_Eject" "v_weapon.m4_Parent" -0.181002 3.378277 -2.463675 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "v_weapon.m4_Clip" "v_weapon.m4_Parent" 0.154154 1.616310 -2.896692 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000002 -0.000000 0.000000 0.000000
$definebone "v_weapon.m4_Silencer" "v_weapon.m4_Parent" 0.120835 3.516953 -15.092905 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000

$body "studio" "m4a1_mirrored_ref.smd"

$attachment "1" "v_weapon.m4_Parent" 0.20 3.50 -20.00 rotate 0.00 180.00 180.00
$attachment "2" "v_weapon.m4_Parent" 0.00 3.60 -3.00 rotate 150.00 348.00 180.00

$sequence idle "idle_mirrored_merged" loop activity ACT_VM_IDLE_SILENCED 1 fps 16.00
$sequence shoot1 "shoot1_mirrored_merged" snap activity ACT_VM_PRIMARYATTACK_SILENCED 1 fps 20.00 {
  { event 5001 0 "1" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_556 2 150" }
}
$sequence shoot2 "shoot2_mirrored_merged" snap activity ACT_VM_PRIMARYATTACK_SILENCED 1 fps 20.00 {
  { event 5001 0 "1" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_556 2 150" }
}
$sequence shoot3 "shoot3_mirrored_merged" snap activity ACT_VM_PRIMARYATTACK_SILENCED 1 fps 20.00 {
  { event 5001 0 "1" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_556 2 150" }
}
$sequence reload "reload_mirrored_merged" snap activity ACT_VM_RELOAD_SILENCED 1 fps 37.00 {
  { event 5004 25 "Weapon_M4A1.Clipout" }
  { event 5004 53 "Weapon_M4A1.Clipin" }
  { event 5004 88 "Weapon_M4A1.Boltpull" }
}
$sequence draw "draw_mirrored_merged" snap activity ACT_VM_DRAW_SILENCED 1 fps 40.00 {
  { event 5004 1 "Weapon_M4A1.Deploy" }
  { event 5004 17 "Weapon_M4A1.Boltpull" }
}
$sequence add_silencer "add_silencer_mirrored_merged" snap activity ACT_VM_ATTACH_SILENCER 1 fps 30.00 {
  { event 5004 28 "Weapon_M4A1.Silencer_On" }
}
$sequence idle_unsil "idle_unsil_mirrored_merged" loop activity ACT_VM_IDLE 1 fps 16.00
$sequence shoot1_unsil "shoot1_unsil_mirrored_merged" snap activity ACT_VM_PRIMARYATTACK 1 fps 20.00 {
  { event 5001 0 "1" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_556 2 150" }
}
$sequence shoot2_unsil "shoot2_unsil_mirrored_merged" snap activity ACT_VM_PRIMARYATTACK 1 fps 20.00 {
  { event 5001 0 "1" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_556 2 150" }
}
$sequence shoot3_unsil "shoot3_unsil_mirrored_merged" snap activity ACT_VM_PRIMARYATTACK 1 fps 20.00 {
  { event 5001 0 "1" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_556 2 150" }
}
$sequence reload_unsil "reload_unsil_mirrored_merged" snap activity ACT_VM_RELOAD 1 fps 37.00 {
  { event 5004 25 "Weapon_M4A1.Clipout" }
  { event 5004 53 "Weapon_M4A1.Clipin" }
  { event 5004 88 "Weapon_M4A1.Boltpull" }
}
$sequence draw_unsil "draw_unsil_mirrored_merged" snap activity ACT_VM_DRAW 1 fps 40.00 {
  { event 5004 1 "Weapon_M4A1.Deploy" }
  { event 5004 17 "Weapon_M4A1.Boltpull" }
}
$sequence detach_silencer "detach_silencer_mirrored_merged" snap activity ACT_VM_DETACH_SILENCER 1 fps 30.00 {
  { event 5004 21 "Weapon_M4A1.Silencer_Off" }
}
